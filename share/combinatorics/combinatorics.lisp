;;;; COMBINATORICS package for Maxima
;;;;
;;;; Functions to work with permutations.
;;;;  $cyclep               : predicate function for cycles
;;;;  $permutationp         : predicate function for permutations
;;;;  $permult              : permutations product
;;;;  $invert_permutation   : inverse of a permutation
;;;;  $apply_permutation    : permutes a list according to a permutation
;;;;  $apply_cycles         : permutes a list according to a list of cycles
;;;;  $permutation_undecomp : converts a list of cycles into a permutation
;;;;  $permutation_cycles   : decomposes a permutation into cycles
;;;;  $permutation_lex_rank : permutation's position in lexicographic sequence
;;;;  $permutation_index    : minimum number of adjacent transpositions
;;;;  $permutation_decomp   : minimum set of adjacent transpositions to get p
;;;;  $permutation_parity   : parity of a permutation (0 or 1)
;;;;
;;;; Copyright (C) 2017 Jaime Villate
;;;;
;;;; This program is free software; you can redistribute it and/or
;;;; modify it under the terms of the GNU General Public License
;;;; as published by the Free Software Foundation; either version 2
;;;; of the License, or (at your option) any later version.
;;;;
;;;; This program is distributed in the hope that it will be useful,
;;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;; GNU General Public License for more details.
;;;;
;;;; You should have received a copy of the GNU General Public License
;;;; along with this program; if not, write to the Free Software
;;;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
;;;; MA  02110-1301, USA

(in-package :maxima)
(macsyma-module permutations)

;;; $cyclep returns true if its argument is a maxima list of lenght n or
;;; lower, whose elements are integers between 1 and n, without repetitions.
(defun $cyclep (c n)
  ;; a cycle must be a maxima list
  (or (and (integerp n) (> n 1)) (return-from $cyclep nil))
  (or ($listp c) (return-from $cyclep nil))
  (dolist (i (rest c))
    ;; cycle elements must be positive integers, less or equal to n
    (or (and (integerp i) (plusp i) (<= i n)) (return-from $cyclep nil))
    ;; and cannot be repeated
    (or (< (count i (rest c)) 2) (return-from $cyclep nil)))
    t)

;;; $permutationp returns true if its argument is a maxima list of lenght n,
;;; whose elements are the integers 1, 2, ...n, without repetitions.
(defun $permutationp (p)
  (or ($listp p) (return-from $permutationp nil))
  (let ((n ($length p)))
    ;; a permutation of degree n is also a valid cycle of degree n
    ($cyclep p n)))

    (defun check-permutation (p msg)
  (or ($permutationp p)
      (merror (intl:gettext "~M: expecting a permutation; found: ~M") msg p)))

(defun check-cycle (c n msg)
  (or ($cyclep c n)
      (merror (intl:gettext "~M: expecting a cycle of degree ~M; found: ~M")
              msg n c)))

(defun check-list-or-set (l msg)
  (or ($listp l) ($setp l)
      (merror (intl:gettext "~M: expecting a list or set; found: ~M") msg l)))

(defun check-list (l msg)
  (or ($listp l)
      (merror (intl:gettext "~M: expecting a list; found: ~M") msg l)))

(defun check-list-length (l n msg)
  (or (eql ($length l) n)
      (merror (intl:gettext "~M: expecting a list of length ~M; found: ~M")
              msg n l)))

(defun check-length (n msg)
  (or (and (integerp n) (> n 1))
      (merror (intl:gettext "~M: expecting an integer > 1; found: ~M") msg n)))

;;; $permult multiplies permutation p1 by the permutations in list ps
(defun $permult (p1 &rest ps)
  (check-permutation p1 "permult") 
  (let ((n ($length p1)) (result p1))
    ;; multiplies the current result by each of the permutations in ps
    (dolist (p ps)
      (check-list-length p n "permult")
      (check-permutation p "permult") 
      ;; the current product "result" times the permutation p is the
      ;; permutation [result[p[1]], result[p[2]], ..., result[p[n]]]
      (let ((prod nil))
        (dolist (j (reverse (rest p)))
          (setq prod (cons (nth (1- j) (rest result)) prod)))
        ;; makes result*prod the new current product
        (setq result (cons '(mlist simp) prod))))
    result))

;;; $invert_permutation computes the inverse of permutation p
(defun $invert_permutation (p)
      (check-permutation p "invert_permutation") 
  (let ((inverse (copy-list p)))
    ;; if the element p[j] of the permutation is equal to i, then
    ;; the element inverse[i] of the inverse should be equal to j.
    (dotimes (j ($length p))
      (setf (nth (nth (1+ j) p) inverse) (1+ j)))
    inverse))

;;; $apply_permutation permutes the elements of list l according to the
;;; permutation p
(defun $apply_permutation (p l)
  (check-permutation p "apply_permutation") 
  (check-list-or-set l "apply_permutation")
  (check-list-length l ($length p) "apply_permutation")
  (let ((result nil))
    (dolist (j (reverse (rest p)))
      (setq result (cons (nth j l) result)))
    (cons (car l) result)))

;;; $apply_cycles permutes the elements of list l according to the
;;; list of cycles cl, applying the cycles on the end of the list first
(defun $apply_cycles (cl ls)
  (check-list cl "apply_cycles")
  (check-list-or-set ls "apply_cycles")
  (let ((n ($length ls)) (result (copy-list ls)) (prod))
    ;; iterate the cycles, the last in the list first
    (dolist (c (reverse (rest cl)))
      (check-cycle c n "apply_cycles")
      ;; ls[i] will be moved to ls[j], starting with i equal to the last
      ;; element of the cycle and j equal the first cycle element
      (let ((i (first (last c))))
        (setq prod (copy-list result))
        (dolist (j (rest c))
          (setf (nth i prod) (nth j result) i j)))
      (setq result (copy-list prod)))
    result))

;; $permutation_undecomp converts a list of cycles into a permutation,
;; equal to their product, by applying $apply_cycles to [1, 2,..., n]
(defun $permutation_undecomp (cl n)
  (check-list cl "permutation_undecomp")
  (check-length n "permutation_undecomp")
  ($apply_cycles
   cl (cons '(mlist simp) (loop for i from 1 to n collecting i))))

;; $permutation_cycles decomposes permutation p into a product of canonical
;; cycles: with lower indices first.
(defun $permutation_cycles (p)
  (check-permutation p "permutation_cycles")
  (let* ((i) (j) (k) (cycle) (n ($length p)) (result '((mlist simp)))
         (v (make-array n :element-type 'bit :initial-element 1)))
    ;; the i'th bit in bit array v equal to 1 means index i+1 has not been
    ;; added to any cycles. The next cycle will then start where the first
    ;; value of 1 is found in v
    (while (position 1 v)
      (setf i (position 1 v) (bit v i) 0)
      ;; i= v index where a 1 was found. j=i+1 first index in the current
      ;; cycle. k=next index in the current cycle
      (setq j (1+ i) k j cycle `((mlist simp) ,j))
      ;; if p[k] is different from k, there's a non-trivial cycle
      (while (/= (nth k p) j)
        (setf k (nth k p) cycle (append cycle (list k)) (bit v (1- k)) 0))
      ;; a trivial cycle with just one index (length 2) will not be saved
      (and (> (length cycle) 2) (setq result (append result (list cycle)))))
    result))

;; $permutation_lex_rank finds the position of the given permutation in
;; the lexicographic ordering of permutations (from 0 to n!-1).
;; Algorithm 2.15 from Kreher & Stinson (1999). Combinatorial Algorithms.
(defun $permutation_lex_rank (p)
  (check-permutation p "permutation_lex_rank") 
  (let ((r 0) (n ($length p)))
    (do ((j 1 (1+ j)))
        ((> j n) r)
      (incf r (* (1- (nth j p)) (factorial (- n j))))
      (do ((i (1+ j) (1+ i)))
          ((> i n))
        (when (> (nth i p) (nth j p))
          (setf (nth i p) (1- (nth i p))))))))

;; $permutation_index finds the minimum number of adjacent transpositions
;; necessary to write permutation p as a product of adjacent transpositions.
(defun $permutation_index (p)
  (check-permutation p "permutation_index") 
  (let ((d 0) (n ($length p)))
    (do ((j 1 (1+ j)))
        ((> j n) d)
      (incf d (* (1- (nth j p))))
      (do ((i (1+ j) (1+ i)))
          ((> i n))
        (when (> (nth i p) (nth j p))
          (setf (nth i p) (1- (nth i p))))))))


;; $permutation_decomp finds the minimum set of adjacent transpositions
;; whose product equals permutation p.
(defun $permutation_decomp (p)
  (check-permutation p "permutation_decomp") 
  (let ((trans) (n ($length p)))
    (do ((j 1 (1+ j)))
        ((>= j n) (cons '(mlist simp) trans))
      (when (>= (1- (nth j p)) 1)
        (do ((i (+ (- (nth j p) 2) j) (1- i)))
            ((< i j))
          (setq trans (cons `((mlist simp) ,i ,(1+ i)) trans))))
      (do ((k (1+ j) (1+ k)))
          ((> k n))
        (when (> (nth k p) (nth j p))
          (setf (nth k p) (1- (nth k p))))))))

;; $permutation_parity finds the parity of permutation p (0 or 1).
;; Algorithm 2.19 from Kreher & Stinson (1999). Combinatorial Algorithms.
(defun $permutation_parity (p)
  (check-permutation p "permutation_parity") 
  (let* ((i) (c 0) (n ($length p)) (q (rest p)) 
         (a (make-array n :element-type 'bit :initial-element 0)))
    (dotimes (j n)
      (when (= (bit a j) 0)
        (incf c)
        (setf (bit a j) 1 i j)
        (while (/= (1- (nth i q)) j)
          (setf i (1- (nth i q)) (bit a i) 1))))
    (mod (- n c) 2)))
;;; Compiled by f2cl version 2.0 beta Date: 2005/05/19 15:09:32 
;;; 
;;; Options: ((:prune-labels nil) (:auto-save t) (:relaxed-array-decls t)
;;;           (:coerce-assigns :as-needed) (:array-type ':simple-array)
;;;           (:array-slicing nil) (:declare-common nil)
;;;           (:float-format double-float))

(in-package "SLATEC")


(let ((nti1 0)
      (ntai1 0)
      (ntai12 0)
      (xmin 0.0)
      (xsml 0.0)
      (bi1cs (make-array 17 :element-type 'double-float))
      (ai1cs (make-array 46 :element-type 'double-float))
      (ai12cs (make-array 69 :element-type 'double-float))
      (first$ nil))
  (declare (type f2cl-lib:logical first$)
           (type (simple-array double-float (69)) ai12cs)
           (type (simple-array double-float (46)) ai1cs)
           (type (simple-array double-float (17)) bi1cs)
           (type double-float xsml xmin)
           (type f2cl-lib:integer4 ntai12 ntai1 nti1))
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (1) ((1 17))) -0.0019717132610998596)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (2) ((1 17))) 0.4073488766754648)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (3) ((1 17))) 0.03483899429995946)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (4) ((1 17))) 0.0015453945563001237)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (5) ((1 17))) 4.188852109837778e-5)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (6) ((1 17))) 7.649026764836211e-7)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (7) ((1 17))) 1.0042493924741179e-8)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (8) ((1 17))) 9.93220779192381e-11)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (9) ((1 17))) 7.663801791844764e-13)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (10) ((1 17))) 4.741418923816739e-15)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (11) ((1 17))) 2.404114404074518e-17)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (12) ((1 17))) 1.0171505007093713e-19)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (13) ((1 17))) 3.6450935657866947e-22)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (14) ((1 17))) 1.1205749502562039e-24)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (15) ((1 17))) 2.987544193446809e-27)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (16) ((1 17))) 6.973231093919471e-30)
  (f2cl-lib:fset (f2cl-lib:fref bi1cs (17) ((1 17))) 1.43679482206208e-32)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (1) ((1 46))) -0.028467441818814786)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (2) ((1 46))) -0.019229532314432207)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (3) ((1 46))) -6.115185857943788e-4)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (4) ((1 46))) -2.0699712533502276e-5)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (5) ((1 46))) 8.585619145810725e-6)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (6) ((1 46))) 1.049498246711591e-6)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (7) ((1 46))) -2.9183389184479024e-7)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (8) ((1 46))) -1.559378146631739e-8)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (9) ((1 46))) 1.3180123671449447e-8)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (10) ((1 46))) -1.4484234181830783e-9)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (11) ((1 46))) -2.908512243993142e-10)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (12) ((1 46))) 1.2663889178753824e-10)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (13) ((1 46))) -1.6649477729192206e-11)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (14) ((1 46))) -1.666653644609433e-12)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (15) ((1 46))) 1.2426024142907682e-12)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (16) ((1 46))) -2.731549379672432e-13)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (17) ((1 46))) 2.0239478816458037e-14)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (18) ((1 46))) 7.307950018116884e-15)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (19) ((1 46))) -3.332905634404675e-15)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (20) ((1 46))) 7.175346558512954e-16)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (21) ((1 46))) -6.982530324796256e-17)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (22) ((1 46))) -1.2999442015627607e-17)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (23) ((1 46))) 8.1209428642428e-18)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (24) ((1 46))) -2.194016207410737e-18)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (25) ((1 46))) 3.6305161700296547e-19)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (26) ((1 46))) -1.6951397724391042e-20)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (27) ((1 46))) -1.2881848298979078e-20)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (28) ((1 46))) 5.694428604967053e-21)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (29) ((1 46))) -1.4595970090904801e-21)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (30) ((1 46))) 2.5145460106757173e-22)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (31) ((1 46))) -1.8447588831391248e-23)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (32) ((1 46))) -6.339760596227949e-24)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (33) ((1 46))) 3.461441102031011e-24)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (34) ((1 46))) -1.0170623353713936e-24)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (35) ((1 46))) 2.1498771470904314e-25)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (36) ((1 46))) -3.045252425238676e-26)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (37) ((1 46))) 5.238082144721286e-28)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (38) ((1 46))) 1.4435831070893824e-27)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (39) ((1 46))) -6.121302074890043e-28)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (40) ((1 46))) 1.7000111174678184e-28)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (41) ((1 46))) -3.5965891079842444e-29)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (42) ((1 46))) 5.448178578948419e-30)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (43) ((1 46))) -2.731831789689085e-31)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (44) ((1 46))) -1.8589050217086006e-31)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (45) ((1 46))) 9.212682974513933e-32)
  (f2cl-lib:fset (f2cl-lib:fref ai1cs (46) ((1 46))) -2.8138351556535614e-32)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (1) ((1 69))) 0.02857623501828012)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (2) ((1 69))) -0.009761097491361469)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (3) ((1 69))) -1.1058893876262371e-4)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (4) ((1 69))) -3.882564808877691e-6)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (5) ((1 69))) -2.512236237870209e-7)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (6) ((1 69))) -2.6314688468895196e-8)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (7) ((1 69))) -3.835380385964237e-9)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (8) ((1 69))) -5.589743462196584e-10)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (9) ((1 69))) -1.8974958123505413e-11)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (10) ((1 69))) 3.2526035830154884e-11)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (11) ((1 69))) 1.4125807436613782e-11)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (12) ((1 69))) 2.0356285441470896e-12)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (13) ((1 69))) -7.198551776245908e-13)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (14) ((1 69))) -4.0835511110921974e-13)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (15) ((1 69))) -2.1015418427726643e-14)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (16) ((1 69))) 4.272440016711951e-14)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (17) ((1 69))) 1.0420276984128802e-14)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (18) ((1 69))) -3.8144030724370075e-15)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (19) ((1 69))) -1.8803547755107825e-15)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (20) ((1 69))) 3.3082023109209285e-16)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (21) ((1 69))) 2.96262899764595e-16)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (22) ((1 69))) -3.209525921993424e-17)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (23) ((1 69))) -4.6503053684893586e-17)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (24) ((1 69))) 4.414348323071708e-18)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (25) ((1 69))) 7.517296310842105e-18)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (26) ((1 69))) -9.314178867326884e-19)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (27) ((1 69))) -1.242193275194891e-18)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (28) ((1 69))) 2.4142767194548486e-19)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (29) ((1 69))) 2.0269443840532852e-19)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (30) ((1 69))) -6.394267188269098e-20)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (31) ((1 69))) -3.049812452373096e-20)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (32) ((1 69))) 1.6128418516514802e-20)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (33) ((1 69))) 3.560913964309925e-21)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (34) ((1 69))) -3.752017947936439e-21)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (35) ((1 69))) -5.787037427074799e-23)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (36) ((1 69))) 7.759997511648162e-22)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (37) ((1 69))) -1.4527908972022333e-22)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (38) ((1 69))) -1.3182252867390368e-22)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (39) ((1 69))) 6.11665486290307e-23)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (40) ((1 69))) 1.3762797624271266e-23)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (41) ((1 69))) -1.690837689959348e-23)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (42) ((1 69))) 1.4305960885954331e-24)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (43) ((1 69))) 3.409557828090594e-24)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (44) ((1 69))) -1.3094576662707602e-24)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (45) ((1 69))) -3.9407064112402574e-25)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (46) ((1 69))) 4.277137426980877e-25)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (47) ((1 69))) -4.4246348309826066e-26)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (48) ((1 69))) -8.734113196230715e-26)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (49) ((1 69))) 4.0454013356835337e-26)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (50) ((1 69))) 7.06710065809469e-27)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (51) ((1 69))) -1.2494633445651053e-26)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (52) ((1 69))) 2.867392244403437e-27)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (53) ((1 69))) 2.0442928925042927e-27)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (54) ((1 69))) -1.5186366338204625e-27)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (55) ((1 69))) 8.110181098187576e-29)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (56) ((1 69))) 3.580379354773586e-28)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (57) ((1 69))) -1.6929290189279025e-28)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (58) ((1 69))) -2.2229024997024276e-29)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (59) ((1 69))) 5.424535127145969e-29)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (60) ((1 69))) -1.7870684015780186e-29)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (61) ((1 69))) -6.565479068722815e-30)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (62) ((1 69))) 7.807013165061145e-30)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (63) ((1 69))) -1.8165952606689797e-30)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (64) ((1 69))) -1.2877049526600847e-30)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (65) ((1 69))) 1.1145481729881646e-30)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (66) ((1 69))) -1.8083431450393369e-31)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (67) ((1 69))) -2.231677718203772e-31)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (68) ((1 69))) 1.6190295960803416e-31)
  (f2cl-lib:fset (f2cl-lib:fref ai12cs (69) ((1 69))) -1.8340799088049413e-32)
  (setq first$ f2cl-lib:%true%)
  (defun dbsi1e (x)
    (declare (type double-float x))
    (prog ((y 0.0) (dbsi1e 0.0) (sqrt$ 0.0f0) (abs$ 0.0f0) (eta 0.0f0))
      (declare (type single-float eta abs$ sqrt$) (type double-float dbsi1e y))
      (cond
        (first$
         (setf eta (* 0.1f0 (f2cl-lib:freal (f2cl-lib:d1mach 3))))
         (setf nti1 (initds bi1cs 17 eta))
         (setf ntai1 (initds ai1cs 46 eta))
         (setf ntai12 (initds ai12cs 69 eta))
         (setf xmin (* 2.0 (f2cl-lib:d1mach 1)))
         (setf xsml (f2cl-lib:fsqrt (* 4.5 (f2cl-lib:d1mach 3))))))
      (setf first$ f2cl-lib:%false%)
      (setf y (coerce (abs x) 'double-float))
      (if (> y 3.0) (go label20))
      (setf dbsi1e 0.0)
      (if (= y 0.0) (go end_label))
      (if (<= y xmin)
          (xermsg "SLATEC" "DBSI1E" "ABS(X) SO SMALL I1 UNDERFLOWS" 1 1))
      (if (> y xmin) (setf dbsi1e (* 0.5 x)))
      (if (> y xsml)
          (setf dbsi1e
                  (* x (+ 0.875 (dcsevl (- (/ (* y y) 4.5) 1.0) bi1cs nti1)))))
      (setf dbsi1e (* (exp (- y)) dbsi1e))
      (go end_label)
     label20
      (if (<= y 8.0)
          (setf dbsi1e
                  (/ (+ 0.375 (dcsevl (/ (- (/ 48.0 y) 11.0) 5.0) ai1cs ntai1))
                     (f2cl-lib:fsqrt y))))
      (if (> y 8.0)
          (setf dbsi1e
                  (/ (+ 0.375 (dcsevl (- (/ 16.0 y) 1.0) ai12cs ntai12))
                     (f2cl-lib:fsqrt y))))
      (setf dbsi1e (f2cl-lib:sign dbsi1e x))
      (go end_label)
     end_label
      (return (values dbsi1e nil)))))


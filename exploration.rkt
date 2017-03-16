#lang racket

(require plot)

;;(plot (function sin (- pi) pi
;;                #:label "y = sin(x)"))

;;(plot (function tan (- pi) pi
;;               #:label "y = tan(x)"))

;;(plot (function log 0 10))

;;(plot3d (surface3d (λ (x y) (* (cos x) (sin y)))
;;                   (- pi) pi (- pi) pi)
;;        #:title "R x R -> R function"
;;        #:x-label "x"
;;        #:y-label "y"
;;        #:z-label "cos(x) sin(y)")

;;(plot (inverse sqr -4 4 #:color 4))
;;(plot (inverse log -5 5 #:color 6))

;;Plost multiple functions on a graph, pass them a a list to the plot procedure
(plot (list (axes)
            (function sin (- pi) pi
                      #:label "sin"
                      #:color 2)
            (function cos (- pi) pi
                      #:label "cosine"
                      #:color 13)
            (function (λ (x) x)
                      #:label "identity"
                      #:color 6))
      #:out-file "image1.png")


;; Draawing functions oevr an interval 
(plot (function-interval (λ (x) (- (sin x) 2))
                         (λ (x) (+ (sin x) 2))
                         #:label "Sin interval between 2")
      #:x-min (- pi) #:x-max pi #:out-file "image2.png")


;;save 
(plot (function (λ (x) (sin (* 4 x))) -1 1)
      #:x-min -1.5 #:x-max 1.5
      #:y-min -1.5 #:y-max 1.5 #:out-file "image4.png")

;;2d renderers
;;(vector-field f
;;              [x-min
;;               x-max
;;               y-min
;;               y-max
;;               #:samples samples
;;               #:scale scale
;;               #:color 3
;;               #:line-width -line-width
;;               #:line-style line-style
;;               #:label "vector graph"])

(plot (vector-field (λ (x y) (vector (+ x y) (- x y)))
                    -2 2 -2 2
                    #:color 15)
      #:out-file "vector.png")
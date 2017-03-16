## My Library: racket/plot
My name: **Patrick Kyoyetera**

I chose to use racket/plot to learn out how to plot graphs graphs of information. The idea I have for my project might have to include plotting data in order to be able to visually represent it as useful information.

The library is included with the line `(require plot).`

I played around with some 2D functions to start off. Like the simple sin function. (Picture not included).
Plotted functions over ointervals and multiple fuinctions on one plot. 

```
#lang racket

(require plot)
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
                      #:color 6)))
```
![test image](/image1.png?raw=true "Interval functions plots")
![test image](/image2.png?raw=true "Interval 2")

checked out how 2D and 3D renderers work and worked around rthe code for the a vector field renderer. Plotted the vector-field (magnetic-field like) and finished up with that. Approximately the first 3 parts of the library.
``` 
(plot (vector-field (λ (x y) (vector (+ x y) (- x y)))
                    -2 2 -2 2
                    #:color 15))
```
![test image](/vector.png?raw=true "Vector-field")



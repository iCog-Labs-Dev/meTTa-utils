
!(findAndReplace A Z (B C A (A B C) F G A))
(: isUnit (-> Atom Bool))
(= (isUnit $expr) (== $expr ()))

(: isZero (-> Atom Bool))
(= (isZero $expr) (== $expr 0))
(: decrement (-> Number Number))
(= (decrement $x) (- $x 1))

(: isSingleAtom (-> Atom Bool))
(= (isSingleAtom $expr) 
(if (and (== (get-metatype $expr) Expression) (not(isUnit $expr)))
    (if (== (cdr-atom $expr) ()) 
      True 
      False
    )
    False
)
)
;!(cdr-atom (fo))
;!(isSingleAtom (1))
(= (until $predicate $function $x) (if ($predicate $x) $x (let $y ($function $x) (until $predicate $function $y))))
;(: cocatTuple (-> Expression Expression Expression))
(= (concatTuple $x $y) (collapse (union (superpose $x) (superpose $y))))
;!(concatTuple (A B C) (D E F))

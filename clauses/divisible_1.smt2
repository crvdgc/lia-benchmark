(set-logic HORN)

(declare-fun |divisible$u3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-1:n| Int) (|$alpha-2:v| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| |$alpha-2:v|)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:n| |$alpha-2:v|)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (= |$V-reftype:14| |$knormal:6|) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|divisible$u3| |$knormal:6| |$alpha-2:v| |$knormal:3|) true true )
      (|divisible$u3| |$V-reftype:14| |$alpha-2:v| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:n| Int) (|$alpha-2:v| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (= |$V-reftype:10| 1) (not (= 0 |$knormal:1|)) true true )
      (|divisible$u3| |$V-reftype:10| |$alpha-2:v| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$alpha-1:n| Int) (|$alpha-2:v| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (< |$alpha-1:n| |$alpha-2:v|)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (= |$V-reftype:12| 0) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true true )
      (|divisible$u3| |$V-reftype:12| |$alpha-2:v| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:v| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| |$alpha-2:v|)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:n| |$alpha-2:v|)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:v| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| |$alpha-2:v|)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:n| |$alpha-2:v|)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:11| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    ( and (= |$knormal:9| 1) (= (not (= 0 |$knormal:7|)) (>= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:11|))) (not (= 0 |$knormal:7|)) (|divisible$u3| |$knormal:11| |$knormal:9| |$alpha-3:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| 1) (= (not (= 0 |$knormal:7|)) (>= |$alpha-3:n| 0)) (not (= 0 |$knormal:7|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| 1) (= (not (= 0 |$knormal:7|)) (>= |$alpha-3:n| 0)) (not (= 0 |$knormal:7|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)


let rec divisible n v =
  if n = 0
    then true
    else if n < v
          then false
          else divisible (n - v) v

let main n =
  if (n >= 0 && (divisible n 3))
    then assert (divisible n 2)
  (* unable to prove with refinement types *)


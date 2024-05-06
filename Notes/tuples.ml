type time = int * int * string
(* or just 'let t = (10, 10, "am") *)
let t : time = (10, 10, "am")

type point = float * float
let p : point = (5., 3.5)

(*
  fst p;; FIRST COMPONENT
  lst p;; SECOND COMPONENT
*)
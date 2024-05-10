type time = int * int * string
(* or just 'let t = (10, 10, "am") *)
let t : time = (10, 10, "am")

type point = float * float
let p : point = (5., 3.5)

(* For pairs only *)
(*
  fst p;; FIRST COMPONENT
  snd p;; SECOND COMPONENT
*)


let inc = fun x -> x + 1;;
inc 3110;;

(fun x y -> x - y) (3 * 1) (3 - 1);;
let sub = fun x y -> x - y;;
let sub x y = x - y;;

((fun x -> x + 1) : int -> int) 3;;

(* Turns out, OCaml does 'not' have multi-argument functions. *)
(* Here's what's going on under the hood: *)
let add x y = x + y;;
(* int -> int -> int *)
add 2;;
(* int -> int *)
(add 2) 3;;
let add_two y = (add 2) y;;
add_two 4;;

(* Mult-argument functions are just compositions of nameless functions. *)
let mult = fun x ->
            fun y ->
              x * y;;
(* val mult : int -> int -> int = <fun> *)
(* 'mult' is a function which takes in an int and GIVES back a function. *)
(* What does this function that 'mult' spits out do? It takes in an integer and returns an integer. *)
mult 2 3;;
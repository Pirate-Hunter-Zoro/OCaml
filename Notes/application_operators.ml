succ;;
(* - : int -> int = <fun> *)
succ 1;;
succ 2 * 10;; (*30*)
(* Evaluate the expression right of the '@@' first *)
succ @@ 2 * 10;; (*21*)

let square x = x * x;;
succ (square (square (succ 5)));;
(* Pipeline operator *)
5 |> succ |> square |> square |> succ;;
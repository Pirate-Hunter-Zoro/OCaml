(* requires: [n >= 0] *)
let rec fact n = 
  if n = 0 then 1
  else n * fact (n - 1);;

(* requires: [n >= 0] *)
let rec fib n = 
  if n = 0 || n = 1 then 1
  else fib (n-2) + fib(n-1);;
include "reverse_list.ml"

let insert l i =
  insert l i (reverse l);;

let insert l i acc =
  match i with 
  | 0 -> i :: acc
  | _ -> 
    match l with
    | [] -> insert l i-1 acc
    | h::t -> insert t 
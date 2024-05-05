let reverse l = 
  rev rec l [];;

let rev rec l acc =
  match l with
  | [] -> acc
  | h::t -> rec t h::acc
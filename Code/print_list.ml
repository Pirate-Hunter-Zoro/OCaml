let rec print l =
  match l with
  | [] -> print_string "\n"
  | h::t -> print_string h; print t;;
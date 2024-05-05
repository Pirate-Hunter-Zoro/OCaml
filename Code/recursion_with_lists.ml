let y : int list = [1;2;3;4;5;6;7;8;9;10];;

let rec length_of_list (l: int list) : int =
  begin match l with
    | [] -> 0
    (* If not empty, then add 1 to the count of the rest of the list! *)
    | h::t -> 1 + (length_of_list t)  
  end;;

print_int (length_of_list y);;

print_string "\n";;

let rec count (l: int list) : int =
  begin match l with
    | [] -> 0
    | h::t -> h + (count t)
  end;;

print_int (count y);;
print_string "\n";;

let rec print l =
  match l with
  | [] -> print_string "\n"
  | h::t -> print_string h; print_string " "; print t;;

let rec insert_at_end l e =
  match l with
  | [] -> [e]
  | h::t -> h :: insert_at_end t e;;

print (insert_at_end ["this"; "is"; "a"] "sentence")

(* Source: https://stackoverflow.com/questions/21286668/list-reversing-in-ocaml *)
let rec rev l acc = 
  match l with 
  | [] -> acc
  | h::t -> rev t (h::acc);;

let reverse l = 
  rev l [];;

let y : string list = ["you"; "are"; "how"];;
print (reverse y);;
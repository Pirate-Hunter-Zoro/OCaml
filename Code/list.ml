module List = struct

  (*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*)

  let rec print l =
  match l with
  | [] -> print_string "\n"
  | h::t -> print_string h; print t;;

  (*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*)

  let rec least l =
  match l with
  | h::[] -> h
  | h::t -> 
      if h < (least t) then
        h
      else
        least t;;

  (*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*)

  let rec length l =
  match l with
  | [] -> 0
  | h::t -> 1 + (length t);;

  (*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*)

  let rec rev l acc =
  match l with
  | [] -> acc
  | h::t -> rev t (h::acc);;

  let reverse l = 
    rev l [];;

  (*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*)

  (* Here's the helper function after we have reversed l1 *)
  let rec combine_rec l1_rev l2 = 
    match l1_rev with
    | [] -> l2
    | h::t -> combine_rec t (h::l2);;

  (* If we want to merge two lists, one way to do that is reverse the first one, and repeatedly combine its head with the second list. *)
  let combine l1 l2 =
    combine_rec (reverse l1) l2;;

  (*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*)

  (** Recursive helper method to insert an element into a list at a particular index **)
  let rec insert l i e acc =
    match i with 
    | 0 -> combine (reverse acc) (e::l)
    | _ -> 
      match l with
      (* 
      If l is empty, then we are done.
      If you try to insert c int [a, b] at index 3, it's just going to do it at position 2 and yield [a, b, c]. 
      *)
      | [] -> combine (reverse acc) (e :: [])
      | h::t -> insert t (i-1) e (h::acc);;
  
  (** Insert element 'e' into position 'i' in the list 'l' **)
  let insert l e i =
    insert l i e [];;

  (*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*)

end
let x = 
  match not true with
  | true -> "nope"
  | false -> "yep"

let y = 
  match 42 with
  | a -> a

let z = 
  match "foo" with
  | "bar" -> 0
  | _ -> 1 (* Wildcard matching *)

let a = 
  match [1;2;3;4] with
  | [] -> "empty"
  | _ -> "not empty"

let b = 
  match ["taylor"; "swift"] with
  | [] -> "folklore"
  | h :: t -> h (* If the list is a head followed by a tail, just give back the head *)

let c = 
  match ["dua"; "lipa"] with
  | [] -> ["legend"]
  | h :: t -> t

(* Let's make this function for ordered triples. *)
let fst3 t = 
  match t with
  | (a, b, c) -> a

let empty lst = 
  match lst with
  | [] -> true
  | _ -> false

let rec sum lst =
  match lst with
  | [] -> 0
  | h :: t -> h + sum t

(* 
   #trace sum;;
   #untrace sum;;
*)

let rec length lst =
  match lst with
  | [] -> 0
  | h :: t -> 1 + length t

(* //////////////////////////////////////////////////////////////////// *)

(* Reverse a list *)

let rec rev lst acc =
    match lst with
    | [] -> acc
    | h :: t -> rev t (h :: acc)

let reverse lst =
  rev lst []

(* //////////////////////////////////////////////////////////////////// *)

(* Append one list to another *)

let rec rev_app rev1 lst2 =
  match rev1 with 
  | [] -> lst2
  | h :: t -> rev_app t (h :: lst2)

let stupid_append lst1 lst2 =
  rev_app (reverse lst1) lst2

(* //////////////////////////////////////////////////////////////////// *)

(* From lecture video... append two lists... much smarter *)

(* example usage:
   append [1;2;3] [4;5;6] is [1;2;3;4;5;6] *)
let rec append lst1 lst2 =
  match lst1 with
  | [] -> lst2
  | h :: t -> h :: (append t lst2)

(* Turns out you can just call [1;2;3] @ [4;5;6;]... *)

(* //////////////////////////////////////////////////////////////////// *)

(* We have syntactic sugar for the previous functions... *)

(* No need to name the parameter 'lst' - it's so common they made a shortuct *)
let rec rec_length = function (* Automatically looks at the LAST argument you throw it to match *)
  | [] -> 0
  | h :: t -> 1 + rec_length t

(* We matched on the FIRST argument in 'append', so this doesn't help us out with that function... *)
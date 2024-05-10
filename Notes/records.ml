type student = {
  name : string;
  year : int; (* grad year *)
}

let rbg = {
  name = "Ruth Bader";
  year = 1954;
}

(* Creates a copy with the given field value changed to whatever is specified *)
let rbg2 = {rbg with name = "Ruth Bader Ginsburg"};;

let name_with_year s = 
  match s with
  | {name; year} -> name ^ " '" ^ string_of_int (year mod 100) 
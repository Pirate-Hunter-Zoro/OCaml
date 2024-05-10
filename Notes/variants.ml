type primary_color = Red | Green | Blue

let r  = Red
(* let r : primary_color = Red *)

type point = float * float

type shapes = 
  | Circle of {center : point; radius : float}
  | Rectangle of {lower_left : point; upper_right : point} (* Just doing 'of point * point' makes you forget what point is which! *)

let c1 = Circle {center = (0.,0.); radius = 1.}
let r1 = Rectangle {lower_left = (-1.,-1.); upper_right = (1.,1.)}

(* ////////////////////////////////////////////////////////////////////////////////////////////////////// *)

(* Pattern matching with variants... *)
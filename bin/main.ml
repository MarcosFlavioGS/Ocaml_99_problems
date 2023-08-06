(* Problem 01 *)
let rec last (xs: 'a list): 'a option =
  match xs with
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest;;

(* Problem 02 *)
let rec last_two (xs: 'a list): ('a * 'b) option =
  match xs with
  | [] -> None
  | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: rest -> last_two rest;;

let () =
  print_endline "Hello, World!"

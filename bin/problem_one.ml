(* Problem 01 *)
let rec last (xs: 'a list): 'a option =
  match xs with
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest

let print_problem_one printer opt =
  match opt with
  | Some value -> print_endline (printer value)
  | None -> print_endline "No value to print"

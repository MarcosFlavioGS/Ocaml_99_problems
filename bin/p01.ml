(* Problem 01 *)
let rec last (lst: 'a list): 'a option =
  match lst with
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest

let print_one printer opt =
  match opt with
  | Some value -> print_endline (printer value)
  | None -> print_endline "No value to print"

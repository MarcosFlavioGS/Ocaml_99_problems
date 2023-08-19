(* Problem 02 *)
let rec last_two (lst: 'a list): ('a * 'b) option =
  match lst with
  | [] -> None
  | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: rest -> last_two rest

let print_problem_two printer opt =
  match opt with
  | Some (a, b) ->
    let x = printer a in
    let y = printer b in
    print_endline (""^x^", "^y^"");
  | None -> print_endline "None"

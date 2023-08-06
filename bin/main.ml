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

(* Problem 02 *)
let rec last_two (xs: 'a list): ('a * 'b) option =
  match xs with
  | [] -> None
  | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: rest -> last_two rest;;

let print_problem_two printer opt =
  match opt with
  | Some (a, b) ->
    let x = printer a in
    let y = printer b in
    print_endline ("("^x^", "^y^")");
  | None -> print_endline "None"

let () =
  print_endline "Hello, World!";
  let problem_one = last [1; 2; 3; 4;] in
  let problem_two = last_two [1; 2; 3; 4; 5] in

  print_problem_one string_of_int problem_one;
  print_problem_two string_of_int problem_two

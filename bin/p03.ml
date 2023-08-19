(* Problem 03 *)
let rec at (l: 'a list) (n): 'a option =
  match l with
  | [x] -> Some x
  | head :: tail ->
    if n = 1 then Some head else at tail (n - 1)
  | [] -> None

let print_three printer opt =
  match opt with
  | Some value -> printer value
  | None -> printer "No value to print"

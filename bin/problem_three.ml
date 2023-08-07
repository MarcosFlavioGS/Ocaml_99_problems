(* Problem 03 *)
let rec fd_nth_element l n =
  match l with
  | [] -> "nth"
  | [x] -> x
  | head :: tail ->
    if n == 1 then head else fd_nth_element tail (n - 1)

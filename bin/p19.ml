(* Problem 19 *)

let rec rotate (lst: 'a list) n =
  match lst with
  | [] -> lst
  | h :: t ->
    if n = 0 then lst
    else rotate (t @ [h]) (n - 1)

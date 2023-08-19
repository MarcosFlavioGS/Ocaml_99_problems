(* Problem 14 *)

let rec duplicate (lst: 'a list): 'a list =
  match lst with
  | [] -> []
  | h :: t -> h :: h :: duplicate t

(* Problem 07 *)
open Problem_five;;

type 'a node =
  | One of 'a
  | Many of 'a node list;;

let flatten lst: 'a list =
  let rec flatten' acc = function
    | [] -> acc
    | One h :: t -> flatten' (h :: acc) t
    | Many h :: t -> flatten' (flatten' acc h) t
  in rev_lst (flatten' [] lst);;

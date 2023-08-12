(* Problem 07 *)
open Problem_five;;

type 'a node =
  | One of 'a
  | Many of 'a node list;;

let flatten lst: 'a list =
  let rec flatten' acc = function
    | [] -> acc
    | One h :: t -> flatten' (h :: acc) t
    | Many l :: t -> flatten' (flatten' acc l) t
  in rev_lst (flatten' [] lst);;

(* Problem 15 *)
open P05;;

let replicate (lst: 'a list) (n: int) =
  let rec dup n acc elem =
    match n with
    | 0 -> acc
    | _ -> dup (n - 1) (elem :: acc) elem
  in
  let rec replicate' n acc = function
    | [] -> acc
    | h :: t -> replicate' n (dup n acc h) t
  in
  rev_lst (replicate' n [] lst)

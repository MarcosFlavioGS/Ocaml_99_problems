(* Problem 05 *)
let rev_lst (lst: 'a list): 'a list =
  let rec rev_lst' (lst: 'a list) (acc: 'a list) =
    match lst with
    | [] -> acc
    | head :: tail -> rev_lst' tail (head :: acc)
  in rev_lst' lst []

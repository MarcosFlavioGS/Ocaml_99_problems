(* Problem 16 *)
open P05;;

let drop (lst: 'a list) (n: int): 'a list =
  let rec drop' acc n n' = function
    | [] -> acc
    | [x] when n > 1 -> x :: acc
    | h :: t ->
      if n = 1 then drop' acc n' n' t
      else drop' (h :: acc) (n - 1) n' t
  in rev_lst (drop' [] n n lst)

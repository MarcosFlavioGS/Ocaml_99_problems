(* Problem 21 *)
open P04;;
open P05;;

let insert_at (elem: 'a) n (lst: 'a list): 'a list =
  let rec insert' elem n acc = function
    | h :: t ->
      if n > 0 then insert' elem (n - 1) (h :: acc) t
      else insert' elem (n + (lst_len_tail t)) (h :: elem :: acc) t
    | _ -> acc
  in
  rev_lst (insert' elem n [] lst)

(* Problem 20 *)
open P04;;
open P05;;

let remove_at n (lst: 'a list): 'a list =
  let rec remove' n acc = function
    | h :: t ->
      if n = 0 then remove' (n + (lst_len t)) acc t
      else remove' (n - 1) (h :: acc) t
    | _ -> acc
  in
  rev_lst (remove' n [] lst)

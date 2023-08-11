open Problem_five;;

let is_palindrome (lst: 'a list): bool =
  match lst with
  | [] -> false
  | [x; y] -> if x = y then true else false
  | _ ->
    let rev = rev_lst lst in
    let rec is_palindrome' (lst: 'a list) (rev: 'a list): bool =
      match (lst, rev) with
      | [], [] -> true
      | h :: t, hr :: ht ->
        if h = hr then is_palindrome' t ht
        else false
      | _ -> false
    in is_palindrome' lst rev

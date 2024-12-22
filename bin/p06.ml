open P05;;

let is_palindrome (lst: 'a list): bool =
  match lst with
  | [] -> true
  | [x; y] -> if x = y then true else false
  | _ ->
    let rev = rev_lst lst in
    let rec is_palindrome' (lst: 'a list) (rev: 'a list): bool =
      match (lst, rev) with
      | [], [] -> true
      | h :: t, rh :: rt ->
        if h = rh then is_palindrome' t rt
        else false
      | _ -> false
    in
    is_palindrome' lst rev

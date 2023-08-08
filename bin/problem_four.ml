let lst_len_tail (lst: 'a list): int =
  let rec lst_len_tail' (lst: 'a list) (result: int): int =
    match lst with
    | [] -> result
    | _ :: tail -> lst_len_tail' tail (result + 1)
  in lst_len_tail' lst 0

let rec lst_len (lst: 'a list) =
  match lst with
  | [] -> 0
  | _ :: tail -> 1 + lst_len tail

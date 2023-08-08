let rec lst_len (lst: 'a list) =
  match lst with
  | [] -> 0
  | _ :: tail -> 1 + lst_len tail

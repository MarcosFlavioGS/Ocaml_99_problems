let rec count c (lst: 'a list) =
  match lst with
  | [] -> c
  | _ :: tail -> count (c + 1) tail

let lst_len (lst: 'a list) =
  let counter: int = 0 in

  count counter lst

(* Problem 12 *)
open Problem_eleven;;
open Problem_five;;

let rec add n elem lst =
  if n = 0 then lst
  else add (n - 1) elem (elem :: lst)

let decode_rle (lst: 'a rle list): 'a list =
  let rec decode_rle' acc = function
    | [] -> acc
    | h :: t ->
      match h with
      | One value -> decode_rle' (value :: acc) t
      | Many (num, elem) -> decode_rle' (add num elem acc) t
    in rev_lst (decode_rle'[] lst)

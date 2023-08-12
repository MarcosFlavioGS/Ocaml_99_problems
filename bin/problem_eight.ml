(* Problem 08 *)
open Problem_five;;

let compress lst: 'a list =
  let rec compress' acc = function
    | r :: (r1 :: _ as t) -> (* the t in '_ as t' is bound to r1 :: _ *)
      if r = r1 then compress' acc t
      else compress'(r :: acc) t
    | x :: _ -> x :: acc
    | _ -> acc
  in rev_lst (compress' [] lst);;

(* Problem 18 *)
open P05;;

let slice (lst: 'a list) (n: int) (nx: int): 'a list =
  let rec slice' n nx acc = function
    | _ :: t when n > 0 -> slice' (n - 1) (nx - 1) acc t
    | h :: t ->
      if nx > 0 then slice' n (nx - 1) (h :: acc) t
      else acc
    | _ -> acc
  in
  rev_lst (slice' n (nx + 1) [] lst)

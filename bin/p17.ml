(* Problem 17 *)
open P05;;

let split (lst: 'a list) (n: int): 'a list * 'a list =
  let rec split' n acc lst =
    match lst with
    | [] -> ((rev_lst acc), [])
    | h :: t ->
      if n > 0 then split' (n - 1) (h :: acc) t
      else ((rev_lst acc), h :: t)
  in
  split' n [] lst

let print_seventeen (tup: 'a list * 'a list) =
  match tup with
  | (x, y) ->
    List.iter print_string x;
    print_string " ";
    List.iter print_string y;
    print_newline ();

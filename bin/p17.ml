(* Problem 17 *)

let split (_lst: 'a list) (_n: int): 'a list * 'a list =
  (["test"], ["42"])

let print_seventeen (tup: 'a list * 'a list) =
  match tup with
  | (x, y) ->
    List.iter print_string x;
    print_string " ";
    List.iter print_string y;
    print_newline ();

(* Problem 09 *)
open Problem_four;;
open Problem_five;;

let pack lst: 'a list =
  let rec pack' current acc = function
    | [] -> []
    | [x] -> (x :: current) :: acc
    | h :: (h1 :: _ as t) ->
      if h = h1 then pack' (h :: current) acc t
      else pack' [] ((h :: current) :: acc) t
  in rev_lst (pack' [] [] lst);;

let print_nine (lst: 'a list) =
  for i = 0 to (lst_len_tail lst) - 1 do
    let sub = List.nth lst i in
    for j = 0 to (lst_len_tail sub) - 1 do
      print_string (List.nth sub j);
      print_string " ";
    done;
    print_newline ();
  done;;

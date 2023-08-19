(* Problem 13 *)
open Problem_four;;
open Problem_five;;

type 'a rle =
  | One of 'a
  | Many of int * 'a

let encode_direct (lst: 'a list): 'a rle list =
  let aux count elem =
    if count = 0 then One elem
    else Many (count + 1, elem)
  in
  let rec encode_direct' count acc = function
    | [] -> []
    | [elem] -> aux count elem :: acc
    | h :: (h1 :: _ as t) ->
      if h = h1 then encode_direct' (count + 1) acc t
      else encode_direct' 0 (aux count h :: acc) t
    in
    rev_lst (encode_direct' 0 [] lst);;

let print_thirteen (lst: 'a rle list) =
  for i = 0 to (lst_len_tail lst) - 1 do
    let tup: 'a rle = List.nth lst i in
    match tup with
    | One value ->
      print_string "One ";
      print_string value;
      print_newline ();
    | Many (count, value) ->
      print_string "Many ";
      print_int count;
      print_string " ";
      print_string value;
      print_newline ();
  done;;

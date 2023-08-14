(* Problem 11 *)
open Problem_three;;
open Problem_four;;
open Problem_five;;
open Problem_nine;;

type 'a rle =
  | One of 'a
  | Many of int * 'a

let get_option opt =
  match opt with
  | Some value -> value
  | None -> ""

let mod_encode_rle lst: 'a rle list =
  let rec mod_encode_rle' (acc: 'a rle list) = function
    | [] -> acc
    | h :: tail ->
      if lst_len h > 1 then
        mod_encode_rle' (Many ((lst_len h), get_option (at h 0)) :: acc) tail
      else
        mod_encode_rle' (One (get_option (at h 0)) :: acc) tail
  in
  rev_lst (mod_encode_rle' [] (pack lst));;

let print_eleven (lst: 'a rle list) =
  for i = 0 to (lst_len_tail lst) - 1 do
    let tup: 'a rle = List.nth lst i in
    match tup with
    | One value ->
      print_string value;
      print_newline ();
    | Many (count, value) ->
      print_int count;
      print_string " ";
      print_string value;
      print_newline ();
  done;;

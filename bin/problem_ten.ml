(* Problem 10 *)
open Problem_three;;
open Problem_four;;
open Problem_five;;
open Problem_nine;;

let get_option opt =
  match opt with
  | Some value -> value
  | None -> ""

let encode_rle lst: (int * string) list =
  let rec encode_rle' (acc: (int * string) list) = function
    | [] -> acc
    | h :: tail ->
      encode_rle' (((lst_len h), get_option (at h 0)) :: acc) tail
  in rev_lst (encode_rle' [] (pack lst));;

let print_ten (lst: (int * string) list) =
  for i = 0 to (lst_len_tail lst) - 1 do
    let tup = List.nth lst i in
      print_string (string_of_int (fst tup)) ;
      print_string " ";
      print_string (snd tup);
    print_newline ();
  done;;

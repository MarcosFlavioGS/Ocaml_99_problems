open P01;;
open P02;;
open P03;;
open P04;;
open P05;;
open P06;;
open P07;;
open P08;;
open P09;;
open P10;;
open P11;;
open P12;;
open P13;;
open P14;;
open P15;;
open P16;;
open P17;;
open P18;;
open P19;;
open P20;;
open P21;;
open P22;;
open P23;;
open P24;;

let () =
  print_endline "Hello Ocamlers !\nThis is my Attempt on solving Ocaml's 99 problems.";
  print_endline "*--------------------------------------------------*\n";

  let problem_1 = last [1; 2; 3; 4;] in
  let problem_2 = last_two [1; 2; 3; 4; 5] in
  let problem_3 = at ["1"; "44"; "42"; "4"; "100"] 3 in
  let problem_4 = lst_len ["1"; "2"; "3"; "4"] in
  let problem_4_tail = lst_len_tail ["1"; "2"; "3"; "4"] in
  let problem_5 = rev_lst ["1"; "2"; "3"; "4"] in
  let problem_6 = is_palindrome ["a"; "t"; "o"; "t"; "a"] in
  let problem_7 = flatten [One "a"; Many [One "b"; Many [One "c"; One "d"]; One "e"]] in
  let problem_8 = compress ["a"; "a"; "a"; "b"; "b"; "B"; "c"; "c"; "d"; "d"; "a"; "a"; "e"] in
  let problem_9 = pack ["a"; "a"; "a"; "b"; "b"; "B"; "c"; "c"; "d"; "d"; "a"; "a"; "e"] in
  let problem_10 = encode_rle ["a"; "a"; "a"; "b"; "b"; "B"; "c"; "c"; "d"; "d"; "a"; "a"; "e"] in
  let problem_11 = mod_encode_rle ["a"; "a"; "a"; "b"; "b"; "B"; "c"; "c"; "d"; "d"; "a"; "a"; "e"] in
  let problem_12 = decode_rle [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")] in
  let problem_13 = encode_direct ["a"; "a"; "a"; "b"; "b"; "B"; "c"; "c"; "d"; "d"; "a"; "a"; "e"] in
  let problem_14 = duplicate ["a"; "b"; "B"; "c"; "d"; "e"; "f"] in
  let problem_15 = replicate ["a"; "b"; "B"; "c"; "d"; "e"; "f"] 3 in
  let problem_16 = drop ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3 in
  let problem_17 = split [1; 2; 3; 4; 5; 6] 3 in
  let problem_18 = slice [1; 2; 3; 4; 5; 6; 7; 8; 9] 3 5 in
  let problem_19 = rotate [1; 2; 3; 4; 5; 6; 7; 8; 9] 3 in
  let problem_20 = remove_at 3 [1; 2; 3; 4; 5; 6; 7; 8; 9] in
  let problem_21 = insert_at "Hello" 3 ["1"; "2"; "3"; "4"; "5"; "6"; "7"; "8"; "9"] in
  let problem_22_up = range 3 10 in
  let problem_22_down = range 10 3 in
  let problem_23 = rand_select ["my"; "name"; "is"; "rand"] 3 in
  let problem_24 = lotto_select 6 49 in

  print_endline "Problem 01: last [1; 2; 3; 4;]";
  print_one string_of_int problem_1;

  print_endline "Problem 02: last_two [1; 2; 3; 4; 5]";
  print_problem_two string_of_int problem_2;

  print_endline "Problem 03: at ['1'; '44'; '42'; '4'; '100'] 3";
  print_three print_endline problem_3;

  print_endline "Problem 04 and bonus: lst_len ['1'; '2'; '3'; '4']";
  print_endline (string_of_int problem_4);
  print_endline (string_of_int problem_4_tail);

  print_endline "Problem 05: rev_lst ['1'; '2'; '3'; '4']";
  List.iter print_string problem_5;

  print_endline "\nProblem 06: is_palindrome ['a'; 't'; 'o'; 't'; 'a']";
  Printf.printf "%b\n" problem_6;

  print_endline "Problem 07: flatten [One 'a'; Many [One 'b'; Many [One 'c'; One 'd']; One 'e']]";
  List.iter print_string problem_7;

  print_endline "\nProblem 08: compress ['a'; 'a'; 'a'; 'b'; 'b'; 'B'; 'c'; 'c'; 'd'; 'd'; 'a'; 'a'; 'e']";
  List.iter print_string problem_8;

  print_endline "\nProblem 09: pack ['a'; 'a'; 'a'; 'b'; 'b'; 'B'; 'c'; 'c'; 'd'; 'd'; 'a'; 'a'; 'e']";
  print_nine problem_9;

  print_endline "Problem 10: encode_rle ['a'; 'a'; 'a'; 'b'; 'b'; 'B'; 'c'; 'c'; 'd'; 'd'; 'a'; 'a'; 'e']";
  print_ten problem_10;

  print_endline "Problem 11: mod_encode_rle ['a'; 'a'; 'a'; 'b'; 'b'; 'B'; 'c'; 'c'; 'd'; 'd'; 'a'; 'a'; 'e']";
  print_eleven problem_11;

  print_endline "Problem 12: decode_rle [Many (4, 'a'); One 'b'; Many (2, 'c'); Many (2, 'a'); One 'd'; Many (4, 'e')]";
  List.iter print_string problem_12;

  print_endline "\nProblem 13: encode_direct ['a'; 'a'; 'a'; 'b'; 'b'; 'B'; 'c'; 'c'; 'd'; 'd'; 'a'; 'a'; 'e']";
  print_thirteen problem_13;

  print_endline "Problem 14: duplicate ['a'; 'b'; 'c'; 'd'; 'e'; 'f']";
  List.iter print_string problem_14;

  print_endline "\nProblem 15: replicate ['a'; 'b'; 'B'; 'c'; 'd'; 'e'; 'f'] 3";
  List.iter print_string problem_15;

  print_endline "\nProblem 16: drop ['a'; 'b'; 'c'; 'd'; 'e'; 'f'; 'g'; 'h'; 'i'; 'j'] 3";
  List.iter print_string problem_16;

  print_endline "\nProblem 17: split [1; 2; 3; 4; 5; 6] 3";
  print_seventeen problem_17;

  print_endline "Problem 18: slice [1; 2; 3; 4; 5; 6; 7; 8; 9] 3 5";
  List.iter print_int problem_18;

  print_endline "\nProblem 19: rotate [1; 2; 3; 4; 5; 6; 7; 8; 9] 3";
  List.iter print_int problem_19;

  print_endline "\nProblem 20: remove_at 3 [1; 2; 3; 4; 5; 6; 7; 8; 9]";
  List.iter print_int problem_20;

  print_endline "\nProblem 21: insert_at 'Hello' 3 ['1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9']";
  List.iter print_string problem_21;

  print_endline "\nProblem 22: range 3 10";
  List.iter print_int problem_22_up;
  print_endline "\nProblem 22: range 10 3";
  List.iter print_int problem_22_down;

  print_endline "\nProblem 23: rand_select ['my'; 'name'; 'is'; 'rand'] 3";
  List.iter print_string problem_23;

  print_endline "\nProblem 24: lotto_select 6 49";
  List.iter print_int problem_24;

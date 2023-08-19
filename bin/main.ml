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

let () =
  print_endline "Hello !\nThis is my Attempt on solving Ocaml's 99 problems.";

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

  print_endline "Problem 01: last [1; 2; 3; 4;]";
  print_one string_of_int problem_1;

  print_endline "Problem 02: last_two [1; 2; 3; 4; 5]";
  print_problem_two string_of_int problem_2;

  print_endline "Problem 03: at ['1'; '44'; '42'; '4'; '100']";
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

  print_endline "Problem 14: duplicate ['a'; 'b'; 'c'; 'd'; 'e'; 'f';]";
  List.iter print_string problem_14

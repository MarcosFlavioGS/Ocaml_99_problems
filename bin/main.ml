open Problem_one;;
open Problem_two;;
open Problem_three;;
open Problem_four;;
open Problem_five;;
open Problem_six;;
open Problem_seven;;
open Problem_eight;;
open Problem_nine;;
open Problem_ten;;

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

  print_endline "Problem 01: last [1; 2; 3; 4;]";
  print_problem_one string_of_int problem_1;

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

  print_endline "\nProblem 10: encode_rle ['a'; 'a'; 'a'; 'b'; 'b'; 'B'; 'c'; 'c'; 'd'; 'd'; 'a'; 'a'; 'e']";
  print_ten problem_10;

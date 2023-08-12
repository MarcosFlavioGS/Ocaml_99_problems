open Problem_one;;
open Problem_two;;
open Problem_three;;
open Problem_four;;
open Problem_five;;
open Problem_six;;

let () =
  print_endline "Hello !\nThis is my Attempt on solving Ocaml's 99 problems.";

  let problem_one = last [1; 2; 3; 4;] in
  let problem_two = last_two [1; 2; 3; 4; 5] in
  let problem_three = fd_nth_element ["1"; "44"; "42"; "4"; "100"] 3 in
  let problem_four = lst_len ["1"; "2"; "3"; "4"] in
  let problem_four_tail = lst_len_tail ["1"; "2"; "3"; "4"] in
  let problem_five = rev_lst ["1"; "2"; "3"; "4"] in
  let problem_six = is_palindrome ["a"; "t"; "o"; "t"; "a"] in

  print_endline "Problem 01: last [1; 2; 3; 4;]";
  print_problem_one string_of_int problem_one;

  print_endline "Problem 02: last_two [1; 2; 3; 4; 5]";
  print_problem_two string_of_int problem_two;

  print_endline "Problem 03: fd_nth_element ['1'; '44'; '42'; '4'; '100']";
  print_endline problem_three;

  print_endline "Problem 04 and bonus: lst_len ['1'; '2'; '3'; '4']";
  print_endline (string_of_int problem_four);
  print_endline (string_of_int problem_four_tail);

  print_endline "Problem 05: ['1'; '2'; '3'; '4']";
  List.iter print_string problem_five;

  print_endline "\nProblem 06: ['a'; 't'; 'o'; 't'; 'a']";
  Printf.printf "%b\n" problem_six;;

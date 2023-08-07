open Problem_one;;
open Problem_two;;
open Problem_three;;
open Problem_four;;

let () =
  print_endline "Hello !\nThis is my Attempt on solving Ocaml's 99 problems.";
  let problem_one = last [1; 2; 3; 4;] in
  let problem_two = last_two [1; 2; 3; 4; 5] in
  let problem_three = fd_nth_element ["1"; "44"; "42"; "4"; "100"] 3 in
  let problem_four = lst_len ["1"; "2"; "3"; "4"] in

  print_problem_one string_of_int problem_one;
  print_problem_two string_of_int problem_two;
  print_endline problem_three;
  print_endline (string_of_int problem_four)

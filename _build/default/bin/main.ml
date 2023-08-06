open Problem_one;;
open Problem_two;;

let () =
  print_endline "Hello, World!";
  let problem_one = last [1; 2; 3; 4;] in
  let problem_two = last_two [1; 2; 3; 4; 5] in

  print_problem_one string_of_int problem_one;
  print_problem_two string_of_int problem_two

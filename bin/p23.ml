(* Problem 23 *)
open P04;;

let rand_select (lst: 'a list) (n: int): 'a list =
  let rec extract_rnd acc n = function
    | [] -> raise Not_found
    | h :: t ->
      if n = 0 then (h, acc @ t) else extract_rnd (h :: acc) (n - 1) t
  in

  let rec rand' n len acc = function
    | [] -> acc
    | lst ->
      if n = 0 then acc else
        let num = Random.int len in
        let elem, tail = extract_rnd [] num lst in

        rand' (n - 1) (len - 1) (elem :: acc) tail
  in

  (*Random.self_init();*)
  let len = (lst_len_tail lst) in

  rand' n len [] lst;;

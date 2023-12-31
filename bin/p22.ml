(* Problem 22 *)
open P05;;

let range (srt: int) (nd: int) =
  let rec up srt nd acc =
    if srt < nd then up (srt + 1) nd (srt :: acc)
    else srt :: acc
  in
  if srt < nd then rev_lst (up srt nd [])
  else up nd srt []

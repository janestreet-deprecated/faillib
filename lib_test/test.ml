
let { Lexing.pos_lnum = _; _} = _here_  (* test that we've got pa_here loaded *)

let () =
  let failwithp ~here:{Lexing.pos_lnum = _; _} () = () in
  (* compilation fails if this is not rewritten to failwithp with the right arguments *)
  failwiths ();
  (* compilation fails if this is rewritten to pass ~here argument twice *)
  failwithp ~here:_here_ ()

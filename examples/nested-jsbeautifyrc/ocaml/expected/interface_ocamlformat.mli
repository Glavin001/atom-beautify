(* This file is a valid .mli file but not valid .ml, to test whether the formatter is invoked correctly. *)

module Hello : sig
  val hello : unit -> unit
end

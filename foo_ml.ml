open Ctypes
open Foreign

let printhello = foreign "printhello" (void @-> returning void)

let _ = printhello ()

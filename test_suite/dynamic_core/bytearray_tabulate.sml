(*

Result: OK
 
$Log: bytearray_tabulate.sml,v $
Revision 1.4  1997/05/28 11:52:05  jont
[Bug #30090]
Remove uses of MLWorks.IO

 * Revision 1.3  1996/09/11  14:32:17  io
 * [Bug #1603]
 * convert MLWorks.ByteArray to MLWorks.Internal.ByteArray or equivalent basis functions
 *
 * Revision 1.2  1996/05/01  17:09:30  jont
 * Fixing up after changes to toplevel visible string and io stuff
 *
 * Revision 1.1  1993/03/25  16:10:37  jont
 * Initial revision
 *

Copyright 2013 Ravenbrook Limited <http://www.ravenbrook.com/>.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)

fun f x = 10-x

val a = MLWorks.Internal.ByteArray.tabulate(10, f)

val b = MLWorks.Internal.ByteArray.arrayoflist[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

fun eq(a, b) =
  let
    val l = MLWorks.Internal.ByteArray.length a
  in
    if l <> MLWorks.Internal.ByteArray.length b then
      (print"Fail on unequal length\n";
       false)
    else
      let
	fun compare 0 = true
	  | compare n =
	    let
	      val n' = n-1
	    in
	      MLWorks.Internal.ByteArray.sub(a, n') = MLWorks.Internal.ByteArray.sub(b, n') andalso
	      compare n'
	    end
      in
	compare l
      end
  end

val _ = print(if eq(a, b) then "Pass\n" else "Fail\n")

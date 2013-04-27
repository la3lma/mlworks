(*

Result: OK
 
$Log: bytearray_arrayoflist.sml,v $
Revision 1.4  1997/05/28 11:42:00  jont
[Bug #30090]
Remove uses of MLWorks.IO

 * Revision 1.3  1996/09/11  14:32:14  io
 * [Bug #1603]
 * convert MLWorks.ByteArray to MLWorks.Internal.ByteArray or equivalent basis functions
 *
 * Revision 1.2  1996/05/01  16:58:18  jont
 * Fixing up after changes to toplevel visible string and io stuff
 *
 * Revision 1.1  1993/03/25  11:52:38  jont
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

val a = MLWorks.Internal.ByteArray.arrayoflist[1,2,3,4,5,1,2,3,4,5]

val b = MLWorks.Internal.ByteArray.length a

val c = MLWorks.Internal.ByteArray.sub(a, 7)

val _ = print(if b = 10 then "Pass1\n" else "Fail1\n")

val _ = print(if c = 3 then "Pass2\n" else "Fail2\n")

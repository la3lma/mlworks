/* Copyright 2013 Ravenbrook Limited <http://www.ravenbrook.com/>.
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 * IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * This is the interface to some of functions that are used to
 * implement OS.errorMsg, OS.errorName and OS.syserror.
 * The functions themselves are automatically generated,
 * see ./GNUmake and rts/awk/win32_{c,os}_errors_c.awk for more information.
 *
 * Revision Log
 * ------------
 *
 * $Log: os_errors.h,v $
 * Revision 1.3  1997/05/21 11:02:15  johnh
 * [Bug #01702]
 * mlw_win32_strerror moved to win32_error.h.
 *
 * Revision 1.2  1996/06/03  13:51:59  stephenb
 * Replace mlw_os_strerror with mlw_win32_strerror since the former is
 * no longer exported from os_errors.c.
 *
 * Revision 1.1  1996/05/28  10:50:22  stephenb
 * new unit
 *
 */

#ifndef os_errors_h
#define os_errors_h

extern mlval mlw_os_error_name(mlval);
extern mlval mlw_os_syserror(mlval);

#endif /* !os_errors_h */

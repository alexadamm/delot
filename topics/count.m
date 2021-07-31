\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

: countMsg
q{
<h2>Coming soon!</h2>
}q
;

: countMenu
ctx{ msg }
"Kembali Ke Menu Utama" button ctx{ previous }
q{
<p align="center">#{msg}</p><br>
#{previous}
}q
;

Q: Menghitung
A: ${ countMsg countMenu }
--
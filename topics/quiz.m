\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

include ./topics

: quizMsg
q{
<h2>Coming soon!</h2>
}q
;

: quizMenu
ctx{ msg }
"Kembali Ke Menu Utama" btn ctx{ previous }
q{
<p align="center">#{msg}</p><br>
#{previous}
}q
;

Q: Kuis
A: ${ quizMsg quizMenu }
--

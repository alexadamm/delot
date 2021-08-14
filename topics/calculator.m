\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

include ./topics

: calMainMsg
q{
<p> Pilih apa yang ingin anda hitung </p>
}q
;


: calMenu
ctx{ msg }
"Kuat Arus" btn "Hambatan" btn "Energi Listrik" btn "Daya Listrik" btn "Kembali Ke Menu Utama" wbtn ctx{ btn1 btn2 btn3 btn4 previous }
q{
<p align="center">#{msg}</p><br>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
<p>#{previous}</p>
}q
;

Q: Kalkulator
A: ${ calMainMsg calMenu }
--



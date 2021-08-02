\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

include ./style.m

@: showMainMenu
showMainMenu: siap kembali_ke_menu_utama

: main-message
q{
<p>Pilih salah satu menu dibawah ini untuk mengenal listrik dinamis lebih dalam:</p>
}q
;

: main-button ( "message" -- "s" )
ctx{ msg }
"Belajar" btn "Kuis" btn "Menghitung" btn ctx{ learn quiz count }
q{
<p>#{msg}</p><br>
<p>#{learn}</p>
<p>#{quiz}</p>
<p>#{count}</p>
}q
;

Q: $showMainMenu
A: ${ main-message main-button }
--

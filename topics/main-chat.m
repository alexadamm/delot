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
<img src="https://lh4.googleusercontent.com/BZEcOLpoKkplY0FuAqqtU4pgKt0AWSahUpkILpYqbSWnoDaB8STILhAaC74pyy2F0r2QQjC2TWYEHoarwNPWUAET3KfdQMwUMEZtLiU0CCKjVYL37q1rnCwyMTnOOFtiKeUQ4S2k" width="95%" length="95" />
<p style="text-align:justify;"> Pilih salah satu menu di bawah ini untuk mengenal listrik dinamis lebih dalam! </p>
}q
;


: main-button ( "message" -- "s" )
ctx{ msg }
"Belajar 📚" btn "Kuis 📝" btn "Kalkulator 📱" btn ctx{ learn quiz count }
q{
#{msg}<br>
<p>#{learn}</p>
<p>#{quiz}</p>
<p>#{count}</p>
}q
;


Q: $showMainMenu
A: ${ main-message main-button }
--

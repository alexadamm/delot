\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

include ./topics/quizQuest.m
include ./style.m


: quizMsg
q{
<img src="https://lh4.googleusercontent.com/OGb5aXoqRyupltAqppIPjGHK1lN8EP93xq14yhBjV_QdnUe1Lx7H9QjexC-lke7lzI50ohKUqcTKNjm5W8RZAbR70ZIwGUlPQCGmKXTpsjiMD0TrvCj0Q7qdrDkNwlxjbjFJWNAi" width="95%" height="95%" />
<p> Setelah belajar tentang listrik dinamis yuk latihan soal bareng <b style="font-style:italic">DELOT</b> untuk menguji seberapa paham kamu dengan materi listrik dinamis ini.
Sudah siap?”</p>
<br>
}q
;

: quizCorrectAns
q{
<p>Kamu hebat! Jawaban kamu benar 😆😆</p>
<img src="https://lh3.googleusercontent.com/mFJO2JnJ-E9vF2zeImVZswIdgn9eYsuHYGyY5HPwhxxaHOiO5DRzStahNhOlr9m3dPWetq1zU8mVWAXxWEX6ow9hOo0P8WZdOnt16C0eaz59RaiGGaeo4HepEMNazx4FMG_rhKmd" width="95%" height="95%" />
}q
;

: quizWrongAns
q{
<p>Ooops! Sayangnya jawaban kamu masih salah 😢😟</p>
<img src="https://lh4.googleusercontent.com/n_oBpaUCOeT7dY5FuYY5EvzrONIrJT4yfgSyUOaakwrvJQbArMJfAo3XVDBbVe-wyXcAbbbdQv9SJdE3O9treLvAkZZhNVMPMMCfYgIKj9fdZXqw8H5G0DDrFaty9LBVlLKyaCRk" width="95%" height="95%" />
}q
;

: quizMenu
ctx{ msg }
"Siapp Dong 💪" btn "Kembali Ke Menu Utama" wbtn ctx{ rd previous }
q{
#{msg}
<p>#{rd}</p>
<p>#{previous}</p>
}q
;

: questMenu1
ctx{ msg }
"A. 0,6 A" btn "B. 0,8 A" btn "C. 1,2 A" btn "D. 2,4 A" btn ctx{ btn1 btn2 btn3 btn4 }
q{
#{msg}<br>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
}q
;

: questMenu2
ctx{ msg }
"A. karet, karbon, dan aluminium" btn "B. kaca, udara, dan kertas" btn "C. karet, emas, dan plastik" btn "D. karet, karbon, dan kertas" btn ctx{ btn1 btn2 btn3 btn4 }
q{
#{msg}<br>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
}q
;

: questMenu3
ctx{ msg }
"A. (1), (2), dan (3)" btn "B. (1) dan (3)" btn "C. (2) dan (4)" btn "D. (4) saja" btn ctx{ btn1 btn2 btn3 btn4 }
q{
#{msg}<br>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
}q
;

: questMenu4
ctx{ msg }
"A. 400" btn "B. 300" btn "C. 240" btn "D. 90" btn ctx{ btn1 btn2 btn3 btn4 }
q{
#{msg}<br>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
}q
;

: questMenu5
ctx{ msg }
"A. 9,0 Ω" btn "B. 8,4 Ω" btn "C. 7,0 Ω" btn "D. 5,2 Ω" btn ctx{ btn1 btn2 btn3 btn4 }
q{
#{msg}<br>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
}q
;

: congratsMsg
"Kembali Ke Menu Utama" btn ctx{ btn }
q{
<img src="https://lh5.googleusercontent.com/0Ayt2lvtJp2dY1UXPlJ0u_SCUYFHEgLwZZOqmR5b1jbFtISitXwfaoVTGlcXjO3wTvicP0sf0Dx4bJsuixOrQt8BMaCNgMW2eB2D1G0QWPk4aomiNtpbQPo9wYthnkbaFNVsBmpe" width="95%" height="95%" />
<p>Yey! Sudah selesai! Jangan lupa ikuti tantangan dare dari Delot ya! :)</p>
<br>
#{btn}
}q
;

Q: Kuis
A: ${ quizMsg quizMenu }
K: $back 1stQuest
--

room: 1stQuest

Q: Siapp Dong
A: ${ quest1 questMenu1 }
K: $back quiz1stRoom
--

end-room

room: 2ndQuest

Q: Selanjutnya
A: ${ quest2 questMenu2 }
K: $back quiz2ndRoom
--

end-room

room: 3rdQuest

Q: selanjutnya
A: ${ quest3 questMenu3 }
K: $back quiz3rdRoom
--

end-room

room: 4thQuest

Q: selanjutnya
A: ${ quest4 questMenu4 }
K: $back quiz4thRoom
--

end-room

room: 5thQuest

Q: selanjutnya
A: ${ quest5 questMenu5 }
K: $back quiz5thRoom
--

end-room

room: quiz1stRoom

Q: 24
A: ${quizCorrectAns} ${bb} ${quest1A} <br> ${ "Selanjutnya" btn }
K: $back 2ndQuest
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest1A} <br> ${ "Selanjutnya" btn }
K: $back 2ndQuest
--

end-room

room: quiz2ndRoom

Q: Kaca
A: ${quizCorrectAns} ${bb} ${quest2A} <br> ${ "Selanjutnya" btn }
K: $back 3rdQuest
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest2A} <br> ${ "Selanjutnya" btn }
K: $back 3rdQuest
--

end-room

room: quiz3rdRoom

Q: dan (3)
A: ${quizCorrectAns} ${bb} ${quest3A} <br> ${ "Selanjutnya" btn }
K: $back 4thQuest
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest3A} <br> ${ "Selanjutnya" btn }
K: $back 4thQuest
--

end-room

room: quiz4thRoom

Q: 240
A: ${quizCorrectAns} ${bb} ${quest4A} <br> ${ "Selanjutnya" btn }
K: $back 5thQuest
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest4A} <br> ${ "Selanjutnya" btn }
K: $back 5thQuest
--

end-room

room: quiz5thRoom

Q: 52
A: ${quizCorrectAns} ${bb} ${quest5A} <br> ${ "Selanjutnya" btn }
K: $back congrats
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest5A} <br> ${ "Selanjutnya" btn }
K: $back congrats
--

end-room

room: congrats

Q: selanjutnya
A: ${congratsMsg}
K: $back
--

end-room
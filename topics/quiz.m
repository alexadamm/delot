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

<p> Setelah belajar tentang listrik dinamis yuk latihan soal bareng DELOT untuk menguji seberapa paham kamu dengan materi listrik dinamis ini. </p>
<p> Sudah siap? </p>
}q
;



: quizMenu
ctx{ msg }
"No 1" btn "No 2" btn "No3" btn "No4" btn "No5" btn "Kembali Ke Menu Utama" wbtn ctx{ btn1 btn2 btn3 btn4 btn5 previous }
q{
#{msg}
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
<p>#{btn5}</p>
<p>#{previous}</p>
}q
;


Q: Kuis
A: ${ quizMsg startquizMenu }
--

end-room

room: study2ndRoom

Q: Selanjutnya
A: ${ study2ndMsg studyMenu }
K: $back study3rdRoom
--

end-room

room: study3rdRoom

Q: Selanjutnya
A: ${ study3rdMsg studyMenu }
K: $back study4thRoom
--

end-room

room: study4thRoom

Q: Selanjutnya
A: ${ study4thMsg studyMenu }
K: $back studyLastRoom
--

end-room

room: studyLastRoom

Q: Selanjutnya
A: ${ study5thMsg backMenu }
K: $back
--


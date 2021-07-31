\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

@: showLearnMenu
showLearnMenu: belajar kembali_ke_menu_belajar

\ Messages

: learnMenuMsg
q{
<h1>Kosong</h1>
}q
;

: startStudyMsg
q{
<h4> Konten Belajar #1 </h4>
}q
;

: study2ndMsg
q{
<h4> Konten Belajar #2 </h4>
}q
;

: study3rdMsg
q{
<h4> Konten Belajar #3 </h4>
}q
;

: study4thMsg
q{
<h4> Konten Belajar #4 </h4>
}q
;

: tutorVidMsg
q{
<h4>Konten Video Pembelajaran</h4>
}q
;

: summaryMsg
q{
<h4>Konten Ringkasan</h4>
}q
;

\ Menu templates

: learnMenu
ctx{ msg }
"Mulai Belajar" button "Video Pembelajaran" button "Ringkasan" button "Kembali Ke Menu Utama" button ctx{ startStudy tutorVid summary mainMenu}
q{
<p>#{msg}</p><br>
<div align="center">#{startStudy} #{summary}</div>
<div align="center">#{tutorVid}</div>
<div align="center">#{mainMenu}</div>
}q
;

: studyMenu
ctx{ msg }
"Berikutnya" button ctx{ next }
q{
<p>#{msg}</p><br>
<div align="center">#{next}</div>
}q
;

: backMenu
ctx{ msg }
"Kembali Ke Menu Belajar" button ctx{ previous }
q{
<p>#{msg}</p><br>
<div align="center">#{previous}</div>
}q
;


\ roooms



room: learnMenuNext

Q: Mulai Belajar
A: ${ startStudyMsg studyMenu }
K: $back study2ndRoom
--

Q: Video Pembelajaran
A: ${ tutorVidMsg backMenu }
K: $back
--

Q: Ringkasan
A: ${ summaryMsg backMenu }
K: $back
--

end-room

room: study2ndRoom

Q: Berikutnya
A: ${ study2ndMsg studyMenu }
K: $back study3rdRoom
--

end-room

room: study3rdRoom

Q: Berikutnya
A: ${ study3rdMsg studyMenu }
K: $back studyLastRoom
--

end-room

room: studyLastRoom

Q: Berikutnya
A: ${ study4thMsg backMenu }
K: $back
--

end-room



Q: $showLearnMenu
A: ${ learnMenuMsg learnMenu }
K: $back learnMenuNext
--
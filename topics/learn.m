\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

include ./style.m
include ./topics/studyMessages.m
include ./topics/summaryNVidMessages.m
include ./topics/flashcard.m
include ./topics/main-chat.m


@: showLearnMenu
showLearnMenu: ayo_belajar kembali_ke_menu_belajar

\ Messages

: learnMenuMsg
q{
<title> Delot | Dynamic Electricity Bot </title>
<img src="https://lh4.googleusercontent.com/HpXhcap6kbE9zJF4qtW_JF-Rgs1YFeNWTz8JSbRVgFIAp5kdURFcb8B8j7jJm-gfvsazGMqtpdxtoUUAnzi5CYr8ikRUi2AAWOEeio-JFiwdRW0V1kj_ScpWtt_21MbgEsSIUGWC" width="95%" length="95%" />
<p style="text-align:justify;">Delot akan menemanimu belajar mengenai listrik dinamis.
Silahkan pilih salah satu opsi dibawah ini dimulai dari 'mulai belajar' ya.</p>
}q
;

: learnMsg
"Ayo Belajar 📖" btn ctx{ btn }
q{
<title> Delot | Dynamic Electricity Bot </title>
<p style="text-align:justify;">Kalian tau ga? 🤔</p>
<p style="text-align:justify;">Penggunaan baterai merupakan salah satu
aplikasi dari listrik dinamis loh. Keberadaannya sama seperti listrik
statis yang ada dimana-mana. Contohnya yaitu penggunaan baterai di mobil-mobilan. Ketika saklar
<i> ON dinyalakan,</i> maka
<i> kedua ujung batu baterai</i> yang
<u> mengandung muatan listrik</u> akan
<u>terhubung</u> dengan motor listrik yang ada pada 
mobil-mobilan tersebut. Jadi, mobil-mobilannya bisa jalan deh!</p>
</div><br>
<img class="pic" src="https://lh6.googleusercontent.com/RMMP-214RetHaX5JTPlVN8-yPOjgq7ejvbRVBkXuY7uKhRheSDOYF-NsSB1zVwE32pYKBYEDzPxc84eUwVxThTTvlr_PPb3di7QHYjZ210qDQ8BjHu7QcBl-M2_S3x34Gm__zhmd" style="vertical-align:middle;border:none;">
<div style="padding:10px;border-radius:16px;display:inline-block;text-align:left;vertical-align:middle;border:solid #ddc1a7 2.5px;color:#333;font-family:Hahmlet, serif;;font-size:16px;background:#EEE;word-wrap:break-word;min-width:40px;max-width:250px;">
<img src="https://lh3.googleusercontent.com/i6eQv3NijMBsyMhKacr714_ZYyy_RfrPR13NrxOpu7YTtZT5PAhX2YTgXTXBMM8sb0jdOzMXUaWBwAKTkUz8HvjGR6l3NzkyMiI8jTOCKiLd6gzWK81SjNvG2FuV5_UL-i6RK4NB" width="95%" length="95%" />
<p style="text-align:justify;">Sekarang, di kehidupan sehari-hari kita nggak mungkin kalau nggak menggunakan listrik kan. Nah makanya materi ini banget buat kamu pelajari karena sangat berkaitan erat dengan kehidupan kita sehari-hari!</p>
<br>
#{btn}
}q
;

\ Menu templates


: learnMenu
"Mulai Belajar ✏️" btn "Video Pembelajaran 🎥" btn "Ringkasan 📑" btn "Flash Card 🃏" btn "Kembali Ke Menu Utama 🔙" wbtn ctx{ startStudy tutorVid summary card mainMenu }
q{
<title> Delot | Dynamic Electricity Bot </title>
<img src="https://lh4.googleusercontent.com/HpXhcap6kbE9zJF4qtW_JF-Rgs1YFeNWTz8JSbRVgFIAp5kdURFcb8B8j7jJm-gfvsazGMqtpdxtoUUAnzi5CYr8ikRUi2AAWOEeio-JFiwdRW0V1kj_ScpWtt_21MbgEsSIUGWC" width="95%" length="95%" />
<p style="text-align:justify;">Delot akan menemanimu belajar mengenai listrik dinamis.
Silahkan pilih salah satu opsi dibawah ini dimulai dari 'mulai belajar' ya.</p><br>
<p>#{startStudy}</p>
<p>#{summary}</p>
<p>#{tutorVid}</p>
<p>#{card}</p>
<p>#{mainMenu}</p>
}q
;

: studyMenu
ctx{ msg }
"Selanjutnya ⏩" btn "Sebelumnya 🔙" btn "Kembali Ke Menu Belajar 🔙" wbtn ctx{ next previous menu }
q{
<title> Delot | Dynamic Electricity Bot </title>
#{msg}
<p>#{next}</p>
<p>#{previous}</p>
<p>#{menu}</p>
}q
;

: backMenu
ctx{ msg }
"Sebelumnya 🔙" btn "Kembali Ke Menu Belajar 🔙" wbtn ctx{ previous menu }
q{
<title> Delot | Dynamic Electricity Bot </title>
<p>#{msg}</p><br>
<p>#{previous}</p>
<p>#{menu}</p>
}q
;

\ rooms

room: learnMenuNext

Q: Mulai Belajar
A: ${ startStudyMsg } <p>${ "Selanjutnya ⏩" btn }</p><p>${"Kembali Ke Menu Belajar 🔙" wbtn}
K: $back study2ndRoom
--

Q: Video Pembelajaran
A: ${tutorVidMsg1} ${bb} ${tutorVidMsg2} ${ tutorVidMsg3 backMenu }
K: $back
--

Q: Ringkasan
A: ${summaryMsg} ${bb} ${summaryMsg2} ${ summaryMsg3 backMenu }
K: $back
--

Q: Kembali Ke Menu Utama
A: ${ main-message main-button }
K: $back 
--

end-room

room: study2ndRoom

Q: Selanjutnya
A: ${study2ndMsg} ${bb} ${ study2ndMsg2 studyMenu }
K: $back study3rdRoom
--

end-room

room: study3rdRoom

Q: Selanjutnya
A: ${ study3rdMsg studyMenu }
K: $back study4thRoom
--

Q: Sebelumnya
A: ${ startStudyMsg } <p>${ "Selanjutnya ⏩" btn }</p><p>${"Kembali Ke Menu Belajar 🔙" wbtn}
K: $back study2ndRoom
--

end-room

room: study4thRoom

Q: Selanjutnya
A: ${study4thMsg} ${bb} ${ study4thMsg2 studyMenu }
K: $back study5thRoom
--

Q: Sebelumnya
A: ${study2ndMsg} ${bb} ${ study2ndMsg2 studyMenu }
K: $back study3rdRoom
--

end-room

room: study5thRoom

Q: Selanjutnya
A: ${study5thMsg} ${bb} ${ study5thMsg2 studyMenu }
K: $back study6thRoom
--

Q: Sebelumnya
A: ${ study3rdMsg studyMenu }
K: $back study4thRoom
--

end-room

room: study6thRoom

Q: Selanjutnya
A: ${study6thMsg} ${bb} ${ study6thMsg2 studyMenu }
K: $back study7thRoom
--

Q: Sebelumnya
A: ${study4thMsg} ${bb} ${ study4thMsg2 studyMenu }
K: $back study5thRoom
--

end-room

room: study7thRoom

Q: Selanjutnya
A: ${study7thMsg} ${bb} ${ study7thMsg2 studyMenu }
K: $back study8thRoom
--

Q: Sebelumnya
A: ${study5thMsg} ${bb} ${ study5thMsg2 studyMenu }
K: $back study6thRoom
--

end-room

room: study8thRoom

Q: Selanjutnya
A: ${study8thMsg} ${bb} ${ study8thMsg2 studyMenu }
K: $back study9thRoom
--

Q: Sebelumnya
A: ${study6thMsg} ${bb} ${ study6thMsg2 studyMenu }
K: $back study7thRoom
--

end-room

room: study9thRoom

Q: Selanjutnya
A: ${study9thMsg studyMenu }
K: $back study10thRoom
--

Q: Sebelumnya
A: ${study7thMsg} ${bb} ${ study7thMsg2 studyMenu }
K: $back study8thRoom
--

end-room

room: study10thRoom

Q: Selanjutnya
A: ${study10thMsg} ${bb} ${ study10thMsg2 studyMenu }
K: $back study11thRoom
--

Q: Sebelumnya
A: ${study8thMsg} ${bb} ${ study8thMsg2 studyMenu }
K: $back study9thRoom
--

end-room

room: study11thRoom

Q: Selanjutnya
A: ${study11thMsg} ${bb} ${ study11thMsg2 studyMenu }
K: $back study12thRoom
--

Q: Sebelumnya
A: ${study9thMsg studyMenu }
K: $back study10thRoom
--

end-room

room: study12thRoom

Q: Selanjutnya
A: ${study12thMsg} ${bb} ${ study12thMsg2 studyMenu }
K: $back study13thRoom
--

Q: Sebelumnya
A: ${study10thMsg} ${bb} ${ study10thMsg2 studyMenu }
K: $back study11thRoom
--

end-room

room: study13thRoom

Q: Selanjutnya
A: ${ study13thMsg studyMenu }
K: $back studyLastRoom
--

Q: Sebelumnya
A: ${study11thMsg} ${bb} ${ study11thMsg2 studyMenu }
K: $back study12thRoom
--

end-room

room: studyLastRoom

Q: Selanjutnya
A: ${ study14thMsg backMenu }
K: $back studyExtRoom
--

Q: Sebelumnya
A: ${study12thMsg} ${bb} ${ study12thMsg2 studyMenu }
K: $back study13thRoom
--

end-room

room: studyExtRoom

Q: Sebelumnya
A: ${ study13thMsg studyMenu }
K: $back studyLastRoom
--

end-room

mem: plus

assoc: isOver

{{
    1 learnMsg
    2 learnMenu
    3 learnMenu
    4 learnMenu
    5 learnMenu
    6 learnMenu
    7 learnMenu
    8 learnMenu
    9 learnMenu
    10 learnMenu
    11 learnMenu
    12 learnMenu
    13 learnMenu
    14 learnMenu
    15 learnMenu
    16 learnMenu
    17 learnMenu
    18 learnMenu
    19 learnMenu
    20 learnMenu
}} +isOver


Q: Belajar
A: ${plus isOver}
K: +plus % $back learnMenuNext
--

Q: $showLearnMenu
A: ${learnMenu}
K: $back learnMenuNext
--

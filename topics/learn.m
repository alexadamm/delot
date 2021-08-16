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


@: showLearnMenu
showLearnMenu: ayo_belajar kembali_ke_menu_belajar

\ Messages

: learnMenuMsg
q{
<img src="https://lh4.googleusercontent.com/HpXhcap6kbE9zJF4qtW_JF-Rgs1YFeNWTz8JSbRVgFIAp5kdURFcb8B8j7jJm-gfvsazGMqtpdxtoUUAnzi5CYr8ikRUi2AAWOEeio-JFiwdRW0V1kj_ScpWtt_21MbgEsSIUGWC" width="95%" length="95%" />
<p style="text-align:justify;">Delot akan menemanimu belajar mengenai listrik dinamis.
Silahkan pilih salah satu opsi dibawah ini dimulai dari 'mulai belajar' ya.</p>
}q
;

: learn1stMsg
q{
<p style="text-align:justify;">Kalian tau ga? 🤔</p>
<p style="text-align:justify;">Penggunaan baterai merupakan salah satu
aplikasi dari listrik dinamis loh. Keberadaannya sama seperti listrik
statis yang ada dimana-mana. Contohnya yaitu penggunaan baterai di mobil-mobilan. Ketika saklar
<i> ON dinyalakan,</i> maka
<i> kedua ujung batu baterai</i> yang
<u> mengandung muatan listrik</u> akan
<u>terhubung</u> dengan motor listrik yang ada pada 
mobil-mobilan tersebut. Jadi, mobil-mobilannya bisa jalan deh!</p>
<img src="https://lh3.googleusercontent.com/i6eQv3NijMBsyMhKacr714_ZYyy_RfrPR13NrxOpu7YTtZT5PAhX2YTgXTXBMM8sb0jdOzMXUaWBwAKTkUz8HvjGR6l3NzkyMiI8jTOCKiLd6gzWK81SjNvG2FuV5_UL-i6RK4NB" width="95%" length="95%" />
<p style="text-align:justify;">Sekarang, di kehidupan sehari-hari kita nggak mungkin kalau nggak menggunakan listrik kan. Nah makanya materi ini banget buat kamu pelajari karena sangat berkaitan erat dengan kehidupan kita sehari-hari!</p>
<br>
}q
;

: learn2ndMsg
q{
<p style="text-align:justify;">Selain mainan mobil-mobilan, Penggunaan listrik dinamis
itu beragam sekali. Kamu bisa lihat pada komputer, bor listrik, kulkas, tv, barang-barang
peralatan rumah tangga yang lain, dan senter. Lampu senter bisa menyala dan
bersinar karena ada aliran elektron di dalamnya.</p>
<p style="text-align:justify;">Sekarang, di kehidupan sehari-hari kita
nggak mungkin kalau nggak menggunakan listrik kan. Nah makanya materi ini
banget buat kamu pelajari karena sangat berkaitan erat dengan kehidupan kita sehari-hari!</p>
<p style="text-align:justify;">Nah makanya materi ini penting banget buat
kamu pelajari karena sangat berkaitan erat dengan kehidupan kita sehari-hari!</p>
<br>
}q
;

\ Menu templates


: learnMenu
ctx{ msg }
"Mulai Belajar ✏️" btn "Video Pembelajaran 🎥" btn "Ringkasan 📑" btn "Kembali Ke Menu Utama 🔙" wbtn ctx{ startStudy tutorVid summary mainMenu }
q{
#{msg}<br>
<p>#{startStudy}</p>
<p>#{summary}</p>
<p>#{tutorVid}</p>
<p>#{mainMenu}</p>
}q
;

: studyMenu
ctx{ msg }
"Selanjutnya ⏩" btn "Kembali Ke Menu Belajar 🔙" wbtn ctx{ next previous }
q{
#{msg}
<p>#{next}</p>
<p>#{previous}</p>
}q
;

: backMenu
ctx{ msg }
"Kembali Ke Menu Belajar 🔙" wbtn ctx{ previous }
q{
<p>#{msg}</p><br>
#{previous}
}q
;

\ rooms

room: learnMenuNext

Q: Mulai Belajar
A: ${ startStudyMsg studyMenu }
K: $back study2ndRoom
--

Q: Video Pembelajaran
A: ${tutorVidMsg1} ${bb} ${tutorVidMsg2} ${bb} ${ tutorVidMsg3 backMenu }
K: $back
--

Q: Ringkasan
A: ${summaryMsg} ${bb} ${ summaryMsg2 backMenu }
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

end-room

room: study4thRoom

Q: Selanjutnya
A: ${study4thMsg} ${bb} ${ study4thMsg2 studyMenu }
K: $back study5thRoom
--

end-room

room: study5thRoom

Q: Selanjutnya
A: ${study5thMsg} ${bb} ${ study5thMsg2 studyMenu }
K: $back study6thRoom
--

end-room

room: study6thRoom

Q: Selanjutnya
A: ${study6thMsg} ${bb} ${ study6thMsg2 studyMenu }
K: $back study7thRoom
--

end-room

room: study7thRoom

Q: Selanjutnya
A: ${study7thMsg} ${bb} ${ study7thMsg2 studyMenu }
K: $back study8thRoom
--

end-room

room: study8thRoom

Q: Selanjutnya
A: ${study8thMsg} ${bb} ${ study8thMsg2 studyMenu }
K: $back study9thRoom
--

end-room

room: study9thRoom

Q: Selanjutnya
A: ${study9thMsg studyMenu }
K: $back study10thRoom
--

end-room

room: study10thRoom

Q: Selanjutnya
A: ${study10thMsg} ${bb} ${ study10thMsg2 studyMenu }
K: $back study11thRoom
--

end-room

room: study11thRoom

Q: Selanjutnya
A: ${study11thMsg} ${bb} ${ study11thMsg2 studyMenu }
K: $back study12thRoom
--

end-room

room: study12thRoom

Q: Selanjutnya
A: ${study12thMsg} ${bb} ${ study12thMsg2 studyMenu }
K: $back study13thRoom
--

end-room

room: study13thRoom

Q: Selanjutnya
A: ${ study13thMsg studyMenu }
K: $back studyLastRoom
--

end-room

room: studyLastRoom

Q: Selanjutnya
A: ${ study14thMsg backMenu }
K: $back
--

end-room



Q: Belajar
A: ${learn1stMsg} ${ "Ayo Belajar 📖" btn }
--

Q: $showLearnMenu
A: ${ learnMenuMsg learnMenu }
K: $back learnMenuNext
--


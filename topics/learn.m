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
<h4> Listrik merupakan suatu suatu yang bermuatan positif dan negatif, mengalir melalui penghantar. Sementara dinamis ialah bergerak, berubah-ubah. <br>
Jadi, "listrik dinamis" adalah listrik yang bisa bergerak dan listrik dinamis ini terjadi karena ada arus listrik searah dan arus listrik bolak-balik. <br>
Contohnya pada lampu, bel listrik dll. <br> <br>
Apakah kalian tahu apa itu arus listrik? <br>
Arus listrik adalah aliran muatan. <br>
Arus listrik ini mengalir dari kutub negatif ke kutub positif. <br>
Ada beberapa syarat terjadinya arus listrik, yaitu : Harus ada perbedaan potensial dan rangkaian listriknya harus tertutup. <br>
Jadi, arus listrik dapat mengalir karena dipengaruhi oleh beda potensial dan besarnya hambatan. Sehingga, semakin besar nilai dan sumber tegangan, maka akan semakin besar pula jumlah arus listriknya. Tapi jika hambatannya diperbesar, maka besar arus akan semakin berkurang <br>
Berikut ini merupakan rumus arus listrik :
(...) <br><br><br>
Arus listrik ini dapat mengalir karena adanya rangkaian listrik. Nah, sekarang mari kita bahas rangkaian listrik.
</h4>
}q
;

: study2ndMsg
q{
<h4> Rangkaian listrik adalah rangkaian alat-alat listrik yang terhubung, tersambung dan teraliri arus listrik. <br>
Rangkaian listrik dibagi menjadi 2, yaitu rangkaian listrik seri dan rangkaian listrik paralel. <br><br>
Rangkaian listrik seri adalah rangkaian listrik yang tidak memiliki percobaan kabel. Sehingga, jika salah satu kabel terputus, maka arus listrik pun akan terputus. <br>
Rangkaian listrik paralel adalah rangkaian listrik yang memiliki percabangan kabel. Sehingga, jika salah satu kabel terputus maka arus listrik akan tetap mengalir pada kabel lainnya yang masih terhubung dan beberapa lampu lainnya akan tetap menyala. <br>
<br> Agar tidak terjadi hubungan arus pendek (penyebab paling dominan pemicu kebakaran akibat arus listrik) maka harus ada hambatan.<br>
</h4>
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

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
<h2>Setelah belajar tentang listrik dinamis yuk latihan soal bareng <i>DELOT</i> untuk menguji seberapa paham kamu dengan materi listrik dinamis ini. Sudah siap?</h2>
}q
;

: quiz1stMsg
q{
<h3> Sebuah aki memiliki gaya gerak listrik 12 Volt dan hambatan dalam 0,5 ohm. Aki ini dihubungkan ke lampu yang hambatannya 4,5 ohm. kuat arus yang melalui lampu adalah ... </h3>
<p> A. 0,6 A </p>
<p> B. 0,8 A </p>
<p> C. 1,2 A </p>
<p> D. 2,4 A </p>
}q
;

: answer1stMsg
q{
<h3> pembahasan : </h3>
<p> I=V/R = 12/(0,5+4,5) = 2,4 A </p>
}q
;

: quiz2ndMsg
q{
<h3> Benda-benda yang dapat dikategorikan sebagai penghantar listrik yang buruk adalah ... </h3>
<p> A. karet, karbon, dan aluminium </p>
<p> B. kaca, udara, dan kertas </p> 
<p> C. karet, emas, dan plastik </p> 
<p> D. karet, karbon, dan kertas </p>
<p> E. kaca, tembaga, dan fiberglass </p>
}q
;

: answer2ndMsg
q{
<h3> pembahasan : </h3>
<p> Isolator adalah bahan yang sangat buruk untuk menghantarkan listrik karena di dalam bahan ini muatan listrik sulit mengalir. Contoh : kaca, udara, dan kertas. </p>
}q
;

: quiz3rdMsg
q{
<h3> Diantara faktor-faktor berikut ini: </h3>
<p> (1) Luas Penampang </p>
<p> (2) Hambatan Jenis </p>
<p> (3) Panjang Penghantar </p>
<p> (4) Massa Jenis </p>
<h3> Yang mempengaruhi hambatan penghantar adalah ... </h3>
<p> A. (1), (2), dan (3) </p>
<p> B. (1) dan (3) </p> 
<p> C. (2) dan (4) </p> 
<p> D. (4) saja </p>
<p> E. Semua jawaban benar </p>
}q
;

: answer3rdMsg
q{
<h3> Pembahasan : </h3>
<p> Rumus untuk hambatan penghantar dirumuskan sebagai berikut. </p>
<a> href="" alt="" border="0"></a>
<p> Berdasarkan rumus tersebut dapat diketahui apa saja yang mempengaruhi hambatan penghantar, yaitu hambatan jenis (), panjang penghantar (), dan luas penampang (A). </p>
}q
;

: quiz4thMsg
q{
<h3> Jika dalam kawat mengalir kuat arus sebesar 4 A. Berapakah jumlah muatan yang melewati luas penampang kawat dalam waktu 1 menit ? </h3>
<p> A. 400 </p>
<p> B. 300 </p> 
<p> C. 240 </p> 
<p> D. 90 </p>
<p> E. 180 </p>
}q
;

: answer4thMsg
q{
<h3> Pembahasan </h3>
<p> I = q/t </p>
<p> 4 = q/60 </p>
<p> q = 4 x 60 = 240 Coulomb </p>
}q
;

: quiz5thMsg
q{
<h3> Diketahui sebuah rangkaian listrik seperti gambar di bawah ini adalah : </h3>
<a> href="" alt="" border="0"></a>
<h3> Maka hambatan total dari ketiga resistor tersebut adalah : </h3>
<p> A. 9,0 Ω </p>
<p> B. 8,4 Ω </p> 
<p> C. 7,0 Ω </p> 
<p> D. 5,2 Ω </p>
<p> E. 9,2 Ω </p>
}q
;

: answer5thMsg
q{
<h3> Pembahasan : </h3>
<h3> Cari hambatan pada rangkaian paralel: </h3>
<p> 1/Rp = 1/2 + 1/3 = (2 + 3)/6 = 5/6 </p> 
<p> Rp = 6/5 = 1,2 Ω </p>
<br>
<h3> Jumlahkan total rangkaian paralel dengan hambatan lainnya, dimana rangkaiannya adalah seri : </h3>
<p> Total Hambatan = 1,2 Ω + 4 Ω = 5,2 Ω </p>
}q
;

: startquizMenu
ctx{ msg }
"Ya" btn ctx{ next }
q{
<p align="center">#{msg}</p><br>
#{next}
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

end-room

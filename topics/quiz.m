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
<h3> Sebuah aki memiliki gaya gerak listrik 12 Volt dan hambatan dalam 0,5 ohm. Aki ini dihubungkan ke lampu yang hambatannya 4,5 ohm. kuat arus yang melalui lampu adalah ... </h3>
;

: quiz2ndMsg
<h3> Benda-benda yang dapat dikategorikan sebagai penghantar listrik yang buruk adalah ... </h3>
;

: quiz3rdMsg
<h3> Diantara faktor-faktor berikut ini: </h3>
<p> (1) Luas Penampang </p>
<p> (2) Hambatan Jenis </p>
<p> (3) Panjang Penghantar </p>
<p> (4) Massa Jenis </p>
<h3> Yang mempengaruhi hambatan penghantar adalah ... </h3>
;

: quiz4thMsg
<h3> Jika dalam kawat mengalir kuat arus sebesar 4 A. Berapakah jumlah muatan yang melewati luas penampang kawat dalam waktu 1 menit ? </h3>
;

: quiz5thMsg
<h3> Diketahui sebuah rangkaian listrik seperti gambar di bawah ini adalah : </h3>
<a> href="" alt="" border="0"></a>
<h3> Maka hambatan total dari ketiga resistor tersebut adalah : </h3>
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

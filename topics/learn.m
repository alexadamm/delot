\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

include ./style.m

@: showLearnMenu
showLearnMenu: belajar kembali_ke_menu_belajar

\ Messages

: learnMenuMsg
q{
<p>Mari belajar bersama Delot tentang listrik dinamis</p>
}q
;

: startStudyMsg
q{
<h3><i> Hantaran Listrik </i></h2>
<p> &#10143; Kemampuan penghantar untuk memindahkan muatan listrik.</p>
<ul style="list-style-type:square;">
<li> Isolator: Bahan yang sangat buruk untuk menghantarkan listrik karena di dalam bahan ini muatan listrik sulit mengalir. Contoh: karet, plastik, dan kertas. </li>
<li> Konduktor: Bahan yang sangat baik digunakan untuk menghantarkan listrik. Contoh: Besi, tembaga, dan emas. </li>
<li> Semikonduktor: ahan yang bisa bersifat sebagai isolator pada suhu rendah dan bersifat konduktor pada suhu tinggi. Contoh: karbon, silikon, dan germanium. </li>
</ul>
<br>
<p align="center" style="font-size:13px;font-style:italic;">Selanjutnya: Simbol dan Rumus Hambatan</p>
}q
;

: study2ndMsg
q{
<h3><i> Hambatan Listrik</i></h3>
<h4> Simbol </h4>
<a href="https://imgbb.com/"><img align="center" src="https://i.ibb.co/TB81Smc/Simbol-Hambatan.png" alt="Simbol-Hambatan" border="0"></a><br>
<h4> Rumus </h4>
<a href="https://imgbb.com/"><img align="center" src="https://i.ibb.co/HVb5sQs/Untitled.png" alt="Untitled" border="0"></a>
<p> R  : hambatan kawat (Ω)</p>
<p> ρ  : hambatan jenis kawat (Ωm)</p>
<p> ℓ   : panjang kawat (m)</p>
<p> A  : luas penampang kawat (m<sup>2</sup>)</p>
<br>
<p align="center" style="font-size:13px;font-style:italic;"> Selanjutnya: Listrik Dinamis </p>
}q
;

: study3rdMsg
q{
<h2><i> Listrik Dinamis </i></h2>
<h3><i> Definisi </i></h3>
<p> &#10143; Listrik dinamis adalah listrik yang bisa bergerak. listrik dinamis terjadi karena ada arus listrik searah dan arus listrik bolak-balik </p>
<p> Contohnya: Ada pada lampu, bel listrik, dan baterai. </p>
<h3><i>Arus Listrik</i></h3>
<ul>
<li>Arus listrik mengalir dari potensial tinggi ke potensial rendah dan elektron mengalir dari kutub negatif ke kutub positif.</li>
<li>Syarat terjadinya arus listrik:
<ul style="list-style-type:circle;">
<li>Adanya perbedaan potensial</li>
<li>Rangkain listrik tertutup</li>
</ul>
</li>
</ul>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/NCrR1kF/Rumus-Arus-Listrik.png" alt="Rumus-Arus-Listrik" border="0"></a>
<p> I  : arus listrik (A)</p>
<p>Q  : muatan listrik (C)</p>
<p> t  : waktu (s)</p>
<br>
<p align="center" style="font-size:13px;font-style:italic;"> Selanjutnya: Rangkaian Listrik dan Hukum Kirchhoff</p>
}q
;

: study4thMsg
q{
<h3><i> Rangkaian Listrik </i></h3>
<h4> Rangkaian Listrik Paralel </h4>
<ul style="list-style: '&#10143; ';">
<li> Yaitu rangkaian listrik yang memiliki percabangan kabel. Jika salah satu kabel terputus maka arus listrik akan tetap mengalir pada kabel lainnya yang masih terhubung dan beberapa lampu lainnya akan tetap menyala </li>
</ul>
<h4> Rangkaian Listrik Seri </h4>
<ul style="list-style: '&#10143; ';">
<li>Yaitu rangkaian listrik yang tidak memiliki percobaan kabel. Jika salah satu kabel terputus maka arus listrik pun akan terputus. </li>
</ul>
<h3><i> Hukum Kirchhoff </i></h3>
<p> Hukum Kirchoff 1 berbunyi “Arus total yang masuk melalui suatu titik percabangan dalam suatu rangkaian listrik sama dengan arus total yang keluar dari titik percabangan tersebut.” </p>
<p>ΣI masuk = ΣI keluar</p>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/rH5FNj7/Hukum-Kirchoff.png" alt="Hukum-Kirchoff" border="0"></a>
<p> I<sub>1</sub> + I<sub>2</sub> = I<sub>3</sub> + I<sub>4</sub> + I<sub>5</sub> </p>
<br>
<p align="center" style="font-size:13px;font-style:italic;"> Selanjutnya: Rangkaian Hambatan Listrik</p>
}q
;

: study5thMsg
q{
<h3><i> Rangkaian Hambatan Listrik </i></h3>
<h4>Rangkaian Seri</h4>
<p> &#10143; Kuat arus listrik bernilai sama, tetapi tegangannya berbeda </p>
<img style="-webkit-user-select: none;margin: auto;background-color: hsl(0, 0%, 90%);transition: background-color 300ms;" src="https://lh3.googleusercontent.com/DrMQO56zcTtD2ONKm-ocDdJv5MRNGfmDqffFXGG96xU8IhmqUrV1dnj9_M-7ysJkD4SqO8RpFAjRg0xEn34YwDTUD8r8QIOlIh4AGvEfbSkz0TXK3g2PdG-4_sdWzBSOb3JvOA7b" width="60%" height="60% ">
<p> Menurut hukum ohm: </p>
<p> I<sub>1</sub> = V/R<sub>1</sub> dan I<sub>2</sub> = V/R<sub>2</sub> </p> 
<p> I<sub>total</sub> = I<sub>1</sub> + I<sub>2</sub> = V/R<sub>1</sub> + V/R<sub>2</sub> = V(1/R<sub>1</sub> + 1/R<sub>2</sub>) </p>
<p> karena, I<sub>total</sub> = V/R<sub>total</sub> </p>
<p> Maka: </p>
<img style="-webkit-user-select: none;margin: auto;background-color: hsl(0, 0%, 90%);transition: background-color 300ms;" src="https://lh4.googleusercontent.com/VgBkvBn3uOCqVQQJ0lBRm40wrCRrlaUZ6mWD1QmX3wMf_6r0pMvxcwyUW06jW10Fc_Q328do74Jezaen8Dw95v1hOv8mOeYDueIZ9Y6xwKBiadaRQBHXi2uPpfLcScnE1LG1EArY" width="85%" height"85">
}q
;

: tutorVidMsg
q{
<style>
a:link {
  color: #ffb3b3;
  background-color: transparent;
  text-decoration: none;
  font-weight:bold;
}
a:visited {
  color: #ffb3b3;
  background-color: transparent;
  text-decoration: none;
  font-weight:bold;
}
a:hover {
  color: #ffcccc;
  background-color: transparent;
  text-decoration: none;
  font-weight:bold;
}
a:active {
  color: #ffcccc;
  background-color: transparent;
  text-decoration: none;
  font-weight:bold;
}
</style>
<li> Pembukaan singkat by ruangguru:<a href="https://youtu.be/QYC-reVaKME" style="text-decoration:none;font-weight:bold;" target="blank">klik disini</a></li>
<li> Playlist pembahasan materi listrik dinamis beserta latihan soal by Le GuruLes:<a href="https://www.youtube.com/playlist?list=PLovW1TU0Q47wqgLM9jtpGPra239cdtVob" target="blank">klik disini</a></li>
}q
;

: summaryMsg
q{
<style>
a:link {
  color: #ffb3b3;
  background-color: transparent;
  text-decoration: none;
  font-weight:bold;
}
a:visited {
  color: #ffb3b3;
  background-color: transparent;
  text-decoration: none;
  font-weight:bold;
}
a:hover {
  color: #ffcccc;
  background-color: transparent;
  text-decoration: none;
  font-weight:bold;
}
a:active {
  color: #ffcccc;
  background-color: transparent;
  text-decoration: none;
  font-weight:bold;
}
</style>
<p> File Ringkasan Materi Listrik Dinamis<a href="https://drive.google.com/file/d/1eWqIm0JnyPxfskD25OilwDeGw0z6RuPs/view?usp=sharing" style="text-decoration:none;font-weight:bold;" target:"blank">klik disini</a></p>
}q
;

\ Menu templates

: learnMenu
ctx{ msg }
"Mulai Belajar" btn "Video Pembelajaran" btn "Ringkasan" btn "Kembali Ke Menu Utama" btn ctx{ startStudy tutorVid summary mainMenu }
q{
<p>#{msg}</p><br>
<p>#{startStudy}</p>
<p>#{summary}</p>
<p>#{tutorVid}</p>
<p>#{mainMenu}</p>
}q
;

: studyMenu
ctx{ msg }
"Selanjutnya" btn ctx{ next }
q{
<p>#{msg}</p>
#{next}
}q
;

: backMenu
ctx{ msg }
"Kembali Ke Menu Belajar" btn ctx{ previous }
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
A: ${ tutorVidMsg backMenu }
K: $back
--

Q: Ringkasan
A: ${ summaryMsg backMenu }
K: $back
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



Q: $showLearnMenu
A: ${ learnMenuMsg learnMenu }
K: $back learnMenuNext
--

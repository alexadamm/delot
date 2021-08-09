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
<h2><i> Listrik Dinamis </i></h2>
<h3><i> Definisi </i></h3>
<p> &#10143; Listrik yang kita gunakan sehari-hari namanya adalah Listrik Dinamis. <i>Listrik Dinamis</i> artinya listrik yang bisa <b>bergerak</b> atau <b>mengalir</b>. listrik dinamis terjadi karena ada arus listrik searah dan arus listrik bolak-balik.</p>
<p> Contohnya pada lampu, bel listrik, dan baterai.</p>
<img src="https://i.ibb.co/GTMzpQ1/buble-1.gif" alt="buble-1" border="0">
<p> Kalian penasaran nggak sih apa yang bisa menimbulkan aliran listrik? Yuk kita cari jawabannya sekarang!</p>
<br>
<p align="center" style="font-size:13px;font-style:italic;">Selanjutnya: Kuat Arus Listrik</p>
}q
;

: study2ndMsg
q{
<h2><i> Kuat Arus Listrik </i></h2>
<p>  &#10143; Aliran listrik ditimbulkan oleh muatan listrik yang bergerak di dalam suatu penghantar. <b>Muatan listrik</b> dalam jumlah tertentu yang menembus penampang dari suatu penghantar dalam satuan waktu tertentu disebut sebagai <b>kuat arus listrik.</b></p>
<img src="https://i.ibb.co/QY4nJNK/buble-2a.gif" alt="buble-2a" border="0">
<p> &#10143; Jadi, kuat arus listrik adalah <b>jumlah muatan listrik</b> yang mengalir dalam suatu penghantar <b>tiap satuan waktu</b>. Arus listrik ini bisa dihitung loh! Kuat arus listrik dapat dihitung dengan rumus:</p>
<img src="https://i.ibb.co/t43SJ3G/buble-2b.gif" alt="buble-2b" border="0">
<p> Dengan keterangan:</p>
<p> I  : arus listrik (A)</p>
<p> Q  : muatan listrik (C)</p>
<p> t  : waktu (s)</p>
<br>
<p align="center" style="font-size:13px;font-style:italic;"> Kalian tau ngga sih kalau arus listrik dapat mengalir karena ada rangkaian listrik loh! Nah, sekarang mari kita bahas rangkaian listrik. </p>
}q
;

: study3rdMsg
q{
<h2><i> Rangkaian Listrik </i></h2>
<p> &#10143; Rangkaian listrik merupakan rangkaian yang terhubung oleh  <b>alat-alat yang tersambung oleh listrik</b> dan <b>teraliri arus listrik</b>. Rangkaian listrik terbagi ke dalam beberapa model.</p>
<img src="https://i.ibb.co/khBkfM3/buble-3.gif" alt="buble-3" border="0">
<br>
<p align="center" style="font-size:13px;font-style:italic;"> Nah apa sih pengertian rangkaian paralel dan seri ini? Yuk simak penjelasan di bawah ini!</p>
}q
;

: study4thMsg
q{
<h3><i> Rangkaian Listrik </i></h3>
<img src="https://i.ibb.co/qxNJxqW/buble-4.gif" alt="buble-4" border="0">
<h4> Rangkaian Listrik Paralel </h4>
<ul style="list-style: '&#10143; ';">
<li> Yaitu rangkaian listrik yang memiliki percabangan kabel. Jika salah satu kabel terputus maka arus listrik akan tetap mengalir pada kabel lainnya yang masih terhubung dan beberapa lampu lainnya akan tetap menyala </li>
</ul>
<h4> Rangkaian Listrik Seri </h4>
<ul style="list-style: '&#10143; ';">
<li>Yaitu rangkaian listrik yang tidak memiliki percobaan kabel. Jika salah satu kabel terputus maka arus listrik pun akan terputus. </li>
</ul>
<p> Ohiya teman-teman silahkan baca artikel berikut ini jika ingin tahu perbedaan rangkain paralel dan rangkaian seri lebih dalam lagi yaa ! https://www.ruangguru.com/blog/rangkaian-listrik </p>
<br>
}q
;

: study5thMsg
q{
<h3><i> Hukum Kirchoff </i></h3>
<p> &#10143; Di antara kamu pasti sudah pernah mendengar nama Kirchhoff dong, ya? Yup, Kirchhoff merupakan salah satu fisikawan yang berjasa dalam ilmu kelistrikan. Hukum Kirchhoff ditemukan oleh <b>Gustav Robert Kirchhoff</b> yang merupakan ahli fisika asal Jerman.</p>
<img src="https://i.ibb.co/3YVvHHT/buble-5.gif" alt="buble-5" border="0">
<p> Salah satu yang paling dikenal dari karyanya adalah hukum kircchoff I. Hukum ini merupakan hukum kekekalan muatan listrik yang menyatakan bahwa <b>jumlah muatan listrik</b> yang mengalir itu <b>tidak berubah</b>. Jadi, pada suatu percabangan, <i>laju muatan listrik yang menuju titik cabang sama besarnya dengan laju muatan yang meninggalkan titik cabang itu</i>.</p>
}q
;

: study6thMsg
q{
<h3><i> Hukum Kirchoff </i></h3>
<p> &#10143; Nah, di fisika, laju muatan listrik adalah <b>kuat arus listrik</b>. Oleh karena itu, bunyi Hukum I Kirchhoff lebih umum ditulis:  “Jumlah kuat arus listrik yang <b>masuk</b> ke suatu titik cabang akan sama dengan  jumlah kuat arus listrik yang <b>meninggalkan</b> titik itu.”</p>
<br>
<p> Hukum I Kirchhoff biasanya disebut sebagai Hukum Arus Kirchhoff atau <i>Kirchhoff's Current Law</i> (KCL).</p>
<img src="https://i.ibb.co/pZwh1fv/buble-7.gif" alt="buble-7" border="0">
<p> Jadi bisa disimpulkan bahwa, besar kuat arus total yang melewati titik percabangan I1 dan  I2 secara matematis dinyatakan sebagai <b>ΣI masuk = ΣI keluar</b> yang besarnya adalah <b>I1 + I2 = I3 + I4 + I5</b>.</p>
}q
;

: study7thMsg
q{
<h3><i> Rangkaian Hambatan Listrik </i></h3>
<p> Hambatan ini bertugas untuk <b>menghambat arus listrik</b>. Nah, kalau ngga ada penghambat maka arus listriknya akan konsleting atau terjadi hubungan arus pendek dan menimbulkan kebakaran.</p>
<p> Hambatan listrik ini dipengaruhi oleh jenis benda hambatan, panjang benda, dan luas penampang benda.</P>
<br>
<p> Hambatan listrik ini bisa dihitung loh! Rumusnya adalah :</p>
<img src="https://i.ibb.co/9gRxpFy/buble-8.gif" alt="buble-8" border="0">
<p> Selain itu, ternyata suhu juga berpengaruh pada hambatan, karena benda bisa memuai jika <b>dipanaskan</b>, maka hambatannya <b>semakin besar</b>.</p>
}q
;

: study8thMsg
q{
<h3><i> Rangkaian Hambatan Listrik </i></h3>
<p> Hambatan listrik pada rangkaian listrik disusun menjadi dua macam, rangkaian hambatan seri dan paralel.</p>
<p> Pada rangkaian seri, hambatan pengganti jauh <b>lebih sederhana</b> untuk mencarinya. Hambatan pengganti pada rangkaian paralel merupakan hasil <b>penjumlahan</b> dari seluruh rangkaian seri.</p>
<br>
<h4> Rangkaian Seri </h4>
<p> Pada rangkaian seri = Kuat arus listrik bernilai <b>sama</b>, tetapi tegangannya <b>berbeda</b>. Sehingga dapat diilustrasikan seperti gambar berikut :</p>
<img src="https://i.ibb.co/vVtjntp/seri.gif" alt="seri" border="0">
<br>
<h4> Rangkaian Paralel </h4>
<p> Pada rangkaian paralel = Tegangan listrik bertegangan <b>sama</b>, tetapi kuat arus bernilai <b>berbeda</b>. Sehingga dapat diilustrasikan seperti gambar berikut :</p>
<img src="https://i.ibb.co/7jRhKLQ/paralel.gif" alt="paralel" border="0" />
}q
;

: study9thMsg
q{
<h4><i>Daya Listrik</i></h4>
<p> Daya listrik yang dihasilkan oleh perangkat elektronik dapat  diketahui dengan mengalikan beda potensial dan kuat arus listrik. Persamaannya dapat ditulis sebagai berikut.</p>
<p> P = V × I</p>
<p> Keterangan:</p>
<p> P  = Daya listrik      (W)</p>
<p> V  = Beda potensial    (V)</p>
<p> I  = Kuat arus        (A)</p>
<br>
<h4><i>Perubahan Energi Listrik</i></h4>
<ol>
<li>Energi Listrik Diubah Menjadi Energi Cahaya</li>
<li>Energi Listrik Diubah Menjadi Energi Gerak</li>
<li>Energi Listrik Diubah Menjadi Energi Panas</li>
<li>Energi Listrik Diubah Menjadi Energi Kimia</li>
</ol>
}q
;

: study10thMsg
q{
<h3><i> Sumber Energi Listrik </i></h3>
<p> Energi listrik diperoleh dari perangkat yang dapat menghasilkan energi listrik. Sumber energi listrik diantaranya adalah:</p>
<ol> 
<li>Baterai</li>
<p> Baterai merupakan elemen kering yang berisi zat kimia berbentuk padat. Baterai tersusun dari beberapa lapisan. Bagian luar baterai yang merupakan selimutnya adalah seng (kutub negatif). Bagian tengahnya merupakan batang arang (kutub positif) yang mengandung zat kimia berwujud serbuk berwarna hitam yang mengelilingi elektrolit.</p>
<li>Akumulator</li>
<p> Akumulator (Aki) disebut juga elemen basah karena elektrolitnya berupa zat cair (asam sulfat). Aki temasuk sel sekunder karena menghasilkan arus listrik dan juga dapat diisi arus listrik kembali.</p>
<li>Dinamo</li>
<p> Dinamo terdiri dari kumparan yang ditempatkan di tengah medan magnet, ketika ujung kepala dinamo berputar kumparan tersebut juga akan ikut berputar.</p>

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
K: $back study5thRoom
--

end-room

room: study5thRoom

Q: Selanjutnya
A: ${ study5thMsg backMenu }
K: $back study6thRoom
--

end-room

room: study6thRoom

Q: Selanjutnya
A: ${ study6thMsg backMenu }
K: $back study7thRoom
--

end-room

room: study7thRoom

Q: Selanjutnya
A: ${ study7thMsg backMenu }
K: $back study8thRoom
--

end-room

room: study8thRoom

Q: Selanjutnya
A: ${ study8thMsg backMenu }
K: $back study9thRoom
--

end-room

room: study9thRoom

Q: Selanjutnya
A: ${ study9thMsg backMenu }
K: $back studyLastRoom
--

end-room

room: studyLastRoom

Q: Selanjutnya
A: ${ study10thMsg backMenu }
K: $back 
--

end-room

Q: $showLearnMenu
A: ${ learnMenuMsg learnMenu }
K: $back learnMenuNext
--



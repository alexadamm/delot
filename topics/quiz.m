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
<title> Delot | Dynamic Electricity Bot </title>
<img src="https://lh4.googleusercontent.com/OGb5aXoqRyupltAqppIPjGHK1lN8EP93xq14yhBjV_QdnUe1Lx7H9QjexC-lke7lzI50ohKUqcTKNjm5W8RZAbR70ZIwGUlPQCGmKXTpsjiMD0TrvCj0Q7qdrDkNwlxjbjFJWNAi" width="95%" height="95%" />
<div align="justify">
<p> Setelah belajar tentang listrik dinamis yuk latihan soal bareng <b style="font-style:italic">Delot</b> untuk menguji seberapa paham kamu dengan materi listrik dinamis ini.
Sudah siap?</p></div>
<br>
}q
;

: quizCorrectAns
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
<p>Kamu hebat! Jawaban kamu benar 😆😆</p>
</div>
<img src="https://lh3.googleusercontent.com/mFJO2JnJ-E9vF2zeImVZswIdgn9eYsuHYGyY5HPwhxxaHOiO5DRzStahNhOlr9m3dPWetq1zU8mVWAXxWEX6ow9hOo0P8WZdOnt16C0eaz59RaiGGaeo4HepEMNazx4FMG_rhKmd" width="95%" height="95%" />
}q
;

: quizWrongAns
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
<p>Ooops! Sayangnya jawaban kamu masih salah 😢😟</p>
</div>
<img src="https://lh4.googleusercontent.com/n_oBpaUCOeT7dY5FuYY5EvzrONIrJT4yfgSyUOaakwrvJQbArMJfAo3XVDBbVe-wyXcAbbbdQv9SJdE3O9treLvAkZZhNVMPMMCfYgIKj9fdZXqw8H5G0DDrFaty9LBVlLKyaCRk" width="95%" height="95%" />
}q
;

: quizMenu
ctx{ msg }
"Siapp Dong 💪" btn "Kembali Ke Menu Utama" wbtn ctx{ rd previous }
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
#{msg}
</div>
<p>#{rd}</p>
<p>#{previous}</p>
}q
;

: questMenu1
ctx{ msg }
"A. 0,6 A" btn "B. 0,8 A" btn "C. 1,2 A" btn "D. 2,4 A" btn ctx{ btn1 btn2 btn3 btn4 }
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
#{msg}<br>
</div>
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
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
#{msg}<br>
</div>
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
<title> Delot | Dynamic Electricity Bot </title>
<<div align="justify">
#{msg}<br>
</div>
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
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
#{msg}<br>
</div>
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
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
#{msg}<br>
</div>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
}q
;

: congratsMsg
ctx{ result }
"Kembali Ke Menu Utama" wbtn ctx{ btn }
q{
<title> Delot | Dynamic Electricity Bot </title>
<script>
    function show() {
        const bb = `</span></div><br><img class="pic" src="https://lh6.googleusercontent.com/RMMP-214RetHaX5JTPlVN8-yPOjgq7ejvbRVBkXuY7uKhRheSDOYF-NsSB1zVwE32pYKBYEDzPxc84eUwVxThTTvlr_PPb3di7QHYjZ210qDQ8BjHu7QcBl-M2_S3x34Gm__zhmd" style="vertical-align:middle;border:none;"><div style="padding:10px;border-radius:16px;display:inline-block;text-align:left;vertical-align:middle;border:solid #ddc1a7 2.5px;color:#333;font-family:Hahmlet, serif;;font-size:16px;background:#EEE;word-wrap:break-word;min-width:40px;max-width:250px;"></span>`;
        const x = document.getElementById("#scores");
        let inputan = Number(#{result});
        let result = (inputan-1) * 20;
        let {img, head, desc,} = ``;
        switch(result){
            case 0:
                img = `<img src="https://lh6.googleusercontent.com/FlceHgN6E4kOHfHIpe2ggf1sEXnS4Clt9RBKnCtnUAvH7o3nkgByQhpQZmrz5mzUwp0--jR8_oHL8L5E8BpYtHO1hYeETqdwYIQ4tFYjRpH03gTZlZFgmxymofp1GJ_POEfK2Mnr" width="95%" />`;
                head = 'Lose :(';
                desc = 'Jangan menyerah! Belajar lagi yaa :)';
                break;
            case 20:
                img = `<img src="https://lh6.googleusercontent.com/SlEI4oicqCXhJiR7xYHB78FFM2-iiZKQ4zVFxWpwEBMhdP-P0i51p6csCKhnuuIzhGpe0mjETks8_11uz-JXBEnJFgYNATf7a07Ef3HPrx8h9SUeujRq9de_PlXvq01wvBonGxuF" width="95%" />`;
                head = 'Less :(';
                desc = 'Ayo tingkatkan lagi!';
                break;
            case 40:
                img = `<img src="https://lh6.googleusercontent.com/ZOvmiXGehFi77xq5e96PTbVXTRNxqioKXndNP6PPcUUrVvlxILxHoIbTHLy64zYC-ICLAQjxz1kshqYAx4iMYJ2ftYZ3JneCM9DJ246p514AzvKqAK2sByGUqBgmlqRlnaQDs0z1" width="95%" />`;
                head = 'Ordinary';
                desc = 'Kamu bisa lebih baik dari ini!';
                break;
            case 60:
                img = `<img src="https://lh3.googleusercontent.com/vglW6fdN1qlrRbjsHnja-uQpJGqlihxFGoNEMR97NuGUN4i6UzJLcIwKEac3tRnBa5dS1IoDng_MwjrWn-uHsbBVWjGMbjPuf0UKeRYOlXevFMCcD9a5NdHdIghVyZTkMhiNXUy4" width="95%" />`;
                head = 'Enough';
                desc = 'Semangat kamu pasti bisa!';
                break;
            case 80:
                img = `<img src="https://lh6.googleusercontent.com/aGGheUtdE8LhGHJ8Gz2kHPYbXyK5IRVoHt1cXT613Ry5j5L0yqIygxueXrpSBtL5okN4LxsP8tG8tc6EMMPUO-JyXCcm7smldze2EcsNnvKZLJpvt20oIyI4ws5S4oofdJNt8K7R" width="95%" />`;
                head = 'Good Job!';
                desc = 'Kerja bagus! Selangkah lagi kamu jadi juara! Ayo semangat!';
                break;
            case 100:
                img = `<img src="https://lh4.googleusercontent.com/IWvUP74a9iyTOEYvZtySvl-MZSu_eXdYe2j-YYojU_pmdC2LbRt32NudImqgLSSWKBGST0B--eiO-vF8SdxgQbc2XM205SYcBIuH3vlnCsw4MQO4bQQ_pqLkkHzjvGGQ70KoSBJI" width="95%" />`;
                head = 'Excellent!';
                desc = 'Hebat! Kamu memahami materi ini!';
                break;
            default:
                img = `null`;
                head = `null`;
                desc = `Terjadi kesalahan. Refresh dan ikuti kuis dari awal, untuk mendapatkan nilai terkini`;
        }
        if (result <= 100 && result >= 0) {
            document.getElementById("scores").innerHTML = `<br> <h2 align="center">Skor kamu: ${result}</h2> <br> <h3 style="font-style:italic;text-align:center;">${head}</h3> <p style="text-align:justify;font-style:italic;">${desc}</p> ${img} <br>`;
        } else {
            document.querySelector("#scores").innerHTML = `<br> ${desc} <br>`;
        }
        document.querySelector(".btn").onclick = hide;
        document.querySelector(".btn").innerHTML = "Sembunyikan Skor";
    }
    
    function hide() {
        document.getElementById("scores").innerHTML = "";
        document.querySelector(".btn").onclick = show;
        document.querySelector(".btn").innerHTML = "Lihat Skor";
    }
</script>
<style>
        .btn{
            border:1px solid grey;
            background:#DDD;
            color:black;
            display:inline-block;
            padding:10px;
            border-radius:6px;
            font-weight:bold; 
            font-family:Hahmlet, serif;; 
            font-size:16px; padding:10px; 
            font-family:Poppins, sans-serif; 
            font-size:14px; display: block; 
            width: auto; margin: 0.05px; 
            border: none; 
            background-color: #5b4f47; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
</style>
<img src="https://lh5.googleusercontent.com/0Ayt2lvtJp2dY1UXPlJ0u_SCUYFHEgLwZZOqmR5b1jbFtISitXwfaoVTGlcXjO3wTvicP0sf0Dx4bJsuixOrQt8BMaCNgMW2eB2D1G0QWPk4aomiNtpbQPo9wYthnkbaFNVsBmpe" width="95%" height="95%" />
<div align="justify">
<p>Yey! Sudah selesai! Jangan lupa ikuti tantangan dare dari Delot ya! :)</p>
</div>
<br>
<p><div class="btn" onclick="show()">Lihat Skor</div></p>
<div id="scores"></div>
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

mem: scores

assoc: counts

{{
    1 "0"
    2 "20"
    3 "40"
    4 "60"
    5 "80"
    6 "100"
}} +count

room: quiz1stRoom

Q: 24
A: ${quizCorrectAns} ${bb} ${quest1A} <br> ${ "Selanjutnya" btn }
K: +scores % $back 2ndQuest 
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest1A} <br> ${ "Selanjutnya" btn }
K: $back 2ndQuest
--

end-room

room: quiz2ndRoom

Q: Kaca
A: ${quizCorrectAns} ${bb} ${quest2A} <br> ${ "Selanjutnya" btn }
K: +scores % $back 3rdQuest
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest2A} <br> ${ "Selanjutnya" btn }
K: $back 3rdQuest
--

end-room

room: quiz3rdRoom

Q: (2) dan (3)
A: ${quizCorrectAns} ${bb} ${quest3A} <br> ${ "Selanjutnya" btn }
K: +scores % $back 4thQuest
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest3A} <br> ${ "Selanjutnya" btn }
K: $back 4thQuest
--

end-room

room: quiz4thRoom

Q: 240
A: ${quizCorrectAns} ${bb} ${quest4A} <br> ${ "Selanjutnya" btn }
K: +scores % $back 5thQuest
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest4A} <br> ${ "Selanjutnya" btn }
K: $back 5thQuest
--

end-room

room: quiz5thRoom

Q: 52
A: ${quizCorrectAns} ${bb} ${quest5A} <br> ${ "Selanjutnya" btn }
K: +scores % $back congrats
--

Q: $_
A: ${quizWrongAns} ${bb} ${quest5A} <br> ${ "Selanjutnya" btn }
K: $back congrats
--

end-room

room: congrats

Q: selanjutnya
A: ${ scores congratsMsg } 
K: $back
--

end-room

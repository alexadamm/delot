\
\ Copyright © 2021 alexadam all rights reserved.
\
\ @author: alexadam
\ @date: 17 Aug 2021
\
\ A brief description of this program.
\

@: showLearnMenu
showLearnMenu: ayo_belajar kembali_ke_menu_belajar

include ./topics/cardcontent.m
include ./topics/learn.m

: cardMainMenu
"Mulai" btn "Kembali Ke Menu Belajar" wbtn ctx{ start prev }
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
<p>Hi! 👋</p>
<p>Delot udah siapin 31 flash card nih buat kamu. Biar kamu bisa lebih
gampang dalam menghafal rumus-rumus dan istilah-istilah kelistrikan ⚡</p></div>
<img src="https://lh4.googleusercontent.com/7uePwaWt0RvjCvt_Mz-ZeLBKZdNgNn_kCQFudosjNrdH6u8O_TK5uZZCv2FY4-WmubOzJEZVprdXiPXoWr9zFTQw6Ni646yX9VgB3Q6O_hdRmvy9oE3ceGqZC80OuVyKj0JDDCZr" width="95%" height="95%" onclick="document.getElementById('question').value='Mulai';document.forms[0].submit();"/>
<p>#{prev}</p>
}q
;

: cardMenu
ctx{ msg }
"Selanjutnya 🔜" btn "Sebelumnya 🔙" btn "Kembali Ke Menu Belajar" wbtn ctx{ next prev learnmenu }
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
#{msg}
</div>
<br />
<p>#{next}</p>
<p>#{prev}</p>
<p>#{learnmenu}</p>
}q
;


Q: Flash Card
A: ${cardMainMenu}
K: $back 1stCard
--

room: 1stCard

Q: Mulai
A: ${ card1 } <br /><p>${ "Selanjutnya 🔜" btn }</p><p>${ "Kembali Ke Menu Belajar" wbtn }</p>
K: $back 2ndCard
--

end-room

room: 2ndCard

Q: Selanjutnya
A: ${ card2 cardMenu }
K: $back 3rdCard
--

end-room

room: 3rdCard

Q: Selanjutnya
A: ${ card3 cardMenu }
K: $back 4thCard
--

Q: Sebelumnya
A: ${ card1 cardMenu }
K: $back 2ndCard
--

end-room

room: 4thCard

Q: Selanjutnya
A: ${ card4 cardMenu }
K: $back 5thCard
--

Q: Sebelumnya
A: ${ card2 cardMenu }
K: $back 3rdCard
--

end-room

room: 5thCard

Q: Selanjutnya
A: ${ card5 cardMenu }
K: $back 6thCard
--

Q: Sebelumnya
A: ${ card3 cardMenu }
K: $back 4thCard
--

end-room

room: 6thCard

Q: Selanjutnya
A: ${ card6 cardMenu }
K: $back 7thCard
--

Q: Sebelumnya
A: ${ card4 cardMenu }
K: $back 5thCard
--

end-room

room: 7thCard

Q: Selanjutnya
A: ${ card7 cardMenu }
K: $back 8thCard
--

Q: Sebelumnya
A: ${ card5 cardMenu }
K: $back 6thCard
--

end-room

room: 8thCard

Q: Selanjutnya
A: ${ card8 cardMenu }
K: $back 9thCard
--

Q: Sebelumnya
A: ${ card6 cardMenu }
K: $back 7thCard
--

end-room

room: 9thCard

Q: Selanjutnya
A: ${ card9 cardMenu }
K: $back 10thCard
--

Q: Sebelumnya
A: ${ card7 cardMenu }
K: $back 8thCard
--

end-room

room: 10thCard

Q: Selanjutnya
A: ${ card10 cardMenu }
K: $back 11thCard
--

Q: Sebelumnya
A: ${ card8 cardMenu }
K: $back 9thCard
--

end-room

room: 11thCard

Q: Selanjutnya
A: ${ card11 cardMenu }
K: $back 12thCard
--

Q: Sebelumnya
A: ${ card9 cardMenu }
K: $back 10thCard
--

end-room

room: 12thCard

Q: Selanjutnya
A: ${ card12 cardMenu }
K: $back 13thCard
--

Q: Sebelumnya
A: ${ card10 cardMenu }
K: $back 11thCard
--

end-room

room: 13thCard

Q: Selanjutnya
A: ${ card13 cardMenu }
K: $back 14thCard
--

Q: Sebelumnya
A: ${ card11 cardMenu }
K: $back 12thCard
--

end-room

room: 14thCard

Q: Selanjutnya
A: ${ card14 cardMenu }
K: $back 15thCard
--

Q: Sebelumnya
A: ${ card12 cardMenu }
K: $back 13thCard
--

end-room

room: 15thCard

Q: Selanjutnya
A: ${ card15 cardMenu }
K: $back 16thCard
--

Q: Sebelumnya
A: ${ card13 cardMenu }
K: $back 14thCard
--

end-room

room: 16thCard

Q: Selanjutnya
A: ${ card16 cardMenu }
K: $back 17thCard
--

Q: Sebelumnya
A: ${ card14 cardMenu }
K: $back 15thCard
--

end-room

room: 17thCard

Q: Selanjutnya
A: ${ card17 cardMenu }
K: $back 18thCard
--

Q: Sebelumnya
A: ${ card15 cardMenu }
K: $back 16thCard
--

end-room

room: 18thCard

Q: Selanjutnya
A: ${ card18 cardMenu }
K: $back 19thCard
--

Q: Sebelumnya
A: ${ card16 cardMenu }
K: $back 17thCard
--

end-room

room: 19thCard

Q: Selanjutnya
A: ${ card19 cardMenu }
K: $back 20thCard
--

Q: Sebelumnya
A: ${ card17 cardMenu }
K: $back 18thCard
--

end-room

room: 20thCard

Q: Selanjutnya
A: ${ card20 cardMenu }
K: $back 21thCard
--

Q: Sebelumnya
A: ${ card18 cardMenu }
K: $back 19thCard
--

end-room

room: 21thCard

Q: Selanjutnya
A: ${ card21 cardMenu }
K: $back 22ndCard
--

Q: Sebelumnya
A: ${ card19 cardMenu }
K: $back 20thCard
--

end-room

room: 22ndCard

Q: Selanjutnya
A: ${ card22 cardMenu }
K: $back 23rdCard
--

Q: Sebelumnya
A: ${ card20 cardMenu }
K: $back 21thCard
--

end-room

room: 23rdCard

Q: Selanjutnya
A: ${ card23 cardMenu }
K: $back 24thCard
--

Q: Sebelumnya
A: ${ card21 cardMenu }
K: $back 22ndCard
--

end-room

room: 24thCard

Q: Selanjutnya
A: ${ card24 cardMenu }
K: $back 25thCard
--

Q: Sebelumnya
A: ${ card22 cardMenu }
K: $back 23rdCard
--

end-room

room: 25thCard

Q: Selanjutnya
A: ${ card25 cardMenu }
K: $back 26thCard
--

Q: Sebelumnya
A: ${ card23 cardMenu }
K: $back 24thCard
--

end-room

room: 26thCard

Q: Selanjutnya
A: ${ card26 cardMenu }
K: $back 27thCard
--

Q: Sebelumnya
A: ${ card24 cardMenu }
K: $back 25thCard
--

end-room

room: 27thCard

Q: Selanjutnya
A: ${ card27 cardMenu }
K: $back 28thCard
--

Q: Sebelumnya
A: ${ card25 cardMenu }
K: $back 26thCard
--

end-room

room: 28thCard

Q: Selanjutnya
A: ${ card28 cardMenu }
K: $back 29thCard
--

Q: Sebelumnya
A: ${ card26 cardMenu }
K: $back 27thCard
--

end-room

room: 29thCard

Q: Selanjutnya
A: ${ card29 cardMenu }
K: $back 30thCard
--

Q: Sebelumnya
A: ${ card27 cardMenu }
K: $back 28thCard
--

end-room

room: 30thCard

Q: Selanjutnya
A: ${ card30 cardMenu }
K: $back 31thCard
--

Q: Sebelumnya
A: ${ card28 cardMenu }
K: $back 29thCard
--

end-room

room: 31thCard

Q: Selanjutnya
A: ${ card31 cardMenu }
K: $back 32ndCard
--

Q: Sebelumnya
A: ${ card29 cardMenu }
K: $back 30thCard
--

end-room

room: 32ndCard

Q: Selanjutnya
A: ${ card32 } <br /><p>${ "Sebelumnya 🔙" btn }</p><p>${ "Kembali Ke Menu Belajar" wbtn }</p>
K: $back extRoom
--

Q: Sebelumnya
A: ${ card30 cardMenu }
K: $back 31thCard
--

end-room

room: extRoom

Q: Sebelumnya
A: ${ card31 cardMenu }
K: $back 32ndCard
--

end-room

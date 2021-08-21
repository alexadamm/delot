\
\ Copyright © 2021 alexadam all rights reserved.
\
\ @author: alexadam
\ @date: 17 Aug 2021
\
\ A brief description of this program.
\

@: showMainMenu
showMainMenu: siap kembali_ke_menu_utama

include ./topics/main-chat.m

: factMain
"Mulai" btn "Kembali Ke Menu Utama" wbtn ctx{ start prev }
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
<p>Hi! 👋</p>
<p>Delot udah siapin beberapa fakta menarik tentang kelistrikan nih buat kamu ⚡</p></div>
<img src="https://lh3.googleusercontent.com/b9nSXJpdIaddaDVDlPVmrbUt5ULfHGjHWbHiCjZu3H5F28oQAlbJXDuc4XYpryaFLMa8ISs_RSlLXLJh8B6fRCQTlT8GwIQmjF0k6KL8wcRo_G3FpcijS-nSgCSx7zXjOGtNVnWD" width="95%" height="95%" onclick="document.getElementById('question').value='Mulai';document.forms[0].submit();"/>
<p>#{prev}</p>
}q
;

: factMenu
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

: fact1
q{
<img src="https://lh5.googleusercontent.com/m2ycKPeSNeCvb_idFGKbRB05UaQswuvtncbSBnD7xolok4v6rmRlCh9VnELL32_aO7jwW9jRMX6hQ3CFrm7WFBlhMmi8WIwsJR4j4e00Jhy8Duv5TtPNU-jSRUEdNe0MNwHiHRXx" width="95%" height="95%" />
}q
;

: fact2
q{
<img src="https://lh3.googleusercontent.com/2DtustBE-RYnncv0bHaH-X5NN2rY_MY7W0lxqT0R0-Hube8uV9rDlWG3ZCWS039kxN2E3uZG1vtE9AwSEkpmSA4QmwWm7KmvMFUQ5R42LGiid8lDEH0Afm9DeV1OcKeR7cqJ1ge5" width="95%" height="95%" />
}q
;

: fact3
q{
<img src="https://lh5.googleusercontent.com/HGnDPotYUXjw1qvYr-j9ECvf6auSNT1c9DaXsRrDW6-cZHLtNIvIt8c1b-3z3FTD0LWugOE0n1g_gKJrN1evc8oWEOcoVu_DA_uq1345XshUie7xOGTiYWPfHH-so44Opd-zJhjv" width="95%" height="95%" />
}q
;

: fact4
q{
<img src="https://lh4.googleusercontent.com/90LQHS6z1Zeaxt2ahSioe7e60KvQ8CxchFIqvAi2KDgDgb8MAViszOUCmJb7XvU858RVIL44V6vJe_mehGUlspy1bjdo_jOolebVIF37KRJtcNxlcDqH8w9xdxzNRW-ghl4K7NL2" width="95%" height="95%" />
}q
;

: fact5
q{
<img src="https://lh3.googleusercontent.com/PBXzL-8S375UVGgai7XKtfReqQl6xxCDNUV5PNJnUu4AE_4_UjJJB565R647kP1CR1YoSrOMNIz_ezxm7eO4syJCdkPD7cg2peqqV3T7gTD3gM4EpisLz0FJ9egAi2K9zWdnKQwC" width="95%" height="95%" />
}q
;

: fact6
q{
<img src="https://lh4.googleusercontent.com/8SrQfj9jWkQ_Ur8RH26wbxisrlCr9k-PD-vBcakpSZOa6-HiSQ_cpe0J7ON2UbzTl6DbkzYYfCu447USOclFABlJvvBSvQ_Y2oDrnrpMmwwIc3Bhd5hwuCa2kTFpKFE_YUWV5W4T" width="95%" height="95%" />
}q
;

: fact7
q{
<img src="https://lh5.googleusercontent.com/kSYEdZwWbYgkjwD2KBnkFpXjTpdMpzfs23Ij-6juhWYDZtaNEUOZbFmTc7rrvA2C53s33xd5EvrBR8uBcjptAKT41FD0OH9GjK5zmB_ZR_Tutdgf9Ns1yGNdlZe2RXf4gYtkbVLf" width="95%" height="95%" />
}q
;

: fact8
q{
<img src="https://lh4.googleusercontent.com/Fr5HIfINEl2KGl-Dx2Qouqs1xISdGOeqPYO6jTkLpPMgHA7t_dLdTRl8QHNfvpVh-eGNo-hi4OlUXUosxrd5tMMMXdu2PFQuX9AKZHWfxAuHjP1Svj3ybKmd8KLll96xSh0PulQI" width="95%" height="95%" />
}q
;

: fact9
q{
<title> Delot | Dynamic Electricity Bot </title>
<img src="https://lh4.googleusercontent.com/ybFsZSa7V2H3kA2VKyOE4abr8V3kLLygkvrmeN_KvpA4ZH9SDPszta62u_5pC3hFHqWdQvHSz6Qlyb5LBsYw1sHUTo7xbOtR8oXA__fgxX7WAAtgHZTlOej-EAK54yqY-WYqycOT" width="95%" length="95%" />
}q
;

Q: Funfact
A: ${factMain}
K: $back 1stfact
--

room: 1stfact

Q: Mulai
A: ${ fact1 } <br /><p>${ "Selanjutnya 🔜" btn }</p><p>${ "Kembali Ke Menu Utama" wbtn }</p>
K: $back 2ndfact
--

end-room

room: 2ndfact

Q: Selanjutnya
A: ${ fact2 factMenu }
K: $back 3rdfact
--

end-room

room: 3rdfact

Q: Selanjutnya
A: ${ fact3 factMenu }
K: $back 4thfact
--

Q: Sebelumnya
A: ${ fact1 factMenu }
K: $back 2ndfact
--

end-room

room: 4thfact

Q: Selanjutnya
A: ${ fact4 factMenu }
K: $back 5thfact
--

Q: Sebelumnya
A: ${ fact2 factMenu }
K: $back 3rdfact
--

end-room

room: 5thfact

Q: Selanjutnya
A: ${ fact5 factMenu }
K: $back 6thfact
--

Q: Sebelumnya
A: ${ fact3 factMenu }
K: $back 4thfact
--

end-room

room: 6thfact

Q: Selanjutnya
A: ${ fact6 factMenu }
K: $back 7thfact
--

Q: Sebelumnya
A: ${ fact4 factMenu }
K: $back 5thfact
--

end-room

room: 7thfact

Q: Selanjutnya
A: ${ fact7 factMenu }
K: $back 8thfact
--

Q: Sebelumnya
A: ${ fact5 factMenu }
K: $back 6thfact
--

end-room

room: 8thfact

Q: Selanjutnya
A: ${ fact8 factMenu }
K: $back 9thfact
--

Q: Sebelumnya
A: ${ fact6 factMenu }
K: $back 7thfact
--

end-room

room: 9thfact

Q: Selanjutnya
A: ${ fact9 } <br /><p>${ "Sebelumnya 🔙" btn }</p><p>${ "Kembali Ke Menu Utama" wbtn }</p>
K: $back extRoomF
--

Q: Sebelumnya
A: ${ fact7 factMenu }
K: $back 8thfact
--

end-room

room: extRoomF

Q: Sebelumnya
A: ${ fact8 factMenu }
K: $back 9thfact
--

Q: $showMainMenu
A: ${ main-message main-button }
K: $back
--

end-room

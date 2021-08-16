\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

include ./topics
include ./topics/calcMessages.m

@: showCalcMenu
showCalcMenu: kembali_ke_menu_kalkulator kalkulator

: calMainMsg
q{
<img src="https://lh3.googleusercontent.com/i2KV7wQXEuQw9DjWXHIxCa55x3YvSIz2-EmdiFe_U-kpGKAoJN5lgW4wHe7rO0k70mcBb502ESDvBPisE4S2HkgTFJ_VvIymSDE01W-1RSevPJJBqBC4TGM84a4tB4GV0D0vr_-T" width="95%" length="95%" />
<p> Hi! Kamu mau delot bantu hitung rumus apa? 🤔 </p>
}q
;


: endMsg
q{
Terimakasih telah menggunakan kalkulator Delot</p>
<p>Klik <b>Beri Masukan ✏️</b> untuk memberikan kritik dan saran.
}q
;

: calMenu
ctx{ msg }
"Kuat Arus" btn "Hambatan" btn "Energi Listrik" btn "Daya Listrik" btn "Kembali Ke Menu Utama" wbtn ctx{ btn1 btn2 btn3 btn4 previous }
q{
<p align="center">#{msg}</p><br>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
<p>#{previous}</p>
}q
;

: calc
ctx{ msg }
"Beri Masukan ✏️" btn "Kembali Ke Menu Kalkulator 🔙" wbtn ctx{ input previous }
q{
<p>#{msg}</p>
<a href="?p=t" style="text-decoration:none;">#{input}</a>
#{previous}
}q
;

Q: $showCalcMenu
A: ${ calMainMsg calMenu }
--

Q: Kuat Arus
A: ${strongCurrentMsg} ${bb} ${ endMsg calc }
--

Q: Hambatan
A: ${electResistanceMsg} ${bb} ${ endMsg calc }
--

Q: Energi Listrik
A: ${electEnergyMsg} ${bb} ${ endMsg calc }
--

Q: Daya Listrik
A: ${electPowerMsg} ${bb} ${ endMsg calc }
--


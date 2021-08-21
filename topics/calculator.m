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
<title> Delot | Dynamic Electricity Bot </title>
<img src="https://lh3.googleusercontent.com/i2KV7wQXEuQw9DjWXHIxCa55x3YvSIz2-EmdiFe_U-kpGKAoJN5lgW4wHe7rO0k70mcBb502ESDvBPisE4S2HkgTFJ_VvIymSDE01W-1RSevPJJBqBC4TGM84a4tB4GV0D0vr_-T" width="95%" length="95%" />
<div align="justify">
<p> Hi! Kamu mau delot bantu hitung rumus apa? 🤔 </p>
</div>
}q
;


: endMsg
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
<p>Terimakasih telah menggunakan kalkulator Delot</p>
<p>Klik <b>Beri Masukan ✏️</b> untuk memberikan kritik dan saran.</p>
</div>
}q
;

: calMenu
ctx{ msg }
"Kuat Arus" btn "Hambatan" btn "Energi Listrik" btn "Daya Listrik" btn "Tegangan Listrik" btn "Kembali Ke Menu Utama" wbtn ctx{ btn1 btn2 btn3 btn4 btn5 previous }
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
<p>#{msg}</p><br>
</div>
<p>#{btn1}</p>
<p>#{btn2}</p>
<p>#{btn3}</p>
<p>#{btn4}</p>
<p>#{btn5}</p>
<p>#{previous}</p>
}q
;

: calc
ctx{ msg }
"Beri Masukan ✏️" btn "Kembali Ke Menu Kalkulator" wbtn ctx{ input previous }
q{
<title> Delot | Dynamic Electricity Bot </title>
<div align="justify">
<p>#{msg}</p>
</div>
<div style="border:1px solid grey;background:#DDD;color:black;display:inline-block;padding:10px;border-radius:6px;font-weight:bold; font-family:Hahmlet, serif;; font-size:16px; padding:10px; font-family:Poppins, sans-serif; font-size:14px; display: block; width: auto; margin: 0.05px; border: none; background-color: #5b4f47; color: #FFFFFF; font-size: 15px; cursor: pointer; line-height: 1; text-align: center; " onclick="window.location.href='?p=t'">Beri Masukan ✏️</div>
</p>#{previous}</p>
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

Q: Tegangan Listrik
A: ${voltageMsg} ${bb} ${ endMsg calc }

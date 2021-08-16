\
\ Copyright © 2021 alexadam all rights reserved.
\
\ @author: alexadam
\ @date: 15 Aug 2021
\
\ A brief description of this program.
\

: strongCurrentMsg
q{
<script> 
    function check(elem){ 
        if (elem.selectedIndex == 2) { 
            document.querySelector("#text1").innerHTML = "Masukkan nilai Q: ";
            document.querySelector("#angka1").placeholder = "Jumlah Muatan Listrik (C)";
            document.querySelector("#text2").innerHTML = "Masukkan nilai I: ";
            document.querySelector("#angka2").placeholder = "Arus Listrik (A)";
        } else if (elem.selectedIndex == 1){ 
            document.querySelector("#text1").innerHTML = "Masukkan nilai I: "; 
            document.querySelector("#angka1").placeholder = "Arus Listrik (A)";
            document.querySelector("#text2").innerHTML = "Masukkan nilai t: ";
            document.querySelector("#angka2").placeholder = "Selang Waktu (s)";
        } else { 
            document.querySelector("#text1").innerHTML = "Masukkan nilai Q: ";
            document.querySelector("#angka1").placeholder = "Jumlah Muatan Listrik (C)";
            document.querySelector("#text2").innerHTML = "Masukkan nilai t: ";
            document.querySelector("#angka2").placeholder = "Selang Waktu (s)";
        } 
        console.log(document.getElementById("choices").value);
    };
    
    function count(){ 
        let resultContainer = document.querySelector("#result");
        let {q, i, t,} = 0;
        let formula, formula2; 
        let firstNum = Number(document.getElementById("angka1").value); 
        let secNum = Number(document.getElementById("angka2").value);
        let result = 0;
        const choice = document.getElementById("choices").value;
        if (choice == 't') { 
            q = firstNum;
            i = secNum;
            formula = `t = (Q/I)`;
            formula2 = `t = (${q} / ${i})`;
            result = q/i;
        } else if (choice == 'Q') { 
            i = firstNum;
            t = secNum;
            formula = `Q = I × t`;
            formula2 = `Q = ${i} × ${t}`;
            result = i*t;
        } else { 
            q = firstNum;
            t = secNum;
            formula = `I = (q / t) `;
            formula2 = `I = (${q} / ${t})`;
            result = q/t;
        };

        resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula}</p><p>${formula2}</p><p style="font-weight:bold;">${choice} = ${result}</p>`;
    } 
</script>
<style>
    .countbtn{
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
        background-color: #ffb3b3; color: #FFFFFF; 
        font-size: 15px; cursor: pointer; 
        line-height: 1; text-align: center;
    }
</style>
<img src="https://lh4.googleusercontent.com/blXJNowMH2qs1HeZyNjlJAF7rri6akACAWOHuAJfdmQLzWG6_vrbSUb1saIA6NfMwPh8b13lq0paWv-k3Kde4CatsCCQ3uZ-9mZuc83kXWO5gWlasqERDYigvyAOavsDARU23iRc" width="95%" length="95%">
<p> Apa yang ingin dicari? </p> 
<select id="choices" onchange="check(this)"> 
    <option value="I">I: Arus Listrik (A)</option> 
    <option value="Q">Q: Jumlah Muatan Listrik(C)</option> 
    <option value="t">t: Selang Waktu(s)</option>
</select>
<br> 
<p id="text1"> Masukkan nilai Q: </p> 
<input type="number" id="angka1" placeholder="Jumlah Muatan Listrik"></input> 
<p id="text2"> Masukkan nilai t: </p>
<input type="number" id="angka2" placeholder="Selang Waktu (s)"></input>  
<br>
<br> 
<div class="countbtn" onclick="count()">Hitung</div>
<div id="result"></div>
}q
;

: electResistanceMsg
q{
    <script> 
        function check(elem){ 
            if (elem.selectedIndex == 2) { 
                document.querySelector("#text1").innerHTML = "Masukkan nilai V: ";
                document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai R: ";
                document.querySelector("#angka2").placeholder = "Jumlah ";
            } else if (elem.selectedIndex == 1){ 
                document.querySelector("#text1").innerHTML = "Masukkan nilai I: "; 
                document.querySelector("#angka1").placeholder = "Arus Listrik (A)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai R: ";
                document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
            } else { 
                document.querySelector("#text1").innerHTML = "Masukkan nilai V: ";
                document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai I: ";
                document.querySelector("#angka2").placeholder = "Arus Listrik (A)";
            } 
            console.log(document.getElementById("choices").value);
        };
        
        function count(){ 
            let resultContainer = document.querySelector("#result");
            let {r, v, i,} = 0;
            let formula, formula2; 
            let firstNum = Number(document.getElementById("angka1").value); 
            let secNum = Number(document.getElementById("angka2").value);
            let result = 0;
            const choice = document.getElementById("choices").value;
            if (choice == 'I') { 
                v = firstNum;
                r = secNum;
                formula = `I = (V / R)`;
                formula2 = `I = (${v} / ${r})`;
                result = v/r;
            } else if (choice == 'V') { 
                i = firstNum;
                r = secNum;
                formula = `V = I × R`;
                formula2 = `V = ${i} × ${r}`;
                result = i*r;
            } else { 
                v = firstNum;
                i = secNum;
                formula = `R = (V / I) `;
                formula2 = `R = (${v} / ${i})`;
                result = v/i;
            };
    
            resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula}</p><p>${formula2}</p><p style="font-weight:bold;">${choice} = ${result}</p>`;
        } 
    </script>
    <style>
        .countbtn{
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
            background-color: #ffb3b3; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
    </style>
    <img src="https://lh4.googleusercontent.com/GT5LggIrsjqsD3-ir_-xj2PFlG8Tbzdt-PVL2dNG3hWTn8stFZikSFSIeb1C-o4TNnC-wRWPazq-LGgHMIeP79yAfhaLDMN_eTw1WrGFAJVbi15sCyfduU1-di9t5XHp8Fp1117e" width="95%px" length="95%px">
    <p> Apa yang ingin dicari? </p> 
    <select id="choices" onchange="check(this)"> 
            <option value="R">R: Hambatan Listrik (Ohm)</option> 
            <option value="V">V: Tegangan Listrik (Volt)</option> 
            <option value="I">I: Arus Listrik (A)</option>
        </select>
        <br> 
        <p id="text1"> Masukkan nilai V: </p> 
        <input type="number" id="angka1" placeholder="Tegangan Listrik (Volt)"></input> 
        <p id="text2"> Masukkan nilai I: </p>
        <input type="number" id="angka2" placeholder="Arus Listrik (A)"></input>  
        <br>
        <br> 
        <div class="countbtn" onclick="count()">Hitung</div>
        <div id="result"></div>
}q
;

: electPowerMsg
q{
    <script> 
        function check(elem){ 
            if (elem.selectedIndex == 2) { 
                document.querySelector("#text1").innerHTML = "Masukkan nilai P: ";
                document.querySelector("#angka1").placeholder = "Daya Listrik (W)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai V: ";
                document.querySelector("#angka2").placeholder = "Beda Potensial (Volt)";
            } else if (elem.selectedIndex == 1){ 
                document.querySelector("#text1").innerHTML = "Masukkan nilai P: ";
                document.querySelector("#angka1").placeholder = "Daya Listrik (W)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai I: "; 
                document.querySelector("#angka2").placeholder = "Arus Listrik (A)";
            } else { 
                document.querySelector("#text1").innerHTML = "Masukkan nilai V: ";
                document.querySelector("#angka1").placeholder = "Beda Potensial(Volt)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai I: ";
                document.querySelector("#angka2").placeholder = "Arus Listrik (A)";
            } 
            console.log(document.getElementById("choices").value);
        };
        
        function count(){ 
            let resultContainer = document.querySelector("#result");
            let {p, v, i,} = 0;
            let formula, formula2; 
            let firstNum = Number(document.getElementById("angka1").value); 
            let secNum = Number(document.getElementById("angka2").value);
            let result = 0;
            const choice = document.getElementById("choices").value;
            if (choice == 'I') { 
                p = firstNum;
                v = secNum;
                formula = `I = P / V`;
                formula2 = `I = ${p} / ${v}`;
                result = p/v;
            } else if (choice == 'V') { 
                p = firstNum;
                i = secNum;
                formula = `V = P / I`;
                formula2 = `V = ${p} / ${i}`;
                result = p/i;
            } else { 
                v = firstNum;
                i = secNum;
                formula = `P = V × I `;
                formula2 = `P = ${v} × ${i}`;
                result = v*i;
            };
    
            resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula}</p><p>${formula2}</p><p style="font-weight:bold;">${choice} = ${result}</p>`;
        } 
    </script>
    <style>
        .countbtn{
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
            background-color: #ffb3b3; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
    </style>
    <img src="https://lh3.googleusercontent.com/NPtslvQZ3DDfBtz-5g-JvsAVnwtwsCMtqe53cMVgCkQokaJImI4_ifhZgYwSxP368E-tpgbno5js78winkEC55b1yAkMSSdf6R56ECBUtjuow4B4fnhIR9HMxd5WpLcrmqkAbGPW" width="95%" length="95%">
        <p> Apa yang ingin dicari? </p> 
        <select id="choices" onchange="check(this)"> 
            <option value="P">P: Daya Listrik (W)</option> 
            <option value="V">V: Beda Potensial (Volt)</option> 
            <option value="I">I: Arus Listrik (A)</option>
        </select>
        <br> 
        <p id="text1"> Masukkan nilai V: </p> 
        <input type="number" id="angka1" placeholder="Beda Potensial (Volt)"></input> 
        <p id="text2"> Masukkan nilai I: </p>
        <input type="number" id="angka2" placeholder="Arus Listrik (A)"></input>  
        <br>
        <br> 
        <div class="countbtn" onclick="count()">Hitung</div>
        <div id="result"></div>
}q
;

: electEnergyMsg
q{
    <script> 
        function check(elem){ 
            if (elem.selectedIndex == 3) {
                document.querySelector("#text1").innerHTML = "Masukkan nilai W: ";
                document.querySelector("#angka1").placeholder = "W: Daya Listrik (width)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai V: ";
                document.querySelector("#angka2").placeholder = "Tegangan Listrik (Volt)";
                document.querySelector("#text3").innerHTML = "Masukkan nilai I: ";
                document.querySelector("#angka3").placeholder = "I: Arus Listrik (A)";
            } else if (elem.selectedIndex == 2) { 
                document.querySelector("#text1").innerHTML = "Masukkan nilai W: ";
                document.querySelector("#angka1").placeholder = "W: Daya Listrik (width)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai V: ";
                document.querySelector("#angka2").placeholder = "Tegangan Listrik (Volt)";
                document.querySelector("#text3").innerHTML = "Masukkan nilai t: ";
                document.querySelector("#angka3").placeholder = "t: Waktu (s)";
            } else if (elem.selectedIndex == 1){ 
                document.querySelector("#text1").innerHTML = "Masukkan nilai W: ";
                document.querySelector("#angka1").placeholder = "W: Daya Listrik (width)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai I: ";
                document.querySelector("#angka2").placeholder = "I: Arus Listrik (A)";
                document.querySelector("#text3").innerHTML = "Masukkan nilai t: ";
                document.querySelector("#angka3").placeholder = "t: Waktu (s)";
            } else { 
                document.querySelector("#text1").innerHTML = "Masukkan nilai V: ";
                document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                document.querySelector("#text2").innerHTML = "Masukkan nilai I: ";
                document.querySelector("#angka2").placeholder = "I: Arus Listrik (A)";
                document.querySelector("#text3").innerHTML = "Masukkan nilai t: ";
                document.querySelector("#angka3").placeholder = "t: Waktu (s)";
            } 
            console.log(document.getElementById("choices").value);
        };
        
        function count(){ 
            let resultContainer = document.querySelector("#result");
            let {w, v, i, t} = 0;
            let formula, formula2; 
            let firstNum = Number(document.getElementById("angka1").value); 
            let secNum = Number(document.getElementById("angka2").value);
            let thirdNum = Number(document.getElementById("angka3").value);
            let result = 0;
            const choice = document.getElementById("choices").value;
            if (choice == 't') { 
                w = firstNum;
                v = secNum;
                i = thirdNum;
                formula = `V = W / V × I`;
                formula2 = `V = ${w} / (${v} × ${i})`;
                result = w/v*i;
            } else if (choice == 'I') { 
                w = firstNum;
                v = secNum;
                t = thirdNum;
                formula = `V = W / V × t`;
                formula2 = `V = ${w} / (${v} × ${t})`;
                result = w/v*t;
            } else if(choice == 'V') {  
                w = firstNum;
                i = secNum;
                t = thirdNum;
                formula = `V = W / I × t`;
                formula2 = `V = ${w} / (${i} × ${t})`;
                result = w/i*t;
            } else {
                v = firstNum;
                i = secNum;
                t = thirdNum;
                formula = `W = V × I × t`;
                formula2 = `W = ${v} × ${i} × ${t}`;
                result = v*i*t;
            }
    
            resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula}</p><p>${formula2}</p><p style="font-weight:bold;">${choice} = ${result}</p>`;
        } 
    </script>
    <style>
        .countbtn{
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
            background-color: #ffb3b3; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
    </style>
        <img src="https://lh5.googleusercontent.com/slYMuO7Xkf1yEFQ0zsto8vcrtZQ27ohPMq3U1UWogVaiymuaKMOs2xUXZJU34diDK0Je0o2DLa1-XCIaO-fXShCRKxxY5_60UhtYFuXnGEEbvSawRPPtG68qM6ym11sHB1G2T1gj" width="95%" length="95%">
        <p> Apa yang ingin dicari? </p> 
        <select id="choices" onchange="check(this)"> 
            <option value="W">W: Daya Listrik (width)</option> 
            <option value="V">V: Tegangan Listrik (Volt)</option> 
            <option value="I">I: Arus Listrik (A)</option>
            <option value="t">t: Waktu (s)</option>
        </select>
        <br> 
        <p id="text1"> Masukkan nilai V: </p> 
        <input type="number" id="angka1" placeholder="Tegangan Listrik (Volt)"></input> 
        <p id="text2"> Masukkan nilai I: </p>
        <input type="number" id="angka2" placeholder="Arus Listrik (A)"></input> 
        <p id="text3"> Masukkan nilai t: </p>
        <input type="number" id="angka3" placeholder="Waktu (s)">
        <br>
        <br> 
        <div class="countbtn" onclick="count()">Hitung</div>
        <div id="result"></div>
}q
;

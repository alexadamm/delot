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
        function check(elem) {
            switch (elem.selectedIndex) {
                case 1:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai P:";
                    document.querySelector("#angka1").placeholder = 'Daya Listrik (Watt)';
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai V:";
                    document.querySelector("#angka2").placeholder = 'Tegangan Listrik (Volt)';
                    break;
                case 2:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai P:";
                    document.querySelector("#angka1").placeholder = "Daya Listrik (Watt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai R:";
                    document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
                    break;
                case 3:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai Q:";
                    document.querySelector("#angka1").placeholder = "Muatan Listrik (Coloumb)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai t:";
                    document.querySelector("#angka2").placeholder = "Selang Waktu (second)";
                    break;
                default:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai V:";
                    document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai R:";
                    document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
                    break;
            }
        }
    
        function count() {
            let firstNum = Number(document.getElementById("angka1").value);
            let secondNum = Number(document.getElementById("angka2").value);
            let formula1, formula2;
            let result = 0;
            let choice = document.getElementById("choices").value;
            let resultContainer = document.querySelector("#result");
            switch (choice) {
                case '2':
                    formula1 = "I = P / V";
                    formula2 = `I = ${firstNum} / ${secondNum}`;
                    result = `I = ${firstNum/secondNum}`;
                    break;
                case '3':
                    formula1 = "I = √(P / R)";
                    formula2 = `I = √(${firstNum} / ${secondNum})`;
                    result = `I = ${Math.sqrt(firstNum/secondNum)}`;
                    break;
                case '4':
                    formula1 = "I = Q / t";
                    formula2 = `I = ${firstNum} / ${secondNum}`;
                    result = `I = ${firstNum/secondNum}`;
                    break;
                default:
                    formula1 = "I = V / R";
                    formula2 = `I = ${firstNum} / ${secondNum}`;
                    result = `I = ${firstNum/secondNum}`;
            }
            resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula1}</p><p>${formula2}</p><p style="font-weight:bold;">${result}</p>`;
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
            background-color: #5b4f47; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
        
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        :root {
            --select-border: #777;
            --select-focus: blue;
            --select-arrow: var(--select-border);
        }
        select {
            background-color: transparent;
            border: none;
            padding: 0 1em 0 0;
            margin: 0;
            width: 95%;
            font-family: inherit;
            font-size: inherit;
            cursor: inherit;
            line-height: inherit;
        }

        .select {
            width: 95%;
            min-width: 15ch;
            max-width: 30ch;
            border: 1px solid var(--select-border);
            border-radius: 0.25em;
            padding: 0.25em 0.5em;
            font-size: 1.25rem;
            cursor: pointer;
            line-height: 1.1;
            background-color: #fff;
            background-image: linear-gradient(to top, #f9f9f9, #fff 33%);
        }

        select::-ms-expand {
            display: none;
        }

        select {
            outline: none;
        }

        input[type="number"] {
            box-sizing: border-box;
            width: 95%;
            margin: 0 0 1em;
            padding-left: 1em;
            border: 1px solid #ccc;
            border-radius: 0.55em;
            background: #fff;
            resize: none;
            outline: none;
        }
    </style>
<img src="https://lh4.googleusercontent.com/blXJNowMH2qs1HeZyNjlJAF7rri6akACAWOHuAJfdmQLzWG6_vrbSUb1saIA6NfMwPh8b13lq0paWv-k3Kde4CatsCCQ3uZ-9mZuc83kXWO5gWlasqERDYigvyAOavsDARU23iRc" width="95%" length="95%">
<p> Pilih rumus yang akan digunakan </p>
    <div class="select">
        <select width="95%" id="choices" onchange="check(this)">
            <option value="1">I = V / R</option>
            <option value="2">I = P / V</option>
            <option value="3">I = √(P / R)</option>
            <option value="4">I = Q / t</option>
        </select>
    </div>
<br> 
<p id="text1">Masukkan Nilai V:</p>
<input width="95%" type="number" id="angka1" placeholder="Tegangan Listrik (Volt)"></input> 
<p id="text2">Masukkan Nilai R:</p>
<input width="95%" type="number" id="angka2" placeholder="Hambatan (Ohm)"></input>  
<br>
<div class="countbtn" onclick="count()">Hitung</div>
<div id="result"></div>
}q
;

: electResistanceMsg
q{
    <script>
        function check(elem) {
            switch (elem.selectedIndex) {
                case 1:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai V:";
                    document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai I:";
                    document.querySelector("#angka2").placeholder = "Kuat Arus (Ampere)";
                    document.querySelector("#text3").style.display = "none";
                    document.querySelector("#angka3").style.display = "none";
                    break;
                case 2:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai V:";
                    document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai P:";
                    document.querySelector("#angka2").placeholder = "Daya Listrik (Watt)";
                    document.querySelector("#text3").style.display = "none";
                    document.querySelector("#angka3").style.display = "none";
                    break;
                case 3:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai p:";
                    document.querySelector("#angka1").placeholder = "Hambatan Jenis (Ohm meter)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai l:";
                    document.querySelector("#angka2").placeholder = "Panjang Bahan (meter)";
                    document.querySelector("#text3").style.display = "block";
                    document.querySelector("#angka3").style.display = "block";
                    break;
                default:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai P:";
                    document.querySelector("#angka1").placeholder = "Daya Listrik (Watt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai I:";
                    document.querySelector("#angka2").placeholder = "Kuat Arus (Ampere)";
                    document.querySelector("#text3").style.display = "none";
                    document.querySelector("#angka3").style.display = "none";
            }
        }
    
        function count() {
            let firstNum = Number(document.getElementById("angka1").value);
            let secondNum = Number(document.getElementById("angka2").value);
            let thirdNum = Number(document.getElementById("angka3").value);
            let formula1, formula2;
            let result = 0;
            let choice = document.getElementById("choices").value;
            let resultContainer = document.querySelector("#result");
            switch (choice) {
                case '2':
                    formula1 = "R = V / I";
                    formula2 = `R = ${firstNum} / ${secondNum}`;
                    result = `R = ${firstNum / secondNum}`;
                    break;
                case '3':
                    formula1 = "R = V² / P";
                    formula2 = `R = ${firstNum}² / ${secondNum}`;
                    result = `R = ${(firstNum * firstNum) / secondNum}`;
                    break;
                case '4':
                    formula1 = "R = (p × l) / A";
                    formula2 = `R = (${firstNum} × ${secondNum}) / ${thirdNum}`;
                    result = `R = ${(firstNum * secondNum) / thirdNum}`;
                    break;
                default:
                    formula1 = "R = P / I²";
                    formula2 = `R = ${firstNum} × ${secondNum}²`;
                    result = `R = ${firstNum * (secondNum * secondNum)}`;
            }
            resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula1}</p><p>${formula2}</p><p style="font-weight:bold;">${result}</p>`;
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
            background-color: #5b4f47; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
        
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        :root {
            --select-border: #777;
            --select-focus: blue;
            --select-arrow: var(--select-border);
        }
        select {
            background-color: transparent;
            border: none;
            padding: 0 1em 0 0;
            margin: 0;
            width: 95%;
            font-family: inherit;
            font-size: inherit;
            cursor: inherit;
            line-height: inherit;
        }

        .select {
            width: 95%;
            min-width: 15ch;
            max-width: 30ch;
            border: 1px solid var(--select-border);
            border-radius: 0.25em;
            padding: 0.25em 0.5em;
            font-size: 1.25rem;
            cursor: pointer;
            line-height: 1.1;
            background-color: #fff;
            background-image: linear-gradient(to top, #f9f9f9, #fff 33%);
        }

        select::-ms-expand {
            display: none;
        }

        select {
            outline: none;
        }

        input[type="number"] {
            box-sizing: border-box;
            width: 95%;
            margin: 0 0 1em;
            padding-left: 1em;
            border: 1px solid #ccc;
            border-radius: 0.55em;
            background: #fff;
            resize: none;
            outline: none;
        }
    </style>
    <img src="https://lh4.googleusercontent.com/GT5LggIrsjqsD3-ir_-xj2PFlG8Tbzdt-PVL2dNG3hWTn8stFZikSFSIeb1C-o4TNnC-wRWPazq-LGgHMIeP79yAfhaLDMN_eTw1WrGFAJVbi15sCyfduU1-di9t5XHp8Fp1117e" width="95%px" length="95%px">
    <p> Pilih rumus yang akan digunakan </p>
    <div class="select">
    <select id="choices" onchange="check(this)">
        <option value="1">R = P / I²</option>
        <option value="2">R = V / I</option>
        <option value="3">R = V² / P</option>
        <option value="4">R = (p × l) / A</option>
    </select>
    </div>
    <p id="text1">Masukkan Nilai P:</p>
    <input type="number" id="angka1" placeholder="Daya Listrik (Watt)"></input>
    <p id="text2">Masukkan Nilai I:</p>
    <input type="number" id="angka2" placeholder="Kuat Arus (Ampere)"></input>
    <p id="text3" style="display: none;">Masukkan Nilai A:</p>
    <input type="number" id="angka3" placeholder="Luas Penampang (meter²)" style="display:none;"></input>
    <div class="countbtn" onclick="count()">Hitung</div>
    <div id="result"></div>
}q
;

: electEnergyMsg
q{
    <script>
        function check(elem) {
            switch (elem.selectedIndex) {
                case 1:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai I:";
                    document.querySelector("#angka1").placeholder = "Kuat Arus (Ampere)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai R:";
                    document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
                    document.querySelector("#text3").InnerHTML = "Masukkan Nilai t";
                    document.querySelector("#angka3").placeholder = "Selang Waktu (sekon)";
                    break;
                case 2:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai V:";
                    document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai R:";
                    document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
                    document.querySelector("#text3").InnerHTML = "Masukkan Nilai t";
                    document.querySelector("#angka3").placeholder = "Selang Waktu (sekon)";
                    break;
                default:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai V:";
                    document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai I:";
                    document.querySelector("#angka2").placeholder = "Kuat Arus (Ampere)";
                    document.querySelector("#text3").InnerHTML = "Masukkan Nilai t";
                    document.querySelector("#angka3").placeholder = "Selang Waktu (sekon)";
            }
        }
    
        function count() {
            let firstNum = Number(document.getElementById("angka1").value);
            let secondNum = Number(document.getElementById("angka2").value);
            let thirdNum = Number(document.getElementById("angka3").value);
            let formula1, formula2;
            let result = 0;
            let choice = document.getElementById("choices").value;
            let resultContainer = document.querySelector("#result");
            switch (choice) {
                case '2':
                    formula1 = "W = i² × R × t";
                    formula2 = `W = ${firstNum}² × ${secondNum} × ${thirdNum}`;
                    result = `W = ${firstNum * firstNum * secondNum * thirdNum}`;
                    break;
                case '3':
                    formula1 = "W = (V² / R) × t";
                    formula2 = `W = (${firstNum}² / ${secondNum}) × ${thirdNum}`;
                    result = `W = ${((firstNum * firstNum) / secondNum) * thirdNum}`;
                    break;
                default:
                    formula1 = "W = V × I × t";
                    formula2 = `W = ${firstNum} × ${secondNum} × ${thirdNum}`;
                    result = `W = ${firstNum * secondNum * thirdNum}`;
            }
            resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula1}</p><p>${formula2}</p><p style="font-weight:bold;">${result}</p>`;
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
            background-color: #5b4f47; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
        
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        :root {
            --select-border: #777;
            --select-focus: blue;
            --select-arrow: var(--select-border);
        }
        select {
            background-color: transparent;
            border: none;
            padding: 0 1em 0 0;
            margin: 0;
            width: 95%;
            font-family: inherit;
            font-size: inherit;
            cursor: inherit;
            line-height: inherit;
        }

        .select {
            width: 95%;
            min-width: 15ch;
            max-width: 30ch;
            border: 1px solid var(--select-border);
            border-radius: 0.25em;
            padding: 0.25em 0.5em;
            font-size: 1.25rem;
            cursor: pointer;
            line-height: 1.1;
            background-color: #fff;
            background-image: linear-gradient(to top, #f9f9f9, #fff 33%);
        }

        select::-ms-expand {
            display: none;
        }

        select {
            outline: none;
        }

        input[type="number"] {
            box-sizing: border-box;
            width: 95%;
            margin: 0 0 1em;
            padding-left: 1em;
            border: 1px solid #ccc;
            border-radius: 0.55em;
            background: #fff;
            resize: none;
            outline: none;
        }
    </style>
    <img src="https://lh5.googleusercontent.com/slYMuO7Xkf1yEFQ0zsto8vcrtZQ27ohPMq3U1UWogVaiymuaKMOs2xUXZJU34diDK0Je0o2DLa1-XCIaO-fXShCRKxxY5_60UhtYFuXnGEEbvSawRPPtG68qM6ym11sHB1G2T1gj" width="95%" length="95%">
        <p> Pilih rumus yang akan digunakan </p>
    <div class="select">
    <select id="choices" onchange="check(this)">
        <option value="1">W = V × I × t</option>
        <option value="2">W = i² × R × t</option>
        <option value="3">W = (V² / R) × t</option>
    </select>
    </div>
    <p id="text1">Masukkan Nilai V:</p>
    <input type="number" id="angka1" placeholder="Tegangan Listrik (Volt)"></input>
    <p id="text2">Masukkan Nilai I:</p>
    <input type="number" id="angka2" placeholder="Kuat Arus (Ampere)"></input>
    <p id="text3">Masukkan Nilai t:</p>
    <input type="number" id="angka3" placeholder="Selang Waktu (sekon)"></input>
    <div class="countbtn" onclick="count()">Hitung</div>
    <div id="result"></div>
}q
;

: electPowerMsg
q{
    <script>
        function check(elem) {
            switch (elem.selectedIndex) {
                case 1:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai I:";
                    document.querySelector("#angka1").placeholder = "Kuat Arus (Ampere)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai R:";
                    document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
                    break;
                case 2:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai V:";
                    document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai R:";
                    document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
                    break;
                case 3:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai W:";
                    document.querySelector("#angka1").placeholder = "Energi Listrik (Joule)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai t:";
                    document.querySelector("#angka2").placeholder = "Selang Waktu (second)";
                    break;
                default:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai V:";
                    document.querySelector("#angka1").placeholder = "Tegangan Listrik (Volt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai I:";
                    document.querySelector("#angka2").placeholder = "Kuat Arus (Ampere)";
            }
        }
    
        function count() {
            let firstNum = Number(document.getElementById("angka1").value);
            let secondNum = Number(document.getElementById("angka2").value);
            let formula1, formula2;
            let result = 0;
            let choice = document.getElementById("choices").value;
            let resultContainer = document.querySelector("#result");
            switch (choice) {
                case '2':
                    formula1 = "P = I² × R";
                    formula2 = `P = ${firstNum}² × ${secondNum}`;
                    result = `P = ${firstNum * firstNum * secondNum}`;
                    break;
                case '3':
                    formula1 = "P = V² / R";
                    formula2 = `P = ${firstNum}² / ${secondNum}`;
                    result = `P = ${firstNum * firstNum / secondNum}`;
                    break;
                case '4':
                    formula1 = "P = W / t";
                    formula2 = `P = ${firstNum} / ${secondNum}`;
                    result = `P = ${firstNum/secondNum}`;
                    break;
                default:
                    formula1 = "P = V × I";
                    formula2 = `P = ${firstNum} × ${secondNum}`;
                    result = `P = ${firstNum*secondNum}`;
            }
            resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula1}</p><p>${formula2}</p><p style="font-weight:bold;">${result}</p>`;
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
            background-color: #5b4f47; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
        
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        :root {
            --select-border: #777;
            --select-focus: blue;
            --select-arrow: var(--select-border);
        }
        select {
            background-color: transparent;
            border: none;
            padding: 0 1em 0 0;
            margin: 0;
            width: 95%;
            font-family: inherit;
            font-size: inherit;
            cursor: inherit;
            line-height: inherit;
        }

        .select {
            width: 95%;
            min-width: 15ch;
            max-width: 30ch;
            border: 1px solid var(--select-border);
            border-radius: 0.25em;
            padding: 0.25em 0.5em;
            font-size: 1.25rem;
            cursor: pointer;
            line-height: 1.1;
            background-color: #fff;
            background-image: linear-gradient(to top, #f9f9f9, #fff 33%);
        }

        select::-ms-expand {
            display: none;
        }

        select {
            outline: none;
        }

        input[type="number"] {
            box-sizing: border-box;
            width: 95%;
            margin: 0 0 1em;
            padding-left: 1em;
            border: 1px solid #ccc;
            border-radius: 0.55em;
            background: #fff;
            resize: none;
            outline: none;
        }
    </style>
    <img src="https://lh3.googleusercontent.com/NPtslvQZ3DDfBtz-5g-JvsAVnwtwsCMtqe53cMVgCkQokaJImI4_ifhZgYwSxP368E-tpgbno5js78winkEC55b1yAkMSSdf6R56ECBUtjuow4B4fnhIR9HMxd5WpLcrmqkAbGPW" width="95%" length="95%">
        
    <p> Pilih rumus yang akan digunakan </p>
    <div class="select">
    <select id="choices" onchange="check(this)">
        <option value="1">P = V × I</option>
        <option value="2">P = I² × R</option>
        <option value="3">P = V² / R</option>
        <option value="4">P = W / t</option>
    </select>
    </div>
    <p id="text1">Masukkan Nilai V:</p>
    <input type="number" id="angka1" placeholder="Tegangan Listrik (Volt)"></input>
    <p id="text2">Masukkan Nilai I:</p>
    <input type="number" id="angka2" placeholder="Kuat Arus (Ampere)"></input>
    <div class="countbtn" onclick="count()">Hitung</div>
    <div id="result"></div>
}q
;

: voltageMsg
q{
    <script>
        function check(elem) {
            switch (elem.selectedIndex) {
                case 1:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai P:";
                    document.querySelector("#angka1").placeholder = "Daya Listrik (Watt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai R:";
                    document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
                    break;
                case 2:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai P:";
                    document.querySelector("#angka1").placeholder = "Daya Listrik (Watt)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai I:";
                    document.querySelector("#angka2").placeholder = "Kuat Arus (Ampere)";
                    break;
                case 3:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai W:";
                    document.querySelector("#angka1").placeholder = "Energi Listrik (Joule)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai Q:";
                    document.querySelector("#angka2").placeholder = "Muatan Listrik (Coloumb)";
                    break;
                default:
                    document.querySelector("#text1").innerHTML = "Masukkan Nilai I:";
                    document.querySelector("#angka1").placeholder = "Kuat Arus (Ampere)";
                    document.querySelector("#text2").innerHTML = "Masukkan Nilai R:";
                    document.querySelector("#angka2").placeholder = "Hambatan (Ohm)";
            }
        }
    
        function count() {
            let firstNum = Number(document.getElementById("angka1").value);
            let secondNum = Number(document.getElementById("angka2").value);
            let formula1, formula2;
            let result = 0;
            let choice = document.getElementById("choices").value;
            let resultContainer = document.querySelector("#result");
            switch (choice) {
                case '2':
                    formula1 = "V = √(P × R)";
                    formula2 = `V = √(${firstNum} × ${secondNum})`;
                    result = `V = ${Math.sqrt(firstNum * secondNum)}`;
                    break;
                case '3':
                    formula1 = "V = P / I";
                    formula2 = `V = ${firstNum} / ${secondNum}`;
                    result = `V = ${firstNum / secondNum}`;
                    break;
                case '4':
                    formula1 = "V = W / Q";
                    formula2 = `V = ${firstNum} / ${secondNum}`;
                    result = `V = ${firstNum / secondNum}`;
                    break;
                default:
                    formula1 = "V = I × R";
                    formula2 = `V = ${firstNum} × ${secondNum}`;
                    result = `V = ${firstNum * secondNum}`;
            }
            resultContainer.innerHTML = `<h4 style="text-align:center; margin-top: 1rem;">Hasil</h4><p>${formula1}</p><p>${formula2}</p><p style="font-weight:bold;">${result}</p>`;
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
            background-color: #5b4f47; color: #FFFFFF; 
            font-size: 15px; cursor: pointer; 
            line-height: 1; text-align: center;
        }
        
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        :root {
            --select-border: #777;
            --select-focus: blue;
            --select-arrow: var(--select-border);
        }
        select {
            background-color: transparent;
            border: none;
            padding: 0 1em 0 0;
            margin: 0;
            width: 95%;
            font-family: inherit;
            font-size: inherit;
            cursor: inherit;
            line-height: inherit;
        }

        .select {
            width: 95%;
            min-width: 15ch;
            max-width: 30ch;
            border: 1px solid var(--select-border);
            border-radius: 0.25em;
            padding: 0.25em 0.5em;
            font-size: 1.25rem;
            cursor: pointer;
            line-height: 1.1;
            background-color: #fff;
            background-image: linear-gradient(to top, #f9f9f9, #fff 33%);
        }

        select::-ms-expand {
            display: none;
        }

        select {
            outline: none;
        }

        input[type="number"] {
            box-sizing: border-box;
            width: 95%;
            margin: 0 0 1em;
            padding-left: 1em;
            border: 1px solid #ccc;
            border-radius: 0.55em;
            background: #fff;
            resize: none;
            outline: none;
        }
    </style>
    <p> Pilih rumus yang akan digunakan </p>
    <div class="select">
    <select id="choices" onchange="check(this)">
        <option value="1">V = I × R</option>
        <option value="2">V = √(P × R)</option>
        <option value="3">V = P / I</option>
        <option value="4">V = W / Q</option>
    </select>
    </div>
    <p id="text1">Masukkan Nilai I:</p>
    <input type="number" id="angka1" placeholder="Kuat Arus (Ampere)"></input>
    <p id="text2">Masukkan Nilai R:</p>
    <input type="number" id="angka2" placeholder="Hambatan (Ohm)"></input>
    <div class="countbtn" onclick="count()">Hitung</div>
    <div id="result"></div>
    
}q
;
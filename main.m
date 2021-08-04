\
\ Copyright © 2021 '34th Team Ai4Impact' all rights reserved.
\
\ @author: 34th Team Ai4Impact
\ @date: 31 Jul 2021
\
\ A brief description of this program.
\

terra/chat
terra/chat/app
terra/chat/log


include ./topics/learn.m
include ./topics/quiz.m
include ./topics/calculator.m
include ./topics/main-chat.m
include ./style.m


: welcomeMsg
q{
<p>Hai sob, perkenalkan saya Delot, Dynamic Electricity Bot</p>
<br>
<p>Saya akan membantu kamu belajar tentang listrik Dinamis!</p>
<p>Mulai dari arus listrik, hukum Kirchoff, hambatan, rangkaian hambatan, hukum ohm, rangkaian baterai, rangkaian seri, rangkaian paralel, dan hambatan pengganti.</p>
<br>
<p>Apa kamu siap untuk belajar mengenai listrik dinamis dengan Delot?</p>
<br>
}q
;



idk: I don't understand the question.

: test 
  \ NOTE: Add your questions to test here.
  "ya" answer . cr
  "Belajar" answer . cr
  "Mulai Belajar" answer . cr
  
;

: update-log 
  \ this name needs to match the name in publish:
  log: bot
;

: publish 
  
  \ IMPORTANT - edit this part. It's the name of your bot.
  publish: delot
  
  \ What your bot says at first. 
  init: ${welcomeMsg} ${ "Siap" btn }
  
  \ ------ PROPERTIES OF THE CHATBOT USER INTERFACE --------
  
  \ The background image. Should be tileable/repeatable. 
  \ Or you can use a HTML color (see https://www.w3schools.com/colors/colors_picker.asp)
  \ background: https://live.staticflickr.com/4135/4915115384_ca7b1df603_b.jpg
  background: #ffcccc
  \ Image of the avatar to use. 
  avatar: https://i.ibb.co/hCGZDwt/Logo.png
  \ Optional border on avatar
  \ avatar-border: solid #AAA 1px
  avatar-border: none
  
  \ Google font to import.
  import-font: 'https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap'
  \ Font to use in bubbles
  bubble-font: 'Hahmlet', serif;
  \ Font Color & Background of bot bubble
  bubble-bot-color: #333
  bubble-bot-background: #EEE
  \ Font Color & Background for user bubble
  bubble-user-color: white
  bubble-user-background: #ffb3b3
  \ Other bubble properties
  \ bubble-border: solid blue 1px
  bubble-border: solid #ffb3b3 2px
  bubble-radius: 16
  bubble-font-size: 16
  \ Max Width of bot bubble, in pixels
  \ bot-bubble-width: 380f
  \ You can limit the number of responses displayed
limit: 1
  
  \ Optional properties of the "send" button.
  \ Here's a sample from flaticon.com
  \ <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
send-button-image-url: https://i.ibb.co/3hGHfp7/telegram-xxl.png
send-button-image-style: padding-left:5px;
\   send-button-image-url: https://autocaffe.io/chat/play.png
\   send-button-image-style: none
  

  \ ----- PROPERTIES OF THE URL LINK FOR SOCIAL MEDIA --------
  \ These will be visible when you share the link to your bot.
  title: Delot
  description: Dynamic Electricity Bot
  thumbnail: https://i.ibb.co/hCGZDwt/Logo.png
  
;
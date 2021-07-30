terra/chat
terra/chat/app
terra/chat/log

include ./topics/learn.m

: welcome
q{
<p>Selamat datang [Nama Bot] ! </p>
<br>
<p>Kami akan membantu kamu belajar tentang listrik Dinamis!</p>
<p>Mulai dari arus listrik, hukum Kirchoff, hambatan, rangkaian hambatan, hukum ohm, rangkaian baterai, rangkaian seri, rangkaian paralel, dan hambatan pengganti.</p>
<br>
<p>Apa kamu siap untuk belajar mengenai listrik dinamis? Ya atau Tidak</p>
}q
;

idk: I don't understand the question.

: test 
  \ NOTE: Add your questions to test here.
  "Are you an idiot?" answer . cr
  "Are you silly?" answer . cr 
  "Do you like bananas?" answer . cr
  cr
  "Do you like science?" answer . cr
  "Are you good at chemistry?" answer . cr
  "Do you love math?" answer . cr
;

: update-log 
  \ this name needs to match the name in publish:
  log: bot
;

: publish 
  
  \ IMPORTANT - edit this part. It's the name of your bot.
  publish: bot
  
  \ What your bot says at first. 
  init: ${ welcome }
  
  \ ------ PROPERTIES OF THE CHATBOT USER INTERFACE --------
  
  \ The background image. Should be tileable/repeatable. 
  \ Or you can use a HTML color (see https://www.w3schools.com/colors/colors_picker.asp)
  \ background: https://live.staticflickr.com/4135/4915115384_ca7b1df603_b.jpg
  background: #212121
  \ Image of the avatar to use. 
  avatar: https://cdn.wallpapersafari.com/94/23/WxiT2L.jpg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=100
  \ Optional border on avatar
  \ avatar-border: solid #AAA 1px
  avatar-border: none
  
  \ Google font to import.
  import-font: Open+Sans:wght@300
  \ Font to use in bubbles
  bubble-font: 'Open Sans', sans-serif
  \ Font Color & Background of bot bubble
  bubble-bot-color: #333
  bubble-bot-background: #EEE
  \ Font Color & Background for user bubble
  bubble-user-color: white
  bubble-user-background: #3366cc
  \ Other bubble properties
  \ bubble-border: solid blue 1px
  bubble-border: none
  bubble-radius: 16
  bubble-font-size: 14
  \ Max Width of bot bubble, in pixels
  \ bot-bubble-width: 380
  \ You can limit the number of responses displayed
  \ limit: 3
  
  \ Optional properties of the "send" button.
  \ Here's a sample from flaticon.com
  \ <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
  \ send-button-image-url: https://www.flaticon.com/svg/static/icons/svg/3652/3652532.svg
  \ send-button-image-style: padding-left:10px;
  send-button-image-url: https://autocaffe.io/chat/play.png
  send-button-image-style: none
  

  \ ----- PROPERTIES OF THE URL LINK FOR SOCIAL MEDIA --------
  \ These will be visible when you share the link to your bot.
  title: Simple Chatbot
  description: My first chatbot.
  thumbnail: https://images.pexels.com/photos/3394658/pexels-photo-3394658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=100
  
;






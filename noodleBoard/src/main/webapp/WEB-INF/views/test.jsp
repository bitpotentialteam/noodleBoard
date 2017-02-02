<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>하하</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function() {

            //google text to speech START
           var u = new SpeechSynthesisUtterance();
           u.text = '안녕하세여 메이메이에여! 댁 이름을 말해주세여! ';
           u.lang = 'ko-KR';
           u.rate = 1.0;

           speechSynthesis.speak(u);

            switchRecognition();

            //google text to speech STARET

            $("#input").keypress(function(event) {
                if (event.which == 13) {
                    event.preventDefault();
                    send();
                }
            });


//            $("#rec").click(function(event) {
//                switchRecognition();
//            });

        });
        var recognition;
        function startRecognition() {
            recognition = new webkitSpeechRecognition();
            recognition.onstart = function(event) {
                updateRec();
            };
            recognition.onresult = function(event) {
                var text = "";
                for (var i = event.resultIndex; i < event.results.length; ++i) {
                    text += event.results[i][0].transcript;
                }
                setInput(text);
                stopRecognition();
            };
            recognition.onend = function() {
                stopRecognition();
            };
            recognition.lang = "ko-KR";
            recognition.start();
        }

        function stopRecognition() {
            if (recognition) {
                recognition.stop();
                recognition = null;
            }
            updateRec();
        }
        function switchRecognition() {
            if (recognition) {
                stopRecognition();
            } else {
                startRecognition();
            }
        }
        function setInput(text) {
            $("#input").text(text);

        }
        function updateRec() {
            $("#rec").text(recognition ? "Stop" : "Speak");
        }

    </script>
    <style type="text/css">
        body { width: 500px; margin: 0 auto; text-align: center; margin-top: 20px; }
        div {  position: absolute; }
        input { width: 400px; }
        button { width: 50px; }
        textarea { width: 100%; }
    </style>
</head>
<body>
<div>
    <span id="input" type="text" readonly ></span>
    <br>Response<br> <textarea id="response" cols="40" rows="20"> 여기에 긔얌둥이 캐릭터 호호 </textarea>
    <input type='hidden' id="test" value="test">

</div>
</body>
</html>

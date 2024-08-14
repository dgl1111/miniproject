<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        #container{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            grid-template-rows: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px 20px;
            
        }
        .txt{
            padding: 20px;
            border: 1px solid lightgray;
            font-weight: bold;
            box-shadow: 5px 5px 5px gray;

        }
        .txt2{
            font-weight: normal;
            display: block;
            
        }
        .proimg{
            display: block; width: 100px; height: 100px;
            margin: 20px;

        }
    </style>
</head>
<body>
	<div id="container">
    <div class="txt">사진제목<div class="txt2"><img class="proimg" src="/images/별.png"> 사진 설명: ipsum dolor sit amet, consectetur adipiscing elit.Aegritudinem tranquillitate distinguantur suam disciplina expetenda.</div></div> 
    <div class="txt">사진제목<div class="txt2"><img class="proimg" src="/images/별.png">사진 설명: ipsum dolor sit amet, consectetur adipiscing elit.Aegritudinem tranquillitate distinguantur suam disciplina expetenda.</div></div> 
    <div class="txt">사진제목<div class="txt2"><img class="proimg"src="/images/별.png">사진 설명: ipsum dolor sit amet, consectetur adipiscing elit.Aegritudinem tranquillitate distinguantur suam disciplina expetenda.</div></div> 
    <div class="txt">사진제목<div class="txt2"><img class="proimg" src="/images/별.png">사진 설명: ipsum dolor sit amet, consectetur adipiscing elit.Aegritudinem tranquillitate distinguantur suam disciplina expetenda.</div></div> 
    <div class="txt">사진제목<div class="txt2"><img class="proimg" src="/images/별.png">사진 설명: ipsum dolor sit amet, consectetur adipiscing elit.Aegritudinem tranquillitate distinguantur suam disciplina expetenda.</div></div> 
    <div class="txt">사진제목<div class="txt2"><img class="proimg" src="/images/별.png">사진 설명: ipsum dolor sit amet, consectetur adipiscing elit.Aegritudinem tranquillitate distinguantur suam disciplina expetenda.</div></div> 
    <div class="txt">사진제목<div class="txt2"><img class="proimg"  src="/images/별.png">사진 설명: ipsum dolor sit amet, consectetur adipiscing elit.Aegritudinem tranquillitate distinguantur suam disciplina expetenda.</div></div> 
    </div>

</body>
</html>
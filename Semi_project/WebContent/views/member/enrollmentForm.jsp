<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/CSS/enrollment.css">
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
    <style>
         * {
        border: 1px solid rgba(128, 128, 128, 0.568);
         }
        div {
            display: inline-block;
            box-sizing: border-box;
        }

        a {
            text-decoration: none;
            color: black;
        }

        #wrapper {
            width: 100%;
            min-width: 1180px;
        }
    </style>
</head>

<body>
    <div id="wrapper">
        <div id="enrollment-wrapper">
            <div>
                <img src="resources/IMG/로고이미지.png" style="width: 100px; height: 100px;">
            </div>
            <div>
                <b style="font-size: xx-large;">KH TIME에 오신걸 환영합니다.</b>
            </div>
            <div>
                <b style="color: darkgray;">KH TIME은 개발자를 위한 지식 공유 플랫폼입니다.</b>
            </div>
            <br><br>
            <div>
                <div>
                    <hr style="width: 80px; height:1px; background-color: black;">
                </div>
                <div><b>&nbsp회원가입에 필요한 기본정보를 입력해주세요.&nbsp</b></div>
                <div>
                    <hr style="width: 80px; height:1px; background-color: black;">
                </div>
            </div>
            <br>
            <div id="form-wrapper">
                <form action="enroll.me" method="post">
                    <div id="enrollimg">
                        이미지나 사진을 등록해주세요.<br><br>
                        <div>
                            <img id="titleImg" width="150" height="150">
                        </div><br>
                        <div id="file-area" style="dispaly: none;">
                           <input type="file" id="file1" name="file1" onchange="loadImg(this, 1);" required> 
                        </div>
                    </div><br>
                    강사/학생<br>
                    <div>
                        <div>
                            <div><input type="radio" name="TeacherStudent" id="teacher">
                                <label for="teacher">강사&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                            </div>
                            <div><input type="radio" name="TeacherStudent" id="student">
                                <label for="student">학생</label>
                            </div>
                        </div>
                    </div>
                    <br><br>
                    <div id="info">
                        아이디 <br>
                        <input placeholder="특수문자 제외 한글 , 영문 5~12글자로 작성하세요. " type="text" name="userId" id="userId"
                            required>
                        <button id="checkId"> 아이디 중복확인</button>
                        <br><br>
                        <div style="width: 200px; height: 15px;"></div><br>

                        비밀번호 <br>
                        <input placeholder="영문자,숫자,특수문자로 총 8~15자로 작성하세요 " type="password" name="userPwd1" id="userPwd1"
                            required>
                        <br><br>
                        <div style="width: 200px ;height: 15px;"></div><br>

                        비밀번호 확인 <br>
                        <input placeholder="비밀번호와 일치하게 작성하세요" type="password" id="userPwd2" required>
                        <br><br>
                        <div style="width: 200px ;height: 15px;"></div><br>

                        이름 <br>
                        <input type="text" name="userName" id="userName" required>
                        <br><br>
                        <div style="width: 200px ;height: 15px;"></div><br>

                        닉네임 <br>
                        <input placeholder="중복된 닉네임은 사용하실수 없습니다." type="text" name="userId" id="nickname" required>
                        <br><br>
                        <div style="width: 200px ;height: 15px;"></div><br>

                        이메일 <br>
                        <input placeholder="이메일 형식에 맞게 입력하세요" type="email" name="email" id="email">
                        <br><br>
                        <div style="width: 200px ;height: 15px;"></div><br>

                        반이름 &nbsp&nbsp
                        <select name="class">
                            <option value="selected">반선택</option>
                            <option value="A반">A반</option>
                            <option value="B반">B반</option>
                            <option value="C반">C반</option>
                        </select>
                        <br><br>
                        <div style="width: 200px ;height: 15px;"></div><br>
                    </div>
                    <b>약관동의</b><br><br>
                    <div id="agree2">
                        <input type="checkbox" id="agree1" name="agree1" checked>
                        <label for="agree1"><b>아래 약관에 모두 동의합니다.</b></label>
                    </div>
                    <br>
                    <br>
                    <div>
                        <input type="checkbox" id="agree1" name="agree1" checked>
                        <label for="agree1"><b>서비스 이용약관 동의 (필수)</b></label>
                    </div>
                    <br>
                    <br>
                    <div>
                        <input type="checkbox" id="agree1" name="agree1" checked>
                        <label for="agree1"><b>개인정보 수집 및 이용 동의 (필수)</b></label>
                    </div>
                    <br>
                    <br>
                    <div>
                        <input type="checkbox" id="agree1" name="agree1" checked>
                        <label for="agree1"><b>커뮤니티 이용 규칙 확인 (필수)</b></label>
                    </div>
                    <br>
                    <br>
                    <div>
                        <input type="checkbox" id="agree1" name="agree1" checked>
                        <label for="agree1"><b>광고성 정보 수신 동의 (선택)</b></label>
                    </div>
                    <br>
                    <br>
                    <input type="text" id="ad" name="ad">
                    <br><br>
                    	<script>
				$(function() {
					$("#titleImg").click(function() {
						$("#file1").click();
					})

					/* $("#contentImg1").click(function(){
						$("#file2").click();
					})
					$("#contentImg2").click(function(){
						$("#file3").click();
					})
					$("#contentImg3").click(function(){
						$("#file4").click();
					}) */

				})
				function loadImg(inputFile, num) {
					// inputFile : 현재 변화가 생긴 input type="file" 요소
					// num : 몇번째 input 요소인지 확인 후 해당영역에 미리보기하기위한 변수
					console.log(inputFile.files[0]);
					/*
						파일 선택시 length = 1, 파일선택 취소시 배열안의 내용이 비어있게됨
						length 값을 가지고 파일의 존재유무를 알수가 있다.
						files속성은 업로드된 파일의 정보들을  "배열"형식으로 여러개 묶어서 반환, length 그 배열의 크기를 의미
					 */
					if(inputFile.files.length != 0){
						//선택된 파일이 존재할 경우에 선택된 파일들을 읽어들여서 그 영역에 맞는 곳에 미리보기 추가
						//파일을 읽어들일 FileReader 객체 생성
						let reader = new FileReader();
						
						// 파일을 읽어들이는 메서드 -> 어느파일을 읽을지 매개변수에 제시해줘야함.
						// 0번째 인덱스에 담긴 파일정보를 제시
						// -> 해당파일을 읽어들이는 순간 해당파일만의 고유한 url부여됨.
						// -> 해당 url을 src 속성값으로 제시
						reader.readAsDataURL(inputFile.files[0]);
						
						// 파일 읽기가 완료되었을때 실행할 함수 정의
						reader.onload = function(e){// e.target.result에 고유한 url부여됨.
							//각 영역에 맞춰서 이미지 미리보기 기능 제시.
							let url = e.target.result;
						
							switch(num){
							case 1: $("#titleImg").attr("src",url);break;

							}
							
							
							
						}
						
						
						
					}else{
						// 선택된 파일이 없을 경우 미리보기도 함께 사라지게끔 작업.
						switch(num){
						case 1: $("#titleImg").removeAttr("src"); break;
						}
					}
				}
			</script>
                    <div id="enrollbutton">
                        <div><input type="submit" value="회원가입" onclick="return validate();"></div>
                        <div><input type="reset" value="취소"></div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>

</html>
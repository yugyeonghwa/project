<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>회원가입</title>
<link rel="stylesheet" href="../css/style.css" />
<link rel="stylesheet" href="../css/sign.css" />
<script src="../js/main.js" defer></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" defer></script>

<script type="text/javascript">
	function execDaumPostcode() {
	    new daum.Postcode( {
	      oncomplete: function( data ) {
	        document.getElementById( 'zip-code' ).value = data.zonecode;
	        document.getElementById( 'address-1' ).value = data.address;
	        document.getElementById( 'address-1-1' ).value = data.jibunAddress;
	        document.getElementById( 'address-2' ).focus();
	      }
	    } ).open();
	  }
  
 	function id_chk() {
		// 중복화인 버튼 클릭 시
		// 중복id 없으면 사용가능 표시
		// 중복이면 id 입력란에 커서
	}
 	
 	function sign_go() {
		// 가입하기 버튼 클릭 시
		// 필수 이용약관 체크되었으면 회원가입 성공 
	}
</script>

</head>
<body>
	<header>
		<div class="inner">
			<div class="logo">
				<h1>
					<a href="#">로고</a>
				</h1>
			</div>
			<!-- 로그아웃 유틸 -->
			<div class="util logout_util">
				<ul class="info">
					<li><a href="#">로그인</a></li>
					<li><a href="#">회원가입</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</div>
			<form action="#" class="h_search_form" method="post">
				<input type="text" name="search" id="search" /> <input
					type="submit" value="검색" />
			</form>
			<!-- 로그인 유틸 -->
			<div class="util login_util">
				<ul class="info">
					<li>이름</li>
					<li>보유 포인트 :</li>
					<li><a href="#">로그아웃</a></li>
					<li><a href="#">마이페이지</a></li>
					<li><a href="#">장바구니</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
				<form action="">
					<input type="text" name="search" id="search" /> <input
						type="submit" value="검색" />
				</form>
			</div>

			<div class="gnb_wrappr">
				<ul class="gnb">
					<li class="category"><a id="category1" data-category-id="1"
						href="#">카테고리1</a></li>
					<li class="category"><a id="category2" data-category-id="2"
						href="#">카테고리2</a></li>
					<li class="category"><a id="category3" data-category-id="3"
						href="#">카테고리3</a></li>
					<li class="category"><a id="category4" data-category-id="4"
						href="#">카테고리4</a></li>
					<li class="category"><a id="category5" data-category-id="5"
						href="#">카테고리5</a></li>
					<li class="category"><a id="category6" data-category-id="6"
						href="#">카테고리6</a></li>
				</ul>
			</div>
		</div>

		<div class="category_detail_wrapper">
			<div id="category_detail1" class="category_detail">
				<div class="c_details detail1"></div>
				<div class="c_details detail2"></div>
				<div class="c_details detail3"></div>
				<div class="c_details detail4"></div>
				<div class="c_details detail5"></div>
			</div>
		</div>
	</header>


<!-- =========================================================== -->

	<section>
		<div id="sign_wrap">
			<h1>회원가입</h1>
			<p>* 필수입력사항</p>
		</div>

		<div id="box_1">
			<table>
				<tr>
					<th colspan="2">기본정보</th>
				</tr>

				<tr>
					<th><label for="id">* 아이디</label></th>
					<td><input type="text" name="id" id="id" required /> 
					<input type="button" value="중복확인" onclick="id_chk()"></td>
				</tr>

				<tr>
					<th><label for="pwd">* 비밀번호</label></th>
					<td><input type="password" name="pwd" id="pwd" required /></td>
				</tr>

				<tr>
					<th><label for="pwd_chk">* 비밀번호 확인</label></th>
					<td><input type="password" name="pwd_chk" id="pwd_chk"
						required /></td>
				</tr>

				<tr>
					<th><label for="name">* 이름</label></th>
					<td><input type="text" name="name" id="name" required /></td>
				</tr>

				<tr>
					<th>* 주소</th>
					<td><input type="checkbox" id="chk_addr"><label for="chk_addr">기본배송지로 저장</label><br> 
						<input type="text" id="zip-code" placeholder="우편번호" readonly /> 
						<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" /> <br> 
						<input type="text" id="address-1" placeholder="도로명주소" style="width: 500px" readonly /><br> 
						<input type="text" id="address-1-1" placeholder="지번주소" style="width: 500px" readonly /><br> 
						<input type="text" id="address-2" placeholder="상세주소" style="width: 500px" /></td>
				</tr>

				<tr>
					<th>* 휴대전화</th>
					<td><input type="number" name="phone" required /> - 
						<input type="number" name="phone" required /> - 
						<input type="number" name="phone" required /></td>
				</tr>

				<tr>
					<th><label for="email">이메일</label></th>
					<td><input type="email" name="email" id="email" required /></td>
				</tr>

				<tr>
					<th>* 생년월일</th>
					<td><input type="number" name="paty" required /> 년 
						<input type="number" name="paty" required /> 월 
						<input type="number" name="paty" required /> 일</td>
				</tr>

				<tr>
					<th>* 성별</th>
					<td><input type="radio" name="gender" value="1" checked />남자
						<input type="radio" name="gender" value="2" />여자</td>
				</tr>
			</table>
		</div>

		<div id="box_2">
			<table>
				<tr>
					<th colspan="3"><input type="checkbox" id="chk_all">
					<label for="chk_all">이용약관 모두 동의</label></th>
				</tr>

				<tr>
					<td>
						<p>(필수)</p>
						<p>이용약관 ~~~~~~~ 
						~~~~~~~~~~~~~~ 
						~~~~~~~~~~~~~~ 
						~~~~~~~~~~~~~~
						~~~~~~~~~~~~~~</p> 
						<input type="checkbox" id="chk_1"><label for="chk_1">동의함</label>
					</td>
					<td>
						<p>(필수)</p>
						<p>이용약관 ~~~~~~~ 
						~~~~~~~~~~~~~~ 
						~~~~~~~~~~~~~~ 
						~~~~~~~~~~~~~~
						~~~~~~~~~~~~~~</p> 
						<input type="checkbox" id="chk_2"><label for="chk_2">동의함</label>
					</td>
					<td>
						<p>(선택)</p>
						<p>이용약관 ~~~~~~~ 
						~~~~~~~~~~~~~~ 
						~~~~~~~~~~~~~~ 
						~~~~~~~~~~~~~~
						~~~~~~~~~~~~~~</p> 
						<input type="checkbox" id="chk_3"><label for="chk_3">동의함</label>
					</td>
				</tr>
			</table>
		</div>

		<div id="box_3">
			<input type="button" id="but_sign" value="가입하기" onclick="sign_go(this.form)">
		</div>

<!-- =========================================================== -->


		<footer>
			<div class="footer_info">
				<h1>INFORMATION</h1>
				<br /> <a href="#">개인정보취급방침</a> <a href="#">이용약관</a> <a href="#">이메일수집거부</a>
				<a href="#">고객센터</a>
			</div>
			<hr />
			<div class="footer_cominfo">
				<h1>회사</h1>
				<br />
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras
					laoreet arcu nec massa aliquam, at pharetra tellus ultricies.
					Vestibulum nec velit ante. Duis sed tortor elementum nisl luctus
					dapibus ut ut libero. Morbi vitae gravida nisi, eu mattis augue.
					Donec viverra vestibulum lorem eget lobortis. Praesent id odio in
					urna pulvinar varius. Vestibulum sollicitudin purus a velit
					posuere, nec congue sem sodales. Phasellus sed enim in urna
					hendrerit vestibulum. Etiam id eleifend tortor. Nulla lacinia lorem
					eget mi vehicula, vel fringilla nulla volutpat. Integer mi enim,
					sagittis eget dui nec, ullamcorper volutpat dolor.</p>
				<br />
				<p f>저작권 ~~~</p>
			</div>
		</footer>
	</section>
</body>
</html>
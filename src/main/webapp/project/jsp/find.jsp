<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>아이디/비밀번호 찾기</title>
<link rel="stylesheet" href="../css/style.css" />
<link rel="stylesheet" href="../css/find.css" />
<script src="../js/main.js" defer></script>

<script type="text/javascript">
	function number_go() {
		// 인증번호전송 버튼 클릭하면 이메일로 인증번호 날라감?...
	}

	function id_find() {
		// 확인 버튼 클릭하면 id 보여줌
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
		<div id="find_wrap">
			<form action="" method="post">
				<a href="#"><div> <p>아이디 찾기</p> </div></a> 
				<a href="#"><div> <p>비밀번호 찾기</p> </div></a>

				<div id="find_input">
					<ul>
						<li><input type="radio" name="sign_email" value="" checked />가입한
							이메일로 찾기</li>
						<li><input type="text" name="email" placeholder="이메일 입력" />
						</li>
						<li><input type="button" value="인증번호 전송"
							onclick="number_go()" /></li>
						<li><input type="text" name="injeung" placeholder="인증번호 입력" />
						</li>
					</ul>
				</div>

				<input type="button" id="but_idfind" value="확인" onclick="id_find()" />
			</form>
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
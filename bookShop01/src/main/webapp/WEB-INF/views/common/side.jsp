<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<script  type="text/javascript">
 	function deleteMember() {
 		
 		if(confirm("회원탈퇴를 진행하시겠습니까?")){
			alert("회원탈퇴가 완료되었습니다.");
 		 	var form = document.createElement('form');
		    form.setAttribute('method','post');
		    form.setAttribute('action','${contextPath}/mypage/deleteMember.do?member_id=${memberInfo.member_id}');
		    document.body.appendChild(form);
		    form.submit();  
			 return true;
		}else {
			alert("회원탈퇴가 취소되었습니다.");
			return false;
		}
	}
</script>	
<nav>
<ul>
<c:choose>
<c:when test="${side_menu=='admin_mode' }">
   <li>
		<H3>주요기능</H3>
		<ul>
			<li><a href="${contextPath}/admin/goods/adminGoodsMain.do">상품관리</a></li>
			<li><a href="${contextPath}/admin/order/adminOrderMain.do">주문관리</a></li>
			<li><a href="${contextPath}/admin/member/adminMemberMain.do">회원관리</a></li>
			<li><a href="#">배송관리</a></li>
			<li><a href="#">게시판관리</a></li>
		</ul>
	</li>
</c:when>
<c:when test="${side_menu=='my_page' }">
	<li>
		<h3>주문내역</h3>
		<ul>
			<li><a href="${contextPath}/mypage/listMyOrderHistory.do">주문내역/배송 조회</a></li>
			<li><a href="#">반품/교환 신청 및 조회</a></li>
			<li><a href="#">취소 주문 내역</a></li>
			<li><a href="#">세금 계산서</a></li>
		</ul>
	</li>
	<li>
		<h3>정보내역</h3>
		<ul>
			<li><a href="${contextPath}/mypage/myDetailInfo.do">회원정보관리</a></li>
			<li><a href="#">나의 주소록</a></li>
			<li><a href="#">개인정보 동의내역</a></li>
			<li><a href="#" onClick="deleteMember()">회원탈퇴</a></li>
		</ul>
	</li>
</c:when>
<c:otherwise>
	<li>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;국내외 도서</h3>
		<ul>
			<li><a href="${contextPath}/goods/goodsList.do?goodsSort=컴퓨터와인터넷">IT/인터넷</a></li>
			<li><a href="#">경제/경영</a></li>
			<li><a href="#">대학교재</a></li>
			<li><a href="#">자기계발</a></li>
			<li><a href="#">자연과학/공학</a></li>
			<li><a href="#">역사/인문학</a></li>
		</ul>
	</li>
	<li>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;뉴짐스</h3>
		<ul>
			<li><a href="${contextPath}/product/productList.do?productSort=헬스/PT">헬스/PT</a></li>
			<li><a href="${contextPath}/product/productList.do?productSort=요가/필라테스">요가/필라테스</a></li>
			<li><a href="${contextPath}/product/productList.do?productSort=스피닝">스피닝</a></li>
			<li><a href="${contextPath}/product/productList.do?productSort=크로스핏">크로스핏</a></li>
			<li><a href="${contextPath}/product/productList.do?productSort=기타">기타</a></li>
		</ul>
	</li>
 </c:otherwise>
</c:choose>	
</ul>
</nav>
<div class="clear"></div>
<div id="banner">
	<a href="#"><img width="190" height="163" src="${contextPath}/resources/image/n-pay.jpg"> </a>
</div>
<DIV id="notice">
	<H2>공지사항</H2>
	<UL>
	
	<c:forEach  var="i" begin="1" end="5" step="1">
		<li><a href="#">공지사항입니다.${ i}</a></li>
	</c:forEach>
	</ul>
</div>


<div id="banner">
	<a href="#"><img width="190" height="362" src="${contextPath}/resources/image/side_banner1.jpg"></a>
</div>
<div id="banner">
	<a href="#"><img width="190" height="104" src="${contextPath}/resources/image/call_center_logo.jpg"></a>
</div>
<div id="banner">
	<a href="#"><img width="190" height="69" src="${contextPath}/resources/image/QnA_logo.jpg"></a>
</div>
</html>
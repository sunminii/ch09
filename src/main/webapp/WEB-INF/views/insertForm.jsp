<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function chk() {
      if (frm.password.value != frm.password2.value) {
         alert("암호와 암호확인이 다릅니다.");
         frm.password.value = "";
         frm.password.focut();
         return false;
      }
   }
</script>

</head>
<body>
   <div class="container" align="center">
      <h2 class="text-primary">게시글 입력</h2>
      <form action="insert.do" method="post" name="frm" onsubmit="return chk()">
         <input type="hidden" name="num" value="${num }"> <input
            type="hidden" name="ref" value="${ref }"> <input
            type="hidden" name="re_level" value="${re_level }"> <input
            type="hidden" name="re_step" value="${re_step }">
         <table class="table table-hover table-bordered">
            <tr>
               <td>제목</td>
               <td><input type="text" name="subject" required="required"
                  autofocus="autofocus"></td>
            </tr>
            <!-- 회원 게시판일 경우에는 생략 시작 -->
            <tr>
               <td>작성자</td>
               <td><input type="text" name="writer" required="required"></td>
            </tr>
            <tr>
               <td>이메일</td>
               <td><input type="email" name="email" required="required"></td>
            </tr>
            <tr>
               <td>암호</td>
               <td><input type="password" name="password" required="required"></td>
            </tr>
            <tr>
               <td>암호확인</td>
               <td><input type="password" name="password2"
                  required="required"></td>
            </tr>
            <!-- 회원 게시판일 경우에는 생략 끝 -->
            <tr>
               <td>내용</td>
               <td><textarea rows="5" cols="49" name="content"
                     required="required"></textarea></td>
            </tr>
            <tr>
               <td colspan="2"><input type="submit"></td>
            </tr>
         </table>
      </form>
   </div>
</body>
</html>
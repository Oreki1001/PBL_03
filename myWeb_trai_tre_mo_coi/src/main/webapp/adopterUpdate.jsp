<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-6.3.0-web/css/all.css">
    <link rel="stylesheet" href="./assets/fonts/themify-icons-font/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="./assets/css/insert.css">
    <script src="./js/scroll.js"></script>
    <title>Update Adopter</title>
</head>
<body>
	<div class="container ">
		<%
			String uName = request.getAttribute("uName")+"";
			String uCmnd = request.getAttribute("uCmnd")+"";
			String uPhone = request.getAttribute("uPhone")+"";
			String uAddress = request.getAttribute("uAddress")+"";
			String uNote = request.getAttribute("uNote")+"";
			uNote = (uNote.equals("null")) ? "" : uNote;
			String uId = request.getAttribute("uId")+"";
			String uError = request.getAttribute("uError")+"";
	    	uError = (uError.equals("null")) ? "" : uError;
		%>

        <!-- Bread Crumb -->
        <ul class="breadcrumb">
            <li><a href="#">Trang chủ</a></li>
            <li><a href="adopter_manage.jsp">Người nhận nuôi</a></li>
            <li><a href="#">Chỉnh sửa thông tin</a></li>
        </ul>
        <!-- Infomation -->
        <div class="info" >
            <form action="adopter_controller" method="post">
                <input type="hidden" name="mod" value="updateAdopter" >
                <div class="header-info">
                    <h2>Thông tin người nhận nuôi</h2>
                </div>
                <hr>
                <div class="infoDiv">
                    <label for="iName"> Họ và tên: <span> * </span> </label> 
                    <input type="text" name="uName" id="uName" required value="<%= uName%>">
                </div>
                <div class="infoDiv">
                    <label for="uCmnd">CMND: <span> * </span> </label>
                    <div class="red" id="uError" style="display: inline; font-size: 14px; color:red;"><%= uError%></div> <br>
                    <input type="text" placeholder="0092112212" name="uCmnd" required id="uCmnd" value="<%= uCmnd%>">
                </div>
                <div class="infoDiv">
                    <label for="uPassword">Số điện thoại: <span> * </span> </label> <br>
                    <input type="tel" name="uPhone" required id="uPhone" value="<%= uPhone%>">
                </div>
                <div class="infoDiv">
                    <label for="uAddress"> Địa chỉ: <span> * </span> </label>
                    <input type="text" placeholder="Liên Chiểu, Đà Nẵng" name="uAddress" required id="uAddress" value="<%= uAddress%>">
                </div>
                <div class="infoDiv">
                    <label for="uNote"> Ghi chú: </label>
                    <input type="text" name="uNote" id="uNote" value="<%= uNote%>">
                </div>
                <input type="hidden" name="uId" id="uId" value="<%= uId%>">
                <hr>
                <div class="footer-info">
                    <button type="submit">Lưu thông tin</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
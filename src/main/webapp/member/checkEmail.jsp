<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<table border="1" align= "center">
<span style="color: green; font-weight: bold;">입력한 이메일로 받은 인증번호를 입력하세요.</span> <br> <br>    
        <br> <br>
        
        
        <div style="text-align:center;">
            <tr>        
                <td>
                <center>
                    <form action="join_injeung.do${dice}" method="post"> <!-- //받아온 인증코드를 컨트롤러로 넘겨서 일치하는지 확인       -->            
                    <center>
                        <br>
                        <div> 
                            인증번호 입력 : <input type="input" name="email_injeung"
                                placeholder="  인증번호를 입력하세요. ">
                        </div>                                        
 
                        <br> <br>
                        <button type="submit" name="submit">인증번호 전송</button>
 
                        </div>
                    </td> 
                </tr>
                    </center>
            </table>
        </form> 
 
</body>
</html>

<%@ page contentType="text/html;charset=gbk" %>
<html>
  <head>
    <title>添加客户</title>
     <script language="JavaScript" src="script/trim.js"></script>
     <script language="JavaScript">
       function check(){
         if(document.all.cname.value.trim()==""){
         	alert("客户名不能为空!!!");
         	return false;
         }
         if(document.all.clinkman.value.trim()==""){
         	alert("联系人不能为空!!!");
         	return false;
         }
         if(document.all.caddress.value.trim()==""){
         	alert("公司地址不能为空!!!");
         	return false;
         }
         if(document.all.ctel.value.trim()==""){
         	alert("公司电话不能为空!!!");
         	return false;
         }
       	 document.all.mf.submit();
       }
     </script>
  </head>
  <body bgcolor="#EBF5FD">
 	<jsp:useBean id="userBean" class="wyf.zrk.UserBean" scope="session"/>
	<table width="100%" height="44" bgcolor="#206AB3">
      <tr align="center"><td>
        <font color="#FFFFFF" size="5">客户资料管理</font>
        <font color="#FFFFFF" size="2">--客户添加</font>
      </td></tr>
	</table>
	<table>
	  <tr><td><a href="javascript:history.back()">
	    <img border="0" src="img/back.jpg"/></a>
	  </td></tr>
	</table>
	<hr color="black" size="1" width="100%"/>
 	
 	<form action="ManageServlet" method="post" id="mf">
	<table width="80%" border="0" cellspacing="1" bgcolor="black" align="center">	
	  <tr bgcolor="white">
	    <td align="center">客户名称:</td>
	    <td><input size="20" name="cname" id="cname"/></td>
	  </tr>
	  <tr bgcolor="white">
	    <td align="center">联&nbsp;系&nbsp;人</td>
	    <td><input name="clinkman" id="clinkman"/></td>
	  </tr>
	  <tr bgcolor="white">
	    <td align="center">公司地址</td>
	    <td><input name="caddress" id="caddress"/></td>
	  </tr>
	  <tr bgcolor="white">
	    <td align="center">公司电话</td>
	    <td><input name="ctel" id="ctel"/></td>
	  </tr>
	  <tr bgcolor="white">
	    <td align="center">E-mail</td>
	    <td><input name="cemail" id="cemail"/></td>
	  </tr>
	  <tr bgcolor="white">
	    <td align="center">备&nbsp;&nbsp;&nbsp;&nbsp;注</td>
	    <td><input name="cremark" id="cremark" size="50"/></td>
	  </tr>
	</table>
	<table align="left" width="80%">
	  <tr>
	    <td align="right">
	    <img border="0" src="img/xg.gif" id="xg" onclick="JavaScript:check()"
          	  style="cursor:hand"
          	  onmouseover="document.all.xg.src='img/xga.gif'"
          	  onmouseout="document.all.xg.src='img/xg.gif'"
          	  onmouseup="document.all.xg.src='img/xga.gif'"        	
          	  onmousedown="document.all.xg.src='img/xgb.gif'"/>
	    </td>
	    <td align="left">
	    <img border="0" src="img/cze.gif" id="cz" onclick="JavaScript:document.all.mf.reset()"
          	  style="cursor:hand"
          	  onmouseover="document.all.cz.src='img/czd.gif'"
          	  onmouseout="document.all.cz.src='img/cze.gif'"
          	  onmouseup="document.all.cz.src='img/czd.gif'"        	
          	  onmousedown="document.all.cz.src='img/czc.gif'"/>
	    </td>
	  </tr>
	</table>
	<input type="hidden" name="action" value="addConsumer"/>
	</form>
  </body>
</html>
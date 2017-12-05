<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<script>

    function returnindex() {
        location.href="index.jsp";
    }
</script>
<form action="doupdate.jsp" method="POST">
    <%
        client.mytest n=new client.mytest();
        String id=(String)request.getParameter("id");
        String s=n.myResponse1(id);
        JSONArray array=new JSONArray(s);
        JSONObject arrayid = array.getJSONObject(0);
        String name = arrayid.getString("name");
        String sex = arrayid.getString("sex");
        String age = arrayid.getString("age");
        String idcard = arrayid.getString("idcard");
        String address = arrayid.getString("address");
    %>
    <h1 style="margin-left: 43%;margin-top: 4%">更新信息</h1>
    <table border="0" cellspacing="0" cellpadding="0" width="100%" height="300px" >
        <thead > 
            <tr>
                <th></th>
                <th></th> 
            </tr>
        </thead> 
        <tbody>
            <tr>
                <td></td>
                <td></td>
                <td style="float:left"> 学号 :<input type="text" id="id" name="sid" value=<%=id%> readonly="readonly" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr>
                <th width="20%" height="100px"></th> <th width="20%"></th>
                <td style="float:left"> 姓名 :<input type="text" name="sname" value=<%=name%> /></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> 性别 :<input type="text" name="sex" value=<%=sex%> /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr>
                <td></td>
                <td></td>
                <td style="float:left"> 年龄 :<input type="text" name="age" value=<%=age%> /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td style="float:left"> 身份证号 :<input type="text" name="idcard" value=<%=idcard%> /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td style="float:left"> 地址 :<input type="text" name="address" value=<%=address%> />&nbsp;
                    <input type="submit" value="提交更新" />
                    <input type="button" value="返回" onclick="returnindex()" />
                </td> 
                <td></td>
                <td></td>
                <td></td> 
            </tr>
            <tr>
                <td></td>
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
        </tbody>
    </table> 
                    
</form>
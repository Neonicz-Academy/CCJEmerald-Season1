<%@page import="com.codingchallenge.bpms.buspass.add.repository.AddBusPassJDBC"%>
<%@page import="com.codingchallenge.bpms.buspass.add.repository.AddBuspassFormRepository"%>
<%@page import="com.codingchallenge.bpms.buspass.edit.repository.EditBuspassFormRepository,com.codingchallenge.bpms.buspass.edit.repository.EditBuspassJDBC, java.util.*" %>
<jsp:useBean id="u" class="com.codingchallenge.bpms.buspass.add.repository.AddBusPassJDBC"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
AddBuspassFormRepository edfp=new AddBuspassFormRepository();
String id=request.getParameter("id");
edfp.delete(Integer.parseInt(id));
response.sendRedirect("createBusPass.jsp");
%>
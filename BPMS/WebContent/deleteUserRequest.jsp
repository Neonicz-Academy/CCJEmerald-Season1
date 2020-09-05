<%@page import="com.codingchallenge.bpms.user.buspassapplicationform.repository.UserApplicationJDBC"%>
<%@page import="com.codingchallenge.bpms.user.buspassapplicationform.repository.UserBuspassApplicationFormRepository"%>
<jsp:useBean id="u" class="com.codingchallenge.bpms.user.buspassapplicationform.repository.UserApplicationJDBC"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
out.println("hi");
UserBuspassApplicationFormRepository edfp=new UserBuspassApplicationFormRepository();
String id=request.getParameter("id");
out.print("hi"+id);
edfp.delete(Integer.parseInt(id));
response.sendRedirect("usertable.jsp");
%>
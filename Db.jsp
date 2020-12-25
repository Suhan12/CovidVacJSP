
<%@ page import = "java.sql.*" %>


<%
String cy="";
String vc1="";

String name=request.getParameter("name").toString();
String name2=request.getParameter("email").toString();
String name3=request.getParameter("date").toString();
String name4=request.getParameter("vc".toString());
String name7=request.getParameter("cy").toString();
String name5=request.getParameter("phone").toString();
String name6=request.getParameter("name1").toString();
System.out.println(name2);
System.out.println(name3);
System.out.println(name4);
System.out.println(name5);
System.out.println(name6);
System.out.println(name);
System.out.println(name7);

if(name7.equals("Mumbai"))
{
	cy="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57866.24962273369!2d72.8432146223083!3d19.097826571537254!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c9cb81034e5f%3A0x1591caa67e6e28cc!2sJeevan%20Vikas%20Kendra%20Hospital!5e0!3m2!1sen!2sin!4v1608863609839!5m2!1sen!2sin";
}
else if(name7.equals("Delhi"))
{
	cy="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14014.613176207156!2d77.36689595!3d28.580172049999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce59c1c00d913%3A0xce2052140f17f2c0!2sManas%20Hospital!5e0!3m2!1sen!2sin!4v1608863795856!5m2!1sen!2sin";
}
else if(name7.equals("Chennai"))
{
	cy="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d124377.57097693569!2d80.11439361742762!3d13.04845661019433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a526100b5b71cb5%3A0x95683e825101a7b1!2sSri%20Ramachandra%20Hospital%20-%20G%20Block!5e0!3m2!1sen!2sin!4v1608863882940!5m2!1sen!2sin";
}
session.setAttribute("city", cy);
if(name4.equals("Vaccine 1"))
{
	vc1= "1000";
	
}
else if(name4.equals("Vaccine 2"))
{
	vc1= "790";
	
}
else if(name4.equals("Vaccine 3"))
{
	vc1= "345";
	
}

session.setAttribute("vc1",vc1);
RequestDispatcher rd=request.getRequestDispatcher("pay.jsp");
rd.forward(request,response);
//out.println("Done");
	

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","admin123"); 
System.out.println("success");
PreparedStatement st=con.prepareStatement("insert into covid1 values(?,?,?,?,?,?)");
st.setString(1,name);
st.setString(2,name2);
st.setString(3,name3);
st.setString(4,name4);
st.setString(5,name5);
st.setString(6,name6);


st.executeUpdate();




%>


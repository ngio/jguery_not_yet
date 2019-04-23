<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="now" class="java.util.Date" />


<c:set var="mobileYN" value="N" scope="request" />

<%
String header = request.getHeader("User-Agent");
String browser = request.getHeader("User-Agent"); 
//out.println(browser.indexOf("MSIE"));

if ( browser != null && browser.indexOf("MSIE") != -1) {
      out.println("MSIE 입니다.");
}
if( browser != null && browser.indexOf("Firefox/") != -1 ){
      out.println("Firefox 입니다.");
}else{
      out.println("*************");
%>
<c:set var="mobileYN" value="O" scope="request" />
<%
} 

  if ( true ) return;    //--  라고 하면 이 아래는 실행이 안됨. 
%>
                        
<c:if test="browser != null && browser.indexOf('MSIE') != -1"><c:set var="mobileYN" value="M" scope="request" /></c:if>
<c:if test="browser != null && browser.indexOf('Firefox') != -1"><c:set var="mobileYN" value="F" scope="request" /></c:if>
<c:choose>
    <c:when test="browser != null && browser.indexOf('MSIE') != -1"><c:set var="mobileYN" value="M" scope="request" /></c:when>    
    <c:when test="browser != null && browser.indexOf('Firefox') != -1"><c:set var="mobileYN" value="M" scope="request" /></c:when>
    <c:otherwise  ><c:set var="mobileYN" value="mobile" scope="request" /></c:otherwise>
</c:choose>

                           [[[${mobileYN}]]]<br>
                             
		<c:set var="country" value="RepublicOfKorea" scope="request" /> 
		//--<c:out value="${country} }" default="111" escapeXml="true" />  --//
		<c:remove var="country"  scope="request" />
		<br> ${country} 
		<br>--------- ${mobileYN} --------
		<c:out value="${mobileYN}" />
		

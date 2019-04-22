<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>

<!-- set, out -->
<c:set var="country"  value="Korea" />
<c:set var="intArray" value="<%=new int[] {1,2,3,4,5}%>" />
<p><c:out value="${country}" default="Korea" escapeXml="true"/></p>
<p>${country}</p>
<p>${intArray[0]}</p>

<!--  if -->
<c:set var="login" value="true" />
<c:if test="${!login}">
 <p><a href="/login.ok">로그인</a></p>
</c:if>
<c:if test="${login}">
 <p><a href="/logout.ok">로그아웃</a></p>
</c:if>  
<c:if test="${!empty country}"><p><b>${country}</b></p></c:if>

<!-- choose, when, otherwise  -->
<c:choose>
  <c:when test="${login}">
    <p><a href="/logout.ok">로그아웃</a></p>
  </c:when>
  <c:otherwise>
    <p><a href="/login.ok">로그인</a></p>
  </c:otherwise>
</c:choose>
 
<%
String header = request.getHeader("User-Agent");
String browser = request.getHeader("User-Agent"); 
%>
<c:if test="browser != null && browser.indexOf('MSIE') != -1"><c:set var="mobileYN" value="M" scope="request" /></c:if>
<c:if test="browser != null && browser.indexOf('Firefox') != -1"><c:set var="mobileYN" value="F" scope="request" /></c:if>
<c:choose>
    <c:when test="browser != null && browser.indexOf('MSIE') != -1"><c:set var="mobileYN" value="M" scope="request" /></c:when>    
    <c:when test="browser != null && browser.indexOf('Firefox') != -1"><c:set var="mobileYN" value="M" scope="request" /></c:when>
    <c:otherwise  ><c:set var="mobileYN" value="mobile" scope="request" /></c:otherwise>
</c:choose>

<!-- forEach 정수 범위내의 반복 -->
<c:forEach var="i" begin="0" end="10" step="2" varStatus="x">
  <p> i = ${i}, i*i = ${i * i} <c:if test="${x.last}">, last = ${i}</c:if> </p>
</c:forEach>

<!-- forEach 컬렉션 범위내의 반복 -->
<%
  java.util.List list = new java.util.ArrayList(); 
  java.util.Map map = new java.util.HashMap();
  map.put("color","red");
  list.add(map);
  map = new java.util.HashMap();
  map.put("color","blue");
  list.add(map);
  map = new java.util.HashMap();
  map.put("color","green");
  list.add(map);
  
  request.setAttribute("list", list);
%>

<c:forEach var="map" items="${list}" varStatus="x">
  <p> map(${x.index}) = ${map.color}  </p>
</c:forEach>

<!-- forTokens 예 --> 
<b>
<c:forTokens var="color" items="빨|주|노|초|파|남|보" delims="|" varStatus="i" >
     <c:if test="${i.first}">color : </c:if>
     ${color} 
     <c:if test="${!i.last}">,</c:if>
</c:forTokens>
</b>

<!-- remove -->
<c:remove var="country" />
<c:remove var="intArray" />

</body>
</html>

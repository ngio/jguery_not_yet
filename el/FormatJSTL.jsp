<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<body>

<!-- Set Locale -->
<fmt:setLocale value="ko_KR" /> 

<!-- formatNumber -->
<p>number  : <fmt:formatNumber value="1234567.89" type="number"/></p>
<p>currency : <fmt:formatNumber value="1234567.89" type="currency" currencySymbol="￦"  /> </p>
<p>percent : <fmt:formatNumber type="percent">0.159</fmt:formatNumber></p>
<p>pattern=".000"    :<fmt:formatNumber value="1234567.1" pattern=".000" /></p>
<p>pattern="#,#00.0#":<fmt:formatNumber value="1234567.891" pattern="#,#00.0#"/></p>

<!-- parseNumber  -->
<p>number  : <fmt:parseNumber value="1,234,567.89" type="number"/></p>
<p>currency : <fmt:parseNumber value="12345abcdef" integerOnly="false" type="number" /></p>

<!-- formatDate -->
<c:set var="now" value="<%= new java.util.Date() %>" />
<p> date full : <fmt:formatDate value="${now}" type="date" dateStyle="full" /></p>
<p> date short : <fmt:formatDate value="${now}" type="date" dateStyle="short" /></p>
<p> time : <fmt:formatDate value="${now}" type="time" /></p>
<p> both full : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /></p>
<p> pattern 1 : <fmt:formatDate value="${now}" pattern="yyyy-MM-dd aa hh:mm:ss" /></p>
<p> pattern 2 : <fmt:formatDate value="${now}" pattern="yyyy-MM-dd  hh:mm:ss" /></p>

</body>
</html> 

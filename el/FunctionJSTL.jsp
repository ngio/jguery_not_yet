<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %> 

<html>
<body>

    <c:set var="name" value=" Oracle dbms 오라클클럽 "/>
    <p>name: ${fn:replace(name, ' ', '*')}</p>
    <c:set var="name" value="${fn:trim(name)}"/>
    <p>trim name: ${fn:replace(name, ' ', '*')}</p>

    <p>length(name): ${fn:length(name)}</p>
    <p>toUpperCase(name): ${fn:toUpperCase(name)}</p>
    <p>toLowerCase(name): ${fn:toLowerCase(name)}</p>
    <p>substring(name,3,6): ${fn:substring(name,3,6)}</p>
    <p>substringBefore(name,'dbms'): ${fn:substringBefore(name, 'dbms')}</p>
    <p>substringAfter(name,'dbms'): ${fn:substringAfter(name, 'dbms')}</p>
    <p>replace(name, '오라클클럽', 'OracleClub'): ${fn:replace(name, '오라클클럽', 'OracleClub')}</p>
    <p>indexOf(name, 'dbms'): ${fn:indexOf(name,'dbms')}</p>
    <p>contains(name, 'Oracle'): ${fn:contains(name, 'Oracle')}</p>
    <p>containsIgnoreCase(name, 'opracle'): ${fn:containsIgnoreCase(name, 'oracle')}</p>
    <p>startsWith(name, 'Oracle'): ${fn:startsWith(name, 'Oracle')}</p>
    <p>startsWith(name, 'dbms'): ${fn:startsWith(name, 'dbms')}</p>
    <p>endsWith(name, '오라클클럽'): ${fn:endsWith(name, '오라클클럽')}</p>
    <c:remove var="name"/>
    
    <c:set var="dbname" value="ORACLE, DB2, MSSQL, MYSQL, SYSBASE"/>
    <c:set var="db_arr" value="${fn:split(dbname,',')}"/>
    <c:forEach var="db" items="${db_arr}">
        ${db}<br/>
    </c:forEach>
    <p>join : ${fn:join(db_arr, ',')}</p>
    
</body>
</html> 
 

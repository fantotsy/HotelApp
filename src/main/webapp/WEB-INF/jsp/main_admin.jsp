<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ include file="locale.jsp" %>
<fmt:setBundle var="main_admin" basename="properties.i18n.main_admin"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title><fmt:message key="title" bundle="${main_admin}"/></title>
        <link href="/HotelApp/css/admin.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div id="main_wrapper">
            <header>
                <%@include file="admin_header.jsp" %>
            </header>
            <div id="actions">
                <form action="/HotelApp/apartments" method="post">
                    <input type="hidden" name="anti_csrf_token" value="${sessionScope.antiCsrfToken}"/>
                    <fmt:message var="apartments_button" key="apartments_button" bundle="${main_admin}"/>
                    <button type="submit" name="delete-insert">${apartments_button}</button>
                </form>
                <form action="/HotelApp/reservations" method="get">
                    <fmt:message var="reservations_button" key="reservations_button" bundle="${main_admin}"/>
                    <button type="submit" name="get-all-reservations">${reservations_button}</button>
                </form>
                <form action="/HotelApp/guests" method="get">
                    <fmt:message var="guests_button" key="guests_button" bundle="${main_admin}"/>
                    <button type="submit" name="get-guests">${guests_button}</button>
                </form>
            </div>
        </div>
    </body>
</html>
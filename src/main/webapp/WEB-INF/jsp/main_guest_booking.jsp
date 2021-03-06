<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="err" uri="/WEB-INF/TLDs/errorTag.tld" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ include file="locale.jsp" %>
<fmt:setBundle var="main_guest" basename="properties.i18n.main_guest"/>
<fmt:setBundle var="booking" basename="properties.i18n.booking"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title><fmt:message key="title" bundle="${booking}"/></title>
        <link href="/HotelApp/css/guest.css" type="text/css" rel="stylesheet"/>
        <link href="/HotelApp/css/header.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div id="main_wrapper">
            <header>
                <%@include file="guest_header.jsp" %>
            </header>
            <h1><fmt:message key="header" bundle="${booking}"/></h1>
            <div id="booking_wrapper">
                <div id="back_button">
                    <form action="/HotelApp/guest" method="get">
                        <fmt:message var="back_button" key="back_button" bundle="${booking}"/>
                        <button type="submit" name="back_button" id="back">${back_button}</button>
                    </form>
                </div>
                <c:choose>
                    <c:when test="${not empty requestScope.listOfCategories}">
                        <table id="booking_table">
                            <tr>
                                <th><fmt:message key="table_type_column" bundle="${booking}"/></th>
                                <th><fmt:message key="table_capacity_column" bundle="${booking}"/></th>
                                <th><fmt:message key="table_price_column" bundle="${booking}"/></th>
                                <th><fmt:message key="table_apartments_amount_column" bundle="${booking}"/></th>
                                <th id="booking_form"></th>
                            </tr>
                            <c:forEach items="${requestScope.listOfCategories}" var="category">
                                <tr>
                                    <td>${category.type}</td>
                                    <td>${category.numberOfBeds}</td>
                                    <td>${category.price}</td>
                                    <td>${category.apartments}</td>
                                    <td>
                                        <c:if test="${requestScope.category_id == category.categoryId}">
                                            <%--The next tag prints error message if it is needed--%>
                                            <err:error errorType="${requestScope.error}"
                                                       locale="${sessionScope.locale}"/>
                                        </c:if>
                                        <form action="/HotelApp/order_valid" method="post">
                                            <input type="hidden" name="anti_csrf_token"
                                                   value="${sessionScope.antiCsrfToken}"/>
                                            <input type="hidden" name="category_id" value="${category.categoryId}"/>
                                            <select name="booked_apartments[]" multiple>
                                                <option value="default" selected disabled>
                                                    <fmt:message key="default_apartments_option"
                                                                 bundle="${booking}"/>
                                                </option>
                                                <c:forEach items="${requestScope.listOfApartments}" var="apartment">
                                                    <c:if test="${apartment.value == category.categoryId}">
                                                        <option value="${apartment.key}">${apartment.key}</option>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                            <fmt:message var="book_button" key="book_button" bundle="${booking}"/>
                                            <button type="submit" name="book_room"
                                                    id="book_room">${book_button}</button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:when>
                    <c:otherwise>
                        <div id="empty_table_information">
                            <fmt:message key="empty_table" bundle="${booking}"/>
                            <br/>
                            <fmt:message key="empty_table_advice" bundle="${booking}"/>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </body>
</html>
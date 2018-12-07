<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="textLabel" required="true" type="java.lang.String" description="Text for label" %>
<%@ attribute name="idSelect" required="true" type="java.lang.String" description="Id for select" %>
<%@ attribute name="nameSelect" required="true" type="java.lang.String" description="Name for input" %>
<%@ attribute name="itemsSelect" required="false" type="java.lang.String" description="Items for select" %>

<div class="form-group">
    <label for="${idSelect}" class="text label">${textLabel}</label>
    <select name="${nameSelect}" class="custom-select" id="${idSelect}" required>
        <option value="" disabled selected>Select your option</option>
        <c:forEach items="${itemsSelect}" var="item">
            <option value="${item}">
                    ${item}
            </option>
        </c:forEach>
    </select>
</div>
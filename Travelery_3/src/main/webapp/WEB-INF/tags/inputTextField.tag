<%@ attribute name="textLabel" required="true" type="java.lang.String" description="Text for label" %>
<%@ attribute name="idField" required="true" type="java.lang.String" description="Id for input" %>
<%@ attribute name="typeField" required="true" type="java.lang.String" description="Type for input" %>
<%@ attribute name="nameField" required="true" type="java.lang.String" description="Name for input" %>
<%@ attribute name="placeholderField" required="false" type="java.lang.String" description="Placeholder for input" %>
<%--<%@ attribute name="iClass"  type="java.lang.String" description="Placeholder for input" %>/--%>
<%@ attribute name="classField" required="true" type="java.lang.String" description="Classes for input" %>


<%--<div class="form-group">--%>
    <%--<label for="${idField}"></label>--%>
    <%--<input type="${typeField}" name="${nameField}" id="${idField}" placeholder="${placeholderField}" required>--%>
<%--</div>--%>

<div class="form-group">
    <label for="${idField}">${textLabel}</label>
    <input class="${classField}" type="${typeField}" name="${nameField}" id="${idField}" placeholder="${placeholderField}" required>
</div>


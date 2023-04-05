<html>

<head>
    <title>Create course</title>
</head>

<body>
    <jsp:include page="/WEB-INF/jsp/common/top-bar.jsp" />

    <h1>Create a course</h1>

<%
    Boolean successful = (Boolean) request.getAttribute("successful-creation");
	if (successful == Boolean.TRUE) {
%>
    <script>
        alert("Course successfully created")
    </script>
<%
    }
	else if (successful == Boolean.FALSE) {
%>
    <script>
        alert("Course creation failed because a duplicate course was found")
    </script>
<%
    }
	// Reset attribute
	request.setAttribute("successful-creation", null);
%>

    <div class="form">
        <form method="post" action="${pageContext.request.contextPath}/professor/create-course">
            <label>
                Name of the course:
                <input type="text" name="name" required />
            </label>
            <br>
            <label>
                Description:
                <textarea name="description" required></textarea>
            </label>
            <br>
            <button type="submit">CREATE</button>
        </form>
    </div>

</body>
</html>
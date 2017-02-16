<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<body>
    <div style="text-align: center">
        <h1 style="color: blue">${title}</h1><hr>
	<h3> ${message}</h3>

	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
                    Welcome :<font style="color: #a94442"> ${pageContext.request.userPrincipal.name}</font> | <a
				href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>
    </div>
</body>
</html>
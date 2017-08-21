<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="intro">
	<h2>Welcome to the Greenhouse!</h2>
	<p>
		We make it fun to be an application developer.
	</p>
	<p>
		We help you connect with fellow developers and take advantage of everything the Spring community has to offer.	
	</p>
	
	<form id="signin" action="<c:url value="/signin/authenticate" />" method="post">
	<div class="formInfo">
  		<h2>Greenhouse Sign In</h2>
  		<c:if test="${not empty param['error']}">
  		<div class="error">
  			Your sign in information was incorrect.
  			Please try again<c:if test="${!currentDevice.mobile}"> or <a href="<c:url value="/signup" />">sign up</a></c:if>.
  		</div>
 	 	</c:if>
	</div>
	<fieldset>
		<label for="login">Username or Email</label>
		<input id="login" name="j_username" type="text" size="25" autocorrect="off" autocapitalize="off" <c:if test="${not empty signinErrorMessage}">value="${SPRING_SECURITY_LAST_USERNAME}"</c:if> />
		<label for="password">Password</label>
		<input id="password" name="j_password" type="password" size="25" />	
	</fieldset>
	<p><button type="submit">Sign In</button></p>
	<p><a href="<c:url value="/reset" />">Forgot your password?</a></p>
</form >
	
</div>
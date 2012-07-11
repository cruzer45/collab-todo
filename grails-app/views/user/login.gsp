<html>
<head>
<title>Login Page</title>
<meta name="layout" content="main" />
</head>
<body>
	<div class="body">
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<p>Welcome to Your ToDo List. Login below</p>

		<form action="handleLogin">

			<span class='nameClear'> <label for="login"> Sign In:
			</label>
			</span>

			<g:select name='userName' from="${collab.todo.User.list()}" optionKey="userName"
				optionValue="userName">
			</g:select>
			<br />
			<div class="buttons">
				<span class="button"><g:actionSubmit value="Login" /> </span>
			</div>
		</form>
	</div>
</body>
</html>
<div >
	<span class="nobr">
		<g:if test="${session.user}">
			<b>${session.user?.firstName}&nbsp;${session.user?.lastName}</b> |
			<g:link controller="user" action="logout">Logout</g:link>
		</g:if>
		<g:else>
			<g:link controller="user" action="login">Login</g:link>
		</g:else>
	</span>
</div>
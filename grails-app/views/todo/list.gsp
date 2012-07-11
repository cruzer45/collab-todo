
<%@ page import="collab.todo.Todo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'todo.label', default: 'Todo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-todo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-todo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'todo.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="createdDate" title="${message(code: 'todo.createdDate.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="priority" title="${message(code: 'todo.priority.label', default: 'Priority')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'todo.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="note" title="${message(code: 'todo.note.label', default: 'Note')}" />
					
						<g:sortableColumn property="completedDate" title="${message(code: 'todo.completedDate.label', default: 'Completed Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${todoInstanceList}" status="i" var="todoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${todoInstance.id}">${fieldValue(bean: todoInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${todoInstance.createdDate}" /></td>
					
						<td>${fieldValue(bean: todoInstance, field: "priority")}</td>
					
						<td>${fieldValue(bean: todoInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: todoInstance, field: "note")}</td>
					
						<td><g:formatDate date="${todoInstance.completedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${todoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

<%@ include file="common/file2.jspf"%>
<%@ include file="common/file3.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-todo">Add Todo</a>
	</div>
	<br>
	<div class="panel panel-primary"  style = "background-color: cyan">
		<div class="panel-heading" style = "background-color: brown">
			<h3>List of TODO's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="40%">Description</th>
						<th width="40%">Target Date</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.description}</td>
							<td><fmt:formatDate value="${todo.targetDate}" 
									pattern="dd/MM/yyyy" /></td>
							<td><a type="button" class="btn btn-success" style ="background-color : red"
								href="/update-todo?id=${todo.id}">Update</a>
							<a type="button" class="btn btn-warning"  style= "background-color: orange"
								href="/delete-todo?id=${todo.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/file1.jspf"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Lista Elementi</title>
	 </head>
	 
	<body class="d-flex flex-column h-100" style="background-color: #050402">
	 
		<!-- Fixed navbar -->
		<jsp:include page="../navbar.jsp"></jsp:include>
	 
	
		<!-- Begin page content -->
		<main class="flex-shrink-0">
		  <div class="container">
		  
		  		<div class="alert alert-success alert-dismissible fade show  ${successMessage==null?'d-none':'' }" role="alert">
				  ${successMessage}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
				</div>
				<div class="alert alert-danger alert-dismissible fade show d-none" role="alert">
				  Esempio di operazione fallita!
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
				</div>
				<div class="alert alert-info alert-dismissible fade show d-none" role="alert">
				  Aggiungere d-none nelle class per non far apparire
				   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
				</div>
		  
		  
		  
		  		<div class='card text-light' style="background-color: #050402">
				    <div class='card-header'>
				        <h5>Lista dei risultati</h5> 
				    </div>
				    <div class='card-body text-light'>
				    	<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/admin/PrepareInsertBigliettoServlet"><font color="white">Add New</font></a>
				    
				        <div class='table-responsive text-light'>
				            <table class='table text-light	' >
				                <thead>
				                    <tr>
			                         	<th>Id</th>
				                        <th>Provenienza</th>
				                        <th>Destinazione</th>
				                        <th>Prezzo</th>
				                        <th>Data</th>
				                        <th>Azioni</th>
				                    </tr>
				                </thead>
				                <tbody>
				                	
				                	<c:forEach items="${listaBigliettiAttribute}" var="biglietto">
				                	<fmt:formatDate value="${biglietto.data}" pattern="dd-MM-yyyy" var="dataParsed"/>
				                	
				                	<tr>
				                		<td>${biglietto.id }</td>
				                		<td>${biglietto.provenienza}</td>
				                		<td>${biglietto.destinazione}</td>
				                		<td>${biglietto.prezzo}</td>
 										<td>${dataParsed}</td>
				                		
				                		<td>
				                			<a class="btn  btn-sm btn-outline-secondary" href="ExecuteVisualizzaBigliettoServlet?idBiglietto=<c:out value="${biglietto.id }"></c:out>">Visualizza</a>
											<a class="btn  btn-sm btn-outline-primary ml-2 mr-2" href="${pageContext.request.contextPath}/admin/PrepareUpdateBigliettoServlet?idBiglietto=<c:out value="${biglietto.id }"></c:out>">Edit</a>
											<a class="btn btn-outline-danger btn-sm" href="${pageContext.request.contextPath}/admin/PrepareDeleteBigliettoServlet?idBiglietto=<c:out value="${biglietto.id }"></c:out>">Delete</a>
				                		</td>
				                	</tr>
				                	</c:forEach>
				                	
				                    
				                </tbody>
				            </table>
				        </div>
				   
					<!-- end card-body -->			   
			    </div>
			<!-- end card -->
			</div>	
		 
		   
		 <!-- end container -->  
		  </div>
		  
		</main>
		
		<!-- Footer -->
		<jsp:include page="../footer.jsp" />
		
		<!-- Modal conferma delete -->
		<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="deleteModalLabel">Conferma Operazione</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        Continuare con l'operazione?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annulla</button>
		        <button type="button" class="btn btn-primary">Continua</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- End Modal conferma delete -->
		
	</body>
</html>
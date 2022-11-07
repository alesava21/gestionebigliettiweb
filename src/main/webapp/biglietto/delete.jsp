<!doctype html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Eliminazione biglietto</title>
	 </head>
	   <body class="d-flex flex-column h-100" style="background-color: #050402">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container" style="background-color: #050402">
			  
			  		<div class='card text-light' style="background-color: #050402">
					    <div class='card-header text-light' style="background-color: #050402">
					        <h5>Riepilogo Eliminazione</h5>
					    </div>					    
					
					    <div class='card-body' style="background-color: #050402">
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Provenienza:</dt>
							  <dd class="col-sm-9">${bigliettoDaEliminare.provenienza}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Descrizione:</dt>
							  <dd class="col-sm-9">${bigliettoDaEliminare.destinazione}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data:</dt>
							  <dd class="col-sm-9"><fmt:formatDate value="${bigliettoDaEliminare.data}" pattern="dd-MM-yyyy"/></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Prezzo:</dt>
							  <dd class="col-sm-9">${bigliettoDaEliminare.prezzo}</dd>
					    	</dl>
					    	
					    </div>
					    <form action="ExecuteDeleteBigliettoServlet" method="post">
					    <div class='card-footer'>
					        <a href="ListBigliettiServlet" class='btn btn-outline-secondary' style='width:80px'>
					            <i class='fa fa-chevron-left'></i> Back
					        </a>
					         <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#myModal">Delete</button>

							<!-- The Modal -->
							<div class="modal" style="background-color: #050402; border-color: #ffffff" id="myModal">
  								<div class="modal-dialog" style="background-color: #050402; border-color: #fffff">
   									 <div class="modal-content" style="background-color: #050402; border-color: #ffffff">

     						 <!-- Modal Header -->
     						 <div class="modal-header">
       							 <h4 class="modal-title">Conferma Eliminazione</h4>
      								  <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
     						 </div>

      						<!-- Modal body -->
     						 <div class="modal-body"> Confermi Di Voler Eliminare il Biglietto?</div>

     						 <!-- Modal footer -->
      						<div class="modal-footer">
        						 <button type="submit" class="btn btn-outline-success">Coferma</button>
           							<input type="hidden" name="idDaInviareComeParametro" value="<c:out value="${bigliettoDaEliminare.id }"></c:out>">	
     					 				</div>
    								</div>
 								 </div>
							</div>
					         </form>
					    </div>
					<!-- end card -->
					</div>	
			  
			    
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>
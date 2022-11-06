<!doctype html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="it.prova.gestionebigliettiweb.model.Biglietto"%>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Eliminazione biglietto</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card'>
					    <div class='card-header'>
					        <h5>Riepilogo Eliminazione</h5>
					    </div>
					     <% Biglietto bigliettoInPagina = (Biglietto)request.getAttribute("bigliettoDaEliminare"); %>
					    
					
					    <div class='card-body'>
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Provenienza:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getProvenienza() %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Descrizione:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getDestinazione() %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getData()!=null? new SimpleDateFormat("dd/MM/yyyy").format(bigliettoInPagina.getData()):"N.D."  %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Prezzo:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getPrezzo() + "$" %></dd>
					    	</dl>
					    	
					    </div>
					    <form action="ExecuteDeleteBigliettoServlet" method="post">
					    <div class='card-footer'>
					        <a href="ListBigliettiServlet" class='btn btn-outline-secondary' style='width:80px'>
					            <i class='fa fa-chevron-left'></i> Back
					        </a>
					         <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#myModal">Delete</button>

							<!-- The Modal -->
							<div class="modal" id="myModal">
  								<div class="modal-dialog">
   									 <div class="modal-content">

     						 <!-- Modal Header -->
     						 <div class="modal-header">
       							 <h4 class="modal-title">Conferma Eliminazione</h4>
      								  <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
     						 </div>

      						<!-- Modal body -->
     						 <div class="modal-body"> Confermi Di Voler Eliminare il Biglietto?</div>

     						 <!-- Modal footer -->
      						<div class="modal-footer">
        						 <button type="submit" class="btn btn-outline-success">Coferma</button>
           							<input type="hidden" name="idDaInviareComeParametro" value="<%=bigliettoInPagina.getId() %>">	
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
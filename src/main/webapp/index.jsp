	<!doctype html>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="./header.jsp" />
		<!-- Custom styles per le features di bootstrap 'Columns with icons' -->
	   <link href="./assets/css/features.css" rel="stylesheet">
	   
	   <title>Gestione Biglietti Sava's Airlines</title>
	 </head>
	   <body class="d-flex flex-column h-100" style="background-color: #050402">
	   		
	   		<!-- #####################################  -->
	   		<!-- elementi grafici per le features in basso  -->
	   		<!-- #####################################  -->
	   		<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
			  <symbol id="people-circle" viewBox="0 0 16 16">
			    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
			    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
			  </symbol>
			  <symbol id="collection" viewBox="0 0 16 16">
			    <path d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm1.5.5A.5.5 0 0 1 1 13V6a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13z"/>
			  </symbol>
			  <symbol id="toggles2" viewBox="0 0 16 16">
			    <path d="M9.465 10H12a2 2 0 1 1 0 4H9.465c.34-.588.535-1.271.535-2 0-.729-.195-1.412-.535-2z"/>
			    <path d="M6 15a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 1a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm.535-10a3.975 3.975 0 0 1-.409-1H4a1 1 0 0 1 0-2h2.126c.091-.355.23-.69.41-1H4a2 2 0 1 0 0 4h2.535z"/>
			    <path d="M14 4a4 4 0 1 1-8 0 4 4 0 0 1 8 0z"/>
			  </symbol>
			  <symbol id="chevron-right" viewBox="0 0 16 16">
			    <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
			  </symbol>
			</svg>
			<!-- ############## end ###################  -->
	   
	   
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="./navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container" >
			  
			  	<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }" role="alert">
				  ${errorMessage}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
				</div>	
						    
			     <div class="p-5 mb-4 rounded-3" style="background-color: #9c80da">		     			     
				      <div class="container-fluid py-5">
				      	
				        <h1 class="display-5 fw-bold">Benvenuto alla Gestione Biglietto di Sava's Airlines</h1>
				        <p class="col-md-8 fs-4">Benvenuti da Sava's Airlines, nel sito e possibile trovare tutte le tratte aeree del mondo</p>
				        <a class="btn btn-outline-dark btn-lg" href="ListBigliettiServlet">Lista Biglietti</a>				        
				        
				         <a class="btn btn-outline-dark btn-lg"href="${pageContext.request.contextPath}/admin/PrepareInsertBigliettoServlet">Inserisci Biglietto</a>
				      </div>
				     </div>
			    </div>
			    
			    			  
			  <!--  features di bootstrap 'Columns with icons'  -->
			  <div class="container px-4 py-5" id="featured-3">
			    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
			      <div class="feature col text-white ">
			        <div class="feature-icon bg-dark bg-gradient">
			         <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
 						 <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
					</svg>
			        </div>
			        <h2>Lista Biglietti</h2>
			        <p>Visualizza tutti i biglietti premendo sul link qui sotto. </p>
			        <a href="ListBigliettiServlet" class="icon-link">
			          Vai alla visualizzazione di tutti i biglietti
			          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
			        </a>
			      </div>
			      <div class="feature col text-white">
			        <div class="feature-icon bg-success bg-gradient">
			        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" class="bi bi-plus-square-fill" viewBox="0 0 16 16">
 					 <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z"/>
					</svg>
			        </div>
			        <h2>Inserisci Nuovo Biglietto</h2>
			        <p>inserisci un nuovo biglietto cliccando il link qui sotto.</p>
			        <a href="${pageContext.request.contextPath}/admin/PrepareInsertBigliettoServlet" class="icon-link">
			          Vai all'inserimento del biglietto
			          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
			        </a>
			      </div>
			      <div class="feature col text-white">
			        <div class="feature-icon bg-danger bg-gradient">
			         <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
  						<path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
					</svg>
			        </div>
			        <h2>Delete</h2>
			        <p>Elimina un biglietto	inserito</p>
			        <a href="${pageContext.request.contextPath}/admin/ListBigliettiServlet" class="icon-link">
			          Vai all'eliminazione del biglietto
			          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
			        </a>
			      </div>
			    </div>
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="./footer.jsp" />
	  </body>
</html>
<!doctype html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="it" class="h-100">
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Visualizza Biglietti</title>
	 </head>
	   <body class="d-flex flex-column h-100" style="background-color: #050402" >
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card text-light' style="background-color: #050402" >
					    <div class='card-header text-light ' style="background-color: #050402" >
					        <h5>Visualizza Biglietto</h5>
					    </div>					    
					
					    <div class='card-body'>
					    	<dl class="row">
							  <dt class="col-sm-3 text-right ">Destinazione</dt>
							  <dd class="col-sm-9">${visualizza_biglietto_attr.destinazione}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Provenienza:</dt>
							  <dd class="col-sm-9">${visualizza_biglietto_attr.provenienza}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Prezzo:</dt>
							  <dd class="col-sm-9">${visualizza_biglietto_attr.prezzo}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data:</dt>
							  <fmt:formatDate value="${visualizza_biglietto_attr.data}" pattern="dd-MM-yyyy" var="dataParsed"/>
							  <dd class="col-sm-9">${dataParsed}</dd>
					    	</dl>
					    	
					    </div>
					    
					    <div class='card-footer'>
					        <a href="ListBigliettiServlet" class='btn btn-outline-secondary' style='width:80px'>
					            <i class='fa fa-chevron-left'></i> Back
					        </a>
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
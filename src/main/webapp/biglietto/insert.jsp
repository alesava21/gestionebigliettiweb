<!doctype html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Inserisci Nuovo Elemento</title>
	 </head>
	   <body class="d-flex flex-column h-100" style="background-color: #050402">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0" >
			  <div class="container">
			  
			  		<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }" role="alert">
					  ${errorMessage}
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
				    <div class='card-header text-light' style="background-color: #050402">
				        <h5>Inserisci nuovo Biglietto</h5> 
				    </div>
				    <div class='card-body'>
		
							<h6 class="card-title" text-white>I campi con <span class="text-white">*</span> sono obbligatori</h6>
		
		
							<form method="post" action="EecuteInsertBIgliettoServlet" class="row g-3" novalidate="novalidate">
														
								<div class="col-md-6">
									<label for="provenienzaInput" class="form-label">Provenienza <span class="text-white">*</span></label>
									<input type="text" name="provenienzaInput" id="provenienzaInput" class="form-control" placeholder="Inserire il codice"  
										value ="${insert_biglietto_attr.provenienza}"required>
								</div>
								
								<div class="col-md-6">
									<label for="destinazioneInput" class="form-label">Destinazione <span class="text-danger">*</span></label>
									<input type="text" name="destinazioneInput" id="destinazioneInput" class="form-control" placeholder="Inserire la descrizione"  
										value="${insert_biglietto_attr.destinazione}" required>
								</div>
							
								<div class="col-md-6">
									<label for="prezzoInput" class="form-label">Prezzo <span class="text-danger">*</span></label>
									<input type="number" class="form-control" name="prezzoInput" id="prezzoInput" placeholder="Inserire prezzo" 
									value="${insert_biglietto_attr.prezzo}"required>
								</div>
								
								<div class="col-md-3">
									<label for="datainput" class="form-label">Data<span class="text-danger">*</span></label>
									<fmt:formatDate value="${insert_biglietto_attr.data}" pattern="yyyy-MM-dd" var="dataParsed"/>	
									<input class="form-control"  name="datainput" id="datainput" type="date" placeholder="dd/MM/yy" title="formato : gg/mm/aaaa" 
										value="${dataParsed}"required/>
								</div>
								
								
							<div class="col-12">
								<button type="submit" name="submit" value="submit" id="submit" class="btn btn-outline-success">Conferma</button>
							</div>
		
						</form>
  
				    
				    
					<!-- end card-body -->			   
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
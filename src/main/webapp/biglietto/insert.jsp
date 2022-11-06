<!doctype html>
<%@page import="it.prova.gestionebigliettiweb.model.Biglietto"%>
<%@page import="java.text.SimpleDateFormat"%>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Inserisci Nuovo Elemento</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
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
			  
			  <div class='card'>
				    <div class='card-header'>
				        <h5>Inserisci nuovo Biglietto</h5> 
				    </div>
				    <div class='card-body'>
		
							<h6 class="card-title">I campi con <span class="text-danger">*</span> sono obbligatori</h6>
		
		
							<form method="post" action="EecuteInsertBIgliettoServlet" class="row g-3" novalidate="novalidate">
							
								<% Biglietto bigliettoInPagina = (Biglietto)request.getAttribute("insert_biglietto_attr"); %>
							
								<div class="col-md-6">
									<label for="provenienzaInput" class="form-label">Provenienza <span class="text-danger">*</span></label>
									<input type="text" name="provenienzaInput" id="provenienzaInput" class="form-control" placeholder="Inserire il codice"  
										value="<%=bigliettoInPagina.getProvenienza()!=null?bigliettoInPagina.getProvenienza():"" %>" required>
								</div>
								
								<div class="col-md-6">
									<label for="destinazioneInput" class="form-label">Destinazione <span class="text-danger">*</span></label>
									<input type="text" name="destinazioneInput" id="destinazioneInput" class="form-control" placeholder="Inserire la descrizione"  
										value="<%=bigliettoInPagina.getDestinazione()!=null?bigliettoInPagina.getDestinazione():"" %>" required>
								</div>
							
								<div class="col-md-6">
									<label for="prezzoInput" class="form-label">Prezzo <span class="text-danger">*</span></label>
									<input type="number" class="form-control" name="prezzoInput" id="prezzoInput" placeholder="Inserire prezzo" 
									value="<%=bigliettoInPagina.getPrezzo()!=null?bigliettoInPagina.getPrezzo():"" %>" required>
								</div>
								
								<div class="col-md-3">
									<label for="datainput" class="form-label">Data<span class="text-danger">*</span></label>
									<input class="form-control"  name="datainput" id="datainput" type="date" placeholder="dd/MM/yy" title="formato : gg/mm/aaaa" 
										value="<%=bigliettoInPagina.getData()!=null? new SimpleDateFormat("yyyy-MM-dd").format(bigliettoInPagina.getData()):""  %>" required/>
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
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<header>
  <!-- Fixed navbar -->
 <nav class="navbar navbar-expand-lg navbar-dark" aria-label="Eighth navbar example">
    <div class="container">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample07">  
      <img src="${pageContext.request.contextPath}/assets/img/favicons/ff.png" class="rounded" alt="Cinque Terre">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ListBigliettiServlet">Lista Biglietti</a>
          </li>
           <li class="nav-item">
           	<c:forEach items="${userInfo.ruoli}" var="item">
			<c:if test="${item.codice == 'ADMIN_ROLE'}">
			    <a class="nav-link" href="${pageContext.request.contextPath}/admin/PrepareInsertBigliettoServlet">Inserisci Biglietto</a>
			</c:if>
			</c:forEach>
          </li>
        </ul>
      </div>
      <div class="col-md-3 text-end">
        <a  class="btn btn-dark" href="login.jsp">Logout</a>
      </div>
    </div>
  </nav>

  
  
</header>
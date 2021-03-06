 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/">
        <img src="/images/equipship-boat.png" width="50" height="50" class="d-inline-block align-center" alt="boat">
        <span class="dBluFont boldFont">equip</span><span class="bluFont">ship</span>
        </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="/myprofile">My Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/mymentors">Mentors</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/mymentees">Mentees</a>
          </li>
        </ul>
      </div>
      <div>
      	<c:choose>
      		<c:when test="${sessionScope.userId == null}">
      			<a href="/loginreg"><button class="btn btn-secondary">Login</button></a> 
      		</c:when>
      		<c:otherwise>
      			<span>Hello, <a class="orange" href="/myprofile"><c:out value="${sessionScope.firstName}"/></a></span>
      			<a href="/logout"><button class="btn btn-xm btn-dark">Logout</button></a>
      		</c:otherwise>  	
      	</c:choose>
      	<c:if test="${sessionScope.userLv == 9}">
      		<a href="/admin"><button class="btn btn-xm btn-secondary">Admin</button></a>
      	</c:if>
      </div>
    </nav>
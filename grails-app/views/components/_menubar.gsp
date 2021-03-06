<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">

    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed"
          data-toggle="collapse" data-target="#navbar-collapse">
        <span class="sr-only">Navegación</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand page-scroll" href="${homeLink}#top">
        <b>${nombre}</b>
      </a>
    </div>

    <div class="collapse navbar-collapse" id="navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <g:each var="item" in="${menu}">
          <li>
            <g:if test="${item.link}">
              <a class="external-link btn btn-default navbar-btn" href="${item.link}">${item.nombre}</a>
            </g:if>
            <g:else>
              <a class="page-scroll" href="${homeLink}#${item.nombre.toLowerCase()}">${item.nombre}</a>
            </g:else>
          </li>
        </g:each>
      </ul>
    </div>

  </div>
</nav>

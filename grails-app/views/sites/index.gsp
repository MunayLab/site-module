<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta name="layout" content="site"/>
    <title><g:message code="label.plataforma.full"/></title>

    <asset:javascript src="lodash.min.js"/>
    <asset:javascript src="marked.js"/>

    <g:render template="components/articulo"/>

    <style > .fondo { background-image: url(${principal.imagen}); } </style>
  </head>

  <body>
    <div id="wrapper">
      <articulo
          id="section-top"
          landing="true"
          background="${principal?.imagen}"
          titulo="${principal?.titulo ?: principal.contenido?.titulo}"
          contenido="${raw(principal.contenido.contenido)}"
          imagen="${principal.contenido?.imagen}"
          linkOpcional="${principal?.accionOpcional?.link}"
          tituloOpcional="${principal?.accionOpcional?.titulo}"
          linkPrincipal="${principal?.accionPrincipal?.link}"
          tituloPrincipal="${principal?.accionPrincipal?.titulo}"
          linkSecundario="${principal?.accionSecundaria?.link}"
          tituloSecundario="${principal?.accionSecundaria?.titulo}">
      </articulo>


      <g:set var="style" value="${true}"/>
      <g:each var="item" in="${menu}">
        <g:if test="${!item.link}">

          <articulo
              id="${item.nombre.toLowerCase()}"
              titulo="${item.nombre}"
              contenido="${item.articulo.contenido}"
              imagen="${item.articulo?.imagen}"
              bookmark="true"
              invertir="${style}">
          </articulo>

          <g:set var="style" value="${!style}"/>
        </g:if>
      </g:each>

    </div>

    <a id="to-top" href="#" class="btn btn-primary btn-lg" role="button">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </a>

  </body>

</html>

<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta name="layout" content="site"/>

    <g:render template="/components/metatags" model="[
        'titulo': landing?.titulo ?: landing.contenido?.titulo,
        'descripcion': landing.contenido?.descripcion,
        'imagen': landing?.imagen ?: landing.contenido?.imagen,
        'keywords': landing.contenido?.palabrasClaves,
        'url': g.createLink(absolute: true, controller: 'org', action: org.nombreURL)]"/>

    <title>Blog - ${org.nombre}</title>

    <g:render template="components/articulo-card"/>
  </head>

  <body>
    <div id="wrapper" class="blog">

      <div class="col-sm-3">

        <div class="mini-card list-group">
          <div class="list-group-item active">
            <h4 class="list-group-item-heading">
              Ultimos Posts
            </h4>
          </div>
          <g:each in="${articulos}" var="articulo">
            <a class="list-group-item" href='${g.createLink(url: "blog/${articulo.url ?: ''}")}'>
              <div class="row">
                <div class="col-xs-2">
                  <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                </div>
                <div class="col-xs-10">
                  <h5 class="list-group-item-heading">
                    ${articulo.titulo}
                  </h5>
                  <p class="list-group-item-text">
                    ${articulo.dateCreated.format('dd MMM yy')}
                  </p>
                </div>
              </div>
            </a>
          </g:each>
        </div>

      </div>

      <div class="col-sm-9">
        <div class="row">

        <g:each in="${articulos}" var="articulo">
          <div class="col-sm-6 col-md-4">
            <articulo-card titulo="${articulo.titulo}" descripcion="${articulo.descripcion}"
                imagen="${articulo.imagen}" fecha="${articulo.dateCreated.format('dd MMMM yy')}">
            </articulo-card>
          </div>
        </g:each>

        </div>
      </div>

    </div>

    <a id="to-top" href="#" class="btn btn-primary btn-lg" role="button">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </a>

  </body>

</html>

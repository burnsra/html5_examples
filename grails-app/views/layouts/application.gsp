<!DOCTYPE html>
<html lang="en" manifest="../${params.controller}.appcache">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1"> 
    <meta http-equiv="X-UA-Compatible" content="IE=8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><g:layoutTitle default="HTML5 Examples" /></title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'application.css')}" type="text/css">
    <script src="${resource(dir: 'js', file: 'jquery.js')}" type="text/javascript"></script>

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">HTML5 Examples</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <nav:eachItem var="item">
              <li class="${item.controller == params.controller ? 'active' : ''}"><g:link controller="${item.controller}" action="${item.action}">${item.title}</g:link></li>
              </nav:eachItem>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
    <div class="row-fluid">
      <div class="well span3">
      <h4>Navigation</h4>
      <ul class="nav nav-list">
        <g:set var="tmpCategory" value="" />
        <nav:eachSubItem var="subitem">
        <g:if test="${subitem.group && !subitem.group.equalsIgnoreCase(tmpCategory)}"><li class="nav-header">${subitem.group}</li></g:if>
        <li class="${subitem.active ? 'active' : ''}"><g:link controller="${subitem.controller}" action="${subitem.action}">${subitem.title}</g:link></li>
        <g:set var="tmpCategory" value="${subitem.group}" />
        </nav:eachSubItem>
      </ul>
      </div>
      <div class="span9">
      <g:layoutBody/>
      <g:pageProperty name="page.help"/>
      </div>
    </div>
    <footer>
        <ul class="breadcrumb">
            <li>C: ${params.controller} <span class="divider">/</span></li>
            <li>A: ${params.action == null ? 'empty' : params.action} <span class="divider">/</span></li>
            <li>R: <g:formatDate date="${new Date()}" format="hh:mm:ss" /></li>
            <li class="pull-right"><a href="http://github.com/burnsra/html5_examples" target="_blank">&copy; HTML5 Examples <g:formatDate date="${new Date()}" format="yyyy" /></a></li>
        </ul>
    </footer>

    </div>

    <script src="${resource(dir: 'js', file: 'bootstrap-transition.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-alert.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-modal.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-dropdown.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-scrollspy.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-tab.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-tooltip.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-popover.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-button.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-collapse.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-carousel.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-typeahead.js')}" type="text/javascript"></script>

    <script src="${resource(dir: 'js', file: 'application.js')}" type="text/javascript"></script>
  </body>
</html>
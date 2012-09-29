<h3>${params.controller} / ${params.action}</h3>
<g:form controller="${params.controller}" action="${params.action.replaceAll('_', '-')}">
    <label>${params.action.replaceAll('_', '-')}</label>
    <input type="${params.action.replaceAll('_', '-')}" name="${params.action.replaceAll('_', '-')}" value="${params[params.action.replaceAll('_', '-')]}" <g:if test="${formAttributes}"><g:each in="${formAttributes }">${it.key}="${it.value}" </g:each></g:if>/>

    <br /><br /><button type="submit" class="btn">Submit</button>
</g:form>

<g:if test="${params[params.action.replaceAll('_', '-')] && params[params.action.replaceAll('_', '-')].length() > 0}">
<hr />
<h4>Result:</h4>
<div class="well">
    ${params[params.action.replaceAll('_', '-')]}
    <g:if test="${params.action == 'color'}">
    <div class="thumbnail" style="margin-top:10px;width:100px;height:100px;background-color:${params[params.action.replaceAll('_', '-')]}"></div>
    </g:if>
</div>
</g:if>

<g:if test="${formAvailableAttributes}">
<h5>Available attributes</h5>
<table class="table table-bordered table-hover table-striped">
    <thead>
        <th width="20%">Key</th>
        <th>Description</th>
    </thead>
    <tbody>
    <g:each in="${formAvailableAttributes }">
        <tr><td>${it.key}</td><td>${it.value}</td></tr>
    </g:each>
    </tbody>
</table>
</g:if>

<g:if test="${formAttributes}">
<h5>Current attributes</h5>
<table class="table table-bordered table-hover table-striped">
    <thead>
        <th width="20%">Key</th>
        <th>Description</th>
    </thead>
    <tbody>
    <g:each in="${formAttributes }">
        <tr><td>${it.key}</td><td>${it.value}</td></tr>
    </g:each>
    </tbody>
</table>
</g:if>
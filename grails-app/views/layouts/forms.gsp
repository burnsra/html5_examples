<g:if test="${formAttributes}">
    <g:each in="${formAttributes }">
        <g:set var="formActions" value="${it.key}='${it.value} '" />
    </g:each>
</g:if>
<g:applyLayout name="application">
    <div id="${params.controller}" class="${params.action}">
    <h3>
        ${params.controller} / ${params.action}
    </h3>
    <form id="html5_form" name="html5_form" action="../${params.controller}/${params.action}" ${formActions} method="post">
    <g:layoutBody />
    <br /><br /><button type="submit" class="btn">Submit</button>
    <form>
    <g:if test="${params.size() > 2}">
        <hr />
        <h4>Result:</h4><a name="results">&nbsp;</a>
        <div id="form_result" class="alert alert-success">
            <table class="table table-bordered">
            <thead>
                <th class="key">Parameter</th>
                <th>Value</th>
            </thead>
            <tbody>
                <g:each in="${params}">
                <g:if test="${!it.key.equalsIgnoreCase("action") && !it.key.equalsIgnoreCase("controller")}">
                <tr>
                    <td>${it.key}</td>
                    <td>
                        ${it.value}
                        <g:if test="${params.action == 'color'}">
                        <div id="color_thumbnail" class="thumbnail" style="background-color:${params[params.action.replaceAll('_', '-')]}"></div>
                        </g:if>
                    </td>
                </tr>
                </g:if>
                </g:each>
            </tbody>
            </table>
        </div>
    </g:if>

    <g:if test="${fieldAvailableAttributes}">
        <h5>Available attributes</h5>
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <th class="key">Key</th>
                <th>Description</th>
            </thead>
            <tbody>
                <g:each in="${fieldAvailableAttributes }">
                    <tr>
                        <td>
                            ${it.key}
                        </td>
                        <td>
                            ${it.value}
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </g:if>

    <g:if test="${fieldAttributes}">
        <h5>Current attributes</h5>
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <th class="key">Key</th>
                <th>Description</th>
            </thead>
            <tbody>
                <g:each in="${fieldAttributes }">
                    <tr>
                        <td>
                            ${it.key}
                        </td>
                        <td>
                            ${it.value}
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </g:if>
    </div>

    <g:pageProperty name="page.help" />
</g:applyLayout>
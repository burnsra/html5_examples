<g:applyLayout name="application">
    <div id="${params.controller}" class="${params.action}">
    <h3>
        ${params.controller} / ${params.action}
    </h3>
    <g:form name="html5_form" controller="${params.controller}" action="${params.action.replaceAll('_', '-')}">
    <g:layoutBody />
    <br /><br /><button type="submit" class="btn">Submit</button>
    </g:form>
    <g:if test="${params[params.action.replaceAll('_', '-')] && params[params.action.replaceAll('_', '-')].length() > 0}">
        <hr />
        <h4>Result:</h4>
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

    <g:if test="${formAvailableAttributes}">
        <h5>Available attributes</h5>
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <th class="key">Key</th>
                <th>Description</th>
            </thead>
            <tbody>
                <g:each in="${formAvailableAttributes }">
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

    <g:if test="${formAttributes}">
        <h5>Current attributes</h5>
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <th class="key">Key</th>
                <th>Description</th>
            </thead>
            <tbody>
                <g:each in="${formAttributes }">
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
</g:applyLayout>
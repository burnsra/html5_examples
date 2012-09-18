<g:form controller="${params.controller}" action="${params.action.replaceAll('_', '-')}">
    <label>${params.action.replaceAll('_', '-')}</label>
    <input type="${params.action.replaceAll('_', '-')}" name="${params.action.replaceAll('_', '-')}" value="${params[params.action.replaceAll('_', '-')]}" />

    <br /><br /><button type="submit" class="btn">Submit</button>
</g:form>
<g:if test="${params[params.action.replaceAll('_', '-')] && params[params.action.replaceAll('_', '-')].length() > 0}">
<hr />
Result: ${params[params.action.replaceAll('_', '-')]}
</g:if>
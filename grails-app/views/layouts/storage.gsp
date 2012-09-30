<g:applyLayout name="application">
    <div id="${params.controller}" class="${params.action}">
    <h3>
        ${params.controller} / ${params.action}
    </h3>
    <g:form name="html5_form" controller="${params.controller}" action="${params.action.replaceAll('_', '-')}">
    <g:layoutBody />
    <br /><br /><button type="submit" class="btn">Submit</button>
    </g:form>
    <g:if test="${params.storageType && params.key && params.value}">
    <script type="text/javascript">
        ${params.storageType}.${params.key.trim()}="${params.value}";
    </script>
    </g:if>
    <g:if test="${params.action.equalsIgnoreCase("local")}">
    <div id="local_result">
        <div class="alert alert-success">
        <h4>Local Storage:</h4>
        <br />
        <table id="local_result_table" class="table table-bordered">
            <thead>
                <th class="key">Parameter</th>
                <th>Value</th>
                <th>Action</th>
            </thead>
            <tbody>
            </tbody>
        </table>
        <button class="btn" onclick="localStorage.clear();">Clear All</button>
        </div>
    </div>
    <script type="text/javascript">
        if (!localStorage.length) {
            $('#local_result').hide();
        } else {
            for (var i = 0; i < localStorage.length; i++){
                $('#local_result_table tr:last').after('<tr><td>'+ localStorage.key(i)+ '</td><td>' + localStorage.getItem(localStorage.key(i)) +'</td><td><button class="btn" onClick="localStorage.removeItem(\'' + localStorage.key(i) + '\');">Clear</button></td></tr>');
            }
        }
    </script>
    </g:if>
    <g:if test="${params.action.equalsIgnoreCase("session")}">
    <div id="session_result">
        <div class="alert alert-success">
        <h4>Session Storage:</h4>
        <br />
        <table id="session_result_table" class="table table-bordered">
            <thead>
                <th class="key">Parameter</th>
                <th>Value</th>
                <th>Action</th>
            </thead>
            <tbody>
            </tbody>
        </table>
        <button class="btn" onclick="sessionStorage.clear();">Clear All</button>
        </div>
    </div>
    <script type="text/javascript">
    if (!sessionStorage.length) {
        $('#session_result').hide();
    } else {
        for (var i = 0; i < sessionStorage.length; i++){
            $('#session_result_table tr:last').after('<tr><td>'+ sessionStorage.key(i)+ '</td><td>' + sessionStorage.getItem(sessionStorage.key(i)) +'</td><td><button class="btn" onClick="sessionStorage.removeItem(\'' + sessionStorage.key(i) + '\');">Clear</button></td></tr>');
        }
    }
    </script>
    </g:if>
    </div>
</g:applyLayout>
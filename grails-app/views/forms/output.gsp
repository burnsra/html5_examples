<g:if test="${!params.a && !params.b}">
    <g:set var="a" value="50" />
    <g:set var="b" value="50" />
</g:if>
<g:else>
    <g:set var="a" value="${params.a}" />
    <g:set var="b" value="${params.b}" />
</g:else>

<label>Input A (0-100)</label>
<input type="range" name="a" value="${a}" />
<label>Input B (0-100)</label>
<input type="number" name="b" value="${b}">
<h4>Result:</h4>
<div id="form_result" class="alert alert-success">
<output name="x" for="a b"></output>
</div>
<script>
$(document).ready(function() {
    var html5_form = document.getElementById("html5_form");
    calc();
    html5_form.oninput = function() {
        calc();
    }

    function calc() {
        html5_form.x.value=parseInt(html5_form.a.value)+parseInt(html5_form.b.value);
    }
});
</script>
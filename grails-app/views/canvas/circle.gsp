<g:form name="myCanvasForm" controller="${params.controller}" action="${params.action}">
    <label>Color</label>
    <input type="color" name="canvasColor" value="${params.canvasColor}" />
    <br /><br /><button type="submit" class="btn">Submit</button>
</g:form>

<g:if test="${!params.canvasColor}">
    <g:set var="params.canvasColor" value="#FF0000" />
</g:if>

<canvas id="myCanvas" width="300" height="200">
    Your browser does not support the HTML5 canvas tag.
</canvas>

<script type="text/javascript">
    var c=document.getElementById("myCanvas");
    var ctx=c.getContext("2d");
    var ctx=c.getContext("2d");
    ctx.fillStyle="${params.canvasColor}";
    ctx.fillRect(0,0,300,200);
    ctx.strokeStyle='#FFFFFF';
    ctx.moveTo(0,0);
    ctx.lineTo(300,200);
    ctx.stroke();
    ctx.strokeStyle='#FFFFFF';
    ctx.beginPath();
    ctx.arc(150,100,50,0,2*Math.PI);
    ctx.stroke();
</script>
<canvas id="myCanvas" width="400" height="128">
    Your browser does not support the HTML5 canvas tag.
</canvas>

<script type="text/javascript">
    var c=document.getElementById("myCanvas");
    var ctx=c.getContext("2d");
    ctx.font="100px Arial";
    ctx.fillText("Kroger",75,100);
    var imgd = c.toDataURL("image/png");
    document.write('<hr /><a class="btn" href="'+imgd+'">Download</a>');
</script>
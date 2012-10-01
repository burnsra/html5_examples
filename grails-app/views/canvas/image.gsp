<img id="sign" src="/html5_examples/assets/blank_sign.png" alt="Blank Sign" width="500" height="600" style="display:none;">
<canvas id="myCanvas" width="500" height="600">
    Your browser does not support the HTML5 canvas tag.
</canvas>

<script type="text/javascript">
    var c=document.getElementById("myCanvas");
    var ctx=c.getContext("2d");
    var img=document.getElementById("sign");
    ctx.drawImage(img,0,0);
</script>
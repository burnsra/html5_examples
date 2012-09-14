<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.parallax.css')}" type="text/css">
<style>
#content {
  padding: 0 70px;
}
#parallax {
  margin: 0 auto;
  position: relative;
  overflow: hidden;
  width: 980px;
  height: 380px;
}
</style>

<div class="parallax-viewport" id="parallax">
    <div class="parallax-layer" style="width:980px; height:500px;">
        <img src="${resource(dir: 'img', file: 'bkg_A.png')}" alt="" style="position:absolute; left:40px;">
    </div>
    <div class="parallax-layer" style="width:980px; height:500px;">
        <img src="${resource(dir: 'img', file: 'bkg_B.png')}" alt="">
    </div>
    <div class="parallax-layer" style="width:980px; height:500px;">
        <img src="${resource(dir: 'img', file: 'bkg_C.png')}" alt="">
    </div>
    <div class="parallax-layer" style="width:980px; height:500px;">
        <img src="${resource(dir: 'img', file: 'bkg_D.png')}" alt="">
    </div>
    <div class="parallax-layer" style="position:absolute; top:40px;">
        <h1>Oops!</h1>
        <h2>The page you were looking for could not be found.</h2>
        <a href="./" title="">Let's go back to your happy place.</a>
        <img id="parallax-guy" src="${resource(dir: 'img', file: 'guy.png')}" alt="">
    </div>
</div>

<script src="${resource(dir: 'js', file: 'jquery-1.8.1.min.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'js', file: 'jquery.parallax.min.js')}" type="text/javascript"></script>

<script type="text/javascript">
        jQuery(window).load(function () {
            // Declare parallax on layers
            jQuery('.parallax-layer').parallax(
                {}
                ,{xparallax: '64px'}
                ,{xparallax: '128px'}
                ,{xparallax: '256px'}
                ,{xparallax: '192px'}
                ,{xparallax: '0px'
                    ,yparallax: '0px'
                }
            );
        });
    </script>
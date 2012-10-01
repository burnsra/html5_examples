<div> 
    <button onclick="playPause()" class="btn"><i class="icon-play"></i> Play/Pause</button>
    <button onclick="makeSmall()" class="btn"><i class="icon-resize-small"></i> Small</button>
    <button onclick="makeNormal()" class="btn"><i class="icon-resize-horizontal"></i> Normal</button>
    <button onclick="makeBig()" class="btn"><i class="icon-resize-full"></i> Large</button>
    <hr />
    <video id="video1" width="480">
        <source src="/html5_examples/assets/smolder.mp4" type="video/mp4">
        Your browser does not support HTML5 video.
    </video>
</div>

<script src="${resource(dir: 'js/video', file: params.action+'.js')}" type="text/javascript"></script>
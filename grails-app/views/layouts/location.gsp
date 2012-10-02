<g:applyLayout name="application">
    <h3>
        ${params.controller} / ${params.action}
    </h3>
    <p>Click the button to get your location:</p>
    <button class="btn" onclick="getLocation();$('#result').removeClass('hidden');">Get My Location</button>
    <g:layoutBody />
    <div id="result" class="hidden">
        <hr />
        <h4>Result:</h4>
        <div id="map" class="alert alert-success">
            <div id="mapholder"></div>
        </div>
        <div id="map_detail" class="alert alert-info" class="hidden">
        </div>
    </div>
    <script src="${resource(dir: 'js/geolocation', file: params.action+'.js')}" type="text/javascript"></script>
</g:applyLayout>
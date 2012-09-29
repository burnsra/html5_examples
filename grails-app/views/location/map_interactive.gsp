<script src="http://maps.google.com/maps/api/js?sensor=false"></script>

<p>Click the button to get your coordinates:</p>
<button class="btn" onclick="getLocation()">Try It</button>

<h4>Result:</h4>
<div id="map" class="well hidden">
    <div id="mapholder"></div>
</div>

<script src="${resource(dir: 'js/geolocation', file: params.action+'.js')}" type="text/javascript"></script>
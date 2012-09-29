<p>Click the button to get your location:</p>
<button class="btn" onclick="getLocation()">Get My Location</button>

<h4>Result:</h4>
<div id="map" class="well hidden"></div>

<script src="${resource(dir: 'js/geolocation', file: params.action+'.js')}" type="text/javascript"></script>
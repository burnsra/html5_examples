var map = $("#map");
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        map.html("Geolocation is not supported by this browser.");
    }
    map.removeClass("hidden");
}
function showPosition(position) {
    map.html("Latitude: " + position.coords.latitude + "<br />Longitude: "
            + position.coords.longitude);
}
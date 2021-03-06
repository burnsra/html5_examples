var map = $("#map");
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition, showError);
    } else {
        map.html("Geolocation is not supported by this browser.");
    }
    map.removeClass("hidden");
}

function showPosition(position) {
    map.html("Latitude: " + position.coords.latitude + "<br />Longitude: "
            + position.coords.longitude);
}

function showError(error) {
    switch (error.code) {
    case error.PERMISSION_DENIED:
        map.html("User denied the request for Geolocation.");
        break;
    case error.POSITION_UNAVAILABLE:
        map.html("Location information is unavailable.");
        break;
    case error.TIMEOUT:
        map.html("The request to get user location timed out.");
        break;
    case error.UNKNOWN_ERROR:
        map.html("An unknown error occurred.");
        break;
    }
}
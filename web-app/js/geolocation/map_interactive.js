var map = $("#map");
var map2 = document.getElementById("map");
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition, showError);
    } else {
        map.html("Geolocation is not supported by this browser.");
    }
    map.removeClass("hidden");
}

function showPosition(position) {
    var lat = position.coords.latitude;
    var lon = position.coords.longitude;
    var latlon = new google.maps.LatLng(lat, lon);
    map.css("height", "250px");
    map.css("width", "500px");

    var myOptions = {
        center : latlon,
        zoom : 14,
        mapTypeId : google.maps.MapTypeId.ROADMAP,
        mapTypeControl : false,
        navigationControlOptions : {
            style : google.maps.NavigationControlStyle.SMALL
        }
    };
    var mapholder = new google.maps.Map(map2,
            myOptions);
    var marker = new google.maps.Marker({
        position : latlon,
        map : mapholder,
        title : "You are here!"
    });

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
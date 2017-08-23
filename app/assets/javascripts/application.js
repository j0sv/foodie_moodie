var my_latitude;
var my_longitude;
var map;

document.addEventListener('DOMContentLoaded', function () {
    console.log( "ready!" );
    map = new GMaps({
        div: '#map',
        lat: 59.330668,
        lng: 18.057932,
    });

    GMaps.geolocate({
        success: function(position) {
            map.setCenter(position.coords.latitude, position.coords.longitude);
            my_latitude = position.coords.latitude;
            my_longitude = position.coords.longitude;
        },
        error: function(error) {
            console.log('Geolocation failed: '+error.message);
            my_latitude = 59.330668;
            my_longitude = 18.057932;
        },
        not_supported: function() {
            console.log("Your browser does not support geolocation");
            my_latitude = 59.330668;
            my_longitude = 18.057932;
            console.log(my_latitude);
        },
        always: function() {
            console.log("KÖR DETTA");
            map.addMarker({
                lat: my_latitude,
                lng: my_longitude,
                title: 'Lima',
                click: function(e) {
                    alert('You clicked in this marker');
                }
            });
        }
    });

});

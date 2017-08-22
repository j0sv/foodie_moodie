var my_latitude;
var my_longitude;

GMaps.geolocate({
  success: function(position) {
    map.setCenter(position.coords.latitude, position.coords.longitude);
    my_latitude = position.coords.latitude;
    my_longitude = position.coords.longitude;
  },
  error: function(error) {
    alert('Geolocation failed: '+error.message);
  },
  not_supported: function() {
    alert("Your browser does not support geolocation");
  },
  always: function() {
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

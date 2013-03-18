$(function() {
	navigator.geolocation.getCurrentPosition(getPhotos);

	function getPhotos(position) {
		var lat = position.coords.latitude;
		var lon = position.coords.longitude;
	}
});

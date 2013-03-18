$(function() {
	navigator.geolocation.getCurrentPosition(getPhotos);

	function getPhotos(position) {
		var lat = position.coords.latitude;
		var lon = position.coords.longitude;
		$.get('/photos', {lat: lat, lon: lon}, showPhotos);
	}
	
	function showPhotos(photos) {
		console.log(photos);
	}
});

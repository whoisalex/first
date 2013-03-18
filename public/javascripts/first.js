$(function() {
	navigator.geolocation.getCurrentPosition(getPhotos);

	function getPhotos(position) {
		var lat = position.coords.latitude;
		var lon = position.coords.longitude;
		$.get('/photos', {lat: lat, lon: lon}, showPhotos);
	}

	function showPhotos(photos) {
		if (photos.length == 0) {
			return;
		}
		var photo = photos.splice(0, 1)[0];
		$('#photos').append('<img src="' + photo.images.standard_resolution.url + '"/>')
		showPhotos(photos);
	}
});

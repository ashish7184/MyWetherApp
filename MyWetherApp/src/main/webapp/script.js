var weather_icon = document.getElementById("weather-icon");
var val = document.getElementById("wc").value;
switch (val) {
	case 'Clauds':
		weather_icon.src = "https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-1024.png";
		break;
	case 'Clear':
		weather_icon.src = "https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-1024.png";
		break;
	case 'Rain':
		weather_icon.src = "https://www.seekpng.com/png/detail/434-4347267_rain-cloud-icon-rain-icon.png";
		break;
	case 'Mist':
		weather_icon.src = "https://cdn4.iconfinder.com/data/icons/weather-glyph-5/100/11-512.png";
		break;
	case 'Snow':
		weather_icon.src = "https://cdn2.iconfinder.com/data/icons/weather-24/256/Snow_Day-1024.png";
		break;
	case 'Haze':
		weather_icon.src = "https://cdn-icons-png.flaticon.com/512/1779/1779862.png";
		break;
    default:
		weather_icon.src="https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-1024.png";
		break;		
}

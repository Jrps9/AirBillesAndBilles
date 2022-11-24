import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
    console.log("coucourail")
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const popup = new mapboxgl.Popup().setHTML("<h1>URSS BASE</h1>");
    const marker1 = [40.00, 25.4];
    new mapboxgl.Marker(marker1)
      .setLngLat(marker1)
      .setPopup(popup) // add this
      .addTo(map);

    const marker2 = [20.00, 25.4];
    new mapboxgl.Marker(marker1)
      .setLngLat(marker2)
      .setPopup(popup) // add this
      .addTo(map);

    const marker3 = [10.00, 25.4];
    new mapboxgl.Marker(marker3)
      .setLngLat(marker3)
      .setPopup(popup) // add this
      .addTo(map);
    };
};

export { initMapbox };
import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"
var mapGeoCoder = null;
var pointer = null;

async function getRoute(longPointer, latPointer, longMarker, latMarker, map) {
  const query = await fetch(`https://api.mapbox.com/directions/v5/mapbox/walking/${longPointer},${latPointer};${longMarker},${latMarker}?steps=true&geometries=geojson&access_token=${mapboxgl.accessToken}`,
    { method: 'GET' }
  );
  const json = await query.json();
  const data = json.routes[0];
  const route = data.geometry.coordinates;
  const geojson = {
    type: 'Feature',
    properties: {},
    geometry: {
      type: 'LineString',
      coordinates: route
    }
  };
  if (map.getSource('route')) {
    map.getSource('route').setData(geojson);
  } else {
    map.addLayer({
      id: 'route',
      type: 'line',
      source: {
        type: 'geojson',
        data: geojson
      },
      layout: {
        'line-join': 'round',
        'line-cap': 'round'
      },
      paint: {
        'line-color': '#3887be',
        'line-width': 5,
        'line-opacity': 0.75
      }
    });
  }
}
// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    long: Number,
    lat: Number,
  }

  disconnect() {
    let bounds = this.map.getBounds();
    localStorage.setItem('coord', bounds)
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.addMarkersToMap()
    this.fitBounds()
    mapGeoCoder = new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl });
    this.map.addControl(mapGeoCoder)

    mapGeoCoder.on('result', function(results){
      pointer = results.result.center
    });
  }


  direction(event) {
    event.preventDefault();
    let route = null
    console.log(pointer);
    let longMarker = document.querySelector(".mapboxgl-popup-content a").dataset.mapLongValue
    let latMarker = document.querySelector(".mapboxgl-popup-content a").dataset.mapLatValue
    console.log(longMarker);
    console.log(latMarker);
    let longPointer = pointer[0]
    let latPointer = pointer[1]
    let map = this.map
    getRoute(longPointer, latPointer, longMarker, latMarker, map)
  }

  addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundColor = marker.color
      customMarker.style.borderRadius = "6px"
      customMarker.style.width = "12px"
      customMarker.style.height = "12px"

      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  fitBounds() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    const lastCoord = localStorage.getItem('coord').replace("LngLatBounds(LngLat(","").replace("LngLat(","").replace(")","").replace("))","").split(",");
    const SWBound = [lastCoord[0],lastCoord[1]]
    const NEBound = [lastCoord[2],lastCoord[3]]
    this.map.fitBounds([SWBound, NEBound], { padding: 0, maxZoom: 15, duration: 0 })

  }
}

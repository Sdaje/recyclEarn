import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
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
    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }))
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

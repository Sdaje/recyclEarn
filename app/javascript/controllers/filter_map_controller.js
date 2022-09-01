import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-map"
export default class extends Controller {
  static targets = ["form", "map", "label", "checkbox"]

  connect() {

  }

  filter(event) {
    // console.log(this.buttonTarget.value)
    let query = ""

    this.checkboxTargets.forEach((checkbox) => {
      if (checkbox.checked) {
        this.labelTargets.forEach((label) => {
          if (label.outerText.toLowerCase().replace(" ","_") === checkbox.value) {
            label.classList.add("active")
          }
        })
        if (query === "") {
          query = query + `?search%5Bquery%5D%5B%5D=${checkbox.value}`
        } else {
          query = query + `&search%5Bquery%5D%5B%5D=${checkbox.value}`
        }
      } else {
        this.labelTargets.forEach((label) => {
          if (label.outerText.toLowerCase().replace(" ","_") === checkbox.value) {
            label.classList.remove("active")
          }
        })
      }
    })
    const url = this.formTarget.action + query

    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.mapTarget.outerHTML = data
    })
  }
}

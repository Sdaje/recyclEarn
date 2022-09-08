import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="learnings"
export default class extends Controller {
  static targets = ["form", "learnings", "select"]
  static values = {
    city: String
  }

  connect() {
    console.log("Learnings controller connected")
    console.log(this.cityValue)
  }

  filter(event) {
    console.log(this.selectTarget.value)
    console.log(this.learningsTarget)

    const url = `${this.formTarget.action}?search=${this.cityValue}&filter=${this.selectTarget.value}`
    console.log(url)
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.learningsTarget.innerHTML = data
    })
  }
}

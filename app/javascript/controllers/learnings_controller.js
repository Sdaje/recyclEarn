import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="learnings"
export default class extends Controller {
  static targets = ["form", "learnings", "select"]

  connect() {
    console.log("Learnings controller connected")
  }

  filter(event) {
    console.log(this.selectTarget.value)
    console.log(this.learningsTarget)

    const url = `${this.formTarget.action}?filter=${this.selectTarget.value}`
    console.log(url)
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.learningsTarget.innerHTML = data
    })
  }
}

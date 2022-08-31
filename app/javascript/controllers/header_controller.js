import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="header"
export default class extends Controller {
  static targets = [ "hideable" ]

  toggleTargets() {
    console.log(this)
    this.hideableTargets.forEach((el) => {
      console.log(el)
      el.classList.toggle("open")
      // el.style.height = "25vh"
    });
  }
}

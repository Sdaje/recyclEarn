import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="questions"
export default class extends Controller {

  static targets = ["radio", "button"]

  connect() {
    this.buttonTargets[0].classList.add('radio-active')
    document.getElementById('button').firstElementChild.nextElementSibling.firstElementChild.checked = true
  }

  fill(event) {
    console.log(event.detail)
    this.radioTargets.forEach((radio) => {
      if (radio.checked) {
        this.buttonTargets.forEach((button) => {
          if (radio.value === button.outerText) {
            button.classList.add('radio-active')
          } else {
            button.classList.remove('radio-active')
          }
        })
      }
    })
  }
}

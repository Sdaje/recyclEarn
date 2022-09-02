import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progress-bar"
export default class extends Controller {
  static targets = ["item", "question"]

  connect() {
    console.log(this.element)
    console.log(this.itemTarget)
    console.log(this.questionTarget.dataset.id)
    const completion = this.questionTarget.dataset.id * 20;
    this.itemTarget.style.width = `${completion}%`;
  }
}

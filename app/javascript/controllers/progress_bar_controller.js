import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progress-bar"
export default class extends Controller {
  static targets = ["item"]
  static values = {
    number:Number,
    total:Number
  }

  connect() {
    this.itemTarget.style.width = `${(this.totalValue - this.numberValue - 1) / this.totalValue * 100}%`;
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="counter"
export default class extends Controller {
  static targets = ["counter"]

  connect() {
    let count = Number.parseInt(this.counterTarget.innerText.replace(" ", ""),10);
    let target = this.counterTarget
    target.innerHTML = "";
    console.log(count)
    let countNumber = 0;

    function counterUp(){
      target.innerHTML = `${countNumber++} <i class='fa-solid fa-leaf'></i>`;
      if ( countNumber > count ) {
          clearInterval(stop);
      }
    }

    let stop = setInterval(() => {
      counterUp();
    }, 10);
  }
}

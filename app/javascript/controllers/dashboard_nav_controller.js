import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard-nav"
export default class extends Controller {
  static targets = ["badgeNav", "learningNav", "badges", "learnings", "activeRect"]

  connect() {
    this.activeRectTarget.style.top = "0"
    this.badgesTarget.classList.add("infos-visible")
    this.learningsTarget.classList.add("infos-invisible")
  }

  badgeClick(event) {
    this.activeRectTarget.style.top = "0"
    // this.badgeNavTarget.classList.add("active-pill")
    // this.learningNavTarget.classList.remove("active-pill")
    this.badgesTarget.classList.remove("infos-invisible")
    this.badgesTarget.classList.add("infos-visible")
    this.learningsTarget.classList.remove("infos-visible")
    this.learningsTarget.classList.add("infos-invisible")
  }
  learningClick(event) {
    console.log("coucou learning")
    this.activeRectTarget.style.top = "55%"
    // this.badgeNavTarget.classList.add("active-pill")
    // this.learningNavTarget.classList.remove("active-pill")
    this.badgesTarget.classList.remove("infos-visible")
    this.badgesTarget.classList.add("infos-invisible")
    this.learningsTarget.classList.remove("infos-invisible")
    this.learningsTarget.classList.add("infos-visible")
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard-nav"
export default class extends Controller {
  static targets = ["badgeNav", "learningNav", "badges", "learnings"]

  connect() {
    this.badgeNavTarget.classList.add("active-pill")
    this.badgesTarget.classList.add("infos-visible")
    this.learningsTarget.classList.add("infos-invisible")
  }

  badgeClick(event) {
    this.badgeNavTarget.classList.add("active-pill")
    this.learningNavTarget.classList.remove("active-pill")
    this.badgesTarget.classList.remove("infos-invisible")
    this.badgesTarget.classList.add("infos-visible")
    this.learningsTarget.classList.remove("infos-visible")
    this.learningsTarget.classList.add("infos-invisible")
  }
  learningClick(event) {
    console.log("coucou learning")
    this.learningNavTarget.classList.add("active-pill")
    this.badgeNavTarget.classList.remove("active-pill")
    this.badgesTarget.classList.remove("infos-visible")
    this.badgesTarget.classList.add("infos-invisible")
    this.learningsTarget.classList.remove("infos-invisible")
    this.learningsTarget.classList.add("infos-visible")
  }
}

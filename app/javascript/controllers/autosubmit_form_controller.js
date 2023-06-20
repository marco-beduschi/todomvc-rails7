import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="autosubmit-form"
export default class extends Controller {
  static targets = ["submit"];

  submit() {
    this.submitTarget.click();
  }
}

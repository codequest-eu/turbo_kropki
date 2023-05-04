import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dots"
export default class extends Controller {
  static targets = ['form'];
  connect() {
  }
  toggle(){
    Turbo.navigator.submitForm(this.formTarget)
  }
}

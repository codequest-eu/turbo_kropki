import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dots-select"
export default class extends Controller {
  static targets= ['form']
  connect() {
  }
  
  submit() {
    Turbo.navigator.submitForm(this.formTarget)
  }
}

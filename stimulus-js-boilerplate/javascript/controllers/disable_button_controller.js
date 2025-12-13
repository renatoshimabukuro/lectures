import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['button', 'link']

  connect() {
    console.log("Hello from stimulus controller");
    // console.log(this.element);
    // this.element.classList.remove( 'btn-primary' );
    // this.element.classList.add( 'btn-danger' );
  }

  disable() {
    // console.log("Click in button!");
    this.buttonTarget.setAttribute('disabled', '');
    this.buttonTarget.innerText = "Bingo!";
    this.linkTarget.classList.remove('d-none');
  }

  reset() {
    console.log("click in reset link");
    this.buttonTarget.removeAttribute('disabled', '');
    this.buttonTarget.innerText = "Click Me!";
    this.linkTarget.classList.add('d-none');
  }
 }

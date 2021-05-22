import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "movie" ]

  connect() {
    console.log(this.movieTarget.innerText)
  }
}

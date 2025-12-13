import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['input', 'results']
  static values = {
    baseUrl: String
  }

  connect() {
    console.log ('Movies controller')
  }

  fetchMovie(query) {
    const url = `${this.baseUrlValue}?s=${query}&apikey=adf1f2d7`
    console.log(url);
    this.resultsTarget.innerHTML = "";
    fetch(url)
      .then(response => response.json())
      .then((data) => {
        data.Search.forEach((movie) => this.insertMovies(movie));
    })
  }

  insertMovies(data) {
    const html = `
          <li class="list-group-item border-0">
            <img src="${data.Poster}">
          </li>`
    this.resultsTarget.insertAdjacentHTML("beforeend", html)
  }

  search(event) {
    event.preventDefault();
    this.fetchMovie(this.inputTarget.value)
  }
}

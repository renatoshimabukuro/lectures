import Mustache from "mustachejs";
import { createApp } from "vue";

createApp({
  data() {
    return {
      message: "Hello from Vue.JS"
    }
  }
}).mount('#app') // The container where you want the Vue instance to be mounted.


// Solution 01
// const template = document.getElementById("movieCardTemplate");

// Solution 02
const template = document.getElementById("movieCardTemplate").innerHTML;
const results = document.getElementById("results");
const url = "http://www.omdbapi.com/?s=harry potter&apikey=adf1f2d7";


// Mustache example start
// const fruits = {
//   "fruits": [
//     { "name": "apple", "price": 3 },
//     { "name": "pear", "price": 2 },
//     { "name": "banana", "price": 5 }
//   ]
// }

// const template02 = "<ul>{{#fruits}}<li>{{name}}: {{price}} EUR</li>{{/fruits}}</ul>"

// console.log(Mustache.render(template02, fruits));

//Mustache example end


// Solution 01
// fetch(url)
//   .then(response => response.json())
//   .then((data) => {
//     console.log(data)
//     // do something with the data
//     data.Search.forEach((movie) => {
//       const clone = template.content.cloneNode(true);
//       clone.querySelector('img').src = movie.Poster;
//       clone.querySelector('h2').src = movie.Title;
//       clone.querySelector('p').src = movie.Year;
//       clone.querySelector("a").href = `https://www.imdb.com/title/${movie.imdbID}`
//       results.appendChild(clone);
//     });
//   })


// Solution 02 (without the tag {{#movies in the HTML}})
  // fetch(url)
  // .then(response => response.json())
  // .then((data) => {
  //   console.log(data)
  //   // do something with the data
  //   data.Search.forEach((movie) => {
  //     const card = Mustache.render(template, movie);
  //     results.insertAdjacentHTML("beforeend", card);
  //   });
  // })

// Solution 03 (with the tag {{#movies in the HTML}})
  fetch(url)
  .then(response => response.json())
  .then((data) => {
    console.log(data)
    // do something with the data
    const movieData = { movies: data.Search }
    const cards = Mustache.render(template, movieData);
    results.innerHTML = cards;
  })

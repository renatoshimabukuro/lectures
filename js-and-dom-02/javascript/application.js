// console.log("Hello from JavaScript!");

// const abba = ['Bjorn', 'Benny', 'Anni-frid', 'Agnetha'];

// // Create an ul element
// const list = document.createElement("ul");

// abba.forEach((member) => {
//   const listItem = document.createElement("li");
//   listItem.innerText = member;
//   list.appendChild(listItem);
// });

// const container = document.querySelector(".container");
// container.appendChild(list);


// // NEW SECTION
// const listItems = document.querySelectorAll("li");
// listItems.forEach((listItem) => {
//   listItem.innerHTML += " 🎵";
// })

// const ul = document.querySelector("ul");
// ul.style.listStyleType = "upper-roman";
// // CSS list-style-type: upper-roman

// const listItems = document.querySelectorAll("li");

// listItems.forEach((listItem) => {
//   // console.log(listItem.dataset.instrument);
//   listItem.innerText += `: ${listItem.dataset.instrument}`;
// });

// Find the element of the page
// const romain = document.getElementById("romain");
// listen for click
// romain.addEventListener("click", (event) => {
//     // CALLBACK
//   romain.classList.toggle("img-circle");
// });

const images = document.querySelectorAll(".avatar");
images.forEach((images) => {
  images.addEventListener("click", (event) => {
  images.classList.toggle("img-circle");
});
});

import Swal from "sweetalert2";
// console.log("Hello from JavaScript!");
const API_KEY = "YOUR_API_KEY";

// const url = "https://api.github.com/users/dhh"
// // console.log(fetch(url));

// fetch(url)
// .then((response) => response.json())
// .then(data => console.log(data));
const signUp = (envent) => {
  event.preventDefault();
  // retrieve the infors from the form
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  const requestDetails = {
    method: "POST",
    headers: {"Content-Type": "application/json", "x-api-key": API_KEY},
    body: JSON.stringify({"email": email, "password": password})
  };
  // make a HTTP POST request
  fetch("https://reqres.in/api/register", requestDetails)
    .then((response) => {
      if (response.status === 200) {
        Swal.fire({title: 'Success', text: 'You are connected', icon: 'success'})
      } else {
        Swal.fire({title: 'Error!', text: 'Oups! Something went wrong', icon: 'error'})
      }
    })
}

const form = document.getElementById("form");
form.addEventListener("submit", signUp);


;

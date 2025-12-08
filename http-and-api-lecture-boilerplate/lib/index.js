// TODO: Fetch an activity with the Bored API - Let's pseudocode!
const url = "https://bored.api.lewagon.com/api/activity/";
const button = document.querySelector(".btn-warning");
// button.addEventListener("click", (event) =>{
//   const activities = ["Going to the gym", "Learn Japanese", "Call your mum"];
//   const randomNumber = Math.floor(Math.random() * 3 );
//   event.currentTarget.innerText = activities[randomNumber];
//   event.currentTarget.setAttibute("disabled", "");
// })

// select the button to listen the click
// select the h2 to insert later the new activity
// listen to the click on the button with addEventListener
// when we click, make an http request to the BoreApi to receive ONE activity
// insert the activity in the h2

const header = document.getElementById("activity");

const insertActivity = (data) => {
  const activityText = data["activity"];
  header.innerText = activityText;
}

button.addEventListener('click', (event) => {
  fetch(url)
  .then(response => response.json())
  .then((data)=> {
  insertActivity(data);
  });
});

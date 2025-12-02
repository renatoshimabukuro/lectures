const selectAllCheckbox = document.querySelector("#select-all-checkbox")
selectAllCheckbox.addEventListener('click', (event) => {
  const checkboxes = document.querySelectorAll('.form-check-input');
  checkboxes.forEach((checkbox) => {
    checkbox.checked = event.currentTarget.checked;
  });
})

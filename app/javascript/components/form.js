const showForm = () => {
  const newDoseButton = document.querySelector('.btn-dose');
  const newDoseForm = document.querySelector('.new_dose');
  if (newDoseButton) {
      newDoseButton.addEventListener(("click"), (event) => {
      newDoseForm.classList.remove('new_dose');
    });
  }
  else {return}
}

export { showForm };

// if (newDoseButton) {
//     newDoseButton.addEventListener(("click"), (event) => {
//     newDoseForm.classList.remove('new_dose');
//   });
// }
// else {return}

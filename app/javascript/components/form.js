const showForm = () => {
  const newDoseButton = document.querySelector('.btn-dose');
  const newDoseForm = document.querySelector('.new_dose');
  console.log(newDoseForm );
  newDoseButton.addEventListener(("click"), (event) => {
    newDoseForm.classList.remove('new_dose');
  });
}

export { showForm };



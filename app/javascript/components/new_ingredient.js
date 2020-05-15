const newIngredient = () => {
  const ingredientForm = document.querySelector('#form-dose');
  const button = document.querySelector('#add-ing-button');
    button.addEventListener( "click", (event) => {
      ingredientForm.style.display = "block";
    });
};

export { newIngredient };

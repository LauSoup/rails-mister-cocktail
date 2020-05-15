


const newIngredient = () => {
  const ingredientForm = document.querySelector('#form-dose');
  console.log(ingredientForm)
  const button = document.querySelector('#add-ing-button');
  console.log(button)

    button.addEventListener( "click", (event) => {
      ingredientForm.style.display = "block";
    });
};

export { newIngredient };

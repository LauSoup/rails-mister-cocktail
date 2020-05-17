const newReview = () => {
  const reviewForm = document.querySelector('#form-review');
  const button = document.querySelector('#add-rev-button');
    button.addEventListener( "click", (event) => {
      reviewForm.style.display = "block";
    });
};

export { newReview };

import $ from 'jquery';
import select2 from 'select2';


const selectIngredients = () => {
  const ingredientSelect = document.querySelector('#dose_ingredient_id');
  console.log(ingredientSelect);
  ingredientSelect.select2();
}


export { selectIngredients };



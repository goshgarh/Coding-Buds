// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$(document).ready(function () {
  if(document.querySelector('body.home.index') == undefined) {
    return;
  }
    let mydiv = document.querySelector('.row .col-2');

    mydiv.addEventListener('click', function (e) {
        let id = e.target.id;
        $('.media1').css('display', 'none');
        let divs = document.querySelector(`.${id}`);
        if (divs != null) {
            $(`.${id}`).css('display', 'block');
        }
    });
    console.log('your-code')
    let codeTextAreas = document.querySelectorAll('.your-code');
    let codeResultDivs = document.querySelectorAll('.your-result');

    for (let i = 0; i < codeTextAreas.length; ++i) {
      let code = codeTextAreas[i];
      let result = codeResultDivs[i];
      code.addEventListener('keyup', function(){
        result.innerHTML = code.value
      });
    }

    let stylesTextAreas = document.querySelectorAll('.your-styles');
    let styleResult = document.querySelectorAll('.style-result');


    for (let j = 0; j < stylesTextAreas.length; ++j){
      let style = stylesTextAreas[j];
      let styler = styleResult[j];
      style.addEventListener('keyup', function(){
        styler.innerText = style.value
      });
  }
});

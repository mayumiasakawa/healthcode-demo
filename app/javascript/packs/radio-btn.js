window.addEventListener('load', function(){
  const allergyYes = document.getElementById("allergy-yes");
  const allergyNo = document.getElementById("allergy-no");
  const allergyInput = document.getElementById("allergy-input");
  const alcoholYes = document.getElementById("alcohol-yes");
  const alcoholNo = document.getElementById("alcohol-no");
  const alcoholAmount = document.getElementById("alcohol-amount");



  allergyNo.addEventListener('click',function(){
    if(allergyNo.checked){
      allergyInput.style.visibility ="hidden";
    }
  });
  allergyYes.addEventListener('click',function(){
    if(allergyYes.checked){
      allergyInput.style.visibility ="visible";
    }
  });
  
  alcoholNo.addEventListener('click',function(){
    if(alcoholNo.checked){
      alcoholAmount.style.visibility ="hidden";
    }
  });
  alcoholYes.addEventListener('click',function(){
    if(alcoholYes.checked){
      alcoholAmount.style.visibility ="visible";
    }
  });

})
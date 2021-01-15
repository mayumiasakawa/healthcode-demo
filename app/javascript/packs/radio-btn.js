window.addEventListener('load', function(){
  const allergyYes = document.getElementById("allergy-yes");
  const allergyNo = document.getElementById("allergy-no");
  const allergyInput = document.getElementById("allergy-input");
  const cigaretteYes = document.getElementById("cigarette-yes");
  const cigaretteNo = document.getElementById("cigarette-no");
  const cigaretteAmount = document.getElementById("cigarette-amount");
  const alcoholYes = document.getElementById("alcohol-yes");
  const alcoholNo = document.getElementById("alcohol-no");
  const alcoholFrequency = document.getElementById("alcohol-frequency");



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
  
  cigaretteNo.addEventListener('click',function(){
    if(cigaretteNo.checked){
      cigaretteAmount.style.visibility ="hidden";
    }
  });
  cigaretteYes.addEventListener('click',function(){
    if(cigaretteYes.checked){
      cigaretteAmount.style.visibility ="visible";
    }
  });
  
  alcoholNo.addEventListener('click',function(){
    if(alcoholNo.checked){
      alcoholFrequency.style.visibility ="hidden";
    }
  });
  alcoholYes.addEventListener('click',function(){
    if(alcoholYes.checked){
      alcoholFrequency.style.visibility ="visible";
    }
  });

})
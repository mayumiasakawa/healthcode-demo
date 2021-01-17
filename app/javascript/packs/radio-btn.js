window.addEventListener('load', function(){

  if (document.getElementById("allergy-yes")){
  const allergyYes = document.getElementById("allergy-yes");
  const allergyNo = document.getElementById("allergy-no");
  const allergyInput = document.getElementById("allergy-input");
  const cigaretteYes = document.getElementById("cigarette-yes");
  const cigaretteNo = document.getElementById("cigarette-no");
  const cigaretteAmount = document.getElementById("cigarette-amount");
  const alcoholYes = document.getElementById("alcohol-yes");
  const alcoholNo = document.getElementById("alcohol-no");
  const alcoholFrequency = document.getElementById("alcohol-frequency");

  allergyInput.style.display ="none";
  cigaretteAmount.style.display ="none";
  alcoholFrequency.style.display ="none";

  allergyNo.addEventListener('click',function(){
    if(allergyNo.checked){
      allergyInput.style.display ="none";
    }
  });
  allergyYes.addEventListener('click',function(){
    if(allergyYes.checked){
      allergyInput.style.display ="block";
    }
  });
  
  cigaretteNo.addEventListener('click',function(){
    if(cigaretteNo.checked){
      cigaretteAmount.style.display ="none";
    }
  });
  cigaretteYes.addEventListener('click',function(){
    if(cigaretteYes.checked){
      cigaretteAmount.style.display ="block";
    }
  });
  
  alcoholNo.addEventListener('click',function(){
    if(alcoholNo.checked){
      alcoholFrequency.style.display ="none";
    }
  });
  alcoholYes.addEventListener('click',function(){
    if(alcoholYes.checked){
      alcoholFrequency.style.display ="block";
    }
  });

}
})
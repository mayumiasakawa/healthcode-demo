window.addEventListener('load', function(){

  if (document.getElementById("allergy-yes")){
  const allergyYes = document.getElementById("allergy-yes");
  const allergyNo = document.getElementById("allergy-no");
  const allergyTypeInput = document.getElementById("allergy-type-input");
  const allergySymptomInput = document.getElementById("allergy-symptom-input");
  const cigaretteYes = document.getElementById("cigarette-yes");
  const cigaretteNo = document.getElementById("cigarette-no");
  const cigaretteAmount = document.getElementById("cigarette-amount");
  const alcoholYes = document.getElementById("alcohol-yes");
  const alcoholNo = document.getElementById("alcohol-no");
  const alcoholFrequency = document.getElementById("alcohol-frequency");

  allergyTypeInput.style.display ="none";
  allergySymptomInput.style.display ="none";
  cigaretteAmount.style.display ="none";
  alcoholFrequency.style.display ="none";

  allergyNo.addEventListener('click',function(){
    if(allergyNo.checked){
      allergyTypeInput.style.display ="none";
      allergySymptomInput.style.display ="none";
    }
  });
  allergyYes.addEventListener('click',function(){
    if(allergyYes.checked){
      allergyTypeInput.style.display ="block";
      allergySymptomInput.style.display ="block";
    }
  });
  
  cigaretteNo.addEventListener('click',function(){
    if(cigaretteNo.checked){
      cigaretteAmount.checked = "false";
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
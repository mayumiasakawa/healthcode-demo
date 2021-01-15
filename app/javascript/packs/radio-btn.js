window.addEventListener('load', function(){
  const allergyYes = document.getElementById("allergy-yes");
  const allergyNo = document.getElementById("allergy-no");
  const allergyInput = document.getElementById("allergy-input");
  const alcohol_amount = document.getElementById("alcohol_amount");

  allergyNo.addEventListener('click',function(){
    if(allergyNo.checked){
      allergyInput.style.visibility ="hidden";
    // alcohol_amount.style.visibility ="hidden";
    }
  });
  allergyYes.addEventListener('click',function(){
    if(allergyYes.checked){
      allergyInput.style.visibility ="visible";
      // alcohol_amount.style.visibility ="visible";
    }
  });

})
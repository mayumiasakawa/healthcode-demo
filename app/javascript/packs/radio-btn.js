window.addEventListener('load', function(){
  const selectYes = document.getElementById("yes");
  const selectNo = document.getElementById("no");
  const input=document.getElementById("input");

  selectNo.addEventListener('click',function(){
    if(selectNo.checked){
    input.setAttribute("type", "hidden");
    }
  });
  selectYes.addEventListener('click',function(){
    if(selectYes.checked){
      input.removeAttribute("type", "hidden");
    }
  });

})
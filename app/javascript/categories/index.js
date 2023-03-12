window.addEventListener('load', function(){

  const createBtn = document.getElementById("create-btn");
  const titleForm = document.getElementById("title-form");

  createBtn.addEventListener('click', function(){
    if (titleForm.getAttribute("style") == "display:block;"){
      titleForm.removeAttribute("style")
    } else {
      titleForm.setAttribute("style", "display:block;")
    };
  });
});
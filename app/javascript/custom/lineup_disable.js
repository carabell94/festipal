
const disableLink = () => {
  console.log("calling the function");

  const links = document.querySelectorAll('.lineup-link');
  console.log(links);

  links.forEach(function(link){
    console.log('inside the forEach');
    // console.log(link);
    link.addEventListener("click", () => {
      link.classList.add('disabled-lineup');

    });
  });
};

export { disableLink };








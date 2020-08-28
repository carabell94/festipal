
const disableLink = () => {
  console.log("calling the function");


  const buttons = document.querySelectorAll('.dropdown-button');


  if (buttons) {
    buttons.forEach((button) => {
      button.addEventListener("click", () => {
        setTimeout(function(){

          const alert = document.getElementById('show-alert');
          console.log(alert);

          const links = document.querySelectorAll('.lineup-link');
          console.log(links);
          links.forEach(function(link){
            console.log('inside the forEach');
          // console.log(link);
            link.addEventListener("click", (event) => {
              console.log(event.currentTarget);

              const artist = event.currentTarget.querySelector('.name-artist');

              link.classList.add('disabled-lineup');
            showAlert(alert, artist);
            });
          });
        }, 1000);

      });
    });
  };
  const showAlert = (alert, artist) => {
    alert.innerText = `You have selected ${artist.innerText}!`
    alert.removeAttribute('hidden');
    setTimeout(function(){
      console.log(alert);
      alert.setAttribute('hidden', false);
    }, 2000);
  };
};


export { disableLink };








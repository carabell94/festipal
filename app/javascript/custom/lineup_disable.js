
const disableLink = () => {

  const buttons = document.querySelectorAll('.dropdown-button');

  if (buttons) {
    buttons.forEach((button) => {
      button.addEventListener("click", () => {
        setTimeout(function(){

          const alert = document.getElementById('show-alert');

          const links = document.querySelectorAll('.lineup-link');
          // console.log(links);
          links.forEach(function(link){
            link.addEventListener("click", (event) => {
              // console.log(event.currentTarget.classList[2]);




              const artist = event.currentTarget.querySelector('.name-artist');
              const icon = event.currentTarget.querySelector('i');

              link.classList.add('disabled-lineup');
              icon.classList.remove('fa-plus-square');
              icon.classList.add('fa-check');
              showAlert(alert, artist);
              });
            });
        }, 1000);
      });
    });
  };
  const showAlert = (alert, artist) => {
    alert.innerText = `You have added ${artist.innerText} to your FestiPlan!`
    alert.removeAttribute('hidden');
    setTimeout(function(){
      // console.log(alert);
      alert.setAttribute('hidden', false);
    }, 2000);
  };
};


export { disableLink };








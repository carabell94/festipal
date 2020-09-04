
const disableLink = () => {

  const buttons = document.querySelectorAll('.dropdown-button');

  if (buttons) {
    buttons.forEach((button) => {
      button.addEventListener("click", () => {
        setTimeout(function(){

          const alert = document.getElementById('show-alert');

          const links = document.querySelectorAll('.lineup-link');
          console.log(links);
          links.forEach(function(link){
            link.addEventListener("click", (event) => {
              // console.log(event.currentTarget);

              const artist = event.currentTarget.querySelector('.name-artist');
              if (!link.classList.contains('disabled-lineup')) {
                showAlert(alert, artist);
              }
              const icon = event.currentTarget.querySelector('i');

              link.classList.add('disabled-lineup');
              icon.classList.remove('fa-plus-square');
              icon.classList.add('fa-check');
              disableTimeSlots(links, link);
              });
            });
        }, 1000);
      });
    });
  }
  const showAlert = (alert, artist) => {
    alert.innerText = `You have added ${artist.innerText} to your FestiPlan!`
    alert.removeAttribute('hidden');
    setTimeout(function(){
      // console.log(alert);
      alert.setAttribute('hidden', false);
    }, 2000);
  }

  const disableTimeSlots = (links, link) => {

    const selector = link.classList[2];
    links.forEach(function(link){
      if ((link.classList.contains(selector)) && !(link.classList.contains('disabled-lineup'))){

        link.classList.add('cross-line');
        link.removeAttribute('href');
        link.removeAttribute('data-method');
        link.classList.add('disabled-lineup');

        const icon = link.querySelector('i');

        icon.classList.remove('fa-plus-square');
        icon.classList.add("fa-times-circle");
      }
    });
  }
}


export { disableLink };








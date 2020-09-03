
export const closeAlert = () => {
  const alertMessage = document.querySelector('.alert');
  if (alertMessage) {
    setTimeout(function(){
      alertMessage.setAttribute('style', 'display: none');
    }, 3000);
  }
}


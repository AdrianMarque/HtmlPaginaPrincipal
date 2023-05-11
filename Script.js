const backgroundSwitch = document.getElementById('backgroundSwitch');
const body = document.body;

backgroundSwitch.addEventListener('change', () => {
  body.classList.toggle('dark-background');
});

export const listenToNavbarToggle = () => {
  const menuToggle     = document.querySelector(".toggle");
  const menuToggleIcon = document.querySelector(".toggle > i.fas")
  const menu           = document.querySelector(".menu");
  const title          = document.querySelector(".title");
  const dragonball     = document.querySelector(".dragonball");

  menuToggle.addEventListener('click', () => {
    menuToggle.classList.toggle("active");
    menuToggleIcon.classList.toggle("fa-bars");
    menuToggleIcon.classList.toggle("fa-times");
    menu.classList.toggle("active");
    title.classList.toggle("active");
    dragonball.classList.toggle("active");
  });
}
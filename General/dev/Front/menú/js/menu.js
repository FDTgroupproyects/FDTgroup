const menu = document.querySelector(".menu");
const openMenu = document.querySelector(".open-menu");
const closeMenu = document.querySelector(".close-menu");

function toggleMenu(){
    menu.classList.toggle("menu-opened");
}

openMenu.addEventListener("click", toggleMenu);
closeMenu.addEventListener("click", toggleMenu);

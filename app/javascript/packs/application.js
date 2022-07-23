// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"



//sticky nav bar
// const titleHeader = document.querySelector(".container-title");
// const navBar = document.querySelector(".navbar-lewagon");
// const navHeight = navBar.getBoundingClientRect().height;

// const obsOptions = {
//   root: null,
//   threshold: 0,
//   rootMargin: `-${navHeight}px`
// }

// const stickyNav = function(entries) {
//   const [entry] = entries;

//   if (!entry.isIntersecting) navBar.classList.add("sticky-nav");
//   else navBar.classList.remove("sticky-nav");
// }
// const navObserver = new IntersectionObserver(stickyNav, obsOptions);

// navObserver.observe(titleHeader);

//reveal sections
const allSections = document.querySelectorAll(".section");
const revealSection = function(entries, observer) {
  const [entry] = entries;
  if(!entry.isIntersecting) return;
  entry.target.classList.remove("section--hidden");
  observer.unobserve(entry.target);
}

const sectionObserver = new IntersectionObserver(revealSection, {
root:null,
threshold: 0.30

});

allSections.forEach(function(section) {

  sectionObserver.observe(section);
  section.classList.add("section--hidden");
})

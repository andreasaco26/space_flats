// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "plugins/flatpickr.js"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"



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


const checkOutDate = document.querySelector("#end-date");
const checkInDate = document.querySelector("#start-date");

const form = document.querySelector("#new_booking");
const days = document.querySelector(".total-days");
const priceElement = document.querySelector(".total-price");
const price = parseInt(form.dataset.price);




form.addEventListener("change", function(event) {

  console.log(event.target._flatpickr.selectedDates)
  const totalDays = (event.target._flatpickr.selectedDates[1] - event.target._flatpickr.selectedDates[0])/(1000 * 3600 * 24);
  if (totalDays) {
    days.innerText= `${totalDays} nights x ${price}`;
    priceElement.innerText = `Total ${parseInt(totalDays) * price} €`
  }


})

import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import "flatpickr/dist/themes/airbnb.css";

flatpickr("#start-date",  {
  altInput: true,
  "plugins": [new rangePlugin({ input: "#end-date"})]
});

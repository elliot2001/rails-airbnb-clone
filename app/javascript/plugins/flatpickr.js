import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    mode: "range",
    minDate: "today",
    dateFormat: "Y-m-d",
    disable: [
      function (date) {
        // disable every multiple of 8
        return !(date.getDate() % 5);
      }
    ]
  });
}

export { initFlatpickr };

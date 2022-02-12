import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    minDate: "today",
    dateFormat: "d-m-Y",
    disable: [
      {
        from: "18-02-2022",
        to: "28-02-2022"
      },
      {
        from: "10-03-2022",
        to: "23-04-2022"
      }
    ]

  });
}
export { initFlatpickr };

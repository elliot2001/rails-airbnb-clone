import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    enable: [
      {
        from: "2022-02-10",
        to: "2022-02-15"
      },
      {
        from: "2022-02-23",
        to: "2022-03-20"
      }
    ]
  });
}

export { initFlatpickr };

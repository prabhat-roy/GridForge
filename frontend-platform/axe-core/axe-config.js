// axe-core config for unit-test + Playwright a11y assertions in GridForge
module.exports = {
  rules: [
    { id: "color-contrast", enabled: true },
    { id: "label", enabled: true },
    { id: "image-alt", enabled: true },
    { id: "aria-required-attr", enabled: true },
  ],
  reporter: "v2",
  resultTypes: ["violations", "incomplete"],
};

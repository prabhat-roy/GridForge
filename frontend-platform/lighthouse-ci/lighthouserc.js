// Lighthouse CI for GridForge performance budgets
module.exports = {
  ci: {
    collect: { url: ["https://www.gridforge.internal/", "https://app.gridforge.internal/"], numberOfRuns: 3 },
    assert: {
      assertions: {
        "categories:performance": ["error", { minScore: 0.85 }],
        "categories:accessibility": ["error", { minScore: 0.95 }],
        "categories:best-practices": ["warn", { minScore: 0.9 }],
        "categories:seo": ["error", { minScore: 0.9 }],
      },
    },
    upload: { target: "lhci", serverBaseUrl: "https://lhci.gridforge.internal" },
  },
};

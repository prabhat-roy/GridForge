// Module Federation across GridForge frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "gridforge_shell",
      remotes: {
        admin: "admin@https://admin.gridforge.internal/remoteEntry.js",
        partner: "partner@https://partner.gridforge.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};

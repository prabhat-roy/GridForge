# identity — GridForge

Services in the **identity** domain.

| Service | Language | Port | Description |
|---|---|---|---|
| auth-service   | rust   | 50020 | OIDC + WebAuthn auth core |
| operator-sso   | rust   | 50021 | Operator SAML/OIDC SSO with MFA enforcement |
| customer-sso   | rust   | 50022 | Customer OIDC SSO |
| mfa-service    | go     | 50023 | Multi-factor auth (TOTP, WebAuthn, smartcard) |
| rbac-service   | kotlin | 50024 | RBAC + role hierarchy (NERC CIP-004) |

#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.gridforge.internal \
  --provider gridforge_identity_service \
  --provider-base-url http://identity-service.gridforge.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results

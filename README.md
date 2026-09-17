# Detections-as-Code Starter

Contains the GitHub Actions workflow for detection-as-code transpilation from Sigma -> SIEM rules.

## Badges

[![CI](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/ci.yml/badge.svg)](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/ci.yml)
[![Deploy Staging](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/deploy-staging.yml/badge.svg)](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/deploy-staging.yml)
[![Deploy Production](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/deploy-production.yml/badge.svg)](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/deploy-production.yml)


## Features

- Sigma -> SIEM rule transpilation (Currently set to Microsoft Sentinel & CrowdStrike)
- Sigma schema validation
- YAML linting
- Automated CI/CD pipeline deployment

## Environment Variables

To run this pipeline, you will need to add the following environment variables to your GitHub Environment secrets
- TBD

## Usage/Examples

- To automatically lint, test, and deploy a vendor-agnostic DaC rule-base (Sigma) to multiple destinations (e.g. Microsoft Sentinel; CrowdStrike; Splunk; etc.)

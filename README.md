# Detections-as-Code Starter

## Badges

[![CI](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/ci.yml/badge.svg)](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/ci.yml)
[![Deploy Staging](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/deploy-staging.yml/badge.svg)](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/deploy-staging.yml)
[![Deploy Production](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/deploy-production.yml/badge.svg)](https://github.com/deepdivesecurity/detections-as-code-starter/actions/workflows/deploy-production.yml)

## About the Project
Contains the GitHub Actions workflow for detection-as-code transpilation from Sigma -> SIEM rules.

## Getting Started

### Prerequisites
- TBD for CD flow

### Installation
1. Clone the repo
   ```sh
   git clone https://github.com/deepdivesecurity/detections-as-code-starter.git
   ```

2. Navigate to the project directory
   ```sh
   cd detections-as-code-starter
   ```

3. Sync uv and install requirements
   ```sh
   uv sync
   ```

4. Install pre-commit
   ```sh
   uv run pre-commit install
   ```

## Usage

### Converting Sigma rules with the CLI locally
1. Confirm directories exist
   ```sh
   mkdir -p converted_rules/okta
   ```
2. Convert Sigma rule to desired output language
   ```sh
   sigma convert -t "splunk" "rules/cloud/okta/okta_user_account_locked_out.yml" -p "splunk_windows" > "converted_rules/okta/okta_user_account_locked_out"
   ```

## Roadmap

- [ ] TBD

See the [open issues](https://github.com/deepdivesecurity/detections-as-code-starter/issues) for a complete list of proposed features and known issues.

## Additional Documentation/References
- [SigmaHQ Sigma GitHub](https://github.com/sigmahq/sigma)

## License
All Rights Reserved.

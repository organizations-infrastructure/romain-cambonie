locals {
  first_run = false #set to false after initial repositories run
  project = {
    name                         = "romain-cambonie"
    github_organization          = "romain-cambonie-organization"
    terraform_cloud_organization = "romain-cambonie"
    aws_organizational_unit      = "romain-cambonie"
    commit_author                = "github-actions[bot]"
    commit_email                 = "github-actions[bot]@users.noreply.github.com"
    organization_email           = "romain.cambonie@gmail.com"
    aws_root_id                  = "r-gw1z"
    aws_management_account       = "ma-ou-rc"
    aws_management_email         = "romain.cambonie+ma-ou-rc@gmail.com"
    about                        = "myself"
    terraform_organization_variables = {
      "project" = {
        hcl         = false
        sensitive   = false
        value       = "romain-cambonie"
        description = "The project name in the Project-Service-Layer architecture"
      }
      "terraform_organization" = {
        hcl         = false
        sensitive   = false
        value       = "romain-cambonie"
        description = "The organization name on terraform cloud"
      }
      "aws_default_region" = {
        hcl         = false
        sensitive   = false
        value       = "us-east-1"
        description = "The aws default region"
      }
      "domain_name" = {
        hcl         = false
        sensitive   = false
        value       = "romain-cambonie.com"
        description = "The registered domain name (does not need to be registered yet but check availability)"
      }
      #"sender_id" = {
      #  hcl         = false
      #  sensitive   = false
      #  value       = "SENDER_ID"
      #  description = "Sender id for transactional sms (auth). Maximum 11 alphanumeric or hyphen (-) characters, including at least one letter and no spaces. It has to start and end with an alphanumeric character."
      #}
      "domain_email_forward_addresses" = {
        hcl         = false
        sensitive   = false
        value       = "['romain.cambonie@gmail.com']"
        description = "The emails addresses to forward the emails sent to the SES verified domain"
      }
      "github_pat" = {
        hcl         = false
        sensitive   = false
        value       = var.github_pat
        description = "A github PAT that allow administration operation on repositories"
      }
      "notification_webhook_failures" = {
        hcl         = false
        sensitive   = false
        value       = var.notification_webhook_failures
        description = "A webhook url to notify about deployments"
      }
      "notification_webhook_successes" = {
        hcl         = false
        sensitive   = false
        value       = var.notification_webhook_successes
        description = "A webhook url to notify about deployments"
      }
      "notification_webhook_releases" = {
        hcl         = false
        sensitive   = false
        value       = var.notification_webhook_releases
        description = "A webhook url to notify about deployments"
      }
      "content_security_policy_client" = {
        hcl         = false
        sensitive   = false
        value       = "default-src 'self' data: https://gist.githubusercontent.com/romain-cambonie/ ; font-src 'self'; img-src 'self'; object-src 'none'; script-src 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline'; trusted-types angular angular#bundler dompurify; require-trusted-types-for 'script';"
        description = "The CSP that allow to fetch the gist from github"
      }
    }
    github_organization_secrets = {
      "tfe_team_token" = {
        github_key    = "TF_API_TOKEN"
        terraform_key = "tfe_team_token"
      }
      "github_pat" = {
        github_key    = "PAT"
        terraform_key = "github_pat"
      }
      "notification_webhook_failures" = {
        github_key    = "DISCORD_FAILURES_WEBHOOK"
        terraform_key = "notification_webhook_failures"
      }
      "notification_webhook_successes" = {
        github_key    = "DISCORD_SUCCESSES_WEBHOOK"
        terraform_key = "notification_webhook_successes"
      }
      "notification_webhook_releases" = {
        github_key    = "DISCORD_RELEASES_WEBHOOK"
        terraform_key = "notification_webhook_releases"
      }
    }
    github_organization_variables = {
      "cloudfront_s3_bucket" = {
        github_key    = "CLOUDFRONT_S3_BUCKET"
        terraform_key = "cloudfront_s3_bucket"
      }
      "cloudfront_distribution_id" = {
        github_key    = "CLOUDFRONT_DISTRIBUTION_ID"
        terraform_key = "cloudfront_distribution_id"
      }
      #"cognito_app_integration_id" = {
      #  github_key    = "COGNITO_APP_INTEGRATION_ID"
      #  terraform_key = "cognito_app_integration_id"
      #}
      "aws_default_region" = {
        github_key    = "AWS_DEFAULT_REGION"
        terraform_key = "aws_default_region"
      }
    }
  }
}

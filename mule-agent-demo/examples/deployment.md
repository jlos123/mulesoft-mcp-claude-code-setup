# Deployment Examples

This guide shows how to use Claude Code with MuleSoft MCP Server to deploy and manage Mule applications.

## Basic Deployment

Deploy a new application:
```
Deploy my application to the Sandbox environment
```

Claude Code will:
- Guide you through the deployment process
- Ask for necessary parameters (workers, region, runtime version)
- Initiate the deployment
- Monitor deployment progress

## CloudHub Deployment

For CloudHub-specific deployment:
```
Deploy [application-name] to CloudHub in us-east-1 with 1 worker and 0.1 vCores
```

Parameters you can specify:
- Number of workers
- Worker size (vCores)
- Region
- Mule runtime version
- Static IPs
- Persistent queues

## Hybrid Deployment

For on-premises or hybrid deployments:
```
Deploy [application-name] to [server-name] in the Production environment
```

## Update Existing Application

To update a running application:
```
Update [application-name] with the latest version from target/app.jar
```

This performs:
- Zero-downtime deployment (if supported)
- Gradual traffic shift
- Rollback on failure

## Deployment with Configuration

Deploy with environment-specific properties:
```
Deploy [application-name] with the following properties:
- database.host=prod-db.example.com
- api.timeout=30000
- feature.flag=enabled
```

## Batch Deployment

Deploy multiple applications:
```
Deploy all applications in the staging directory to the QA environment
```

## Blue-Green Deployment

Set up blue-green deployment:
```
Create a blue-green deployment setup for [application-name]
```

Steps:
1. Deploy new version to "green" environment
2. Test the new version
3. Switch traffic from "blue" to "green"
4. Keep "blue" as rollback option

## Rollback Deployment

Rollback to previous version:
```
Rollback [application-name] to the previous stable version
```

## Deployment Status

Check deployment status:
```
What is the deployment status of [application-name]?
```

Response includes:
- Deployment state (DEPLOYING, DEPLOYED, FAILED)
- Progress percentage
- Estimated completion time
- Any errors or warnings

## Scheduled Deployment

Schedule a deployment:
```
Schedule deployment of [application-name] for tonight at 2 AM EST
```

## Deployment Best Practices

### Pre-Deployment Checklist

Ask Claude Code:
```
Generate a pre-deployment checklist for [application-name]
```

Items may include:
- Build successful
- Tests passing
- Configuration verified
- Dependencies up to date
- Database migrations ready

### Post-Deployment Validation

After deployment:
```
Validate that [application-name] deployed successfully and is healthy
```

Checks:
- Application status is STARTED
- Health endpoint responding
- No errors in logs
- APIs responding correctly

## Deployment Strategies

### Canary Deployment

```
Deploy [application-name] using canary strategy:
- 10% traffic to new version
- Monitor for 30 minutes
- Increase to 50% if stable
- Full rollout if no issues
```

### Rolling Deployment

```
Deploy [application-name] using rolling deployment across all workers
```

## Environment Promotion

Promote through environments:
```
Promote [application-name] from DEV to QA to PROD
```

## Deployment Automation

Create deployment pipeline:
```
Help me create a deployment pipeline that:
1. Builds the application
2. Runs tests
3. Deploys to QA
4. Runs smoke tests
5. Waits for approval
6. Deploys to Production
```

## Multi-Region Deployment

Deploy to multiple regions:
```
Deploy [application-name] to us-east-1, us-west-2, and eu-central-1
```

## Deployment with Dependencies

Deploy application with dependent applications:
```
Deploy [main-app] and ensure [dependency-app-1] and [dependency-app-2] are running
```

## Configuration Management

Update configuration without redeployment:
```
Update the configuration for [application-name]:
- Change database.host to new-db.example.com
- Update api.timeout to 60000
```

## Deployment Notifications

Set up notifications:
```
Notify me when deployment of [application-name] completes
```

## Troubleshooting Deployments

If deployment fails:
```
Why did the deployment of [application-name] fail?
```

Claude Code will:
- Analyze deployment logs
- Identify the error
- Suggest fixes
- Optionally attempt automated remediation

## Example Deployment Conversation

```
You: "I need to deploy payment-api to production"
Claude: "I'll help you deploy payment-api to production. Let me check the current state..."

Claude: "Current version in production is 1.2.0. What version are you deploying?"
You: "Version 1.3.0"

Claude: "Great. Here are the recommended settings for production:
- 2 workers
- 1 vCore each
- Region: us-east-1
- Runtime: 4.4.0
Should I proceed?"

You: "Yes, deploy it"
Claude: "Deploying payment-api v1.3.0 to production... Deployment in progress..."

Claude: "Deployment completed successfully! The application is now running. 
Would you like me to verify the health?"
```

## Additional Resources

- [Runtime Manager Deployments](https://docs.mulesoft.com/runtime-manager/deploying-to-cloudhub)
- [Deployment Strategies](https://docs.mulesoft.com/runtime-manager/deployment-strategies)
- [Zero Downtime Deployments](https://docs.mulesoft.com/runtime-manager/zero-downtime-updates)

# Health Check Examples

This guide demonstrates how to use Claude Code with MuleSoft MCP Server to perform health checks on your Mule applications.

## Basic Health Check

Ask Claude Code:
```
What is the health status of my Mule applications?
```

Expected response:
- List of all applications in the environment
- Status of each application (STARTED, STOPPED, FAILED, etc.)
- Runtime version information
- Worker status for CloudHub deployments

## Detailed Application Health

For a specific application:
```
Show me detailed health information for [application-name]
```

This provides:
- Application status
- Memory usage
- CPU utilization
- Number of workers (CloudHub)
- Last update time
- Deployment region

## Check for Issues

To identify problems:
```
Are there any failed or unhealthy Mule applications?
```

Claude Code will:
- Scan all applications
- Identify any with failed status
- Report any with high error rates
- Highlight applications that are stopped unexpectedly

## Historical Health Data

Query historical information:
```
Show me the uptime and stability of [application-name] for the last 7 days
```

This can reveal:
- Restart frequency
- Downtime periods
- Performance trends

## Automated Health Monitoring

You can also use Claude Code to set up automated monitoring by asking:
```
Help me create a script that checks application health every 5 minutes and alerts on failures
```

## API Health Checks

For API-specific health:
```
What is the health of my APIs in API Manager?
```

This shows:
- API status
- SLA tier compliance
- Response times
- Error rates

## Integration with External Tools

Claude Code can help you:
- Export health data to monitoring tools
- Create dashboards
- Set up alerts
- Generate health reports

## Best Practices

1. **Regular Checks**: Perform health checks daily or after deployments
2. **Baseline Metrics**: Establish baseline performance metrics
3. **Alert Thresholds**: Define what constitutes unhealthy status
4. **Documentation**: Keep track of common issues and resolutions
5. **Proactive Monitoring**: Use Claude Code to automate routine checks

## Example Conversation Flow

```
You: "What is the health of all my applications?"
Claude: "I found 3 applications. 2 are running normally, 1 has issues..."

You: "What's wrong with the problematic application?"
Claude: "The application 'payment-api' is showing high error rates..."

You: "Show me the recent logs for payment-api"
Claude: "Here are the last 50 log entries..."

You: "Can you identify the root cause?"
Claude: "Based on the logs, there appears to be a database connection issue..."
```

## Troubleshooting

If health checks fail:
1. Verify MCP Server is running
2. Check Anypoint Platform connectivity
3. Confirm application permissions
4. Review Claude Code configuration

## Additional Resources

- [MuleSoft Runtime Manager](https://docs.mulesoft.com/runtime-manager/)
- [Application Monitoring](https://docs.mulesoft.com/runtime-manager/monitoring)
- [CloudHub Logs](https://docs.mulesoft.com/runtime-manager/viewing-log-data)

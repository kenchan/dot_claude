#!/usr/bin/bash

claude mcp add gemini-cli -s user -- npx -y gemini-mcp-tool
claude mcp add aws-docs -s user -- uvx awslabs.aws-documentation-mcp-server@latest -e FAST_LOG_LEVEL=ERROR -e AWS_DOCUMENTATION_PARTITION=aws

# Execute local registration script if it exists
if [ -f "$(dirname "$0")/register_mcp.local.sh" ]; then
    source "$(dirname "$0")/register_mcp.local.sh"
fi

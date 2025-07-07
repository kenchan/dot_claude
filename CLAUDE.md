# Development Guidelines

## Modern CLI Tools

When working with files and searching, use these modern tools that are installed on this system:

- **rg (ripgrep)** - Use instead of grep for faster file content searching
  - Example: `rg "pattern" --type py` to search Python files
  - Example: `rg -i "todo"` for case-insensitive search

- **fd** - Use instead of find for faster file/directory searching
  - Example: `fd "\.py$"` to find all Python files
  - Example: `fd -t d` to find directories only

- **bat** - Use instead of cat for syntax-highlighted file viewing
  - Example: `bat file.py` for colored output

- **jq** - Use for JSON processing
  - Example: `jq '.key' file.json`

Always prefer these modern tools over traditional Unix utilities for better performance and user experience.

## Search Guidelines

**Web Search**: Use `mcp__gemini-cli__ask-gemini` for web searches instead of the WebSearch tool.

**General Analysis**: Use `mcp__gemini-cli__ask-gemini` for:
- Analyzing large files with @file syntax
- Getting AI opinions or analysis
- Complex code understanding tasks

**File Search**: Use standard tools (Grep, Glob, Task, etc.) for file and code searches

## Language Preference

Always respond to the user in Japanese (日本語) unless specifically requested otherwise.

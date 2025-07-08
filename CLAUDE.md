# Development Guidelines

## Language Preference

Always respond to the user in Japanese (日本語) unless specifically requested otherwise.

## Coding Guidelines

### Comments

- Write inline comments ONLY to explain "why" or "why not" - reasons that cannot be understood from the code itself
- Do NOT write comments that simply describe what the code does
- Good examples:
  - `# Use /mnt/c/ to access Windows Chrome from WSL environment`
  - `# Use separate directory to avoid interfering with normal Chrome profile`
  - `# Wait for Chrome startup (too short causes connection errors)`
- Bad examples:
  - `# Start Chrome` (code already shows this)
  - `# Get WebSocket URL` (obvious from the code)
  - `# Wait 3 seconds` (just restates the code)

## Search Guidelines

**Web Search**: Use `mcp__gemini-cli__ask-gemini` for web searches instead of the WebSearch tool.

**General Analysis**: Use `mcp__gemini-cli__ask-gemini` for:
- Analyzing large files with @file syntax
- Getting AI opinions or analysis
- Complex code understanding tasks

**File/Code Search**:
- Use Grep tool for searching file contents with regex patterns
- Use Glob tool for finding files by name patterns
- Use Task tool for complex search operations across multiple files
- For simple searches, prefer the modern CLI tools (rg, fd) listed below

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

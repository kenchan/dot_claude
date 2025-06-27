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

## Web Search

**IMPORTANT**: Never use the WebSearch tool. Always use the `/gemini-search` slash command for web searches.
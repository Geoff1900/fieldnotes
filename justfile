# List available commands
default:
    just --list

# Build the site
build:
    cd docs && uv run zensical build

# Run the Zensical dev server
serve:
    cd docs && uv run zensical serve
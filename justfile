# List available commands
default:
    just --list

# Build the site
build:
    cd docs && uv run zensical build

# Run the Zensical dev server
serve:
    cd docs && uv run zensical serve

lint-md:
    npx markdownlint-cli2

lint-spelling:
    npx cspell "docs/**/*.md"

lint: lint-md lint-spelling
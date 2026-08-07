# List available commands
default:
    just --list

# Build the site
build:
    cd handbook && uv run zensical build

# Run the Zensical dev server
serve:
    cd handbook && uv run zensical serve

lint-md:
    npx markdownlint-cli2

lint-spelling:
    npx cspell "handbook/**/*.md"

lint: lint-md lint-spelling
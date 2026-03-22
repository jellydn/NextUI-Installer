# Project-specific commands using 'just'

# The default task, executed when you run `just` with no arguments
default: build

# Build the application
build:
    @echo "Building application..."
    @cargo build

# Build the application for release
release:
    @echo "Building application for release..."
    @cargo build --release

# Run the application
run:
    @echo "Running application..."
    @cargo run

# Run the application in release mode
run-release:
    @echo "Running application in release mode..."
    @cargo run --release

# Run tests
test:
    @echo "Running tests..."
    @cargo test

# Check for formatting issues
fmt-check:
    @echo "Checking formatting..."
    @cargo fmt -- --check

# Apply formatting
fmt:
    @echo "Formatting code..."
    @cargo fmt

# Run clippy for linting
lint:
    @echo "Linting code..."
    @cargo clippy -- -D warnings

# Clean build artifacts
clean:
    @echo "Cleaning build artifacts..."
    @cargo clean

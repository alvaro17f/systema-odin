# Systema

Systema - System + "ma" (latin for "from") - getting info from system

## Overview

Systema is a system information tool written in Odin that provides detailed insights about your system's hardware and software configuration.

## Features

- Real-time system monitoring
- Hardware information retrieval
- System resource usage tracking
- Cross-platform compatibility

## Installation

### Prerequisites

- [Odin programming language](https://odin-lang.org/)
- Nix (optional, for development environments)

### Building from Source

```bash
# Clone the repository
git clone <repository-url>
cd systema

# Build the project
./taskfile build

# Run the application
./taskfile run
```

### Using Nix

If you're using Nix, you can enter a development shell with all dependencies:

```bash
nix develop
```

## Usage

### Running Systema

```bash
# Run with default settings
./taskfile run

# Run with debug information
./taskfile debug

# Run with address sanitizer
./taskfile debug:sanitize
```

### Building Systema

```bash
# Build optimized version
./taskfile build
```

## Development

### Project Structure

```
.
├── lib/              # Odin library files
├── vhs/              # Terminal recordings
├── taskfile          # Build and run scripts
├── flake.nix         # Nix configuration
├── VERSION           # Version information
└── README.md         # This file
```

### Taskfile Commands

The `taskfile` script provides convenient commands for development:

- `run` - Run the application
- `debug` - Run with debug information
- `debug:sanitize` - Run with address sanitizer
- `build` - Build optimized binary

### Version Management

The project version is managed in the `VERSION` file and is automatically included during the build process.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- [Odin programming language](https://odin-lang.org/) for the runtime environment
- [Nix](https://nixos.org/) for reproducible development environments

# Systema

Systema - System + "ma" (latin for "from") - getting info from system

## Overview

Systema is a system information tool written in Odin that provides detailed insights about your system's hardware and software configuration.

## Features

- Real-time system monitoring
- Hardware information retrieval
- System resource usage tracking
- CPU, memory, storage, and uptime information
- Desktop environment detection
- Kernel version and hostname display

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
├── app/                # Application entry point
├── colors/             # Color definitions and utilities
├── models/             # Data models and structures
├── modules/            # System information modules
│   ├── colors.odin   # Color system info
│   ├── cpu.odin      # CPU information
│   ├── desktop.odin  # Desktop environment detection
│   ├── hostname.odin # Hostname utilities
│   ├── kernel.odin   # Kernel information
│   ├── memory.odin   # Memory usage
│   ├── shell.odin    # Shell detection
│   ├── storage.odin  # Storage information
│   ├── system.odin   # System information
│   ├── uptime.odin   # System uptime
│   ├── username.odin # User information
│   └── ...
├── utils/              # Utility functions
├── vhs/                # Terminal recordings
├── taskfile           # Build and run scripts
├── flake.nix          # Nix configuration
├── VERSION            # Version information
└── README.md          # This file
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

- [microfetch](https://github.com/NotAShelf/microfetch)

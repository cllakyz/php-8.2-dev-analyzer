# php-dev-analyzer

A Docker image designed for Laravel-PHP development and code analysis. This image includes essential PHP libraries, extensions, and Composer, allowing you to run tools like Larastan and Pint for code quality analysis in PHP projects.

## Features

- **PHP 8.2 CLI**: Runs on PHP 8.2.
- **Composer**: Pre-installed for managing PHP dependencies.
- **PHP Extensions**: Includes `pdo_mysql`, `intl`, `pcntl`, `zip`, and `gd` for broader compatibility.
- **System Libraries**: Contains essential libraries (`libicu`, `libzip`, and `libpng`) to support PHP extensions.

## Usage

### Pull the Image

To pull this Docker image from Docker Hub:

```bash
docker pull cllakyz/php-dev-analyzer:latest
```

### Build the Image

If you need to build the image from the Dockerfile:

```bash
docker build -t cllakyz/php-dev-analyzer:latest .
```

### Run the Container

Use this command to run a container from the image:

```bash
docker run -it --rm -v $(pwd):/app cllakyz/php-dev-analyzer:latest
```

This command mounts your current directory to the /app directory within the container, allowing you to run analysis tools on your PHP code.

## Dockerfile Overview

The Dockerfile performs the following:

1. Installs Required Libraries: Sets up necessary system libraries for PHP.
2. Installs PHP Extensions: Adds commonly used extensions for development and analysis.
3. Installs Composer: Downloads Composer to manage dependencies.

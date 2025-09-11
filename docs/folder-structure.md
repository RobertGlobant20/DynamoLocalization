# Folder Structure Guide

## Overview
This document describes the folder structure for the Dynamo Localization project, which is designed to test and implement HTML file replacement for localization purposes.

## Directory Structure

```
DynamoLocalization/
├── src/                    # Source files
│   ├── html/              # Source HTML templates
│   └── assets/            # CSS, JavaScript, and other assets
├── locales/               # Translation files organized by language
│   ├── en/               # English translations
│   ├── es/               # Spanish translations
│   ├── fr/               # French translations
│   └── de/               # German translations
├── build/                 # Build output (generated)
│   ├── en/               # English build output
│   ├── es/               # Spanish build output
│   ├── fr/               # French build output
│   └── de/               # German build output
├── config/               # Configuration files
├── scripts/              # Build and utility scripts
├── docs/                 # Documentation
└── README.md            # Project overview
```

## Directory Descriptions

### `src/`
Contains the source files for the project:
- **`html/`**: HTML template files with placeholder tokens (e.g., `{{TITLE}}`)
- **`assets/`**: Static assets like CSS, JavaScript, images that may or may not need localization

### `locales/`
Contains translation files organized by language code:
- Each subdirectory represents a locale (e.g., `en`, `es`, `fr`, `de`)
- Contains `translations.json` files with key-value pairs for text replacement
- Translation keys correspond to tokens used in HTML templates

### `build/`
Generated directory containing processed files:
- Organized by locale
- Contains the final HTML files with tokens replaced by localized content
- Includes copied/processed assets

### `config/`
Configuration files for the localization process:
- `localization.json`: Main configuration file defining build settings, supported locales, and replacement patterns

### `scripts/`
Build and utility scripts:
- `build.sh`: Main build script that processes files and generates localized output
- `clean.sh`: Utility script to clean build artifacts

### `docs/`
Project documentation:
- This folder structure guide
- Additional documentation as needed

## Usage

1. **Add source content**: Place HTML templates in `src/html/` with placeholder tokens
2. **Add translations**: Create or update JSON files in the appropriate locale directories
3. **Build**: Run `./scripts/build.sh` to generate localized files
4. **Clean**: Run `./scripts/clean.sh` to remove build artifacts

## Token Format

HTML templates use double curly brace tokens: `{{TOKEN_NAME}}`

Example:
```html
<title>{{TITLE}}</title>
<h1>{{HEADER_TITLE}}</h1>
```

Corresponding translation file:
```json
{
  "TITLE": "My Localized Title",
  "HEADER_TITLE": "Welcome to My Site"
}
```
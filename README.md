# DynamoLocalization

Test Dynamo localization process, specifically the replacement of HTML files.

## Project Structure

This project demonstrates a complete folder structure for managing HTML file localization:

```
DynamoLocalization/
├── src/                    # Source HTML templates and assets
├── locales/               # Translation files by language (en, es, fr, de)
├── build/                 # Generated localized output
├── config/               # Configuration files
├── scripts/              # Build and utility scripts
├── docs/                 # Documentation
└── README.md            # This file
```

## Quick Start

1. **Build localized files:**
   ```bash
   ./scripts/build.sh
   ```

2. **Clean build artifacts:**
   ```bash
   ./scripts/clean.sh
   ```

3. **View the generated files:**
   ```bash
   ls build/
   ```

## Features

- 🌍 Multi-language support (English, Spanish, French, German)
- 📝 Template-based HTML with token replacement
- ⚙️ Configurable build process
- 🏗️ Organized folder structure for scalability
- 📚 Comprehensive documentation

## Documentation

- [Folder Structure Guide](docs/folder-structure.md) - Detailed explanation of the project organization

## Supported Languages

- English (en)
- Spanish (es) 
- French (fr)
- German (de)

Add more languages by creating new directories in `locales/` and updating the configuration.

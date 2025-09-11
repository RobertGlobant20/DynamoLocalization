#!/bin/bash

# Build script for Dynamo Localization
# This script processes HTML files and replaces tokens with localized content

set -e

CONFIG_FILE="config/localization.json"
SOURCE_DIR="src"
OUTPUT_DIR="build"
LOCALES_DIR="locales"

echo "Starting Dynamo Localization build..."

# Check if config file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Configuration file not found: $CONFIG_FILE"
    exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Get supported locales from config (simplified approach)
LOCALES=("en" "es" "fr" "de")

echo "Processing locales: ${LOCALES[*]}"

for locale in "${LOCALES[@]}"; do
    echo "Processing locale: $locale"
    
    LOCALE_OUTPUT_DIR="$OUTPUT_DIR/$locale"
    LOCALE_TRANSLATIONS="$LOCALES_DIR/$locale/translations.json"
    
    # Create locale-specific output directory
    mkdir -p "$LOCALE_OUTPUT_DIR/html"
    mkdir -p "$LOCALE_OUTPUT_DIR/assets"
    
    # Copy assets (CSS, JS, images) - these typically don't need localization
    if [ -d "$SOURCE_DIR/assets" ]; then
        cp -r "$SOURCE_DIR/assets"/* "$LOCALE_OUTPUT_DIR/assets/" 2>/dev/null || true
    fi
    
    # Process HTML files (this is a simplified version - real implementation would use a proper template engine)
    if [ -d "$SOURCE_DIR/html" ]; then
        for html_file in "$SOURCE_DIR/html"/*.html; do
            if [ -f "$html_file" ]; then
                filename=$(basename "$html_file")
                echo "  Processing: $filename"
                
                # Copy file to output (in a real implementation, you would replace tokens here)
                cp "$html_file" "$LOCALE_OUTPUT_DIR/html/$filename"
                echo "    Copied to: $LOCALE_OUTPUT_DIR/html/$filename"
            fi
        done
    fi
    
    echo "  Completed locale: $locale"
done

echo "Build completed successfully!"
echo "Output available in: $OUTPUT_DIR"
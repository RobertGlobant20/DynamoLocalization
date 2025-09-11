#!/bin/bash

# Clean script for Dynamo Localization
# Removes all build artifacts

echo "Cleaning build artifacts..."

if [ -d "build" ]; then
    rm -rf build/*
    echo "Cleaned build directory"
else
    echo "Build directory doesn't exist"
fi

echo "Clean completed!"
#!/bin/bash

# Set variables
URL="https://www.cdc.gov/places/measure-definitions/"
OUTPUT_DIR="./cdc_places_archive_$(date +%Y%m%d_%H%M%S)"

# Create the output directory
mkdir -p "$OUTPUT_DIR"

# Run HTTrack to archive the site
httrack "$URL" \
    -O "$OUTPUT_DIR" \
    "+*.cdc.gov/places/measure-definitions/" \
    --robots=0 \
    -v \
    --depth=3 \
    --mirror \
    --disable-security-limits \
    --keep-alive

# Completion message
echo "Archiving completed! Files are saved in: $OUTPUT_DIR"

#!/bin/bash

# Check if a file argument is provided
if [ -z "$1" ]; then
    echo "Error: No file provided. Please specify a file with URLs."
    exit 1
fi

# Initialize a counter for line numbers
line_number=1

# Read each line in the file (each line is assumed to be a URL)
while read -r url; do
    # Get the HTTP response code
    http_code=$(curl -o /dev/null -s -w "%{http_code}" "$url")

    # Get the content of the page
    content=$(curl -s "$url")

    # Find the page encoding (if available)
    encoding=$(echo "$content" | grep -i -o 'charset=[^"]*' | cut -d= -f2)
    # Set encoding to "N/A" if it wasn't found
    encoding=${encoding:-"N/A"}

    # Count the number of words in the page content
    word_count=$(echo "$content" | wc -w)

    # Print the results with tab-separated values
    echo -e "${line_number}\t${url}\t${http_code}\t${encoding}\t${word_count}"

    # Increase the line number counter by 1
    line_number=$((line_number + 1))
done < "$1"


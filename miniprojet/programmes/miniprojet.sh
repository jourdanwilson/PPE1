#!/bin/bash

# Define the input and output files
INPUT_FILE="/Users/jourdanwilson/Desktop/school/projet_encadre/plurital/PPE1/miniprojet/tableaux/tableau-fr.tsv"
OUTPUT_FILE="/Users/jourdanwilson/Desktop/school/projet_encadre/plurital/PPE1/miniprojet/tableaux/tableau-fr.html"

# Check if the input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found."
    exit 1
fi

# Start the HTML structure
echo "<!DOCTYPE html>" > "$OUTPUT_FILE"
echo "<html lang='en'>" >> "$OUTPUT_FILE"
echo "<head>" >> "$OUTPUT_FILE"
echo "    <meta charset='UTF-8'>" >> "$OUTPUT_FILE"
echo "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>" >> "$OUTPUT_FILE"
echo "    <title>tableau-fr</title>" >> "$OUTPUT_FILE"
echo "</head>" >> "$OUTPUT_FILE"
echo "<body>" >> "$OUTPUT_FILE"
echo "    <h1>Tableau des Résultats</h1>" >> "$OUTPUT_FILE"
echo "    <table border='1'>" >> "$OUTPUT_FILE"

# Add the table header
header=$(head -n 1 "$INPUT_FILE")
echo "        <tr><th>${header//\t/</th><th>}</th></tr>" >> "$OUTPUT_FILE"

# Add table rows for each line in the input file
tail -n +2 "$INPUT_FILE" | while IFS=$'\t' read -r line url http_code encoding word_count; do
    echo "        <tr><td>$line</td><td>$url</td><td>$http_code</td><td>$encoding</td><td>$word_count</td></tr>" >> "$OUTPUT_FILE"
done

# Close the HTML structure
echo "    </table>" >> "$OUTPUT_FILE"
echo "</body>" >> "$OUTPUT_FILE"
echo "</html>" >> "$OUTPUT_FILE"

echo "HTML table generated in $OUTPUT_FILE"


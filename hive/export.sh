#! /bin/sh

# Parse options
while getopts "s:o:" flag; do
    case "${flag}" in
        s) script=${OPTARG};;
        o) output=${OPTARG};;
        *) echo "Usage: $0 -s <script> -o <output>"; exit 1;;
    esac
done

# Check if both script and output are provided
if [ -z "$script" ] || [ -z "$output" ]; then
    echo "Error: Both script and output must be specified."
    echo "Usage: $0 -s <script> -o <output>"
    exit 1
fi

# Execute Hive command
hive -f "./hive/analysis/${script}.hql" > "./data/processed/${output}.csv"
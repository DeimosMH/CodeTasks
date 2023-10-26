#!/bin/bash

# Define your keyword
keyword="<keyword>" 

# Get the total number of pages
total_pages=$(curl -s "https://api.github.com/search/repositories?q=$keyword" | jq '.total_count / 100')

# Round up the number of pages
total_pages=$(echo "($total_pages + 1) / 1" | bc)

# # if (( $total_pages > 2 )); then
# total_pages=1
# # fi

# Loop through each page
for ((page=1; page<=$total_pages; page++))
do
    # Get the list of repositories for the current page
    repos=$(curl -s "https://api.github.com/search/repositories?q=\"$keyword\"&per_page=100&page=$page" | jq -r '.items[].clone_url')
    
    # Clone each repository
    for repo in $repos
    do
        git clone $repo
    done
done

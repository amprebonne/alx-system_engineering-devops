#!/bin/bash

# Step 1: Receive two arguments
arg1="$1"
arg2="$2"

# Step 2: Create a file using Vim named after the first argument
vim "$arg2"

# Step 3: Write "#!/bin/bash" as the first line of the file
echo "#!/bin/bash" > "$arg2"

# Step 4: Open the file in Vim for additional editing
vim "$arg2"

# Step 5: Make the file executable
chmod +x "$arg2"

# Step 6: Git add the file
git add "$arg2"

# Step 7: Git commit with the second argument as the commit message
git commit -m "$ar1"

# Step 8: Git push
git push


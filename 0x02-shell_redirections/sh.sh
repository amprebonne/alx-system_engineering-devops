#!/bin/bash

# Step 1: Receive two arguments
arg1=$1
arg2=$2

# Step 2: Create a file in the current working directory using Vim named after the first argument
file_path=$(pwd)/$arg1
vim $file_path

# Step 3: Write "#!/bin/bash" and the second argument as the first and second lines to the file
echo "#!/bin/bash" > $file_path
echo $arg2 >> $file_path

# Step 4: Make the file executable
chmod +x $file_path

# Step 5: Save and exit Vim
vim -c ":wq"

# Step 6: Git add the file
git add $file_path

# Step 7: Git commit with message
commit_message="added $arg1"
git commit -m "$commit_message"

# Step 8: Open the file in Vim
vim $file_path

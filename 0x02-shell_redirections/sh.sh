#!/bin/bash

# Receive three arguments
first_arg="$1"
second_arg="$2"
third_arg="$3"

# Create a file in the current working directory using Vim named after the first argument
vim "${first_arg}"

# Inside Vim, write "#!/bin/bash" and the second argument as the first and second lines
echo -e "#!/bin/bash\n${second_arg}" >> "${first_arg}"
# Press ESC key and enter ":wq" to save and exit Vim

# Make the file executable
chmod +x "${first_arg}"

# Git add the file
git add "${first_arg}"

# Git commit with the third argument as the commit message
git commit -m "${third_arg}"

# Git push
git push


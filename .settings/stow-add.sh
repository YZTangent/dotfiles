#!/bin/zsh

dotfiles_path=$HOME/dotfiles

# Check if both arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <source_file_or_directory> <target_directory>"
  exit 1
fi

# Assign arguments to variables for clarity
source_path=$1
target_dir=$2

# Check if the source path exists
if [ ! -e "$source_path" ]; then
  echo "Error: Source file or directory '$source_path' does not exist."
  exit 1
fi

# Check if the target directory exists, if not, create it
if [ ! -d "$dotfiles_path/$target_dir" ]; then
  echo "Target directory '$target_dir' does not exist. Creating it..."
  mkdir -p "$target_dir"
fi

# Get the base name of the file/directory (i.e., the last part of the path)
base_name=$(basename "$source_path")

# Move the source file/directory to the target directory
mv "$source_path" "$dotfiles_path/$target_dir/"

# Use stow to create a symbolic link from the target back to the original location
cd "$target_dir"
stow -v "$base_name"

# Provide feedback to the user
echo "Moved '$source_path' to '$target_dir' and created symbolic link in the original location."

# creating symbolic links and making the process verbose (meaning the process would be logged to the console)

# some function declaration here
function syslink () {
    echo "creating symbolic link for .bash_profile"
    ln -sv "$PWD/bash/.bash_profile" ~
    echo "creating symbolic link for .gitconfig"
    ln -sv "$PWD/git/.gitconfig" ~
    echo "creating symbolic link for zsh config"
    ln -sv "$PWD/zsh/.zshrc" ~
    ln -sv "$PWD/zsh/.zprofile" ~
    return
}

# please follow the instructions carefully
echo "Running this file would create a symbolic links for the following files"
echo ".bash_profile"
echo ".gitconfig"
echo ".zshrc"
echo ".zprofile"

echo "The above configuration files would be deleted and replaced with the equivalent from this repo"
echo "Do you wish to continue? Y/N"
read choice

rgx="^[Yy]$"

if [[ $choice =~ $rgx ]]; then
    echo "removing .bash_profile"
    rm ~/.bash_profile
    echo "removing .gitconfig"
    rm ~/.gitconfig
    echo "removing .zshrc"
    rm ~/.zshrc
    echo "removing .zprofile"
    rm ~/.zprofile

    # call symlink function
    syslink
    echo "syslink complete"
else
    echo "Aborting ....."
    echo "No symbolic links created"
fi


# run all commands here

echo "Welcome"
echo "This script would run all configurations in this dotfile"
echo "Remember these are my configurations and based off my system config so you may want to look at all the files here to know what you are installing"
echo "If you are good to go respond with y/Y"
echo "Good to go?"
read response

rgx="^[Yy]$"

if [[ $response =~ $rgx ]]; then
    echo "first we brew install everything"
    source $PWD/brew.sh

    echo "next we brew_cask the rest"
    source $PWD/brew_cask.sh

    echo "well there some configs that seem easier on their own"
    source $PWD/install.sh

    echo "And lastly a general clean up, update and maintenance"
    source $PWD/more.sh

    echo "After all is installed we have to link some of our config files like .bash_profile"
    source $PWD/symlinks.sh

    echo "That's all folks"
    echo "bye......"
else
    echo "Aborting ....."
    echo "Nothing's been done, everything's still spic and span"
fi
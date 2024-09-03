read -p "Are you sure you want to install node version manage (nvm)? (yes/no): " confirm

if [ "$confirm" = "yes" ] || [ "$confirm" = "" ]; then

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

if [ "$SHELL" = "/bin/zsh" ]; then
    source ~/.zshrc
elif [ "$SHELL" = "/bin/bash" ]; then
    source ~/.bashrc
else
echo "Successfully installed nvm & sourced configuration"
    else
    echo "Unsupported shell: $SHELL"
fi
else
    echo "Operation canceled."
    exit 1
fi

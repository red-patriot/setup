firefox https://code.visualstudio.com/download
read -p "Press Enter to continue" </dev/tty

code --install-extension bradlc.vscode-tailwindcss
code --install-extension charliermarsh.ruff
code --install-extension cheshirekow.cmake-format
code --install-extension emmanuelbeziat.vscode-great-icons
code --install-extension esbenp.prettier-vscode
code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension matepek.vscode-catch2-test-adapter
code --install-extension ms-python.debugpy
code --install-extension ms-python.mypy-type-checker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vscode.cmake-tools
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cpptools-themes
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-xml
code --install-extension tamasfe.even-better-toml
code --install-extension twxs.cmake
code --install-extension vitest.explorer
code --install-extension zhuangtongfa.material-theme

cat settings.json > ~/.config/Code/User/settings.json
mkdir -p ~/source
cp .clang-format ~/source

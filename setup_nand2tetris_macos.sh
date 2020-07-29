java_output=`java -version 2> /tmp/java-test && cat /tmp/java-test`
if [[ $java_output != *"JDK"* ]];
then
  echo "No java"
  if ! command -v brew &> /dev/null
  then
    echo "No brew"
    echo "Installing brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  else
    echo "\xE2\x9C\x94 Found brew"
  fi
  echo "Installing Java"
  brew cask install java
else
  echo "\xE2\x9C\x94 Found Java"
fi
FILENAME1="$HOME/csadelaide-nand2tetris.zip"
FILENAME2="$HOME/Downloads/csadelaide-nand2tetris.zip"

if [[ ! -f "$FILENAME1" ]] && [[ ! -f "$FILENAME2" ]]; then
  echo "Downloading csadelaide-nand2tetris.zip"
  cd $HOME/Downloads
  curl -o csadelaide-nand2tetris.zip https://raw.githubusercontent.com/wxw-matt/nand2tetris-macos/master/csadelaide-nand2tetris.zip
else
  echo "\xE2\x9C\x94 Found csadelaide-nand2tetris.zip"
fi
if [[ ! -d "$HOME/csadelaide-nand2tetris"  ]]; then
  echo "Uncompressing csadelaide-nand2tetris to $HOME"
  cd $HOME
  if [[ -f "$FILENAME1" ]]; then
    unzip $FILENAME1
  else
    unzip $FILENAME2
  fi
else
  echo "\xE2\x9C\x94 Found csadelaide-nand2tetris directory"
fi

echo "Making scripts executable"
cd $HOME/csadelaide-nand2tetris
chmod u+x $HOME/csadelaide-nand2tetris/tools/*.sh
chmod a-x $HOME/csadelaide-nand2tetris/tools/*.bat

if [ "$SHELL" == "/bin/zsh" ]; then
  echo "Set up zsh"
  echo 'export PATH="$HOME/csadelaide-nand2tetris/tools:$PATH"' >> $HOME/.zshrc
  echo 'Try CPUEmulator by typing CPUEmulator.sh in your termnial'
  $SHELL
else
  echo "Set up bash"
  echo 'export PATH="$HOME/csadelaide-nand2tetris/tools:$PATH"' >> $HOME/.bashrc
  echo 'Try CPUEmulator by typing CPUEmulator.sh in your termnial'
  $SHELL
fi

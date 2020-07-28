
# Welcome to Nand2Tetris macOS tutorial!

This tutorial will show you the instructions to set up the environment for Nand2Tetris and get Nand2Tetris installed properly.

# Preparation 

## Check your environment
Verify if you have java installed on your computer:
In the same terminal, type the following command:
```
java -version
```
If you can see `java version` or `openjdk version` then the java has been installed already. Otherwise, there is no java on your computer. Then you have to follow the instructions to install Java.

# Install Java 
## First, install brew
Open terminal and copy the following command:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
and paste it in the terminal.
## Install Java 
```
brew cask install java
```
Then run the `java -version` again and see if java has been installed properly.
# Download and Set up Nand2Tetris
## Download
You can download from [csadelaide-nand2tetris.zip](https://raw.githubusercontent.com/wxw-matt/nand2tetris-macos/master/csadelaide-nand2tetris.zip) or you can download from offical website: [nand2tetris](https://www.nand2tetris.org). After download the file, move it to your `Downloads` folder.
## Set up 
Type the following command: 
```
cd $HOME
unzip ~/Downloads/nand2tetris.zip
cd nand2tetris
chmod +x tools/*.sh
```
### Test Nand 2 Tetris
Run Hardware Simulator:
```
$HOME/nand2tetris/tools/HardwareSimulator.sh
```

Run Jack Compiler:
```
$HOME/nand2tetris/tools/JackCompiler.sh $HOME/nand2tetris/projects/09/Square
```
Other commands you can use:
```
$HOME/nand2tetris/tools/Assembler.sh
$HOME/nand2tetris/tools/CPUEmulator.sh
$HOME/nand2tetris/tools/TextComparer.sh
$HOME/nand2tetris/tools/VMEmulator.sh
```

### Add your path to zshrc or bashrc
Check your shell by typing:
```
ehco $SHELL
```
If you are using zsh, use the followin command to add your path to zshrc:
```
echo 'export PATH="$HOME/nand2tetris/tools:${PATH}"' >> $HOME/.zshrc
```
If you are using bash, use the followin command to add your path to bashrc:
echo 'export PATH="$HOME/nand2tetris/tools:${PATH}"' >> $HOME/.bashrc

After add your path to environment variable PATH, you can simply type `CPUEmulator.sh` in the terminal to launch CPU Emulator program.
# Done
If you have any questions, please [open an issues](https://github.com/wxw-matt/nand2tetris-macos/issues) or [email me](mailto:matt.wxw.adelaide@gmail.com).

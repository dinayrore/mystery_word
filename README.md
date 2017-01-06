# Mystery Word Game

The program entitled 'mystery_word.rb' is a basic game of hangman written in the Ruby coding language.  Users may choose a difficulty level for the game by typing 'easy,' 'normal,' or 'hard.'  The program will automatically choose a random word from a list of words already stored on your computer.  Depending on the level you choose, the word may be between 4-6 characters long for easy mode, 6-8 characters long for normal mode, and 8 or more characters long for hard mode.

## Getting Started

The instructions below will help you retrieve a copy of the project to run on your local machine through the terminal application. Please see deployment for notes on how to deploy the project on a live system.  The instructions provided are for macbook users.

### Prerequisites

You may need to install or update the following software.

Find Terminal - to run program
  1. Open Finder. Finder is available in the Dock.
  2. Select Applications from the side bar menu.  Then unfold the Utilities folder.
  3. Double click on Terminal to initialize.

Install Homebrew - to store program files properly
  1. Open up Terminal.
  2. Run `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  3. Run `brew doctor`

Install rbenv & ruby-build - to install and compile different versions of Ruby code language
  1. Open up Terminal
  2. Run `brew install ruby-build rbenv`
  3. Run `echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile`

Install ruby 2.3.1 - the latest version of Ruby
  1. Close and reopen Terminal, then run `rbenv install 2.3.1`
  2. After quite some time, run: `rbenv global 2.3.1`
  
Once you have completed the above installation processes your system is ready to launch the program!

## Deployment

Please complete the following procedure to run the program on a live system:
  1. Open Terminal.
  2. Change your directory to the one that which you would like to save this project. `$ cd folder_name`
  3. Then, run the commands `https://github.com/kteich88/mystery_word.git` and `$ cd number_guessing_game` to access the folder/files.
  4. Type `$ ruby mystery_word.rb` to run the program.
  5. READ all instructions BEFORE adding input.

## Built With

* Atom

## Authors

* **Alexandra Craig**
* **Kristine Teichmann**

## Acknowledgments

* The Iron Yard - Durham

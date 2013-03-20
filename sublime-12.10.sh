#!/bin/sh
sudo add-apt-repository ppa:webupd8team/sublime-text-2;
sudo apt-get update; 
sudo apt-get install sublime-text
sudo ln -s /usr/lib/sublime-text-2/sublime_text /usr/local/bin/sublime

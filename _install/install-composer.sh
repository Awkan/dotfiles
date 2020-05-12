#!/bin/bash

echo -e "${blue}Install composer config...${default}"

ln -s $DOTFILES/composer/composer.json $COMPOSER_HOME/composer.json

echo -e "${green}...Done${default}"

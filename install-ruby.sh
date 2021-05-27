#!/usr/bin/env bash

# based on https://rvm.io/integration/vagrant

source $HOME/.rvm/scripts/rvm || source /etc/profile.d/rvm.sh

rvm use --default --install $1

# this should show the error I meet, when JDK 8 is in use
grep "module-path" -r ~/.rvm/log

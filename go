#!/bin/bash

set -e -u

REQUIRED_RUBY=2.1.2

(rbenv versions | grep $REQUIRED_RUBY) || rbenv install $REQUIRED_RUBY
rbenv local $REQUIRED_RUBY
(rbenv exec gem list | grep bundler) || rbenv exec gem install bundler
bundle --path=vendor/bundle
bundle exec rake $1
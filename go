#!/bin/bash

set -e -u

REQUIRED_RUBY=2.1.2

(rbenv versions | grep $REQUIRED_RUBY) || rbenv install $REQUIRED_RUBY
rbenv local $REQUIRED_RUBY
bundle install --quiet --path vendor/isolated_gems

bundle exec rake $1
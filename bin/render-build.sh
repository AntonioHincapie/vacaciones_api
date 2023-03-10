#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rake db:migrate RAILS_ENV=test
bundle exec rake rswag
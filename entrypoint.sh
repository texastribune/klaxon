#!/bin/sh

# Precompile files
bundle exec rake assets:precompile

# Run the server
bundle exec puma -C config/puma.rb

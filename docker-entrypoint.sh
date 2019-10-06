#!/bin/bash

set -eu

#Install gem by Bundler if required
bundle check || bundle install

exec "$@"

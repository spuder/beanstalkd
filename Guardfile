# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
# A guard file based on this implementation
# https://github.com/arioch/puppet-percona/blob/master/Guardfile
# By running the command 'guard' in the terminal, the following taks are executed
# every time a file is saved

# - puppet parser validate
# - puppet lint
# - .erb syntax check
# - .rb syntax check
require 'colorize'

# Note, this has some errors on OSX
# Here is a very complete guard file I wrote. https://raw.githubusercontent.com/spuder/puppet-gitlab/v2.3.6/Guardfile
guard 'rspec' do
  watch(%r{^manifests/(.+).pp$}) do |m|
    "spec/${m[1]}_spec.rb"
  end
end

# vim: set syntax=ruby

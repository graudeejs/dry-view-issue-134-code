require 'rubygems'
require 'bundler/setup' # Set up gems listed in the Gemfile
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

require 'zeitwerk'
Loader = Zeitwerk::Loader.new
Loader.push_dir(File.expand_path('lib', __dir__))

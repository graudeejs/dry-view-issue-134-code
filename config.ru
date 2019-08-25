require_relative 'boot'

Loader.enable_reloading
Loader.setup

require 'listen'
Listen.to(File.expand_path('lib', __dir__)) do |added, modified, removed|
  print "Reloading!\n"
  Loader.reload
end.start

run lambda { |env|
  App::Web::Routes.call env
}

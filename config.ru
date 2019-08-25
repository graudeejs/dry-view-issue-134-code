require_relative 'boot'

Loader.enable_reloading
Loader.setup

require 'listen'
Listen.to(File.expand_path('lib', __dir__)) do |modified, added, removed|
  print({modified: modified, added: added, removed: removed}.inspect, "\n")
  print "Reloading!\n"
  Loader.reload
end.start

run lambda { |env|
  App::Web::Routes.call env
}

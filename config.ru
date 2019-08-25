require_relative 'boot'
require 'auto_reloader'

Loader.enable_reloading
Loader.setup

AutoReloader.activate reloadable_paths: [__dir__], delay: 1

## Also tried to add this, but to no avail
# Listen.to(File.expand_path('lib/app/web/templates/', __dir__)) do |added, modified, removed|
#   AutoReloader.force_next_reload
# end.start

run lambda { |env|
  AutoReloader.reload! do |_unloaded|
    Loader.reload
    App::Web::Routes.call env
  end
}

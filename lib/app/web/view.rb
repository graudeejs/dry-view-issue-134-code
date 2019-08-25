# Generic view. All views should extend this view
class App::Web::View < ::Dry::View
  config.paths = [File.join(__dir__, 'templates')]
  config.layout = 'application'
end

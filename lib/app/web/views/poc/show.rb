class App::Web::Views::Poc::Show < ::App::Web::View
  config.template = 'poc/show'

  expose :code_reload_test

  def code_reload_test
    'This however will be reloaded'
  end
end

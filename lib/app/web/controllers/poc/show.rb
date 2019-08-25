class App::Web::Controllers::Poc::Show
  include ::Hanami::Action

  def call(params)
    # params is actually wrapped in env
    self.body = App::Web::Views::Poc::Show.new.call(params).to_s
  end

end

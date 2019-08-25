module App::Web
  Routes = Hanami::Router.new(namespace: App::Web::Controllers) do
    get '/', to: 'poc#show'
  end
end

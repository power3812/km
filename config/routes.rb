Rails.application.routes.draw do
  namespace 'api', {format:'json'} do
    resources 'subscribe'
  end
  get 'pages/index'
end

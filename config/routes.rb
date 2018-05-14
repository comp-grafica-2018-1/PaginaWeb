Rails.application.routes.draw do
  resources :ordenmesexps
  resources :ordenmescams
  resources :ordenesccams
  resources :ordenclomuls
  get 'transacciones/cotizaciones'

  get 'transacciones/consultas'

  get 'transacciones/index'

  get 'transacciones/miscotizaciones'

  get 'transacciones/mispedidos'

  get 'inicio/index'

  resources :cotizmesexps
  resources :cotizmescams
  resources :cotizesccams
  resources :cotizclomuls

  root :to => 'inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'catalogo/index'
  get 'catalogo/muebleclomul'
  get 'catalogo/muebleesccam'
  get 'catalogo/mueblemescam'
  get 'catalogo/mueblemesexp'

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

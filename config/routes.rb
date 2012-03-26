Rails.application.routes.draw do
  match 'admin/shippingdocs', :to => 'admin/shipping_docs#index'
end

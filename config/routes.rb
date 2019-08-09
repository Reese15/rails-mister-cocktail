Rails.application.routes.draw do
  resources :cocktails , only: [ :index, :show , :new, :create] do
    resources :doses, only: [ :new, :create, :destroy ]
  end
end

#no ingredients coz they are seen inside cocktails and doses!

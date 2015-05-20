Upmin::Engine.routes.draw do
  root to: "models#dashboard"

  # TODO(jon): Add support for dashboards (or some other main page).
  # TODO(jon): Move dashboards to an appropriate controller
  get "/", as: :upmin_dashboard, controller: :models, action: :dashboard

  scope "m" do
    scope "/:klass" do
      match "/", as: :upmin_search, controller: :models, action: :search, via: [:get, :post]

      get "/new", as: :upmin_new_model, controller: :models, action: :new
      post "/new", as: :upmin_create_model, controller: :models, action: :create

      scope "/i/:id" do
        get "/", as: :upmin_model, controller: :models, action: :show
        put "/", controller: :models, action: :update

        post "/:method", as: :upmin_action, controller: :models, action: :action
      end
    end
  end
end

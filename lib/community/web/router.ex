defmodule Community.Web.Router do
  use Community.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: Community.Web.Schema,
      interface: :simple,
      context: %{pubsub: Community.Web.Endpoint}
  end

end

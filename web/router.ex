defmodule Todo.Router do
  use Phoenix.Router

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", Todo.PageController, :index, as: :pages

    get "/todos", Todo.TodoController, :show
    post "/todos", Todo.TodoController, :create
    post "/todos/:id", Todo.TodoController, :update
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end

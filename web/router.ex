defmodule Todo.Router do
  use Phoenix.Router

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", Todo.PageController, :index, as: :pages

    get "/boards", Todo.TodoController, :boards

    get "/todos", Todo.TodoController, :show
    post "/todos", Todo.TodoController, :create
    post "/todos/:id", Todo.TodoController, :update
    delete "/todos/:id", Todo.TodoController, :destroy
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end

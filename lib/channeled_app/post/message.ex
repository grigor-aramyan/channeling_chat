defmodule ChanneledApp.Post.Message do
  use Ecto.Schema
  import Ecto.Changeset
  alias ChanneledApp.Post.Message


  schema "messages" do
    field :body, :string
    field :topic_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Message{} = message, attrs) do
    message
    |> cast(attrs, [:body])
    |> validate_required([:body])
  end
end

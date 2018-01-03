defmodule ChanneledApp.Content.Topic do
  use Ecto.Schema
  import Ecto.Changeset
  alias ChanneledApp.Content.Topic


  schema "topics" do
    field :msg_count, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Topic{} = topic, attrs) do
    topic
    |> cast(attrs, [:title, :msg_count])
    |> validate_required([:title, :msg_count])
  end
end

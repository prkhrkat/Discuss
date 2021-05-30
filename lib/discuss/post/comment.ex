defmodule Discuss.Post.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias Discuss.Account.User
  alias Discuss.Post.Topic
  schema "comments" do
    field :text, :string
    belongs_to :topic, Topic
    belongs_to :user, User
    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end

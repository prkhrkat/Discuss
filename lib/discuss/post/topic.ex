defmodule Discuss.Post.Topic do
  use Ecto.Schema
  import Ecto.Changeset
  alias Discuss.Account.User
  # alias Discuss.Post.Comment
  schema "topics" do
    field :title, :string
    field :content, :string
    # has_many :comments, Comment
    belongs_to :user, User
    timestamps()
  end

  @doc false
  def changeset(topic, attrs) do
    topic
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end

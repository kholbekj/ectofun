defmodule Ectofun.PostTest do
  use Ectofun.ModelCase

  alias Ectofun.Post

  @valid_attrs %{content: "some content", published: true, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end

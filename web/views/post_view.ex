defmodule Ectofun.PostView do
  use Ectofun.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, Ectofun.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, Ectofun.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      content: post.content,
      published: post.published}
  end
end

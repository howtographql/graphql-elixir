defmodule Community.Web.NewsResolver do
  alias Community.News

  def all_links(_root, _args, _info) do
    links = News.list_links()
    {:ok, links}
  end

  def create_link(_root, args, _info) do
    case News.create_link(args) do
      {:ok, link} -> {:ok, link}
      # we'll add detailed error message handling later
      _error -> {:error, "failed"}
    end
  end
end

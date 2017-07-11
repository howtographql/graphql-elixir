defmodule Community.Web.NewsResolver do
  alias Community.News

  def all_links(_root, _args, _info) do
    links = News.list_links()
    {:ok, links}
  end
end

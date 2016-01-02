module ApplicationHelper
  # <%= later_on "pages/movies", "key", { movies: @movies } do %>
  def later_on(partial, key, locals, &block)
    tag = content_tag :div, class: "later-on", data: { key: key }, &block

    # LaterOnJob.perform_later "pages/movies", Marshal.dump({ movies: Movie.limit(10) }), "ke"

    if Rails.cache.read("loading.#{key}")
      return tag
    end

    if result = Rails.cache.read(key)
      return result
    end

    res = LaterOnJob.perform_later(
      partial,
      Marshal.dump(locals),
      key
    )
    
    return tag
  end
end

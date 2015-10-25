get '/genres' do
  

  # @genres = run_sql(sql)
  @genres = Genre.all
  erb :'genres/index'
end

  get '/genres/new' do
    @genre = Genre.new()
  erb :'genres/new'
  end

  get '/genres/:id/edit' do
    @genre = Genre.find(params[:id])
    erb :'genres/edit'
  end

  post '/genres/:id' do
    @genre = Genre.find(params[:id])
    @genre.update_attributes(params[:genre])
    redirect to("/genres")
  end

  post '/genres' do
    @genre = Genre.new(params[:genre])
    @genre.save
    redirect to('/genres')
  end

  post '/genres/:id/delete' do
    remove_orphans(params[:id])
    Genre.find(params[:id]).destroy
    redirect to('/genres')
  end

  def remove_orphans(id)
    orphan_bookmarks = Bookmark.find_by_genre(id)
    orphan_bookmarks.each { |orphan|  orphan.genre_id = "1" 
    @bookmark = Bookmark.find(orphan.id)
    @bookmark.update_attributes("genre_id"=>"1")
   }
    
  end
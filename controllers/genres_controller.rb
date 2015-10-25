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
    # get bookmarks with genre
     @updated = []
     orphan_bookmarks = Bookmark.find_by_genre(id)
    # #change genre to blank
    #  #<Bookmark:0x007fe110093e88 @details="BBC News front page", @genre=nil, @genre_id="4", @id="2", @title="BBC News", @url="http://www.bbc.co.uk/news">
    # {"title"=>"BBC News", "url"=>"http://www.bbc.co.uk/news", "genre_id"=>"3"}
     orphan_bookmarks.each { |orphan|  orphan.genre_id = "1" 
      @bookmark = Bookmark.find(orphan.id)
      @bookmark.update_attributes("genre_id"=>"1")
    # #save changes to bookmarks database
    # @bookmark = Bookmark.find(orphan.id)
    # @updated << @bookmark
  #   # @bookmark.update_attributes(params[:bookmarks])
   }
    
  end
get '/bookmarks' do
  

  # @bookmarks = run_sql(sql)
  @bookmarks = Bookmark.all
  erb :'bookmarks/index'
end

  get '/bookmarks/new' do
    @bookmark = Bookmark.new()
  erb :'bookmarks/new'
  end

  get '/bookmarks/:id/edit' do
    @bookmark = Bookmark.find(params[:id])
    erb :'bookmarks/edit'
  end

  post '/bookmarks/:id' do

    @bookmark = Bookmark.find(params[:id])
    @bookmark.update_attributes(params[:bookmarks])
    redirect to("/bookmarks")
  end

  post '/bookmarks' do
    @bookmark = Bookmark.new(params[:bookmarks])
    @bookmark.save
    redirect to('/bookmarks')
  end

  post '/bookmarks/:id/delete' do
    Bookmark.find(params[:id]).destroy
    redirect to('/bookmarks')
  end
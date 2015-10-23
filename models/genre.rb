class Genre < DBBase
  # attr_accessor :name
  attributes genre: :string

  def genre_name
    #get name from id genre.find genreid if exists
    #Genre.find(d).genre

  end
end
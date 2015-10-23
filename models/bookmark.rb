class Bookmark < DBBase
  # attr_accessor :name
  attributes title: :string, url: :string, details: :string, genre_id: :integer

end
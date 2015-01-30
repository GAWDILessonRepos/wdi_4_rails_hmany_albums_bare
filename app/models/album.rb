class Album < ActiveRecord::Base
  has_many :songs
  #  defining a class constant named GENRES
  # Album::GENRES to access outside of the class
  GENRES = %w{rock rap country jazz ska dance}

  validates :title, presence: true
  validates :genre, inclusion: {in: GENRES, message: "is Invalid"}

end

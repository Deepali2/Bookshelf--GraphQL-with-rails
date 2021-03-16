class Author < ApplicationRecord
  # def full_name
  #   ([first_name, last_name].compact).join " "
  # end
  def coordinates
    [rand(0..90), rand(0..90)]
  end

  def publication_years
    (1..rand(1..10)).to_a.map {1900 - rand(1..100)}
  end
  
  validates :last_name, presence: true
end

class Author < ApplicationRecord
  # def full_name
  #   ([first_name, last_name].compact).join " "
  # end
  def coordinates
    [rand(0..90), rand(0..90)]
  end

end

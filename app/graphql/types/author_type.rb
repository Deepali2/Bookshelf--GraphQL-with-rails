class Types::AuthorType < Types::BaseObject
  description "An author"

  field :id, ID, null: false
  field :first_name, String, null: true, camelize: false
  field :last_name, String, null: true
  field :yob, Int, null: false
  field :is_alive, Boolean, null: true
  field :full_name, String, null: true

  def full_name
   ([object.first_name, object.last_name].compact).join " "
  end

  field :coordinates, Types::CoordinatesType, null: false
  field :publication_years, [Int], null: false
end
class Types::AuthorInputType < GraphQL::Schema::InputObject
  graphql_name "AuthorInputType"
  description "All the attributes for creating an author"

  argument :id, ID, required: false
  argument :first_name, String, required: true, camelize: false
  argument :last_name, String, required: false
  argument :yob, Int, required: true
  argument :is_alive, Boolean, required: true
end

class Types::AuthorType < Types::BaseObject
  description "An author"

  field :id, ID, null: false
  field :first_name, String, null: false, camelize: false
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
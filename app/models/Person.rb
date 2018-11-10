class Person
  include Mongoid::Document
  include Mongoid::Timestamps

  field :first_name, type: String
  validates_presence_of :first_name, allow_nil: false
  validates_uniqueness_of :first_name


  field :last_name, type: String
  field :age, type: Integer
  field :info, localize: true
  field :metadata, type: Hash
  field :status, type: String, default: 'active'

  index({ first_name: 1 }, { unique: true })

end
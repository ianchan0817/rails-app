class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :customer_name, type: String
  validates_presence_of :customer_name, allow_nil: false

  field :product, type: String
  field :total, type: Integer

  index({ first_name: 1 }, { unique: true })

end
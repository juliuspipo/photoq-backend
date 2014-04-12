class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :username, type: String
  field :password, type: String
  field :name, type: String
  field :email, type: String
  field :age, type: Integer
  field :active, type: Mongoid::Boolean

  #Relationships [To Do]

  #Validators
  validates :username, presence: true, uniqueness: true
  validates :password, presenece: true, confirmation: true, minimum: 8, maximum: 16
  validates_presence_of :name
  validates :email, presence: true, uniqueness: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates_presence_of :active

  #Indexes [TBD]

end

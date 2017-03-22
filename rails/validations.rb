#this validations are to b e done in model
by_passing the validations => record.save(validate: false)
#Acceptance=
  validates :terms, :acceptance => {:accept => true, message: "You have to accept the conditions before proceed"}
  validates_acceptance_of :terms_and_conditions, message: "You have to agree before u create"

#Confirmation=
  validates :password, confirmation: true
  validates :password, confirmation: {confirm: true, message: "You should confirm the password correctly"}
  #view_field => password_confirmation

Exclusion=
  validates :name, :exclusion => {:in => %w(splendor honda hero)}
  validates :name, :exclusion => {:in => %w(splendor honda hero)}

Inclusion=
  validates :name, :inclusion => {:in => %w(yamaha kawa), message: "Name %{value} not acceptable"}

Format=
  validates :name, :format => {:with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed"}, allow_blank: true

Length=
  validates :name, length: {minimum: 2, message: "Name should be more than 2 characters"}
  validates :name, length: {maximum: 5, message: "Name should not be more than %{count} characters"}
  validates :name, length: {in: (1..4), message: "Name should be more than 4 and less than 1 characters"}
  validates :name, length: {is: 4, message: "Name should of exactly 4 characters"}
  %{value} => actual attribute value
  %{count} => set value in the model during validations
  :in = :within
  #in range (first .. second) .. both are inclusive
  #in range (first ... second) .. last is exclusive

Numericality=
  validates :price, numericality: true
  validates :price, numericality: {only_integer: true, message: "Only Integer are allowed"}
  options => greater_than, less_than, greater_tahn_or_equal_to, less_than_or_equal_to, equal_to, :odd, :even
Uniqueness=
  validates :name, uniqueness: {message: "%{value} Already existing as Name of Car"}





CUSTOM_VALIDATIONS=
  validates :check_availability

  def check_availability
    if self.name == "bharat"
      errors.add(:name, "Its my country name no one can use it as their car name")
      #record.errors[:base] << "Not valid record"
    end
  end

CONDITIONAL_VALIDATIONS=

  IF && UNLESS

  validates :card_number, :presence => true, :if => :paid_with_card?
  def paid_with_card?
    self.payment_type == "card"
  end


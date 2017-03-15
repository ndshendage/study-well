# working with accept_nested attributes:-

#conidder the case:-
I have an admin and the vendor ...
every vendor has 1 admin and admin belongs to vendor
so
admin_model:
  belongs_to :vendor, autosave: true
  accepts_nested_attributes_for :vendor
  validates :vendor, associated: true
vendor_model:
  has_one :admin
  
# now i want to save the vendor while i am registering the admin so it can be doe as +>



admin#new =>
 @admin = Admin.new
 @admin.vendor = Vendor.new
 

_form =>

#haml_template

= f.fields_for :vendor do |vendor|
    .field
      = vendor.label :address1
      = vendor.text_field :address1, required: true
     


# now in controller if everything is set up properly then =>

permit_params_method
vendor_attributes [pass whtever you need to pass ]
# and its execution ..... all the params which are present in ...vendor_attributes will be available to fill the data created at that instance .....
and for_admin ... rest is used there for creating the admin +.


data exchanging in the admin and vendor attributes as follows .
case want to write the admin contact into vendor contact =>


    temp_params = admin_params
    temp_params[:vendor_attributes][:phone] = temp_params[:mobile]
    @admin = Admin.new(temp_params)
    
    you can pass all the params intop each other as above and then use the newly created params to create the object of admin ... Thanks









      
     
please change in models to accept the attributes of the vendor as => #accept_nested_attributes_for :vendor     

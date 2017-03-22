a = Animal.new
a.new_record? =>boolean true/false
a.valid? => it checks the validation from the model and return the boolean result


#Errors
a.errors => consiting the entire object and the @mesages which will containning the error messages
a.errors.messages
 => {:name=>["can't be blank"], :location=>["can't be blank"], :age=>["can't be blank"]}
a.errors.full_messages
 => ["Name can't be blank", "Location can't be blank", "Age can't be blank"]

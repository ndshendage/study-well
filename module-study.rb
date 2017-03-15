

class Person
  def initialize(name, gender)
    p "from in itial of person"
    @name = name
    @gender = gender
  end
end

class Student < Person
  def initialize(name, gender, standard)
    super(name)
    p "from initial of student"
    @standard = standard
  end
end

class Teacher < Person
  def initialize(name, gender, designation)
    super(name, gender)
    p "from initial of teacher"
    @designation = designation
  end
end






st = Student.new("Nava", "Male", 18)
p st.inspect

tr = Teacher.new("Bharat", "Male", "HeadMaster")
p tr.inspect

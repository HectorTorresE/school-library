require './person'

class Student < person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
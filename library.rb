require './person'
require './student'
require './teacher'
require './book'
require './classroom'

class Library
  def initialize
    @people = []
    @books = []
    @rentals = []
    @classroom = Classroom.new('101')
  end

  attr_reader :rentals, :people, :books

  def add_rental(date, index_book, index_person)
    @rentals.push(Rental.new(date, @books[index_book], @people[index_person]))
  end

  def add_book(title, author)
    @books.push(Book.new(title, author))
  end

  def create_student(age, name, permission)
    @people.push(Student.new(age, @classroom, name, parent_permission: permission))
  end

  def create_teacher(age, specialization, name)
    @people.push(Teacher.new(age, specialization, name))
  end
end

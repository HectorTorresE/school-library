require './teacher'
require './capitalize_decorator'
require './trimmer_decorator'

RSpec.describe 'Decorators' do
  it 'Using CapitalizeDecorator to decorate a Teacher' do
    capitalize_decorator = CapitalizeDecorator.new(Teacher.new(23, 'Math', 'hector'))
    expect(capitalize_decorator.correct_name).to be == 'Behnam'
  end

  it 'Using TrimmerDecorator to decorate a Teacher' do
    trimmer_decorator = TrimmerDecorator.new(Teacher.new(23, 'Math', 'Hector'))
    expect(trimmer_decorator.correct_name).to be == 'BehnamAndr'
  end
end

require './classes/classroom'
require './classes/student'

describe Classroom do
  context 'test classroom class' do
    classroom = Classroom.new('Advance')
    student = Student.new(nil, 25, nil, 'Victor')
    classroom.add_students(student)
    it 'classroom author should return Advance' do
      expect(classroom.label).to eq 'Advance'
    end
    it 'should have at least one student' do
      expect(classroom.students.length).to eq(1)
    end

    it 'should have a student' do
      student_obj = classroom.students.first
      expect(student_obj.name).to eq(student.name)
    end
  end
end

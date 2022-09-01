require './classes/student'

describe Student do
  context 'test Student class' do
    student = Student.new(nil, 25, nil, 'Mechael Obama')
    it 'Student age should return 25' do
      expect(student.age).to eq 25
    end
    it 'Student name should return Mechael Obama' do
      expect(student.name).to eq 'Mechael Obama'
    end
    it 'Person parent_permission should return true' do
      expect(student.parent_permission).to be true
    end
    it 'Person classroom should return nil' do
      expect(student.classroom).to be nil
    end
    it 'Person play_hooky should return nil' do
      expect(student.play_hooky).to eq "¯\(ツ)/¯"
    end
  end
end

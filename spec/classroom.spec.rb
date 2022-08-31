require './classes/classroom'

describe Classroom do
  context 'test classroom class' do
    classroom = Classroom.new('Advance')
    it 'classroom author should return Advance' do
      expect(classroom.label).to eq 'Advance'
    end
  end
end

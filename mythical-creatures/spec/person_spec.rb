require 'rspec'
require './lib/person'

describe Person do

  describe '#initialize' do
    it 'Creates an instance of Person class' do
    person = Person.new('Jacob')

    expect(person).to be_an_instance_of(Person)
    end

    it 'has readable attributes' do
      person = Person.new('Jacob')

      expect(person.name).to eq('Jacob')
    end  
  end


end

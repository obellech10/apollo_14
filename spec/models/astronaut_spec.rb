require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  it 'I see average age of all astronauts' do
    astro_1 = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
    astro_2 = Astronaut.create!(name: "Buzz Aldrin", age: 35, job: "Lunar Pilot")
    astro_3 = Astronaut.create!(name: "Alan Shepard", age: 33, job: "Module Pilot")

    visit '/astronauts'

    expect(page).to have_content("Average Age: 35")
  end
end

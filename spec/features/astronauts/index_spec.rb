require 'rails_helper'

RSpec.describe "Astronauts Index" do
  describe "As a Visitor" do
    it 'I see a list of astronauts with the following
        - Name
        - Age
        - Job' do
      astro_1 = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
      astro_2 = Astronaut.create!(name: "Buzz Aldrin", age: 35, job: "Lunar Pilot")
      astro_3 = Astronaut.create!(name: "Alan Shepard", age: 33, job: "Module Pilot")


      visit '/astronauts'

      within("#astronaut-#{astro_1.id}") do
        expect(page).to have_content("Name: #{astro_1.name}")
        expect(page).to have_content("Age: #{astro_1.age}")
        expect(page).to have_content("Job: #{astro_1.job}")
      end

      within("#astronaut-#{astro_2.id}") do
        expect(page).to have_content("Name: #{astro_2.name}")
        expect(page).to have_content("Age: #{astro_2.age}")
        expect(page).to have_content("Job: #{astro_2.job}")
      end

      within("#astronaut-#{astro_3.id}") do
        expect(page).to have_content("Name: #{astro_3.name}")
        expect(page).to have_content("Age: #{astro_3.age}")
        expect(page).to have_content("Job: #{astro_3.job}")
      end
    end

    # it 'I see average age of all astronauts' do
    #   astro_1 = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
    #   astro_2 = Astronaut.create!(name: "Buzz Aldrin", age: 35, job: "Lunar Pilot")
    #   astro_3 = Astronaut.create!(name: "Alan Shepard", age: 33, job: "Module Pilot")
    #
    #   visit '/astronauts'
    #
    #   expect(page).to have_content("Average Age: 35")
    # end

  end
end

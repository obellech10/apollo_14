class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job
  has_many :astronaut_missions
  has_many :missions

  def self.average_age
    @astros = Astronaut.all
    age = []
    @astros.map do |astro|
      age << astro.age
    end
    age.sum / @astros.count
  end

end

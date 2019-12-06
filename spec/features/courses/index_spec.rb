require 'rails_helper'

RSpec.describe "As a visitor" do
  xit "Can see course information" do

    joe = Student.create({ name: "Casseopia Black", age: 14, house: "Slytherin"})
    sue = Student.create({ name: "Casseopia Black", age: 14, house: "Slytherin"})

    visit '/courses'
  end
end

require 'rails_helper'

RSpec.describe "As a visitor" do
  it "Can see student information" do

    joe = Student.create({ name: "Casseopia Black", age: 14, house: "Slytherin"})
    visit '/students'

    expect(page).to have_content("List of Students")
    expect(page).to have_content(joe.name)
    expect(page).to have_content(joe.age)
    expect(page).to have_content(joe.house)
  end
end

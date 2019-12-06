require 'rails_helper'

RSpec.describe "As a visitor to a single student page" do
  it "Show students courses" do
    joe = Student.create({ name: "Casseopia Black", age: 14, house: "Slytherin"})
    course_1 = joe.courses.create({name: "Dark Arts"})
    course_2 = joe.courses.create({name: "Flying"})
    course_3 = Course.create({name: "Herbology"})

    visit "/students/#{joe.id}"

    expect(page).to have_content(joe.name)
    expect(page).to have_content("Dark Arts")
    expect(page).to have_content("Flying")
    expect(page).to_not have_content("Herbology")
  end
end

require 'rails_helper'

describe "add lesson" do

  it "adds a new lesson" do
    visit lessons_path
    click_on 'Create Lesson'
    fill_in 'name', :with => 'Homework'
    click_on 'Create'
    expect(page).to have_content 'Lessons'
  end

  it "shows error if no name is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end

end

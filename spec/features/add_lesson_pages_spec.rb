require 'rails_helper'

describe "add lesson" do

  it "adds a new lesson" do
    visit lessons_path
    click_on 'Add'
    fill_in 'Name', :with => 'JavaScript Basics'
    click_on 'Create'
    expect(page).to have_content 'Lessons'
  end

  it "shows error if no name is entered" do
    visit new_lesson_path
    click_on 'Create'
    expect(page).to have_content 'errors'
  end

end

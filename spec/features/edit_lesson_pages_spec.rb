require 'rails_helper'

describe "edit lesson" do

it "edits a lesson" do
  lesson = Lesson.create(:name => 'JavaScript Basics')
  lesson = Lesson.create(:content => 'Syntax')
  visit lesson_path(lesson)
  click_on 'Edit'
  fill_in 'Name', :with => 'Ruby on Rails'
  fill_in 'Content', :with => 'Forms'
  click_on 'Update Lesson'
  expect(page).to have_content 'successfully'
end


end

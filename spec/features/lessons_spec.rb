require 'rails_helper'

feature 'Lessons' do
  let!(:lesson_1) { FactoryGirl.create(:lesson, name: 'Lesson 1') }
  let!(:lesson_2) { FactoryGirl.create(:lesson, name: 'Lesson 2') }

  scenario 'viewing all lessons' do
    visit '/lessons'

    expect(page).to have_text('Lesson 1')
    expect(page).to have_text('Lesson 2')
  end

  scenario 'viewing a lesson' do
    visit "/lessons/#{lesson_1.id}"

    expect(page).to have_text('Lesson 1')
  end
end

require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'author', with: 'jk rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'date-published', with: '2018-10-15T16:06:39+02:00'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2018-10-15T16:06:39+02:00')
  end
end

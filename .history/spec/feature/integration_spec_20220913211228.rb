require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'author', with: 'jk rowling'
    fill_in 'price', with: '200'
    click_on 'Create Book'  
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('jk rowling')
    expect(page).to have_content('200')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'author', with: 'jk rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'published_date', with: '2018-10-15T16:06:39+02:00'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2018-10-15T16:06:39+02:00')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'price', with: '20'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('20')
  end

end


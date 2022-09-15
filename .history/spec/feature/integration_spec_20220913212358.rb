require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: '200'
    select '1930',from: 'published_date'
    select '12',from: 'published_date[month]'
    select '12',from: 'published_date[day]'
    click_on 'Create Book'  
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('jk rowling')
    expect(page).to have_content('200')
    expect(page).to have_content('1930')
    expect(page).to have_content('12')
    expect(page).to have_content('12')
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


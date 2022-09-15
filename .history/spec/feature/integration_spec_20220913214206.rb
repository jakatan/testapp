require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: '200'
    select '1930', from: 'book[published_date(1i)]'
    select 'November', from: 'book[published_date(2i)]'
    select '12', from: 'book[published_date(3i)]'
    click_on 'Create Book'  
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('jk rowling')
    expect(page).to have_content('200')
    expect(page).to have_content('1930')
    expect(page).to have_content('November')
    expect(page).to have_content('12')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Dictionary'
    fill_in 'Author', with: 'Meriam Webster'
    fill_in 'Price', with: '112.10'
    select '1997', from: 'book[published_date(1i)]'
    select 'February', from: 'book[published_date(2i)]'
    select '10', from: 'book[published_date(3i)]'
    click_on 'Create Book'  
    visit books_path
    expect(page).to have_content('Dictionary')
    expect(page).to have_content('Meriam Webster')
    expect(page).to have_content('112.10')
    expect(page).to have_content('1997')
    expect(page).to have_content('February')
    expect(page).to have_content('10')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: '200'
    select '1930', from: 'book[published_date(1i)]'
    select 'November', from: 'book[published_date(2i)]'
    select '12', from: 'book[published_date(3i)]'
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
    fill_in 'Title', with: 'Hunger Games'
    fill_in 'Author', with: 'Suzzane Collins'
    fill_in 'Price', with: '100.02'
    select '2001', from: 'book[published_date(1i)]'
    select 'December', from: 'book[published_date(2i)]'
    select '10', from: 'book[published_date(3i)]'
    click_on 'Create Book'  
    visit books_path
    expect(page).to have_content('Hunger Games', 'Suzzane Collins', '2001', 'December', '12')
    expect(page).to have_content('Suzzane Collins')
    expect(page).to have_content('2001')
    expect(page).to have_content('December')
    expect(page).to have_content('12')
    expect(page).to have_content('12')
  end

end


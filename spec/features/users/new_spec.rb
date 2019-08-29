require 'rails_helper'

RSpec.describe "Registering a User" do
  it "can register and see a welcome message" do
    visit '/'

    click_link("Sign Up to Be a User")

    expect(current_path).to eq("/users/new")

    username = "username"

    fill_in :username, with: username
    fill_in :password, with: "password"

    click_button("Submit")

    expect(current_path).to eq("/")
    expect(page).to have_content("Welcome, #{username}!")
    # expect(page).to have_content(new_user.username)
  end

  it "after they register, they are logged in and can see their profile" do
    visit '/'

    click_link("Sign Up to Be a User")

    expect(current_path).to eq("/users/new")

    username = "username"

    fill_in :username, with: username
    fill_in :password, with: "password"

    click_button("Submit")

    visit "/profile"

    expect(page).to have_content(username)
  end
end

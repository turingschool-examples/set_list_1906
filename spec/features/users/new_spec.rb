require 'rails_helper'

RSpec.describe "Registering a User" do
  it "can register and see a welcome message" do
    visit '/'

    click_link("Sign Up to Be a User")

    expect(current_path).to eq("/users/new")

    username = "username"

    fill_in :username, with: username
    fill_in :password, with: "password"

    click_link("Submit")

    new_user = User.last

    expect(current_path).to eq("/")
    expect(page).to have_content("Welcome, #{username}!")
    # expect(page).to have_content(new_user.username)
  end
end

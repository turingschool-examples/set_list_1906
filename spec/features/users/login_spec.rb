require 'rails_helper'

RSpec.describe "User Login" do
  it "can log in a user" do
    user = User.create(username: "Brian", password: "password")

    visit "/login"

    fill_in :username, with: user.username
    fill_in :password, with: user.password

    click_button "Submit"

    expect(page).to have_content("Welcome, #{user.username}!")

    visit "/profile"

    expect(page).to have_content(user.username)
  end
end

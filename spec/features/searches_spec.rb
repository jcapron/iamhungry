require 'spec_helper'

describe "Searches" do
  describe "GET homepage" do
    it "works!" do
      visit root_path
      page.should have_content("What are you craving?")
    end
  end

  describe "Search success" do
    it "works!" do
      visit root_path
      click_on "I am hungry"
      page.should have_content("Here are the results for")
    end
  end

  describe "Search Fail" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "thisisnotagoodsearch"
      click_on "I am hungry"
      page.should have_content("No results :(")
    end
  end

  describe "Search Shrimps and cream" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Shrimps and cream"
      click_on "I am hungry"
      page.should have_content("Here are the results for")
    end
  end

  describe "Search Beef" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Beef"
      click_on "I am hungry"
      page.should have_content("Here are the results for")
    end
  end

  describe "Search Pork" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Pork"
      click_on "I am hungry"
      page.should have_content("Here are the results for")
    end
  end

  describe "Search noodle, chicken and basil" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "noodle, chicken and basil"
      click_on "I am hungry"
      page.should have_content("Here are the results for")
    end
  end

  describe "Search Nutella, cream" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Nutella, cream"
      click_on "I am hungry"
      page.should have_content("Here are the results for")
    end
  end

  describe "Search anotherfailsearch" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "anotherfailsearch"
      click_on "I am hungry"
      page.should have_content("No results :(")
    end
  end

  describe "Search Idontknowwhattoeat" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Idontknowwhattoeat"
      click_on "I am hungry"
      page.should have_content("No results :(")
    end
  end

end

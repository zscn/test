require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://rubypageobjects.kevinswallow.com/rpo.html"

describe "the page" do

  it "has the title, 'Ruby Page Objects'" do
    driver.title.should eq("Ruby Page Objects")
  end

  it "has the right by line" do
    driver.find_elements(:tag_name => "h1")[1].text.should eq("Kevin Swallow")
  end

  it "has the right page header" do
    driver.find_elements(:tag_name => "h1")[0].text.should eq("Ruby Page Objects\nA Simple Guide")
  end

end

#This bit is important!
driver.close
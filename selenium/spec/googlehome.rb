#!/usr/bin/env ruby -wKU
require_relative "../lib/googlehomepage.rb"
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

describe GoogleHomepage do
  page = GoogleHomepage.new(driver)
  driver.navigate.to page.url

  it 'Should have right title' do
  	page.title.should eq(page.expected_title)
  end

  it 'Should be able to search a keyword' do
  	page.set_search_keyword("abc")
  	page.newsbox.should true
  end


end

driver.close


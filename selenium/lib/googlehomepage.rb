class GoogleHomepage
	# include PageObject

	# text_field(:search, { :id => "q"})

	def initialize(driver)
		@driver = driver
	end

	def url
		url = "https://www.google.com"
	end

	def expected_title
    expected_title = "Google"
  end

  # locators
  def title
  	@driver.title
  end

  def search
  	@search = @driver.find_element(:name, 'q')
  end

  def set_search_keyword(keyword)
  	search.send_keys(keyword)
  	search.submit
  end

  def newsbox
  	@newsbox = @driver.find_element(:id, 'newsbox')
  end  
end

require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Parser < ActiveRecord::Base
  attr_accessible :title, :body

  def self.get_html(keyword,type)
  	page = Nokogiri::HTML(open("http://it-tjr10.dhbw-stuttgart.de/home/?keyword=#{keyword}&q_type=#{type}"))
  	return page.css('div#answer').text
  end

  def self.dummy_get
  	page = Nokogiri::HTML(open("http://it-tjr2.dhbw-stuttgart.de:8080/hello/echo?question=Who+discovered+Oxygen%3F%0D%0A&secret=888"))
  	return page.css('div#answer').text
  end

end

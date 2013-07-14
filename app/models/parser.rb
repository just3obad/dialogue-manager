require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Parser < ActiveRecord::Base
  attr_accessible :title, :body

  def self.get_html(keyword,type)
  	begin
  		page = Nokogiri::HTML(open("http://it-tjr10.dhbw-stuttgart.de/home/?keyword=#{keyword}&q_type=#{type}"))
  		return page.css('div#answer').text
  	rescue
  		return "No answer"
  	end
  end

  def self.dummy_get
  	begin
  		page = Nokogiri::HTML(open("http://it-tjr2.dhbw-stuttgart.de:8080/hello/echo?question=Who+discovered+Oxygen%3F"))
  		return page.css('div#answer').text
  	rescue
  		return "No answer"
  	end

  end

end

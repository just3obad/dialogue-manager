class ParserController < ApplicationController

	def home
		render :template => "parser/home"
	end

	def get_html
		keyword = params[:keyword]
		type = params[:type]
		@answer = Parser.get_html(keyword,type)
		if(@answer.length == 0)
			@answer = " Unknown "
		end
		render :file=>"parser/result.xml.erb", :content_type => 'application/xml'
	end

	def dummyvxml
		@answer_dummy = Parser.dummy_get
		render :file=>"parser/dummyvxml.xml.erb", :content_type => 'application/xml'
	end
end

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
		render :file=>"parser/result.vxml.erb", :content_type => 'application/vxml'
	end

	def get_html_xml
		keyword = params[:keyword]
		type = params[:type]
		@answer = Parser.get_html(keyword,type)
		if(@answer.length == 0)
			@answer = " Unknown "
		end
		render :file=>"parser/test.xml.erb", :content_type => 'application/xml'
	end

	def test
		render :file=>"parser/test.xml.erb", :content_type => 'application/xml'
		# render :text => "Test success"
	end
end

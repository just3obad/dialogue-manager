class ParserController < ApplicationController

	def get_html
		keyword = params[:keyword]
		type = params[:type]
		@answer = Parser.get_html(keyword,type)
		if(@answer.length == 0)
			@answer = " Unknown "
		end
		render :file=>"parser/result.vxml.erb", :content_type => 'application/vxml'
		# render :layout => false
	end

	def test
		render :text => "#{params[:keyword]}#{params[:type]}"
	end

	def home
		render :template => "parser/home"
	end
end

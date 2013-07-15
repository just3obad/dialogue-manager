class ParserController < ApplicationController

	def home
		render :template => "parser/home"
	end

	def get_OpenEphyra
		question = params[:question]
		question=question.tr!(' ','+')
		@url=params[:question]
		@answer_OpenEphyra = Parser.get_OpenEphyra(question)
		if(@answer_OpenEphyra.length == 0)
			@answer_OpenEphyra = " Unknown "
		end
		render :file=>"parser/result_OpenEphyra.xml.erb", :content_type => 'application/xml'
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

	def test
		render :file=>"parser/test.xml.erb", :content_type => 'application/xml'
	end

	def welcome
		render :file=>"parser/welcome.xml.erb", :content_type => 'application/xml'
	end
end

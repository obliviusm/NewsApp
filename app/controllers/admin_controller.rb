class AdminController < ApplicationController
  def article
  	@articles = Article.all
  	if Default.find_by(table_name: "article").nil?
  		Default.create(table_name: "article")
  	end
  	@default_article = Default.find_by(table_name: "article")
  end
end

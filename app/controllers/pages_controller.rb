class PagesController < ApplicationController
  def home
  	@texts = Text.order("created_at desc")
  end

  def about
  	#content
  end
end

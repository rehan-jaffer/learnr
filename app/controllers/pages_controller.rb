class PagesController < ApplicationController

  def show
    @html_content = ContentFinder.get(params[:id])
  end

end

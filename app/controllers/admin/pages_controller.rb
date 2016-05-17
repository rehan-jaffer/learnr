class Admin::PagesController < ApplicationController

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(page_params)
    if @page.save!
      render :new
      return
    end
  end

  def update
    @page = Page.update_attributes(params[:id], page_params)
    unless @page.valid?
      render :edit
    end
  end

  def show
    @page = Page.find(params[:id])
  end

end

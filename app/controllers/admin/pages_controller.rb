class Admin::PagesController < Admin::AdminController

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
    @page = Page.update(params[:id], page_params)
    unless @page.valid?
      render :edit
      return
    end
    redirect_to admin_pages_path
  end

  def show
    @page = Page.find(params[:id])
  end

  def index
    @pages = Page.where(1).to_a
  end

  def page_params
    params.require(:page).permit(:virtual_path, :content)
  end

end

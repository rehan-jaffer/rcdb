class Admin::KeywordsController < Admin::AdminController

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = Keyword.new(keyword_params)
    @keyword.save
    if @keyword
      redirect_to admin_keyword_params
    else
      flash[:errors] = @keyword.errors
      render :new
      return
    end
  end

  def edit
    @keyword = Keyword.find(params[:id])
  end

  def update
  end

  def index
    @keywords = Keyword.all
  end

  def keyword_params
    params.require(:keyword).permit([:keyword, :definition])
  end

end

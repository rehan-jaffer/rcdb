class Admin::PostsController < Admin::AdminController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to admin_posts_path
    else
      flash[:errors] = @post.errors
      render :new
      return
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update

  end

  def index
    @posts = Post.all
  end

  def post_params
    params.require(:post).permit(:title, :body, :tags)
  end

end

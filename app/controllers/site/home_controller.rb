class Site::HomeController < Site::BaseController
  def index
    @categories = Category.all
  end
end

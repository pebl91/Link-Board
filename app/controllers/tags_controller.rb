class TagsController < ApplicationController
  def show
    @tag = Tag.find_by!(name: params[:id])
    @microposts = @tag.microposts.paginate(page: params[:page])
  end
end

class PagesController < ApplicationController
  def home
    @new_color = Color.new
    @all_colors = Color.all
  end

  def create
    @new_color = Color.new(color_params)
    if @new_color.save
      redirect_to root_path, notice: "Color created!"
    else
      redirect_to root_path, alert: "Color not created!"
    end
  end

  # destroy color
  def destroy
    c = Color.find(params[:id])
    c.destroy
    redirect_to root_path, notice: "Color deleted!"
  end

  private

  def color_params
    params.require(:color).permit(:name, :hex)
  end

end

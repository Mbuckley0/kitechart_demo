class KitesController < ApplicationController
  def index
    @kites = Kite.all

    respond_to do |format|
      format.html
      format.json do
        colors, size, material = get_json_data
        render json: { colors: colors, size: size, material: material }
      end
    end
  end

  private

  def get_json_data
    Kitechart::DataFormatter.new(@kites,
                                 first_column: params[:first_column] || 'color',
                                 second_column: params[:second_column] || 'size',
                                 third_column: params[:third_column] || 'material').get_data
  end
end

class KitesController < ApplicationController
  def index
    @kites = Kite.all

    respond_to do |format|
      format.html
      format.json do
        data = get_json_data
        render json: { data: data }
      end
    end
  end

  private

  def get_json_data
    Kitechart::DataFormatter.new(@kites,
                                 columns: [params[:first_column] || 'color',
                                           params[:second_column] || 'size',
                                           params[:third_column] || 'material']).get_data
  end
end

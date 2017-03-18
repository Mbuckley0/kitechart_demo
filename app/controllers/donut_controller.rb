class DonutController < ApplicationController
  def index
    @kites = Kite.all

    respond_to do |format|
      format.html
      format.json do
        data = @kites.group(:color).count
        render json: { data: data }
      end
    end
  end
end

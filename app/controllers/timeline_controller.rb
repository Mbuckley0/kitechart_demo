class TimelineController < ApplicationController
  def index
    @kites = Kite.all
    date = @kites.last.started_at

    respond_to do |format|
      format.html
      format.json do
        data = @kites.where(started_at: date.beginning_of_day..date.end_of_day).pluck('color, started_at, end_at')
        render json: { data: data }
      end
    end
  end
end

class AreaController < ApplicationController
  def index
    @kites = Kite.all

    respond_to do |format|
      format.html
      format.json do
        data = @kites.group("date_trunc('MONTH', started_at)::date").count
        date_range = Hash[(11.months.ago.to_date..Date.today).map { |d| [Date.new(d.year, d.month, 1), 0] }.uniq]
        data.merge!(date_range) { |_k, o, n| o + n }
        data = Hash[data.sort_by { |key, _value| key }]
        render json: { data: data }
      end
    end
  end
end

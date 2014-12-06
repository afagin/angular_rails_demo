module Api
  class CaloriesDailyController < BaseController
    before_filter :authenticate_user!

    # GET /api/calories_daily
    def index
      @calories_daily = CaloriesDailyQuery.new(
        current_user,
        params[:date_from],
        params[:date_to],
        params[:time_from],
        params[:time_to]
      ).query
    end

  end
end
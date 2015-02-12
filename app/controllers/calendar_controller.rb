class CalendarController < ApplicationController
  
  def index
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    Course.all.each do |x|
      Event.create(name: x.name, start_at: x.start_date, end_at: x.end_date)
      binding.pry
    end

    @shown_month = Date.civil(@year, @month)
    @event_strips = Event.event_strips_for_month(@shown_month)
  end
  
end

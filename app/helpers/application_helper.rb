module ApplicationHelper
  def format_date(date)
    date.strftime("%d/%m/%Y")
  end

  def app_title
    APP_TITLE
  end
end
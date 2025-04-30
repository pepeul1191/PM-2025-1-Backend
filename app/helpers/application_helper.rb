module ApplicationHelper
  def format_date(date)
    date.strftime("%d/%m/%Y")
  end

  def app_title
    APP_TITLE
  end

  def validate_jwt
    puts 'TODO: validate_jwt'
  end
end
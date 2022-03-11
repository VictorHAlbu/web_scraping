json.extract! bill, :id, :menu, :presentation, :author, :current_location, :status, :end_date_deadline, :last_processing_date, :last_action, :created_at, :updated_at
json.url bill_url(bill, format: :json)

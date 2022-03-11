class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :menu
      t.date :presentation
      t.string :author
      t.string :current_location
      t.string :status
      t.date :end_date_deadline
      t.date :last_processing_date
      t.string :last_action

      t.timestamps
    end
  end
end

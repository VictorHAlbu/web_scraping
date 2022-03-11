module Api
  class BillsController < ApplicationController   

    def index
      bills = Bill.all
      render json: {status: 'SUCCESS', message:'Bills carregados', data:bills},status: :ok
    end

    private

    def bill_params
      params.require(:bill).permit(:menu, :presentation, :author, :current_location, :status, :end_date_deadline, :last_processing_date, :last_action)
    end
  end
end
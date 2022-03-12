module Api
  class BillsController < ApplicationController   

    def index
      @bills = Bill.all
      filter_by_author if params[:author]
      render json: {status: 'SUCCESS', message:'Bills carregados', data:@bills},status: :ok
    end

    private

    def filter_by_author
      @bills = @bills.where(author: params[:author])
    end

    def bill_params
      params.require(:bill).permit(:menu, :presentation, :author, :current_location, :status, :end_date_deadline, :last_processing_date, :last_action)
    end
  end
end
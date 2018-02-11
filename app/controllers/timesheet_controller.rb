class TimesheetController < ApplicationController
    def index
        @users = Timesheet.find(user_params[:timesheet_id])
        render "timesheet/index"
    end
    private
    def user_params
        params.require(:timesheet).permit(:timesheet_id,:timesheet_name,:business)
    end
end

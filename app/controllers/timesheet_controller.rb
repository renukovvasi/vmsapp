class TimesheetController < ApplicationController
    def new
        @timesheet = Timesheet.new
    end
    def index
        @associates_list = []
        @date = params[:date].to_date
        @sheets = Timesheet.where(timesheet_id: params[:timesheet_id])
        @associates = Associate.where(timesheet_id: params[:timesheet_id])
        @associates = @associates.where('date BETWEEN ? AND ?', @date.beginning_of_week,(@date.beginning_of_week)+6)
        @associates = @associates.order(:emp_id, :assignment_id, :codecharge)
        @loop1 = TEST_VALUE1
        @loop2 = TEST_VALUE2
        
=begin
        @a_list = []
        a=[]
        ag = @associates.order(:emp_id, :assignment_id , :codecharge)
        ag.each_with_index do |value, i|
            if i+1 <= ag.count
              if ag[i].assignment_id == ag[i+1].assignment_id && ag[i].codecharge == ag[i+1].codecharge && ag[i].emp_id == ag[i+1].emp_id
                a<< a[]
                a << a[i+1]
              else
                @a_list << a
                a =[]
                a << a[i+1]
              end
            end
        end 
=end
        
        render :template => "users/index", :locals => { :@associates => @associates, :@date => @date, :@i => @loop1, :@j => @loop2 }
    end
    

end

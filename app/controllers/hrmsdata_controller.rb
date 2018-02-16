class HrmsdataController < ApplicationController
  def index
  end
  def import
    spreadsheet = Roo::Spreadsheet.open(params[:file].path)
    header = spreadsheet.row(1)
    @a_list = []
    (2..spreadsheet.last_row).each do |i|
=begin      
      row = Hash[[header, spreadsheet.row(i)].transpose]
      product = find_by(id: row["id"]) || new
      product.attributes = row.to_hash
      product.save!
=end
      a = Hrmsdatum.create(associate_name: spreadsheet.row(i)[0],associate_id: spreadsheet.row(i)[1], assignment_id: spreadsheet.row(i)[2],
      job_title: spreadsheet.row(i)[3], jon_id: spreadsheet.row(i)[4], business_id: spreadsheet.row(i)[5], client_id: spreadsheet.row(i)[6],
      work_group: spreadsheet.row(i)[7],hours: spreadsheet.row(i)[8], pay_status: spreadsheet.row(i)[9])
      @a_list << a
    end
    
    render :template => "hrmsdata/index", :locals => {:@list => @a_list}
  end 
end

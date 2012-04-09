class IndustryClassesController < ApplicationController
 
  # GET /industry_classes/1
  # GET /industry_classes/1.json
  def show
    @industry_class = IndustryClass.find(params[:id])
    @primary_activities = @industry_class.primary_activities

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @industry_class }
    end
  end
  
end

class DivisionsController < ApplicationController

  # GET /divisions/1
  # GET /divisions/1.json
  def show
    @division = Division.find(params[:id])
    
    @subdivisions = Subdivision.joins(:division).where("divisions.slug = ?",params[:id])
    # this is equivalent to
    # @subdivisions = @division.subdivisions
    
    @subdivisions.each do |subdivision|
      subdivision.groups = Group.joins(:subdivision => :division).where("subdivisions.id = ?",subdivision.id)      
      
      subdivision.groups.each do |group|
        group.industry_classes = IndustryClass.joins(:group => {:subdivision => :division}).where("groups.id = ?",group.id)
        
      end
    
    
    end
   
    #@groups = Group.joins(:subdivision => :division).where("divisions.slug = ?",params[:id])
    # this is literally equivalent to
    # @subdivisions = @division.subdivisions.groups
    # although would not be written like this
    
    #@industry_classes = IndustryClass.joins(:group => {:subdivision => :division}).where("divisions.slug = ?",params[:id])
    # this is literally equivalent to
    # @subdivisions = @division.subdivisions.groups.industry_classes
    # although would not be written like this
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @division }
    end
  end
  
end

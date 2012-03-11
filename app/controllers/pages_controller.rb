class PagesController < ApplicationController
  
  def home
    
    @divisions = Division.all
    @industry_classes = IndustryClass.all
    
  end
  
end

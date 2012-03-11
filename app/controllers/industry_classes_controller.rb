class IndustryClassesController < ApplicationController
  # GET /industry_classes
  # GET /industry_classes.json
  def index
    @industry_classes = IndustryClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @industry_classes }
    end
  end

  # GET /industry_classes/1
  # GET /industry_classes/1.json
  def show
    @industry_class = IndustryClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @industry_class }
    end
  end

  # GET /industry_classes/new
  # GET /industry_classes/new.json
  def new
    @industry_class = IndustryClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @industry_class }
    end
  end

  # GET /industry_classes/1/edit
  def edit
    @industry_class = IndustryClass.find(params[:id])
  end

  # POST /industry_classes
  # POST /industry_classes.json
  def create
    @industry_class = IndustryClass.new(params[:industry_class])

    respond_to do |format|
      if @industry_class.save
        format.html { redirect_to @industry_class, notice: 'Industry class was successfully created.' }
        format.json { render json: @industry_class, status: :created, location: @industry_class }
      else
        format.html { render action: "new" }
        format.json { render json: @industry_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /industry_classes/1
  # PUT /industry_classes/1.json
  def update
    @industry_class = IndustryClass.find(params[:id])

    respond_to do |format|
      if @industry_class.update_attributes(params[:industry_class])
        format.html { redirect_to @industry_class, notice: 'Industry class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @industry_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industry_classes/1
  # DELETE /industry_classes/1.json
  def destroy
    @industry_class = IndustryClass.find(params[:id])
    @industry_class.destroy

    respond_to do |format|
      format.html { redirect_to industry_classes_url }
      format.json { head :no_content }
    end
  end
end

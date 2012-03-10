class IndustryCodesController < ApplicationController
  # GET /industry_codes
  # GET /industry_codes.json
  def index
    @industry_codes = IndustryCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @industry_codes }
    end
  end

  # GET /industry_codes/1
  # GET /industry_codes/1.json
  def show
    @industry_code = IndustryCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @industry_code }
    end
  end

  # GET /industry_codes/new
  # GET /industry_codes/new.json
  def new
    @industry_code = IndustryCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @industry_code }
    end
  end

  # GET /industry_codes/1/edit
  def edit
    @industry_code = IndustryCode.find(params[:id])
  end

  # POST /industry_codes
  # POST /industry_codes.json
  def create
    @industry_code = IndustryCode.new(params[:industry_code])

    respond_to do |format|
      if @industry_code.save
        format.html { redirect_to @industry_code, notice: 'Industry code was successfully created.' }
        format.json { render json: @industry_code, status: :created, location: @industry_code }
      else
        format.html { render action: "new" }
        format.json { render json: @industry_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /industry_codes/1
  # PUT /industry_codes/1.json
  def update
    @industry_code = IndustryCode.find(params[:id])

    respond_to do |format|
      if @industry_code.update_attributes(params[:industry_code])
        format.html { redirect_to @industry_code, notice: 'Industry code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @industry_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industry_codes/1
  # DELETE /industry_codes/1.json
  def destroy
    @industry_code = IndustryCode.find(params[:id])
    @industry_code.destroy

    respond_to do |format|
      format.html { redirect_to industry_codes_url }
      format.json { head :no_content }
    end
  end
end

class HelprequestsController < ApplicationController
  before_action :set_helprequest, only: [:show, :edit, :update, :destroy]

  # GET /helprequests
  # GET /helprequests.json
  def index
    @helprequests = Helprequest.all
  end

  # GET /helprequests/1
  # GET /helprequests/1.json
  def show
  end

  # GET /helprequests/new
  def new
    @helprequest = Helprequest.new
  end

  # GET /helprequests/1/edit
  def edit
  end

  # POST /helprequests
  # POST /helprequests.json
  def create
    @helprequest = Helprequest.new(helprequest_params)

    respond_to do |format|
      if @helprequest.save
        format.html { redirect_to @helprequest, notice: 'Helprequest was successfully created.' }
        format.json { render :show, status: :created, location: @helprequest }
      else
        format.html { render :new }
        format.json { render json: @helprequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helprequests/1
  # PATCH/PUT /helprequests/1.json
  def update
    respond_to do |format|
      if @helprequest.update(helprequest_params)
        format.html { redirect_to @helprequest, notice: 'Helprequest was successfully updated.' }
        format.json { render :show, status: :ok, location: @helprequest }
      else
        format.html { render :edit }
        format.json { render json: @helprequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helprequests/1
  # DELETE /helprequests/1.json
  def destroy
    @helprequest.destroy
    respond_to do |format|
      format.html { redirect_to helprequests_url, notice: 'Helprequest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helprequest
      @helprequest = Helprequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def helprequest_params
      params.require(:helprequest).permit(:subject, :content)
    end
end

class RegardsController < ApplicationController
  before_action :set_regard, only: [:show, :edit, :update, :destroy]

  # GET /regards
  # GET /regards.json
  def index
    @regards = Regard.all
  end

  # GET /regards/1
  # GET /regards/1.json
  def show
  end

  # GET /regards/new
  def new
    @regard = Regard.new
  end

  # GET /regards/1/edit
  def edit
  end

  # POST /regards
  # POST /regards.json
  def create
    @regard = Regard.new(regard_params)

    respond_to do |format|
      if @regard.save
        format.html { redirect_to @regard, notice: 'Regard was successfully created.' }
        format.json { render :show, status: :created, location: @regard }
      else
        format.html { render :new }
        format.json { render json: @regard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regards/1
  # PATCH/PUT /regards/1.json
  def update
    respond_to do |format|
      if @regard.update(regard_params)
        format.html { redirect_to @regard, notice: 'Regard was successfully updated.' }
        format.json { render :show, status: :ok, location: @regard }
      else
        format.html { render :edit }
        format.json { render json: @regard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regards/1
  # DELETE /regards/1.json
  def destroy
    @regard.destroy
    respond_to do |format|
      format.html { redirect_to regards_url, notice: 'Regard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regard
      @regard = Regard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regard_params
      params.require(:regard).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort, :date, :finished, :disabled)
    end
end

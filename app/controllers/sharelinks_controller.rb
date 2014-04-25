class SharelinksController < ApplicationController
  before_action :set_sharelink, only: [:show, :edit, :update, :destroy]

  # GET /sharelinks
  # GET /sharelinks.json
  def index
    @sharelinks = Sharelink.all
  end

  # GET /sharelinks/1
  # GET /sharelinks/1.json
  def show
  end

  # GET /sharelinks/new
  def new
    @sharelink = Sharelink.new
  end

  # GET /sharelinks/1/edit
  def edit
  end

  # POST /sharelinks
  # POST /sharelinks.json
  def create
    @sharelink = Sharelink.new(sharelink_params)

    respond_to do |format|
      if @sharelink.save
        format.html { redirect_to @sharelink, notice: 'Sharelink was successfully created.' }
        format.json { render :show, status: :created, location: @sharelink }
      else
        format.html { render :new }
        format.json { render json: @sharelink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sharelinks/1
  # PATCH/PUT /sharelinks/1.json
  def update
    respond_to do |format|
      if @sharelink.update(sharelink_params)
        format.html { redirect_to @sharelink, notice: 'Sharelink was successfully updated.' }
        format.json { render :show, status: :ok, location: @sharelink }
      else
        format.html { render :edit }
        format.json { render json: @sharelink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sharelinks/1
  # DELETE /sharelinks/1.json
  def destroy
    @sharelink.destroy
    respond_to do |format|
      format.html { redirect_to sharelinks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sharelink
      @sharelink = Sharelink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sharelink_params
      params.require(:sharelink).permit(:link, :comment)
    end
end

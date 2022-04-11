class YoutubesController < ApplicationController
  before_action :set_youtube, only: %i[ show edit update destroy ]

  # GET /youtubes or /youtubes.json
  def index
    @youtubes = Youtube.all
  end

  # GET /youtubes/1 or /youtubes/1.json
  def show
  end

  # GET /youtubes/new
  def new
    @youtube = Youtube.new
  end

  # GET /youtubes/1/edit
  def edit
  end

  # POST /youtubes or /youtubes.json
  def create
    @youtube = Youtube.new(youtube_params)

    respond_to do |format|
      if @youtube.save
        format.html { redirect_to youtube_url(@youtube), notice: "Youtube was successfully created." }
        format.json { render :show, status: :created, location: @youtube }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @youtube.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /youtubes/1 or /youtubes/1.json
  def update
    respond_to do |format|
      if @youtube.update(youtube_params)
        format.html { redirect_to youtube_url(@youtube), notice: "Youtube was successfully updated." }
        format.json { render :show, status: :ok, location: @youtube }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @youtube.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youtubes/1 or /youtubes/1.json
  def destroy
    @youtube.destroy

    respond_to do |format|
      format.html { redirect_to youtubes_url, notice: "Youtube was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtube
      @youtube = Youtube.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def youtube_params
      params.require(:youtube).permit(:url, :service_id)
    end
end

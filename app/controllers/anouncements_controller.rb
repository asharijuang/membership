class AnouncementsController < ApplicationController
  before_action :set_anouncement, only: [:show, :edit, :update, :destroy]

  # GET /anouncements
  def index
    @anouncements = Anouncement.all
  end

  # GET /anouncements/1
  def show
  end

  # GET /anouncements/new
  def new
    @anouncement = Anouncement.new
  end

  # GET /anouncements/1/edit
  def edit
  end

  # POST /anouncements
  def create
    @anouncement = Anouncement.new(anouncement_params)

    if @anouncement.save
      redirect_to @anouncement, notice: 'Anouncement was successfully created.'
    else
      # cari halaman viw dengan nama file new.html.erb
      render :new
    end
  end

  # PATCH/PUT /anouncements/1
  def update
    if @anouncement.update(anouncement_params)
      redirect_to @anouncement, notice: 'Anouncement was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /anouncements/1
  def destroy
    @anouncement.destroy
    redirect_to anouncements_url, notice: 'Anouncement was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anouncement
      @anouncement = Anouncement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def anouncement_params
      params.require(:anouncement).permit(:title, :content)
    end
end

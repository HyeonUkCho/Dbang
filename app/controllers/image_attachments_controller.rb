class ImageAttachmentsController < ApplicationController
  before_action :set_image_attachment, only: [:show, :edit, :update, :destroy]

  # GET /image_attachments
  # GET /image_attachments.json
  def index
    @image_attachments = ImageAttachment.all
  end

  # GET /image_attachments/1
  # GET /image_attachments/1.json
  def show
  end

  # GET /image_attachments/new
  def new
    @image_attachment = ImageAttachment.new
  end

  # GET /image_attachments/1/edit
  def edit
  end

  # POST /image_attachments
  # POST /image_attachments.json
  def create
    @image_attachment = ImageAttachment.new(image_attachment_params)

    respond_to do |format|
      if @image_attachment.save
        format.html { redirect_to @image_attachment, notice: 'Image attachment was successfully created.' }
        format.json { render :show, status: :created, location: @image_attachment }
      else
        format.html { render :new }
        format.json { render json: @image_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_attachments/1
  # PATCH/PUT /image_attachments/1.json
  def update
    respond_to do |format|
      if @image_attachment.update(image_attachment_params)
        format.html { redirect_to @image_attachment.house, notice: 'Image attachment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /image_attachments/1
  # DELETE /image_attachments/1.json
  def destroy
    @image_attachment.destroy
    respond_to do |format|
      format.html { redirect_to image_attachments_url, notice: 'Image attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_attachment
      @image_attachment = ImageAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_attachment_params
      params.require(:image_attachment).permit(:house_id, :avatar)
    end
end

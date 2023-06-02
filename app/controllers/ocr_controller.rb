class OcrController < ApplicationController
  def index
  end

  def file_scan
    if params[:image_file].present?
      file_path = params[:image_file][:file].tempfile.path
      image     = RTesseract.new(file_path, lang: params[:lang].to_s)
      @text     = image.to_s.gsub("\n", "<br>")
      render 'index'
    else
      redirect_to root_path
    end
  end
end

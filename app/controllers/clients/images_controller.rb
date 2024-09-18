class Clients::ImagesController < Clients::ClientsController
  def update_image
    # Check if images are being uploaded
    if params[:client][:images] 
      params[:client][:images].each do |image|
        # Attach each new image
        current_client.images.attach(image) 
      end
    end

    if current_client.save
      redirect_to upload_image_clients_images_path, notice: 'Images uploaded successfully'
    else
      redirect_to upload_image_clients_images_path, alert: 'Failed images'
    end
  end

  def delete_image
    image = current_client.images.find(params[:id])
    image.purge
    redirect_to upload_image_clients_images_path, noitce: 'Delete images'
  end

  def image_params
    params.require(:client).permit(images: [])
  end
end
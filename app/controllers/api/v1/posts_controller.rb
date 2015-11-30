class Api::V1::PostsController < ApiController

  def image_upload
    render json: { filelink: '/uploads/post/thumb/1/1203251823070dd2468eaff085.jpg' }
  end

end

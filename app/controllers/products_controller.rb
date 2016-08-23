class ProductsController < JSONAPI::ResourceController


  def options
    set_headers
    # this will send an empty request to the clien with 200 status code (OK, can proceed)
    render :text => '', :content_type => 'application/vnd.api+json'
  end



  private
   # Set CORS
   def set_headers
     headers['Access-Control-Allow-Origin'] = 'https://izettle-library-app.herokuapp.com'
     headers['Access-Control-Expose-Headers'] = 'Etag'
     headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, PATCH, OPTIONS, HEAD'
     headers['Access-Control-Allow-Headers'] = '*, x-requested-with, Content-Type, Accept, If-Modified-Since, If-None-Match'
     headers['Access-Control-Max-Age'] = '86400'
   end

end

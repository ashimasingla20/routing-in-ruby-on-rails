class BeerController < ApplicationController
    def show
      if valid_page?
        render template: "beer/#{params[:beer_type]}"
      else
        render file: "public/404.html", status: :not_found
      end
    end

    private
    def valid_page?
      File.exist?(Pathname.new(Rails.root + "app/views/beer/#{params[:beer_type]}.html.erb"))
    end
  end

class StaticPagesController < ApplicationController
  def home
    @circle = [
        {"lng": "-88.007367", "lat": "41.793807", "radius": 50000},
    ]
  end

  def about
  end

  def contact
  end
end

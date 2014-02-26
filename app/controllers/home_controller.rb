class HomeController < ApplicationController

  def index
    HardWorker.perform_async('OraOra', 1)
  end

end

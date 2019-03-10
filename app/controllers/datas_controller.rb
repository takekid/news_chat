class DatasController < ApplicationController
  def index
    @data = Data.all
  end
end

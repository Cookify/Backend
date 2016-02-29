class Api::V1::ProviderController < ApplicationController

  def index
    @products = Provider.all
  end
end

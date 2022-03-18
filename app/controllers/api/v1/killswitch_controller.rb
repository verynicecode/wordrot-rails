class Api::V1::KillswitchController < ApplicationController
  def show
    killswitch = Killswitch.instance
    render json: killswitch.as_json(only: %i[bad_builds minimum_build])
  end
end

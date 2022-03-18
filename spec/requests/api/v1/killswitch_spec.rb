require "rails_helper"

describe "GET /api/v1/killswitch" do
  it "returns the instance info" do
    get "/api/v1/killswitch"

    expect(response.status).to eq 200
    expect(response.parsed_body).to eq({
      "bad_builds" => [],
      "minimum_build" => 0
    })
  end
end

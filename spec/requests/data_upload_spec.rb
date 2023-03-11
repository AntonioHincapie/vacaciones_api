require 'rails_helper'

RSpec.describe "DataUploads", type: :request do
  describe "GET /upload" do
    it "returns http success" do
      get "/data_upload/upload"
      expect(response).to have_http_status(:success)
    end
  end

end

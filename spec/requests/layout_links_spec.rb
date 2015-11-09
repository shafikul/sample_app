require 'rails_helper'
require 'spec_helper'
RSpec.describe "LayoutLinks", type: :request do
  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      get layout_links_index_path
      expect(response).to have_http_status(200)
    end
    it "should have a Contact page at '/contact'" do
      get 'pages/home'
      response.body.should include("Sample App Home")
    end
  end

end

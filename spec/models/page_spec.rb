require 'rails_helper'

RSpec.describe Page, type: :model do

  context "saving behaviour" do

    it "slugifies the title correctly upon saving" do
      @page = page_object_valid
      @page.title = "Hello, world!"
      @page.save
      expect(@page.slug).to eq "hello_world"
    end

  end

end

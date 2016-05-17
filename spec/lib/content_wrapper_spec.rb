require 'lib/content_wrapper'
require 'rails_helper'

describe ContentWrapper do

  describe "base-level functionality" do
    
    it "locates an item by virtual path" do
      expect { ContentWrapper.open("fixtures/test").to_not raise Exception }
    end

    it "returns an item by virtual path" do
      expect(ContentWrapper.open("fixtures/test")).to_not eql false
    end

  end

end 

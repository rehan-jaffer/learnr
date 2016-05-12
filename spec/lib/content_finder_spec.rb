require 'rails_helper'

describe "ContentFinder" do

  describe "base-level functionality" do
    
    it "locates an item by virtual path" do
      expect { ContentFinder.get("fixtures/test").to_not raise Exception }
    end

  end

end 

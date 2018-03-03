require 'spec_helper'
require_relative 'api_constraints'

describe ApiConstraints do
  let(:api_constraints_v1) { ApiConstraints.new(version: 1) }
  let(:api_constraints_v2) { ApiConstraints.new(version: 2, default: true) }

  describe "matches?" do

    it "returns true when the version matches the 'Accept' header" do
      
      request = double(host: 'api.rails-first-nehakadam.c9users.io',
                       headers: {"Accept" => "application/vnd.rails-first-nehakadam.c9users.io.v1"})
      expect(api_constraints_v1.matches?(request)).to be true
      
    end

    it "returns the default version when 'default' option is specified" do
      
      request = double(host: 'api.rails-first-nehakadam.c9users.io')
      expect(api_constraints_v2.matches?(request)).to be true
      
    end
    
  end
end

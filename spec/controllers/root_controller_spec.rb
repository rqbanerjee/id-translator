require 'spec_helper'

describe RootController do
  it 'should return success for the index action' do
    get :index
    response.should be_success
  end
end

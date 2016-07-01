require 'rails_helper'

RSpec.describe AnalysisController, :type => :controller do

  before :all do
    @ts = ToneService.new('Any Text will do!')
  end

  it 'renders index template' do
    get :index
    expect(response).to render_template('index')
  end

end
require_relative '../spec_helper'

describe StudentsController do

  context 'the student index' do
    let(:student){Student.new.tap{|s| s.name = "Flatiron Student"}}

    before do
      Student.should_receive(:all).and_return([student])
      get '/'
    end

    it 'responds with a 200' do
      expect(last_response).to be_ok
    end
  
    it 'has the students name in the response' do
      expect(last_response.body).to include(student.name)
    end
  end
  
end
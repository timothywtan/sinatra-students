describe Student do

  describe '#slug' do
    it "formats a slug based on a student's name" do
      # Remember that subject will by default be a new instance
      # of the class being described.
      subject.name = "Avi Flombaum"
      expect(subject.slug).to eq('avi-flombaum')
    end
  end

end

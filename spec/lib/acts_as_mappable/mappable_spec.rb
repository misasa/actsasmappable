require "spec_helper"

describe ActsAsMappable::Mappable do

  describe ".acts_as_mappable" do
    context "with no args" do
      before { Map.send(:acts_as_mappable) }
      let(:config) { Map.acts_as_mappable_config }
      it { expect(config.lat).to eq :latitude }
      it { expect(config.lng).to eq :longitude }
      it { expect(config.name).to be_nil }
    end

    context "with args" do
      before { Map.send(:acts_as_mappable, lat: lat, lng: lng, name: name) }
      let(:lat) { :foo }
      let(:lng) { :baa }
      let(:name) { :baz }
      let(:config) { Map.acts_as_mappable_config }
      it { expect(config.lat).to eq lat }
      it { expect(config.lng).to eq lng }
      it { expect(config.name).to eq name }
    end
  end

end

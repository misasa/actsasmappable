require "spec_helper"

describe ActsAsMappable::Mappable::InstanceMethods do

  describe ".to_map" do
    let(:map) { Map.new(latitude: lat, longitude: lng, name: name) }
    let(:lat) { 12.34 }
    let(:lng) { 56.78 }
    let(:name) { "hoge" }
    let(:width) { 400 }
    let(:height) { 500 }
    let(:node) { Capybara.string(html) }
    let(:div) { node.find("#map-canvas") }

    context "with no args" do
      let(:html) { map.to_map }
      it { expect(div["data-lat"]).to eq lat.to_s }
      it { expect(div["data-lng"]).to eq lng.to_s }
      it { expect(div["title"]).to eq name }
      it { expect(div["style"]).to eq "width: 300px; height: 300px;" }
    end

    context "with args" do
      let(:html) { map.to_map width: width, height: height }
      it { expect(div["style"]).to eq "width: 400px; height: 500px;" }
    end
  end

end

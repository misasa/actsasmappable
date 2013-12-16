require "spec_helper"

describe ActsAsMappable::Mappable::HtmlGenerator do

  let(:mod) { ActsAsMappable::Mappable::HtmlGenerator }

  describe ".generate" do
    let(:lat) { 12.34 }
    let(:lng) { 56.78 }
    let(:name ) { "hoge" }
    let(:width) { 100 }
    let(:height) { 200 }
    let(:node) { Capybara.string(html) }
    let(:div) { node.find("#map-canvas") }

    context "with name args" do
      let(:html) { mod.generate(lat: lat, lng: lng, name: name, width: width, height: height) }
      it { expect(div["data-lat"]).to eq lat.to_s }
      it { expect(div["data-lng"]).to eq lng.to_s }
      it { expect(div["style"]).to eq "width: 100px; height: 200px;" }
      it { expect(div["title"]).to eq name }
      it { expect(div.text).to be_blank }
    end

    context "without name args" do
      let(:html) { mod.generate(lat: lat, lng: lng, width: width, height: height) }
      it { expect(div["title"]).to be_nil }
    end
  end

end

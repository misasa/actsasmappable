require "spec_helper"

describe ActsAsMappable::Mappable::Config do

  let(:klass) { ActsAsMappable::Mappable::Config }

  describe "class attributes" do
    describe ".api_key" do
      it { expect(klass).to be_respond_to :api_key }
      it { expect(klass).to be_respond_to :api_key= }
    end
    describe ".width" do
      it { expect(klass).to be_respond_to :width }
      it { expect(klass).to be_respond_to :width= }
    end
    describe ".height" do
      it { expect(klass).to be_respond_to :height }
      it { expect(klass).to be_respond_to :height= }
    end
  end

  describe "instance attributes" do
    let(:lat) { 12.34 }
    let(:lng) { 56.78 }
    let(:name) { "hoge" }

    context "with name args" do
      let(:config) { klass.new(lat: lat, lng: lng, name: name) }
      
      describe ".lat" do
        it { expect(config.lat).to eq lat }
      end
      
      describe ".lng" do
        it { expect(config.lng).to eq lng }
      end
      
      describe ".lat" do
        it { expect(config.name).to eq name }
      end
      
      describe ".width" do
        context "when set class attribute" do
          before { klass.width = 500 }
          after { klass.width = nil }
          it { expect(config.width).to eq 500 }
        end
        context "when unset class attribute" do
          it { expect(config.width).to eq 300 }
        end
      end
      
      describe ".height" do
        context "when set class attribute" do
          before { klass.height = 500 }
          after { klass.height = nil }
          it { expect(config.height).to eq 500 }
        end
        context "when unset class attribute" do
          it { expect(config.height).to eq 300 }
        end
      end
    end

    context "without name args" do
      let(:config) { klass.new(lat: lat, lng: lng) }

      describe ".name" do
        it { expect(config.name).to be_nil }
      end
    end
  end

end

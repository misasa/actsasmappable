require "spec_helper"

describe ActsAsMappable do
  before do
    config = nil
    ActsAsMappable.configure { |conf| config = conf }
    @config = config
  end
  it { expect(@config).to eq ActsAsMappable::Mappable::Config }
end

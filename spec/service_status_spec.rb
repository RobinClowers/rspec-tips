require 'rspec'
require 'app/service_status'

describe ServiceStatus do
  context "when status is ok" do
    it "service is available" do
      status = ServiceStatus.new 'ok'
      status.available?.should be_true
    end
  end

  context "when status is down" do
    it "service is not available" do
      status = ServiceStatus.new 'down'
      status.available?.should be_false
    end
  end
end

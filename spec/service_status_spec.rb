require 'rspec'
require 'app/service_status'

describe ServiceStatus do
  let(:service_status) { ServiceStatus.new status }

  context "when status is ok" do
    let(:status) { 'ok' }

    it "service is available" do
      service_status.available?.should be_true
    end
  end

  context "when status is down" do
    let(:status) { 'down' }

    it "service is not available" do
      service_status.available?.should be_false
    end
  end
end

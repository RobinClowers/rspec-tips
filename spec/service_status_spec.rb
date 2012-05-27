require 'rspec'
require 'app/service_status'

describe ServiceStatus do
  it "is available when status is ok" do
    status = ServiceStatus.new 'ok'
    status.available?.should be_true
  end

  it "is not available when status is down" do
    status = ServiceStatus.new 'down'
    status.available?.should be_false
  end
end

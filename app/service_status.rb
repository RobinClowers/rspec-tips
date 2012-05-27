class ServiceStatus
  def initialize(status)
    @status = status
  end

  def available?
    @status == 'ok'
  end
end

module KubeDSL::DSL
  class Probe
    extend ::KubeDSL::ValueFields
    value_fields :failure_threshold, :initial_delay_seconds, :period_seconds, :success_threshold, :timeout_seconds
    object_field(:exec) { KubeDSL::DSL::ExecAction.new }
    object_field(:http_get) { KubeDSL::DSL::HTTPGetAction.new }
    object_field(:tcp_socket) { KubeDSL::DSL::TCPSocketAction.new }

    def serialize
      {}.tap do |result|
        result[:failureThreshold] = failure_threshold
        result[:initialDelaySeconds] = initial_delay_seconds
        result[:periodSeconds] = period_seconds
        result[:successThreshold] = success_threshold
        result[:timeoutSeconds] = timeout_seconds
        result[:exec] = exec.serialize
        result[:httpGet] = http_get.serialize
        result[:tcpSocket] = tcp_socket.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end
  end
end

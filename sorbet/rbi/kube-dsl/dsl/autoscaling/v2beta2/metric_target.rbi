# typed: strict

module KubeDSL
  module DSL
    module Autoscaling
      module V2beta2
        class MetricTarget < ::KubeDSL::DSLObject
          sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          sig { returns(Symbol) }
          def kind_sym; end

          sig { params(val: T.nilable(Integer)).returns(Integer) }
          def average_utilization(val = nil); end

          sig { params(val: T.nilable(String)).returns(String) }
          def average_value(val = nil); end

          sig { params(val: T.nilable(String)).returns(String) }
          def type(val = nil); end

          sig { params(val: T.nilable(String)).returns(String) }
          def value(val = nil); end
        end
      end
    end
  end
end
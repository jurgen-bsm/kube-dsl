# typed: strict

module KubeDSL::DSL::Rbac::V1beta1
  class PolicyRule < ::KubeDSL::DSLObject
    sig {
      returns(
        T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
      )
    }
    def serialize; end

    sig { returns(Symbol) }
    def kind_sym; end

    sig { params(val: T.nilable(String)).returns(String) }
    def api_groups(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def non_resource_ur_ls(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def resource_names(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def resources(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def verbs(val = nil); end

  end
end

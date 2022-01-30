# typed: strict

module KubeDSL::DSL::V1
  class ServiceAccount < ::KubeDSL::DSLObject
    sig {
      returns(
        T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
      )
    }
    def serialize; end

    sig { returns(Symbol) }
    def kind_sym; end

    sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
    def automount_service_account_token(val = nil); end

    sig {
      params(
        elem_name: T.nilable(Symbol),
        block: T.nilable(T.proc.returns(KubeDSL::DSL::V1::LocalObjectReference))
      ).returns(T::Array[KubeDSL::DSL::V1::LocalObjectReference])
    }
    def image_pull_secrets(elem_name = nil, &block); end

    sig { returns(KubeDSL::DSL::Meta::V1::ObjectMeta) }
    def metadata; end

    sig {
      params(
        elem_name: T.nilable(Symbol),
        block: T.nilable(T.proc.returns(KubeDSL::DSL::V1::ObjectReference))
      ).returns(T::Array[KubeDSL::DSL::V1::ObjectReference])
    }
    def secrets(elem_name = nil, &block); end

  end
end

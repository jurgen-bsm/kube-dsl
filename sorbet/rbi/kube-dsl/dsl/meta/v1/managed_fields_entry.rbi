# typed: strict

module KubeDSL::DSL::Meta::V1
  class ManagedFieldsEntry < ::KubeDSL::DSLObject
    sig {
      returns(
        T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
      )
    }
    def serialize; end

    sig { returns(Symbol) }
    def kind_sym; end

    sig { params(val: T.nilable(String)).returns(String) }
    def api_version(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def fields_type(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def fields_v1(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def manager(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def operation(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def time(val = nil); end

  end
end

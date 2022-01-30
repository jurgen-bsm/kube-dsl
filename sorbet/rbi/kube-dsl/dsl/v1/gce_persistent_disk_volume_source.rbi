# typed: strict

module KubeDSL::DSL::V1
  class GCEPersistentDiskVolumeSource < ::KubeDSL::DSLObject
    sig {
      returns(
        T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
      )
    }
    def serialize; end

    sig { returns(Symbol) }
    def kind_sym; end

    sig { params(val: T.nilable(String)).returns(String) }
    def fs_type(val = nil); end

    sig { params(val: T.nilable(Integer)).returns(Integer) }
    def partition(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def pd_name(val = nil); end

    sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
    def read_only(val = nil); end

  end
end

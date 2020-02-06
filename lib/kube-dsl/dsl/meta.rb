module KubeDSL::DSL::Meta
  autoload :APIGroup, 'kube-dsl/dsl/meta/api_group'
  autoload :APIGroupList, 'kube-dsl/dsl/meta/api_group_list'
  autoload :APIResource, 'kube-dsl/dsl/meta/api_resource'
  autoload :APIResourceList, 'kube-dsl/dsl/meta/api_resource_list'
  autoload :APIVersions, 'kube-dsl/dsl/meta/api_versions'
  autoload :DeleteOptions, 'kube-dsl/dsl/meta/delete_options'
  autoload :FieldsV1, 'kube-dsl/dsl/meta/fields_v1'
  autoload :GroupVersionForDiscovery, 'kube-dsl/dsl/meta/group_version_for_discovery'
  autoload :LabelSelector, 'kube-dsl/dsl/meta/label_selector'
  autoload :LabelSelectorRequirement, 'kube-dsl/dsl/meta/label_selector_requirement'
  autoload :ListMeta, 'kube-dsl/dsl/meta/list_meta'
  autoload :ManagedFieldsEntry, 'kube-dsl/dsl/meta/managed_fields_entry'
  autoload :MicroTime, 'kube-dsl/dsl/meta/micro_time'
  autoload :ObjectMeta, 'kube-dsl/dsl/meta/object_meta'
  autoload :OwnerReference, 'kube-dsl/dsl/meta/owner_reference'
  autoload :Patch, 'kube-dsl/dsl/meta/patch'
  autoload :Preconditions, 'kube-dsl/dsl/meta/preconditions'
  autoload :ServerAddressByClientCIDR, 'kube-dsl/dsl/meta/server_address_by_client_cidr'
  autoload :Status, 'kube-dsl/dsl/meta/status'
  autoload :StatusCause, 'kube-dsl/dsl/meta/status_cause'
  autoload :StatusDetails, 'kube-dsl/dsl/meta/status_details'
  autoload :Time, 'kube-dsl/dsl/meta/time'
  autoload :WatchEvent, 'kube-dsl/dsl/meta/watch_event'
end

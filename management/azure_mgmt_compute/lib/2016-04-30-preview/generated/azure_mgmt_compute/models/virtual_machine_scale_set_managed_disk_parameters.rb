# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2016_04_30_preview
  module Models
    #
    # Describes the parameters of a ScaleSet managed disk.
    #
    class VirtualMachineScaleSetManagedDiskParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [StorageAccountTypes] The Storage Account type. Possible values
      # include: 'Standard_LRS', 'Premium_LRS'
      attr_accessor :storage_account_type


      #
      # Mapper for VirtualMachineScaleSetManagedDiskParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetManagedDiskParameters',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetManagedDiskParameters',
            model_properties: {
              storage_account_type: {
                required: false,
                serialized_name: 'storageAccountType',
                type: {
                  name: 'Enum',
                  module: 'StorageAccountTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end

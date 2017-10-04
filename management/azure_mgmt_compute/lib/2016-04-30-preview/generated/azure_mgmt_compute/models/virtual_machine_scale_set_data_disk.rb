# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2016_04_30_preview
  module Models
    #
    # Describes a virtual machine scale set data disk.
    #
    class VirtualMachineScaleSetDataDisk

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The disk name.
      attr_accessor :name

      # @return [Integer] The logical unit number.
      attr_accessor :lun

      # @return [CachingTypes] The caching type. Possible values include:
      # 'None', 'ReadOnly', 'ReadWrite'
      attr_accessor :caching

      # @return [DiskCreateOptionTypes] The create option. Possible values
      # include: 'fromImage', 'empty', 'attach'
      attr_accessor :create_option

      # @return [Integer] The initial disk size in GB for blank data disks, and
      # the new desired size for existing OS and Data disks.
      attr_accessor :disk_size_gb

      # @return [VirtualMachineScaleSetManagedDiskParameters] The managed disk
      # parameters.
      attr_accessor :managed_disk


      #
      # Mapper for VirtualMachineScaleSetDataDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetDataDisk',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetDataDisk',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              lun: {
                required: true,
                serialized_name: 'lun',
                type: {
                  name: 'Number'
                }
              },
              caching: {
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              create_option: {
                required: true,
                serialized_name: 'createOption',
                type: {
                  name: 'Enum',
                  module: 'DiskCreateOptionTypes'
                }
              },
              disk_size_gb: {
                required: false,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              managed_disk: {
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetManagedDiskParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end

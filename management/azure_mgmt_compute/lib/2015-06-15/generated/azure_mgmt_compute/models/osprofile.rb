# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2015_06_15
  module Models
    #
    # Describes an OS profile.
    #
    class OSProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Specifies the host OS name of the virtual machine.
      attr_accessor :computer_name

      # @return [String] Specifies the name of the administrator account.
      attr_accessor :admin_username

      # @return [String] Specifies the password of the administrator account.
      attr_accessor :admin_password

      # @return [String] Specifies a base-64 encoded string of custom data. The
      # base-64 encoded string is decoded to a binary array that is saved as a
      # file on the Virtual Machine. The maximum length of the binary array is
      # 65535 bytes
      attr_accessor :custom_data

      # @return [WindowsConfiguration] The Windows configuration of the OS
      # profile.
      attr_accessor :windows_configuration

      # @return [LinuxConfiguration] The Linux configuration of the OS profile.
      attr_accessor :linux_configuration

      # @return [Array<VaultSecretGroup>] The list of certificates for addition
      # to the VM.
      attr_accessor :secrets


      #
      # Mapper for OSProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OSProfile',
          type: {
            name: 'Composite',
            class_name: 'OSProfile',
            model_properties: {
              computer_name: {
                required: false,
                serialized_name: 'computerName',
                type: {
                  name: 'String'
                }
              },
              admin_username: {
                required: false,
                serialized_name: 'adminUsername',
                type: {
                  name: 'String'
                }
              },
              admin_password: {
                required: false,
                serialized_name: 'adminPassword',
                type: {
                  name: 'String'
                }
              },
              custom_data: {
                required: false,
                serialized_name: 'customData',
                type: {
                  name: 'String'
                }
              },
              windows_configuration: {
                required: false,
                serialized_name: 'windowsConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'WindowsConfiguration'
                }
              },
              linux_configuration: {
                required: false,
                serialized_name: 'linuxConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'LinuxConfiguration'
                }
              },
              secrets: {
                required: false,
                serialized_name: 'secrets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VaultSecretGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VaultSecretGroup'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end

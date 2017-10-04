# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Filters the list backup policies API.
    #
    class ProtectionPolicyQueryObject

      include MsRestAzure

      include MsRest::JSONable
      # @return [BackupManagementType] Backup management type for the backup
      # policy. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type


      #
      # Mapper for ProtectionPolicyQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectionPolicyQueryObject',
          type: {
            name: 'Composite',
            class_name: 'ProtectionPolicyQueryObject',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end

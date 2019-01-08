# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_storage_cloud'

#require 'aspose_storage_cloud'
$app_sid = ""
$app_key = ""
$storage_name = ""
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here
$base_url = "http://api.groupdocs.cloud/v1" #Put your Base URL here

class Common_Utilities
  def self.Get_SignatureApi_Instance()
    # initialization of configuration for signature api client
    configuration = GroupDocsSignatureCloud::Configuration.new($app_sid, $app_key)
    configuration.api_host = $host_url
    configuration.api_base_url = $base_url

    # Create instance of the API
    return GroupDocsSignatureCloud::SignatureApi.new(configuration)
  end

  def self.Upload_Test_File()

    @TestFiles= Dir.entries(File.absolute_path("src/Resources")).select {|f| !File.directory? f}

    # Storage Api initialization
    storageConfiguration = GroupDocsStorageCloud::Configuration.new
    storageConfiguration.host = $host_url
    storageConfiguration.api_version = "/v1"
    storageConfiguration.api_key['app_sid']  = $app_sid
    storageConfiguration.api_key['api_key']  = $app_key
    storageConfiguration.api_key_prefix = "Bearer"

    storageApiClient = GroupDocsStorageCloud::ApiClient.new(configuration = storageConfiguration)

    storageApi = GroupDocsStorageCloud::StorageApi.new(storageApiClient)
    #puts("Files Count: "+((@TestFiles).length).to_s)

    @TestFiles.each do |item|
      #puts("File to Upload: "+File.basename(item))
      # skip existing file uploading
      fileExistRequest = GroupDocsStorageCloud::GetIsExistRequest.new(item, nil, $storage_name)
      fileExistsResponse = storageApi.get_is_exist(fileExistRequest)
      if fileExistsResponse.code == 200 and fileExistsResponse.file_exist.is_exist == false

        # file content uploading
        fileContent = File.binread(File.dirname(item)+"/"+File.basename(item))
        putCreateRequest = GroupDocsStorageCloud::PutCreateRequest.new(File.basename(item), fileContent, nil, $storage_name)
        storageApi.put_create(putCreateRequest)
        puts("Uploaded missing file: "+ File.basename(item))
      end
    end

    puts("File Uploading completed..")
  end
end
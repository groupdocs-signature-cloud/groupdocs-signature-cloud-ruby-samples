# Import modules
require './Common.rb'

class GetFilesList
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FolderApi.from_config($config)
    
    $request = GroupDocsSignatureCloud::GetFilesListRequest.new("signaturedocs/sample.docx", $myStorage)
    $response = $api.get_files_list($request)

    puts("Expected response type is FilesList: " + ($response).to_s)
  end
end
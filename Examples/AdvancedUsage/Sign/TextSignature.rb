# Import modules
require './Common.rb'

class TextSignature
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"

    $opts = GroupDocsSignatureCloud::SignTextOptions.new()
    $opts.signature_type = "Text"
    $opts.text = 'GroupDocs.Signature Cloud'

    # set signature position on a page
    $opts.left = 100
    $opts.top = 100
    $opts.width = 100
    $opts.height = 100
    $opts.location_measure_type = "Pixels"
    $opts.size_measure_type = "Pixels"
    $opts.stretch = "None"
    $opts.rotation_angle = 0
    $opts.horizontal_alignment = "None"
    $opts.vertical_alignment = "None"

    $opts.margin = GroupDocsSignatureCloud::Padding.new()
    $opts.margin.all = 5
    $opts.margin_measure_type = "Pixels"

    # set signature appearance
    $opts.font = GroupDocsSignatureCloud::SignatureFont.new()
    $opts.font.font_family = "Arial"
    $opts.font.font_size = 12
    $opts.font.bold = true
    $opts.font.italic = false
    $opts.font.underline = false

    $opts.fore_color = GroupDocsSignatureCloud::Color.new()
    $opts.fore_color.web = "BlueViolet"

    $opts.background_color = GroupDocsSignatureCloud::Color.new()
    $opts.background_color.web = "DarkOrange"

    $opts.page = 1

    $settings = GroupDocsSignatureCloud::SignSettings.new()
    $settings.options = [$opts]

    $settings.save_options = GroupDocsSignatureCloud::SaveOptions.new()
    $settings.save_options.output_file_path = "signaturedocs\\signedTextOne_page.docx"
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("Succeeded count: " + $response.succeeded.length.to_s)
  end
end
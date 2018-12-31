# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.requests.post_verification_barcode_from_url_request import PostVerificationBarcodeFromUrlRequest
from groupdocs_signature_cloud.models.words_verify_barcode_options_data import WordsVerifyBarcodeOptionsData

class Verify_Signature_Barcode_From_Url:

	@staticmethod
	def Post_Verify_Signature_Barcode_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=1"
			password = ""

			options = WordsVerifyBarcodeOptionsData()

			# set barcode properties
			options.barcode_type_name ="Code39Standard"
			options.text = "12345678"
			# set match type
			options.match_type ="Contains"
			#set pages for verify
			options.document_page_number = 1

			request = PostVerificationBarcodeFromUrlRequest(Url, options, password, Common_Utilities.storage_name)
			
			respose = api.post_verification_barcode_from_url(request)

			print("Signature Verification Result: "+ str(respose.result));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))

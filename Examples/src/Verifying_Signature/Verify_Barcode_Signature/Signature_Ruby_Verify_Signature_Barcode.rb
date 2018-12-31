# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.requests.post_verification_barcode_request import PostVerificationBarcodeRequest
from groupdocs_signature_cloud.models.pdf_verify_barcode_options_data import PdfVerifyBarcodeOptionsData

class Verify_Signature_Barcode:

	@staticmethod
	def Post_Verify_Signature_Barcode():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			fileName = "sample2.pdf"
			password = ""
			folder = ""

			options = PdfVerifyBarcodeOptionsData()

			# set barcode properties
			options.barcode_type_name ="Code39Standard"
			options.text = "12345678"
			# set match type
			options.match_type ="Contains"
			#set pages for verify
			options.document_page_number = 1

			request = PostVerificationBarcodeRequest(fileName, options, password, folder, Common_Utilities.storage_name)
			
			respose = api.post_verification_barcode(request)

			print("Signature Verification Result: "+ str(respose.result));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
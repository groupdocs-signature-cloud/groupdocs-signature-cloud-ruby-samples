# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.pdf_verify_qr_code_options_data import PdfVerifyQRCodeOptionsData
from groupdocs_signature_cloud.models.verify_options_collection_data import VerifyOptionsCollectionData
from groupdocs_signature_cloud.models.pdf_verify_barcode_options_data import PdfVerifyBarcodeOptionsData
from groupdocs_signature_cloud.models.requests.post_verification_collection_from_url_request import PostVerificationCollectionFromUrlRequest

class Verify_Signature_Collection_From_Url:

	@staticmethod
	def Post_Verify_Signature_Collection_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/hodevye8grewfup/one-page.pdf?dl=0"
			password = ""

			collection = VerifyOptionsCollectionData()

			# set barcode properties
			optionsBarCode = PdfVerifyBarcodeOptionsData()
			optionsBarCode.barcode_type_name ="Code39Standard"
			optionsBarCode.text = "12345678"
			optionsBarCode.match_type ="Contains"
			optionsBarCode.document_page_number = 1
						
			# set qr_code properties
			optionsQRCode = PdfVerifyQRCodeOptionsData()
			optionsQRCode.qr_code_type_name ="Aztec"
			optionsQRCode.text = "12345678"
			optionsQRCode.match_type ="Contains"
			optionsQRCode.document_page_number = 1
			
			collection._items = [optionsBarCode, optionsQRCode]
			
			request = PostVerificationCollectionFromUrlRequest(Url, collection, password, Common_Utilities.storage_name)
			
			respose = api.post_verification_collection_from_url(request)

			print("Signature Verification Result: "+ str(respose.result));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
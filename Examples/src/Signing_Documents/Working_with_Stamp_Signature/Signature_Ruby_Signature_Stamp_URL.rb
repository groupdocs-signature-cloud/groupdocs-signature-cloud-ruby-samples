# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.padding_data import PaddingData
from groupdocs_signature_cloud.models.pages_setup_data import PagesSetupData
from groupdocs_signature_cloud.models.color import Color
from groupdocs_signature_cloud.models.signature_font_data import SignatureFontData
from groupdocs_signature_cloud.models.stamp_line_data import StampLineData
from groupdocs_signature_cloud.models.border_line_data import BorderLineData
from groupdocs_signature_cloud.models.cells_sign_stamp_options_data import CellsSignStampOptionsData
from groupdocs_signature_cloud.models.requests.post_stamp_from_url_request import PostStampFromUrlRequest

class Signature_Stamp_From_Url:

	@staticmethod
	def Post_Signature_Stamp_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/enuoff7umakf6es/test.xlsx?dl=1"
			password = ""

			options = CellsSignStampOptionsData()

			# get colors
			clrGold = Color("#FFD700")
			clrBlueViolet = Color("#8A2BE2")
			clrCornflowerBlue = Color("#6495ED")
			clrDarkOrange = Color("#FF8C00")
			clrOliveDrab = Color("#6B8E23")
			clrGhostWhite = Color("#F8F8FF")
	
			# outer line
			outerLine = StampLineData()
			outerLine.text = "Outer Line"
			outerLine.font = SignatureFontData("Arial", 12, True, False, False)
			outerLine.text_bottom_intent = 5
			outerLine.text_color = clrGold
			outerLine.text_repeat_type = "FullTextRepeat"
			outerLine.background_color = clrBlueViolet
			outerLine.height = 20
			outerLineInnerBorder = BorderLineData(color = clrDarkOrange, style = "LongDash", transparency = 0.5, weight = 1.2)
			outerLine.inner_border = outerLineInnerBorder
			outerLineOuterBorder = BorderLineData(color = clrDarkOrange, style = "LongDashDot", transparency = 0.7, weight = 1.4)
			outerLine.outer_border = outerLineOuterBorder
			outerLine.visible = True		
	
			options.outer_lines = [outerLine]
	
			# inner line
			innerLine = StampLineData()
			innerLine.text = "Inner Line"
			innerLine.font = SignatureFontData("Times New Roman", 20, True, True, True)
			innerLine.text_bottom_intent = 3
			innerLine.text_color = clrGold
			innerLine.text_repeat_type = "None"
			innerLine.background_color = clrCornflowerBlue
			innerLine.height = 30
			innerLineInnerBorder = BorderLineData(color = clrOliveDrab, style = "LongDash", transparency = 0.5, weight = 1.2)
			innerLine.inner_border = innerLineInnerBorder
			innerLineOuterBorder = BorderLineData(color = clrGhostWhite, style = "Dot", transparency = 0.4, weight = 1.4)
			innerLine.outer_border = innerLineOuterBorder
			innerLine.visible = True	 
			
			options.inner_lines = [innerLine]
	
			options.image_guid = "Signature.png"
			# set position on page
			options.width = 300
			options.height = 200
			options.location_measure_type = "Pixels"
			options.size_measure_type = "Pixels"
			options.stretch = "None"
			options.rotation_angle = 0
			options.horizontal_alignment = "Left"
			options.vertical_alignment = "Top"
			# set margin
			margin = PaddingData(all = 100)		
			options.margin = margin
			options.margin_measure_type = "Pixels"
			# set background 
			options.background_color = clrCornflowerBlue
			options.background_color_crop_type = "InnerArea"
			options.background_image_crop_type = "MiddleArea"		
			#set pages for signing
			options.sign_all_pages = False
			options.document_page_number = 1
			pagesSetup = PagesSetupData(True, False, False, False)		
			options.pages_setup = pagesSetup   

			request = PostStampFromUrlRequest(Url, options, password, Common_Utilities.storage_name)
			
			api.post_stamp_from_url(request)

			print("Document Signed");

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
			
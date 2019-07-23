import QtQuick 2.0 
Item 
{ 
	IGuiAlarmIndicator
	{
		id: q419430400
		objId: 419430400
		x: 740
		y: 51
		width: 37
		height: 53
		qm_FillRectWidth: 37
		qm_FillRectHeight: 53
		qm_BorderCornerRadius: 0
		qm_BorderWidth: 1
		qm_BorderColor: "#ffffffff"
		qm_ImageID: 44
		qm_TileTop: 2
		qm_TileBottom: 2
		qm_TileRight: 2
		qm_TileLeft: 2
		qm_FillColor: "#ff3d424d"
		z:105
		anchors.bottomMargin: 0
		anchors.topMargin: 1
		anchors.leftMargin: 1
		anchors.rightMargin: 1
		qm_AlarmTextPosX: 3
		qm_AlarmTextPosY: 37
		qm_AlarmTextWidth: 31
		qm_AlarmTextHeight: 14
		qm_TextColor: "#ffffffff"
		visible: false
		qm_GraphicImageID : 42
		Component.onCompleted:
		{
			proxy.initProxy(q419430400,419430400)
		}
	}
	IGuiDialogView
	{
		id: q520093696
		objId: 520093696
		x: 25
		y: 25
		width: 700
		height: 380
		qm_FillRectWidth: 700
		qm_FillRectHeight: 380
		z:75
		visible: false
		qm_BorderCornerRadius: 0
		qm_BorderWidth: 1
		qm_BorderColor: "#ff1c1f30"
		qm_ImageID: 5
		qm_TileTop: 2
		qm_TileBottom: 2
		qm_TileRight: 2
		qm_TileLeft: 2
		qm_FillColor: "#ffff7f50"
		qm_FontSize: 16
		qm_FontFamilyName: "SimSun"
		captionrectX: 0
		captionrectY: 1
		captionrectWidth: 700
		captionrectHeight: 34
		captionrectBackgroundColor: "#ff3e414f"
		captionrectForegroundColor: "#ffffffff"
		captionTextX: 12
		captionTextY: 1
		captionTextWidth: 661
		captionTextHeight: 34
		modalityWidth: 100
		modalityHeight: 100
		IGuiModality{ }
		IGuiGraphicButton
		{
			id: q486539295
			objId: 486539295
			x: 666
			y: 0
			width: 34
			height: 34
			qm_FillRectWidth: 34
			qm_FillRectHeight: 34
			qm_BorderCornerRadius: 0
			qm_BorderWidth: 1
			qm_BorderColor: "#ff1c1f30"
			qm_ImageID: 3
			qm_TileTop: 2
			qm_TileBottom: 2
			qm_TileRight: 2
			qm_TileLeft: 2
			qm_FillColor: "#ff464b5a"
			qm_TextColor: "#ffffffff"
			qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
			qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
			qm_ValueVarTextOrientation: 0
			qm_MarginLeft: 1
			qm_MarginRight: 1
			qm_MarginBottom: 1
			qm_MarginTop: 1
			qm_FocusWidth: 2
			qm_FocusColor: "#ff55bfff"
			qm_Streached :false
			qm_GraphicImageID :31
			qm_ContentVisibility : false
			Component.onCompleted:
			{
				proxy.initProxy(q486539295,486539295)
			}
		}
		IGuiAlarmView
		{
			id: q402653184
			objId: 402653184
			x: 0
			y: 34
			width: 700
			height: 346
			qm_FillRectWidth: 700
			qm_FillRectHeight: 346
			qm_BorderCornerRadius: 0
			qm_BorderWidth: 0
			qm_BorderColor: "#ff000000"
			qm_ImageID: 34
			qm_TileTop: 0
			qm_TileBottom: 0
			qm_TileRight: 0
			qm_TileLeft: 0
			qm_FillColor: "#fff7f3f7"
			IGuiListCtrl
			{
				id: qu402653184
				objectName: "qu402653184"
				x: 0
				y: 0
				width: 698
				height: 293
				totalColumnWidth: 662
				qm_leftImageID: 35
				qm_leftTileTop: 8
				qm_leftTileBottom: 9
				qm_leftTileRight: 2
				qm_leftTileLeft: 4
				qm_middleImageID: 36
				qm_middleTileTop: 8
				qm_middleTileBottom: 9
				qm_middleTileRight: 2
				qm_middleTileLeft: 2
				qm_rightImageID: 37
				qm_rightTileTop: 8
				qm_rightTileBottom: 9
				qm_rightTileRight: 4
				qm_rightTileLeft: 2
				qm_leftBorderCornerRadius: 2
				qm_tableBackColor: "#ffffffff"
				qm_tableSelectBackColor: "#ff94b6e7"
				qm_tableAlternateBackColor: "#ffe7e7ef"
				qm_tableHeaderBackColor: "#ffefebef"
				qm_tableTextColor: "#ff31344a"
				qm_tableSelectTextColor: "#ffffffff"
				qm_tableAlternateTextColor: "#ff31344a"
				qm_tableMarginLeft: 2
				qm_tableMarginRight: 1
				qm_tableMarginBottom: 1
				qm_tableMarginTop: 1
				qm_tableHeaderTextColor: "#ff31344a"
				qm_tableHeaderValueVarTextAlignmentHorizontal: Text.AlignLeft
				qm_tableHeaderValueVarTextAlignmentVertical: Text.AlignVCenter
				qm_tableHeaderValueVarTextOrientation: 0
				qm_tableHeaderMarginLeft: 3
				qm_tableHeaderMarginRight: 1
				qm_tableHeaderMarginBottom: 1
				qm_tableHeaderMarginTop: 1
				qm_gridLineStyle: 0
				qm_gridLineWidth: 0
				qm_gridLineColor: "#ffffffff"
				qm_noOfColumns: 5
				qm_tableRowHeight: 15
				qm_tableHeaderHeight: 15
				qm_hasHeader: true
				qm_hasGridLines: false
				qm_hasBorder: false
				qm_hasDisplayFocusLine: true
				qm_hasVerticalScrolling: true
				qm_hasVerticalScrollBar: true
				qm_hasHorizontalScrollBar: false
				qm_hasColumnOrdering: false
				qm_hasHighLightFullRow: true
				qm_hasVerUpDownPresent: false
				qm_hasVerPgUpDownPresent: false
				qm_hasHighlight: true
				qm_hasUpDownAsPageUpDown: false
				qm_hasLongAlarmButton: true
				qm_hasExtraPixelForLineHeight: false
				qm_hasRowEditable: false
				qm_hasRowJustification: false
				qm_hasRowJustificationBottom: false
				qm_linesPerRow: 1
				IGuiListColumnView
				{
					id: qc118000000
					colIndex: 0
					x: 0
					y: 0
					width: 28
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc218000000
					colIndex: 1
					x: 28
					y: 0
					width: 76
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc318000000
					colIndex: 2
					x: 104
					y: 0
					width: 76
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc418000000
					colIndex: 3
					x: 180
					y: 0
					width: 92
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc518000000
					colIndex: 4
					x: 272
					y: 0
					width: 390
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
			}
			IGuiGraphicButton
			{
				id: q486539296
				objId: 486539296
				x: 2
				y: 303
				width: 56
				height: 40
				qm_FillRectWidth: 55
				qm_FillRectHeight: 39
				qm_BorderCornerRadius: 3
				qm_BorderWidth: 1
				qm_BorderColor: "#ff9c9aa5"
				qm_ImageID: 38
				qm_TileTop: 15
				qm_TileBottom: 15
				qm_TileRight: 5
				qm_TileLeft: 5
				qm_FillColor: "#ffefebef"
				qm_TextColor: "#ff000000"
				qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
				qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
				qm_ValueVarTextOrientation: 0
				qm_MarginLeft: 2
				qm_MarginRight: 1
				qm_MarginBottom: 1
				qm_MarginTop: 1
				qm_FocusWidth: 2
				qm_FocusColor: "#ff94b6e7"
				qm_Streached :false
				qm_GraphicImageID :32
				qm_ContentVisibility : false
				Component.onCompleted:
				{
					proxy.initProxy(q486539296,486539296)
				}
			}
			IGuiGraphicButton
			{
				id: q486539297
				objId: 486539297
				x: 640
				y: 303
				width: 56
				height: 40
				qm_FillRectWidth: 55
				qm_FillRectHeight: 39
				qm_BorderCornerRadius: 3
				qm_BorderWidth: 1
				qm_BorderColor: "#ff9c9aa5"
				qm_ImageID: 38
				qm_TileTop: 15
				qm_TileBottom: 15
				qm_TileRight: 5
				qm_TileLeft: 5
				qm_FillColor: "#ffefebef"
				qm_TextColor: "#ff000000"
				qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
				qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
				qm_ValueVarTextOrientation: 0
				qm_MarginLeft: 2
				qm_MarginRight: 1
				qm_MarginBottom: 1
				qm_MarginTop: 1
				qm_FocusWidth: 2
				qm_FocusColor: "#ff94b6e7"
				qm_Streached :false
				qm_GraphicImageID :33
				qm_ContentVisibility : false
				Component.onCompleted:
				{
					proxy.initProxy(q486539297,486539297)
				}
			}
			Component.onCompleted:
			{
				proxy.initProxy(q402653184,402653184)
			}
		}
		Component.onCompleted:
		{
			proxy.initProxy(q520093696,520093696)
		}
	}
	IGuiDialogView
	{
		id: q520093697
		objId: 520093697
		x: 50
		y: 50
		width: 700
		height: 380
		qm_FillRectWidth: 700
		qm_FillRectHeight: 380
		z:75
		visible: false
		qm_BorderCornerRadius: 0
		qm_BorderWidth: 1
		qm_BorderColor: "#ff1c1f30"
		qm_ImageID: 5
		qm_TileTop: 2
		qm_TileBottom: 2
		qm_TileRight: 2
		qm_TileLeft: 2
		qm_FillColor: "#ffff7f50"
		qm_FontSize: 16
		qm_FontFamilyName: "SimSun"
		captionrectX: 0
		captionrectY: 1
		captionrectWidth: 700
		captionrectHeight: 34
		captionrectBackgroundColor: "#ff3e414f"
		captionrectForegroundColor: "#ffffffff"
		captionTextX: 12
		captionTextY: 1
		captionTextWidth: 661
		captionTextHeight: 34
		modalityWidth: 100
		modalityHeight: 100
		IGuiModality{ }
		IGuiGraphicButton
		{
			id: q486539298
			objId: 486539298
			x: 666
			y: 0
			width: 34
			height: 34
			qm_FillRectWidth: 34
			qm_FillRectHeight: 34
			qm_BorderCornerRadius: 0
			qm_BorderWidth: 1
			qm_BorderColor: "#ff1c1f30"
			qm_ImageID: 3
			qm_TileTop: 2
			qm_TileBottom: 2
			qm_TileRight: 2
			qm_TileLeft: 2
			qm_FillColor: "#ff464b5a"
			qm_TextColor: "#ffffffff"
			qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
			qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
			qm_ValueVarTextOrientation: 0
			qm_MarginLeft: 1
			qm_MarginRight: 1
			qm_MarginBottom: 1
			qm_MarginTop: 1
			qm_FocusWidth: 2
			qm_FocusColor: "#ff55bfff"
			qm_Streached :false
			qm_GraphicImageID :39
			qm_ContentVisibility : false
			Component.onCompleted:
			{
				proxy.initProxy(q486539298,486539298)
			}
		}
		IGuiAlarmView
		{
			id: q402653185
			objId: 402653185
			x: 0
			y: 34
			width: 700
			height: 346
			qm_FillRectWidth: 700
			qm_FillRectHeight: 346
			qm_BorderCornerRadius: 0
			qm_BorderWidth: 0
			qm_BorderColor: "#ff000000"
			qm_ImageID: 34
			qm_TileTop: 0
			qm_TileBottom: 0
			qm_TileRight: 0
			qm_TileLeft: 0
			qm_FillColor: "#fff7f3f7"
			IGuiListCtrl
			{
				id: qu402653185
				objectName: "qu402653185"
				x: 0
				y: 0
				width: 698
				height: 293
				totalColumnWidth: 662
				qm_leftImageID: 35
				qm_leftTileTop: 8
				qm_leftTileBottom: 9
				qm_leftTileRight: 2
				qm_leftTileLeft: 4
				qm_middleImageID: 36
				qm_middleTileTop: 8
				qm_middleTileBottom: 9
				qm_middleTileRight: 2
				qm_middleTileLeft: 2
				qm_rightImageID: 37
				qm_rightTileTop: 8
				qm_rightTileBottom: 9
				qm_rightTileRight: 4
				qm_rightTileLeft: 2
				qm_leftBorderCornerRadius: 2
				qm_tableBackColor: "#ffffffff"
				qm_tableSelectBackColor: "#ff94b6e7"
				qm_tableAlternateBackColor: "#ffe7e7ef"
				qm_tableHeaderBackColor: "#ffefebef"
				qm_tableTextColor: "#ff31344a"
				qm_tableSelectTextColor: "#ffffffff"
				qm_tableAlternateTextColor: "#ff31344a"
				qm_tableMarginLeft: 2
				qm_tableMarginRight: 1
				qm_tableMarginBottom: 1
				qm_tableMarginTop: 1
				qm_tableHeaderTextColor: "#ff31344a"
				qm_tableHeaderValueVarTextAlignmentHorizontal: Text.AlignLeft
				qm_tableHeaderValueVarTextAlignmentVertical: Text.AlignVCenter
				qm_tableHeaderValueVarTextOrientation: 0
				qm_tableHeaderMarginLeft: 3
				qm_tableHeaderMarginRight: 1
				qm_tableHeaderMarginBottom: 1
				qm_tableHeaderMarginTop: 1
				qm_gridLineStyle: 0
				qm_gridLineWidth: 0
				qm_gridLineColor: "#ffffffff"
				qm_noOfColumns: 5
				qm_tableRowHeight: 15
				qm_tableHeaderHeight: 15
				qm_hasHeader: true
				qm_hasGridLines: false
				qm_hasBorder: false
				qm_hasDisplayFocusLine: true
				qm_hasVerticalScrolling: true
				qm_hasVerticalScrollBar: true
				qm_hasHorizontalScrollBar: false
				qm_hasColumnOrdering: false
				qm_hasHighLightFullRow: true
				qm_hasVerUpDownPresent: false
				qm_hasVerPgUpDownPresent: false
				qm_hasHighlight: true
				qm_hasUpDownAsPageUpDown: false
				qm_hasLongAlarmButton: true
				qm_hasExtraPixelForLineHeight: false
				qm_hasRowEditable: false
				qm_hasRowJustification: false
				qm_hasRowJustificationBottom: false
				qm_linesPerRow: 1
				IGuiListColumnView
				{
					id: qc118000001
					colIndex: 0
					x: 0
					y: 0
					width: 28
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc218000001
					colIndex: 1
					x: 28
					y: 0
					width: 76
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc318000001
					colIndex: 2
					x: 104
					y: 0
					width: 76
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc418000001
					colIndex: 3
					x: 180
					y: 0
					width: 92
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc518000001
					colIndex: 4
					x: 272
					y: 0
					width: 390
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
			}
			IGuiGraphicButton
			{
				id: q486539299
				objId: 486539299
				x: 2
				y: 303
				width: 56
				height: 40
				qm_FillRectWidth: 55
				qm_FillRectHeight: 39
				qm_BorderCornerRadius: 3
				qm_BorderWidth: 1
				qm_BorderColor: "#ff9c9aa5"
				qm_ImageID: 38
				qm_TileTop: 15
				qm_TileBottom: 15
				qm_TileRight: 5
				qm_TileLeft: 5
				qm_FillColor: "#ffefebef"
				qm_TextColor: "#ff000000"
				qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
				qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
				qm_ValueVarTextOrientation: 0
				qm_MarginLeft: 2
				qm_MarginRight: 1
				qm_MarginBottom: 1
				qm_MarginTop: 1
				qm_FocusWidth: 2
				qm_FocusColor: "#ff94b6e7"
				qm_Streached :false
				qm_GraphicImageID :40
				qm_ContentVisibility : false
				Component.onCompleted:
				{
					proxy.initProxy(q486539299,486539299)
				}
			}
			IGuiGraphicButton
			{
				id: q486539300
				objId: 486539300
				x: 640
				y: 303
				width: 56
				height: 40
				qm_FillRectWidth: 55
				qm_FillRectHeight: 39
				qm_BorderCornerRadius: 3
				qm_BorderWidth: 1
				qm_BorderColor: "#ff9c9aa5"
				qm_ImageID: 38
				qm_TileTop: 15
				qm_TileBottom: 15
				qm_TileRight: 5
				qm_TileLeft: 5
				qm_FillColor: "#ffefebef"
				qm_TextColor: "#ff000000"
				qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
				qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
				qm_ValueVarTextOrientation: 0
				qm_MarginLeft: 2
				qm_MarginRight: 1
				qm_MarginBottom: 1
				qm_MarginTop: 1
				qm_FocusWidth: 2
				qm_FocusColor: "#ff94b6e7"
				qm_Streached :false
				qm_GraphicImageID :41
				qm_ContentVisibility : false
				Component.onCompleted:
				{
					proxy.initProxy(q486539300,486539300)
				}
			}
			Component.onCompleted:
			{
				proxy.initProxy(q402653185,402653185)
			}
		}
		Component.onCompleted:
		{
			proxy.initProxy(q520093697,520093697)
		}
	}
	IGuiDialogView
	{
		id: q520093698
		objId: 520093698
		x: 75
		y: 75
		width: 700
		height: 380
		qm_FillRectWidth: 700
		qm_FillRectHeight: 380
		z:75
		visible: false
		qm_BorderCornerRadius: 0
		qm_BorderWidth: 1
		qm_BorderColor: "#ff1c1f30"
		qm_ImageID: 5
		qm_TileTop: 2
		qm_TileBottom: 2
		qm_TileRight: 2
		qm_TileLeft: 2
		qm_FillColor: "#ffff7f50"
		qm_FontSize: 16
		qm_FontFamilyName: "SimSun"
		captionrectX: 0
		captionrectY: 1
		captionrectWidth: 700
		captionrectHeight: 34
		captionrectBackgroundColor: "#ff3e414f"
		captionrectForegroundColor: "#ffffffff"
		captionTextX: 12
		captionTextY: 1
		captionTextWidth: 661
		captionTextHeight: 34
		modalityWidth: 100
		modalityHeight: 100
		IGuiModality{ }
		IGuiGraphicButton
		{
			id: q486539301
			objId: 486539301
			x: 666
			y: 0
			width: 34
			height: 34
			qm_FillRectWidth: 34
			qm_FillRectHeight: 34
			qm_BorderCornerRadius: 0
			qm_BorderWidth: 1
			qm_BorderColor: "#ff1c1f30"
			qm_ImageID: 3
			qm_TileTop: 2
			qm_TileBottom: 2
			qm_TileRight: 2
			qm_TileLeft: 2
			qm_FillColor: "#ff464b5a"
			qm_TextColor: "#ffffffff"
			qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
			qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
			qm_ValueVarTextOrientation: 0
			qm_MarginLeft: 1
			qm_MarginRight: 1
			qm_MarginBottom: 1
			qm_MarginTop: 1
			qm_FocusWidth: 2
			qm_FocusColor: "#ff55bfff"
			qm_Streached :false
			qm_GraphicImageID :45
			qm_ContentVisibility : false
			Component.onCompleted:
			{
				proxy.initProxy(q486539301,486539301)
			}
		}
		IGuiAlarmView
		{
			id: q402653186
			objId: 402653186
			x: 0
			y: 34
			width: 700
			height: 346
			qm_FillRectWidth: 700
			qm_FillRectHeight: 346
			qm_BorderCornerRadius: 0
			qm_BorderWidth: 0
			qm_BorderColor: "#ff000000"
			qm_ImageID: 34
			qm_TileTop: 0
			qm_TileBottom: 0
			qm_TileRight: 0
			qm_TileLeft: 0
			qm_FillColor: "#fff7f3f7"
			IGuiListCtrl
			{
				id: qu402653186
				objectName: "qu402653186"
				x: 0
				y: 0
				width: 698
				height: 293
				totalColumnWidth: 662
				qm_leftImageID: 35
				qm_leftTileTop: 8
				qm_leftTileBottom: 9
				qm_leftTileRight: 2
				qm_leftTileLeft: 4
				qm_middleImageID: 36
				qm_middleTileTop: 8
				qm_middleTileBottom: 9
				qm_middleTileRight: 2
				qm_middleTileLeft: 2
				qm_rightImageID: 37
				qm_rightTileTop: 8
				qm_rightTileBottom: 9
				qm_rightTileRight: 4
				qm_rightTileLeft: 2
				qm_leftBorderCornerRadius: 2
				qm_tableBackColor: "#ffffffff"
				qm_tableSelectBackColor: "#ff94b6e7"
				qm_tableAlternateBackColor: "#ffe7e7ef"
				qm_tableHeaderBackColor: "#ffefebef"
				qm_tableTextColor: "#ff31344a"
				qm_tableSelectTextColor: "#ffffffff"
				qm_tableAlternateTextColor: "#ff31344a"
				qm_tableMarginLeft: 2
				qm_tableMarginRight: 1
				qm_tableMarginBottom: 1
				qm_tableMarginTop: 1
				qm_tableHeaderTextColor: "#ff31344a"
				qm_tableHeaderValueVarTextAlignmentHorizontal: Text.AlignLeft
				qm_tableHeaderValueVarTextAlignmentVertical: Text.AlignVCenter
				qm_tableHeaderValueVarTextOrientation: 0
				qm_tableHeaderMarginLeft: 3
				qm_tableHeaderMarginRight: 1
				qm_tableHeaderMarginBottom: 1
				qm_tableHeaderMarginTop: 1
				qm_gridLineStyle: 0
				qm_gridLineWidth: 0
				qm_gridLineColor: "#ffffffff"
				qm_noOfColumns: 5
				qm_tableRowHeight: 15
				qm_tableHeaderHeight: 15
				qm_hasHeader: true
				qm_hasGridLines: false
				qm_hasBorder: false
				qm_hasDisplayFocusLine: true
				qm_hasVerticalScrolling: true
				qm_hasVerticalScrollBar: true
				qm_hasHorizontalScrollBar: false
				qm_hasColumnOrdering: false
				qm_hasHighLightFullRow: true
				qm_hasVerUpDownPresent: false
				qm_hasVerPgUpDownPresent: false
				qm_hasHighlight: true
				qm_hasUpDownAsPageUpDown: false
				qm_hasLongAlarmButton: true
				qm_hasExtraPixelForLineHeight: false
				qm_hasRowEditable: false
				qm_hasRowJustification: false
				qm_hasRowJustificationBottom: false
				qm_linesPerRow: 1
				IGuiListColumnView
				{
					id: qc118000002
					colIndex: 0
					x: 0
					y: 0
					width: 28
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc218000002
					colIndex: 1
					x: 28
					y: 0
					width: 76
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc318000002
					colIndex: 2
					x: 104
					y: 0
					width: 76
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc418000002
					colIndex: 3
					x: 180
					y: 0
					width: 92
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
				IGuiListColumnView
				{
					id: qc518000002
					colIndex: 4
					x: 272
					y: 0
					width: 390
					height: 261
					columnType: 0
					qm_columnValueVarTextAlignmentHorizontal: Text.AlignLeft
					qm_columnValueVarTextAlignmentVertical: Text.AlignVCenter
				}
			}
			IGuiGraphicButton
			{
				id: q486539302
				objId: 486539302
				x: 2
				y: 303
				width: 56
				height: 40
				qm_FillRectWidth: 55
				qm_FillRectHeight: 39
				qm_BorderCornerRadius: 3
				qm_BorderWidth: 1
				qm_BorderColor: "#ff9c9aa5"
				qm_ImageID: 38
				qm_TileTop: 15
				qm_TileBottom: 15
				qm_TileRight: 5
				qm_TileLeft: 5
				qm_FillColor: "#ffefebef"
				qm_TextColor: "#ff000000"
				qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
				qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
				qm_ValueVarTextOrientation: 0
				qm_MarginLeft: 2
				qm_MarginRight: 1
				qm_MarginBottom: 1
				qm_MarginTop: 1
				qm_FocusWidth: 2
				qm_FocusColor: "#ff94b6e7"
				qm_Streached :false
				qm_GraphicImageID :46
				qm_ContentVisibility : false
				Component.onCompleted:
				{
					proxy.initProxy(q486539302,486539302)
				}
			}
			IGuiGraphicButton
			{
				id: q486539303
				objId: 486539303
				x: 640
				y: 303
				width: 56
				height: 40
				qm_FillRectWidth: 55
				qm_FillRectHeight: 39
				qm_BorderCornerRadius: 3
				qm_BorderWidth: 1
				qm_BorderColor: "#ff9c9aa5"
				qm_ImageID: 38
				qm_TileTop: 15
				qm_TileBottom: 15
				qm_TileRight: 5
				qm_TileLeft: 5
				qm_FillColor: "#ffefebef"
				qm_TextColor: "#ff000000"
				qm_ValueVarTextAlignmentHorizontal: Image.AlignHCenter
				qm_ValueVarTextAlignmentVertical: Image.AlignVCenter
				qm_ValueVarTextOrientation: 0
				qm_MarginLeft: 2
				qm_MarginRight: 1
				qm_MarginBottom: 1
				qm_MarginTop: 1
				qm_FocusWidth: 2
				qm_FocusColor: "#ff94b6e7"
				qm_Streached :false
				qm_GraphicImageID :47
				qm_ContentVisibility : false
				Component.onCompleted:
				{
					proxy.initProxy(q486539303,486539303)
				}
			}
			Component.onCompleted:
			{
				proxy.initProxy(q402653186,402653186)
			}
		}
		Component.onCompleted:
		{
			proxy.initProxy(q520093698,520093698)
		}
	}
}

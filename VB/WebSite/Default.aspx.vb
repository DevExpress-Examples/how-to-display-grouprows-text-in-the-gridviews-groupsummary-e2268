Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxGridView

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub ASPxGridView1_SummaryDisplayText(ByVal sender As Object, ByVal e As ASPxGridViewSummaryDisplayTextEventArgs)
		Dim grid As ASPxGridView = CType(sender, ASPxGridView)
		If e.IsGroupSummary Then
			Dim summaryText As Object = grid.GetRowValues(e.VisibleIndex, String.Empty)
			If summaryText IsNot Nothing Then
				e.Item.DisplayFormat = e.Item.DisplayFormat.Replace("#####", summaryText.ToString())
				e.Text = e.Item.DisplayFormat.Replace("*****", e.Value.ToString())
			End If
		End If
	End Sub
End Class
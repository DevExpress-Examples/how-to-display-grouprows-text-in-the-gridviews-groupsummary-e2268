<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="ProductID" OnSummaryDisplayText="ASPxGridView1_SummaryDisplayText">
			<Columns>
				<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3" GroupIndex="0">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="4">
				</dx:GridViewDataCheckColumn>
				<dx:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="5">
				</dx:GridViewDataTextColumn>
			</Columns>
			<Settings ShowGroupFooter="VisibleIfExpanded" />
			<GroupSummary>
				<dx:ASPxSummaryItem FieldName="ProductID" ShowInGroupFooterColumn="EAN13" SummaryType="Count" DisplayFormat="Count of ##### is *****" />
			</GroupSummary>
		</dx:ASPxGridView>
	</div>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [Discontinued], [EAN13] FROM [Products]"></asp:AccessDataSource>
	</form>
</body>
</html>
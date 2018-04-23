using System;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page {
    protected void ASPxGridView1_SummaryDisplayText(object sender, ASPxGridViewSummaryDisplayTextEventArgs e) {
        ASPxGridView grid = (ASPxGridView)sender;
        if (e.IsGroupSummary) {
            object summaryText = grid.GetRowValues(e.VisibleIndex, string.Empty);
            if (summaryText != null) {
                e.Item.DisplayFormat = e.Item.DisplayFormat.Replace("#####", summaryText.ToString());
                e.Text = e.Item.DisplayFormat.Replace("*****", e.Value.ToString());
            }
        }
    }
}
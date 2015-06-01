<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/siteMain.Master" Inherits="System.Web.Mvc.ViewPage<MvcPOS15.Models.LocalPasswordModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentMiddle" runat="server">

<h2>login3</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>LocalPasswordModel</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.OldPassword) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.OldPassword) %>
            <%: Html.ValidationMessageFor(model => model.OldPassword) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.NewPassword) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.NewPassword) %>
            <%: Html.ValidationMessageFor(model => model.NewPassword) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ConfirmPassword) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ConfirmPassword) %>
            <%: Html.ValidationMessageFor(model => model.ConfirmPassword) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainWideTop" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentLeft" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentRight" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="scriptsContent" runat="server">
</asp:Content>

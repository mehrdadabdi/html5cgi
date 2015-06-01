<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site2Col.Master" Inherits="System.Web.Mvc.ViewPage<MvcPOS15.Models.RegisterModel>" %>



<asp:Content ID="registerContent" ContentPlaceHolderID="MainWideTop" runat="server">
       <a href="/Account/Login" class="dropdown-toggle" data-toggle="dropdown">UI Elements</a>

    <hgroup class="title">
        <h3>Register.</h3>
        <h4>Create a new account.</h4>
    </hgroup>

    <% using (Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary() %>

        <fieldset>
            <legend>Registration Form</legend>
            <ol>
                <li>
                    <%: Html.LabelFor(m => m.UserName) %>
                    <%: Html.TextBoxFor(m => m.UserName) %>
                </li>
                <li>
                    <%: Html.LabelFor(m => m.Password) %>
                    <%: Html.PasswordFor(m => m.Password) %>
                </li>
                <li>
                    <%: Html.LabelFor(m => m.ConfirmPassword) %>
                    <%: Html.PasswordFor(m => m.ConfirmPassword) %>
                </li>
            </ol>
            <input type="submit" value="Register" />
        </fieldset>
    <% } %>
</asp:Content>


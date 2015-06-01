<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site2ColR.Master" Inherits="System.Web.Mvc.ViewPage<MvcPOS15.Models.LoginModel>" %>





<asp:Content ID="dd" ContentPlaceHolderID="MainWideTop" runat="server">


    <div style="margin-left:20px;">
     <% using (Html.BeginForm(new { ReturnUrl = ViewBag.ReturnUrl, @class = "form-horizontal" }))
        { %>
        <%: Html.AntiForgeryToken()%>


        <%: Html.ValidationSummary(true)%>


<!-- Text input-->
<div class="control-group">
    <%: Html.LabelFor(m => m.UserName)%>
  <div class="controls2">

       <%: Html.TextBoxFor(m => m.UserName)%><br />
          <%: Html.ValidationMessageFor(m => m.UserName)%>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  
    <%: Html.LabelFor(m => m.Password )%>
  <div class="controls">
   <%: Html.PasswordFor(m => m.Password, new {@class="input-medium search-query"} )%><br />
                    <%: Html.ValidationMessageFor(m => m.Password )%>
    
  </div>
</div>

<!-- Multiple Checkboxes (inline) -->
<div class="control-group">


  <div class="controls">
    <label class="checkbox inline" for="rem" style="margin-left: 20px">
    <%: Html.CheckBoxFor(m => m.RememberMe)%>

                    <%: Html.LabelFor(m => m.RememberMe)%>
    </label>
  </div>
</div>

<!-- Button -->
<div class="button-groups">
  <label class="control-label" for="singlebutton"></label>
  <div class="controls">
       <button type="submit" value="Log in"  class="btn btn-success" >LOG IN</button>

  </div>
</div>

     <p>
            <%: Html.ActionLink("Register", "Register") %> if you don't have an account.
        </p>
    <%} %>


        <h2>Use another service to log in.</h2>
        <%: Html.Action("ExternalLoginsList", new { ReturnUrl = ViewBag.ReturnUrl }) %>
  </div>
</asp:Content>


<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Register Src="~/Views/Shared/control/Partial22.ascx" TagPrefix="uc1" TagName="Partial22" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>test</title>
       <link href="/Content/bootstrap.css" rel="stylesheet"/>
<link href="/Content/site.css" rel="stylesheet"/>

    <script src="/Scripts/modernizr-2.6.2.js"></script>
        <link href="/assets/css/vendors.css" rel="stylesheet">


    <link href="/assets/css/style-blue.css" rel="stylesheet" title="default">

    <link href="/assets/css/preload.css" rel="stylesheet">
         <script src="/assets/js/vendors.js"></script>
    
        <link href="/assets/css/vendors.css" rel="stylesheet">

    <link href="/assets/css/cgi/StyleSheet.css" rel="stylesheet" />
    <script>

        $(function () {
            // Setup drop down menu
            $('.dropdown-toggle').dropdown();

            // Fix input element click problem
            $('.dropdown input, .dropdown label').click(function (e) {
                e.stopPropagation();
            });
        });

    </script>
</head>
<body>
    <div>
        <uc1:Partial22 runat="server" ID="Partial22" />

        <h1>sdjhgjhghj</h1>
        <div class="r3ow">
    <div class="coll32132-md-4">
        <h2>Getting started</h2>
        <p>
            ASP.NET MVC gives you a powerful, patterns-based way to build dynamic websites that
            enables a clean separation of concerns and gives you full control over markup
            for enjoyable, agile development.
        </p>
        <p><a class="btn btn-success" href="http://go.microsoft.com/fwlink/?LinkId=301865">Learn more &raquo;</a></p>
    </div>
</div>
  
    </div>

            <script src="/Scripts/jquery-1.10.2.js"></script>

        <script src="/Scripts/bootstrap.js"></script>
<script src="/Scripts/respond.js"></script>

</body>
</html>

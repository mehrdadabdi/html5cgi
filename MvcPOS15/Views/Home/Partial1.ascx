<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<h2>Partial</h2>
    <div class="fadein">
        <img src="http://farm3.static.flickr.com/2610/4148988872_990b6da667.jpg">
        <img src="http://farm3.static.flickr.com/2597/4121218611_040cd7b3f2.jpg">
        <img src="http://farm3.static.flickr.com/2531/4121218751_ac8bf49d5d.jpg">
    </div>


    <script type="text/javascript">


        $(function () {
            $('.fadein img:gt(0)').hide();
            setInterval(function () {
                $('.fadein :first-child').fadeOut()
                   .next('img').fadeIn()
                   .end().appendTo('.fadein');
            },
              3000);
        });

    </script>
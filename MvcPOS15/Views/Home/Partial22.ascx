<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MvcPOS15.Models.PartialModel2>" %>

  <nav class="navbar2 navbar-static-top navbar-default navbar-header-full navbar-dark yamm" role="navigation" id="header" style="background-image:url(/assets/img/back_menubar.png)" >
    <div class="container">
    
                <div class="header-full-title" style="background-image:url(/assets/img/back_profile.jpg); " >
            <h1 class="animated fadeInRight"><a href="index.html">artificial <span>reason</span></a></h1>
      
<p>.</p>

        </div>
        
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" >

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>

                <i class="fa2 fa-bars">

                     <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                </i>
            </button>
       
            <a id="ar-brand" class="navbar-brand hidden-lg hidden-md hidden-sm navbar-dark"  href="index.html"><span>CGI Design</span></a>
        </div> <!-- navbar-header -->

        <!-- Collect the nav links, forms, and other content for toggling -->

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                    <li class="dropdown"><a href="/home" class="dropdown-toggle" data-toggle="dropdown">Option 1: Default</a></li>
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Hom1e</a>
                </li>
                <li class="dropdown yamm-fw" >
                    <a href="/Account/Login" class="dropdown-toggle" data-toggle="dropdown">UI Elements</a>
                 
                </li>
               <li class="dropdown yamm-fw" >
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">UI logIn</a>
                  <ul class="dropdown-menu dropdown-menu-left">
                        <li><a href="/Account/Login">Option 1: Default</a></li>
                      </ul>
                </li>
             </ul>
        </div><!-- navbar-collapse -->
    </div><!-- container -->
</nav>


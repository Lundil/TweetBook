<!-- #AE2573-->
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>TweetBook</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="css/styles.css" rel="stylesheet">
    <link rel="icon" href="http://moodle.univ-lille1.fr/theme/image.php/ulille/theme/1484841149/favicon" />
  </head>
  <body>
      <div class="wrapper">
        <div class="box">
          <div class="row row-offcanvas row-offcanvas-left">
          <!-- sidebar -->
          <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">

          <ul class="nav">
            <li>
              <a href="#" data-toggle="offcanvas" class="visible-xs text-center"><i class="glyphicon glyphicon-chevron-right"></i></a>
            </li>
          </ul>
          <ul class="nav hidden-xs" id="lg-menu">
            <li class="active"><a href="friend.jsp"><i class="glyphicon glyphicon-list-alt"></i> Amis</a></li>
            <li><a href="infos.jsp"><i class="glyphicon glyphicon-list"></i> Infos</a></li>
            <li><a href="#"><i class="glyphicon glyphicon-paperclip"></i> Photos</a></li>
          </ul>
          <ul class="list-unstyled hidden-xs" id="sidebar-footer">
            <li>
              <a href="http://www.bootply.com"><h3><a href="#" class="btn btn-info btn-lg">
              <span class="glyphicon glyphicon-log-out"></span> Log out
              </a></h3>
            </li>
          </ul>
          <!-- tiny only nav-->
          <ul class="nav visible-xs" id="xs-menu">
            <li><a href="#featured" class="text-center"><i class="glyphicon glyphicon-list-alt"></i></a></li>
            <li><a href="#stories" class="text-center"><i class="glyphicon glyphicon-list"></i></a></li>
            <li><a href="#" class="text-center"><i class="glyphicon glyphicon-paperclip"></i></a></li>
            <li><a href="#" class="text-center"><i class="glyphicon glyphicon-refresh"></i></a></li>
          </ul>
          </div>
            <!-- /sidebar -->
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
              <!-- top nav -->
              <div class="navbar navbar-blue navbar-static-top">  
                <div class="navbar-header">
                  <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                  <a href="/" class="navbar-brand logo">t</a>
                </div>
                <nav class="collapse navbar-collapse" role="navigation">
                  <form class="navbar-form navbar-left">
                    <div class="input-group input-group-sm" style="max-width:360px;">
                      <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
                      <div class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                          <i class="glyphicon glyphicon-search"></i>
                        </button>
                      </div>
                    </div>
                  </form>
                </nav>
              </div>
              <!-- /top nav -->

              <div class="padding">
              <div class="full col-sm-9">

              <!-- content -->                      
              <div class="row">
              <!-- main col left --> 
              <div class="col-sm-5">
                <div class="panel panel-default">
                  <div class="panel-thumbnail">
                    <img src="/assets/example/bg_5.jpg" class="img-responsive">(Requete image)
                  </div>
                  <div class="panel-body">
                    <p class="lead">(Requete nom)Urbanization</p>
                    <p>(Requete nombre d'amis) amis</p>
                    <p>
                      (Requete image des 5 premiers amis)<br>
                      <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                      <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                      <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                      <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                      <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                    </p>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <a href="friend.jsp" class="pull-right">En voir +</a> <h4>Ajouter des amis</h4>
                  </div>
                  <div class="panel-body">
                    (Requete image des 5 premiers amis de la base de donnee)
                    <ul class="list-unstyled">
                      <li>
                        <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                        <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                        <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                        <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                        <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <a href="infos.jsp" class="pull-right">Modifier</a> <h4>A propos</h4>
                  </div>
                  <div class="panel-body">
                    (Requete lastName firstName birthDay birthPlace email address phoneNumber<br>
                  </div>
                </div>
              </div>

              <!-- main col right -->
              <div class="col-sm-7">
                <div class="well"> 
                  <form class="form-horizontal" role="form">
                    <h4>Quoi de neuf ?</h4>
                    <div class="form-group" style="padding:14px;">
                      <textarea class="form-control" placeholder="Update your status"></textarea>
                    </div>
                    <button class="btn btn-primary pull-right" type="button">Post</button>
                      <ul class="list-inline">
                        <li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
                        <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
                        <li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li>
                      </ul>
                  </form>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading"><h4>Post numero 1</h4></div>
                  <div class="panel-body">
                    (Requete image, nom, date de l'auteur du post)
                    <hr>
                    <p>(Requete commentaire du post)</p>
                    (Requete image du post si existe)
                    <img src="//placehold.it/150x150">
                    <div class="clearfix"></div>
                    <hr>
                    <form>
                      <div class="input-group">
                        <div class="input-group-btn">
                          <button class="btn btn-default">+1</button><button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>
                        </div>
                        <input type="text" class="form-control" placeholder="Commenter..">
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              </div><!--/row-->
              <h4 class="text-center">
              <a href="http://bootply.com/96266" target="ext">TweetBook DA2I 2016-2017</a>
              </h4>
              <hr>
              </div><!-- /col-9 -->
              </div><!-- /padding -->
            </div>
            <!-- /main -->
          </div>
        </div>
    </div>


    <!--post modal-->
    <div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>Update Status
          </div>
          <div class="modal-body">
            <form class="form center-block">
              <div class="form-group">
                <textarea class="form-control input-lg" autofocus="" placeholder="What do you want to share?"></textarea>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <div>
              <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
              <ul class="pull-left list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
            </div>	
          </div>
        </div>
      </div>
    </div>
    <!-- script references -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>
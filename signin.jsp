<!DOCTYPE html>
<html lang="fr">
<head>
   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="">
   <meta name="author" content="">
   <link rel="icon" href="../../favicon.ico">
   <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
   <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
   <link href="css/own.css" rel="stylesheet">
   <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
   <title>Tweetbook - Sign up</title>
   <link rel="icon" href="http://moodle.univ-lille1.fr/theme/image.php/ulille/theme/1484841149/favicon" />
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script>
      $(document).ready(function() {
         $('.hover').mousemove(function(e){
            var hovertext = $(this).attr('hinttext');
               $('#hintbox').text(hovertext).show();
         $('#hintbox').css('top',e.clientY-15).css('left',e.clientX+30);})
         .mouseout(function(){
            $('#hintbox').hide();
         });
      });
   </script>
</head>
<body>
  <div class="site-wrapper">
    <div class="site-wrapper-inner">
      <div class="cover-container">
        <div class="masthead clearfix">
          <div class="inner">
            <h3 class="masthead-brand"><a href="index.html">TweetBook</a></h3>
            <nav>
              <ul class="nav masthead-nav">
                <li><a href="signin.jsp">Inscription</a></li>
                <li><a href="signup.jsp">Connexion</a></li>
              </ul>
            </nav>
          </div>
        </div>
        <div id="hintbox"></div>
        <div class="inner cover">
        <p class="lead">
         <form class="form-signin">
            <h1 class="form-signin-heading">Inscrivez-vous</h1>
            <input type="text" name ="lastName" id="inputNom" class="form-control" placeholder="Nom" required autofocus></p>
            <input type="text" name ="firstName" id="inputPrenom" class="form-control" placeholder="Prenom" required></p>
            <input class="hover" hinttext="Date de naissance" type="date" name ="date" id="inputDateNaiss" class="form-control" placeholder="Date de naissance" required autofocus></p>
            <input type="text" name ="place" id="inputLieuNaiss" class="form-control" placeholder="Lieu de naissance" required autofocus></p>
            <input type="text" name ="address" id="inputAdress" class="form-control" placeholder="Adresse" required autofocus></p>
            <input type="text" name ="phoneNumber" id="inputPhone" class="form-control" placeholder="Telephone" required autofocus></p>
            <input type="text" name ="inputLogin" id="inputLogin" class="form-control" placeholder="Login" required autofocus></p>
            <input type="email" name ="mail" id="inputMail" class="form-control" placeholder="Mail" required autofocus></p>
            <input type="password" name ="inputPassword" id="inputPassword" class="form-control" placeholder="Mot de passe" required autofocus></p>
            <input type="hidden" value=true name="new"></input>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Confirmer</button>
         </form>
        </p>
        <p class="lead">
        </p>
        </div>
        <div class="mastfoot">
        </div>
      </div>
    </div>
  </div>

  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
  <script src="../../dist/js/bootstrap.min.js"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
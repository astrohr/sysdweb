<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{{hostname or 'sysdweb'}} mini control</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom style -->
    <link href="css/sysdweb.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/img/favicon.png">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="page-header text-center">
        <h1>{{hostname or 'sysdweb'}}</h1>
      </div>
      <div>
        <table class="table table-hover" id="services">
          <tr>
            <th>Service</th>
            <th class="text-right">Actions</th>
          </tr>
          % for service in services:
          <tr>
            <td class="{{service['class']}}">{{service['title']}}</td>
            <td class="text-right {{service['class']}}">
              <button type="button" class="btn btn-default btn-sm"
              % if service['disabled_start']:
                disabled="disabled"
              % end
                data-toggle="tooltip" data-placement="top" title="Start"
                onclick="unit('{{service['service']}}', 'start')">
                <span class="glyphicon glyphicon-play" aria-hidden="true"
                aria-label="Start"></span></button>
              <button type="button" class="btn btn-default btn-sm"
              % if service['disabled_stop']:
                disabled="disabled"
              % end
                data-toggle="tooltip" data-placement="top" title="Stop"
                onclick="unit('{{service['service']}}', 'stop')">
                <span class="glyphicon glyphicon-stop" aria-hidden="true"
                aria-label="Stop"></span></button>
              <button type="button" class="btn btn-default btn-sm"
              % if service['disabled_restart']:
                disabled="disabled"
              % end
                data-toggle="tooltip" data-placement="top" title="Restart"
                onclick="unit('{{service['service']}}', 'restart')">
                <span class="glyphicon glyphicon-retweet" aria-hidden="true"
                aria-label="Restart"></span></button></td>
          </tr>
          % end
        </table>
      </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/sysdweb.js"></script>
  </body>
</html>

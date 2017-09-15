
<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo $GLOBALS["title"] ?></title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/mycss.css" rel="stylesheet">
    <link href="<?php echo $GLOBALS["templates"] ?>css/style.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <?php 
    include "/../../../templates/gubytheme/head.php"; ?>
     <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12"><br><br>
            <ol class="breadcrumb">
                    <li><a href="index.php">Inicio</a></li>
                    <li ><a href="index.php?modulo=blog">Blog</a></li>
                    <?php 
                        $articulo = new blogcontroller();
                        $articulo ->menu();
                    ?>
                </ol>

                
            </div>
        </div>
        <!-- /.row -->
            <!-- Blog Entries Column -->
            <div class="col-md-8">
                <?php 
                    $articulo = new blogcontroller();
                    $articulo ->obtenerpost();
                ?>
            </div>
            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Búsqueda del blog</h4>
                    <div class="input-group search">
                        <input type="text" class="form-control search" name="search" required="">
                        <span class="input-group-btn">
                            <a href=""><button class="btn btn-default " type="button"><i class="fa fa-search"></i></button></a>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Categorías del Blog</h4>
                    <div class="row">
                        <?php 
                            $categorias = new blogcontroller();
                            $categorias ->getcatpost();
                        ?>  
                        </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
                <div class="well">
                    <h4>Side Widget Well</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p>
                </div>

            </div>

        </div>
        <!-- /.row -->

        <hr>


    </div>
    <!-- /.container -->
    <?php include "/../../../templates/gubytheme/footer.php";
    ?>
        <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery.lazyloadxt.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
    <script src="js/myjs.js"></script>
    <script src="<?php echo $GLOBALS["templates"] ?>/js/js.js"></script>

</body>

</html>




























   
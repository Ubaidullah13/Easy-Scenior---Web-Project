<!--  STARTER  -->
<?php
include('connection.php');?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Playfair+Display+SC:wght@400;700;900&family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />

    <link rel="stylesheet" href="css/Global (Typography).css" />

    <link rel="stylesheet" href="" />
    <!-- Link CSS here-->
    <link rel="stylesheet" href="css/Home.css" />

    <title>Testimonials</title>
  </head>
  <body class="bg">
    <div class="OurContainer">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item label">
            <a href="#" style="color: #f6a2bc">Home</a>
          </li>
          <li
            class="breadcrumb-item active label"
            aria-current="page"
            style="color: #f6a2bc"
          >
         User Testimonials
          </li>
        </ol>
      </nav>

      <h1>Hear from our Students</h1>
    </div>

    <div class="whiteBg">
      <div class="OurContainer">
        <section class="OurContainer Testimonials-Section">
            <h5 class="TextCenter">TESTIMONIALS</h5>
            <h2 class="TextCenter">Customer Know The Best</h2>




            <?php
$querytest = "SELECT fullname, userpfp, content from user,testimonials where testimonials.user=user.username;
";
$datatest = mysqli_query($conn,$querytest);
$resultWelcome = mysqli_fetch_assoc($datatest);
?>


                          
     <?php
                                 

        if(mysqli_num_rows($datatest) > 0) //Atleast 1 record is there or not
              {
               foreach($datatest as $row)
                {
                   ?>
                                                <tr>
                                                    <td><?= $row['fullname'] ?></td>
                                                    <td><?= $row['content'] ?></td>
                                                   
                                                </tr>
                                                
            <div class="row Testimonial-cards">
              <div class="col-xxl col-xl col-md col-12 reviewCard FirstRC" >
                <img class="dp" src="res/st (1).png" />
                <h4 class="TextCenter"><?= $row['fullname'] ?></h4>
                <img class="quote" src="res/Quote Left.svg" />
                <p class="TextCenter">
                <?= $row['content'] ?>
                </p>
                <img class="star end" src="res/Full Star.svg" />
                <img class="star end" src="res/Full Star.svg" />
                <img class="star end" src="res/Full Star.svg" />
                <img class="star end" src="res/Full Star.svg" />
                <img class="star end" src="res/Full Star.svg" />
              </div>
                                            <?php
                                        }
                                    }
                                    else
                                    {
                                        ?>
                                            <tr>
                                                <td colspan="4">No Record Found</td>
                                            </tr>
                                        <?php
                                    }
                                ?>
                          

            

  
        
      </div>
      
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <script src=""></script>
    <!-- Link JS Here-->
  </body>
</html>

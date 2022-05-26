<!--  STARTER  -->

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Playfair+Display+SC:wght@400;700;900&family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/Global (Typography).css" />

    <link rel="stylesheet" href="css/FindCourse.css" />

    <title>Find Course</title>
</head>

<body class="bg">
    <!-- Navigation -->
    <nav class="navigation">
        <div class="logo">
            <a href="Home"><img src="Images/logo.png" /></a>
        </div>
        <input type="checkbox" id="click" />
        <label for="click" class="menu-btn">
            <i class="fa fa-bars" aria-hidden="true"></i>
        </label>
        <ul class="my-auto">
            <li><a class="label" href="Home">Home</a></li>
            <li><a href="About" class="label">About</a></li>
            <li><a href="Find Tutor" class="active label">Find Tutor</a></li>
            <li><a href="#" class="label">Become Tutor</a></li>
            <li>
                <div class="dropdown">
                    <a style="cursor: pointer">Support
                        <i class="fa fa-caret-down"></i>
                    </a>
                    <div class="dropdown-content">
                        <a href="#" class="dropDownA">Blog</a>
                        <a href="faqs" class="dropDownA">FAQs</a>
                        <a href="testimonials" class="dropDownA">Testimonials</a>
                        <hr />
                        <a href="contact" class="dropDownA">Contact Us</a>
                    </div>
                </div>
            </li>
            <div class="verticalLine"></div>
            <li>
                <img class="img1" src="Images/Signup.svg" /><a href="register"
                    class="btnFont">Signup</a>
            </li>
            <li>
                <img src="Images/Login.svg" /><a href="login" class="btnFont">Login</a>
            </li>
        </ul>
    </nav>

    <!--  Start  -->
    <div class="start">
        <div class="OurContainer">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item label">
                        <a href="Home" style="color: #f6a2bc">Home</a>
                    </li>
                    <li class="breadcrumb-item active label" aria-current="page" style="color: #f6a2bc">
                        Find Tutor
                    </li>
                    <li class="breadcrumb-item active label" aria-current="page" style="color: #f6a2bc">
                        Find Course
                    </li>
                </ol>
            </nav>

            <h1>Find A Course</h1>
        </div>

        <div class="whiteBg">
            <div class="OurContainer">
                <div class="row" style="padding-top:4em">
                    <div class="col-8">
                        <a href="Find Tutor"><button class="btn btnSecond btn-sm btnFont">
                                <span>
                                    <img src="Images/FC_btn1.svg" />
                                </span>
                                <span id="RSmall">Tutors</span>
                            </button></a>
                        <a href="FindCourse"><button class="btn btnPrimary btn-sm btnFont">
                                <span>
                                    <img src="Images/FC_btn2.svg" />
                                </span>
                                <span id="RSmall">Courses</span>
                            </button></a>

                        {{-- <button class="btn btnSecond btn-sm btnFont">
                            <span>
                                <img src="Images/FT_Btn3.svg" />
                            </span>
                            <span id="RSmall">Saved</span>
                        </button> --}}
                    </div>

                    <div class="col-4">
                        <div class="input-group">
                            <input type="text" class="form-control label" id="searchForm" placeholder="Search "
                                aria-label="Search Tutor" aria-describedby="search_category" />
                            <button class="btn" type="button" id="search_category">
                                <img src="Images/search.svg" alt="search" id="SearchImgSmall" />
                            </button>
                        </div>
                    </div>
                </div>

                <h3 style="text-align: center; color:#1C4A4A; padding-top:2em" id="RHeadSmall">Best Courses</h3>

                <div class="row">
                    <!-- First Row -->
                    <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="row CourseBorder">
                                <div class="row">
                                    <img src="Images/FC_Course1.png" class="mx-auto d-block courseImg1" />
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-5 my-auto">
                                        <img src="Images/FT_Tutor1.png" class="FC_TtrImg" />
                                    </div>
                                    <div class="col my-auto">
                                        <h5 class="TutorNames">Emma Olivia</h5>
                                    </div>
                                </div>

                                <div class="row">
                                    <h4 style="margin-top: 2rem">
                                        Web Development Full Course
                                    </h4>
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-6">
                                        <button class="btn btnSecond btn-sm btnFont">
                                            <span>Enroll Now</span>
                                        </button>
                                    </div>
                                    <div class="col-6">
                                        <span>2,500+ enrolled</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <p class="CourseLevel">Difficulty: Advance</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="row CourseBorder">
                                <div class="row">
                                    <img src="Images/FC_Course2.png" class="mx-auto d-block courseImg1" />
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-5 my-auto">
                                        <img src="Images/FT_Tutor1.png" class="FC_TtrImg" />
                                    </div>
                                    <div class="col-7 my-auto">
                                        <h5 class="TutorNames">Emma Olivia</h5>
                                    </div>
                                </div>

                                <div class="row">
                                    <h4 style="margin-top: 2rem">
                                        Web Development for Beginners
                                    </h4>
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-6">
                                        <button class="btn btnSecond btn-sm btnFont">
                                            <span>Enroll Now</span>
                                        </button>
                                    </div>
                                    <div class="col-6">
                                        <span>1,000+ enrolled</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <p class="CourseLevel">Difficulty: Basic</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="row CourseBorder">
                                <div class="row">
                                    <img src="Images/FC_Course3.png" id="courseImg2"
                                        class="mx-auto d-block courseImg1" />
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-5 my-auto">
                                        <img src="Images/FT_Tutor2.png" class="FC_TtrImg" />
                                    </div>
                                    <div class="col-7 my-auto">
                                        <h5 class="TutorNames">Noah James</h5>
                                    </div>
                                </div>

                                <div class="row">
                                    <h4 style="margin-top: 2rem">Flutter Development</h4>
                                </div>

                                <div class="row" style="margin-top: 4rem">
                                    <div class="col-6">
                                        <button class="btn btnSecond btn-sm btnFont">
                                            <span>Enroll Now</span>
                                        </button>
                                    </div>
                                    <div class="col-6">
                                        <span>3,000+ enrolled</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <p class="CourseLevel">Difficulty: Intermediate</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="row CourseBorder">
                                <div class="row">
                                    <img src="Images/FC_Course4.png" class="mx-auto d-block courseImg1" />
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-5 my-auto">
                                        <img src="Images/FT_Tutor3.png" class="FC_TtrImg" />
                                    </div>
                                    <div class="col-7 my-auto">
                                        <h5 class="TutorNames">Elijah Liam</h5>
                                    </div>
                                </div>

                                <div class="row">
                                    <h4 style="margin-top: 2rem">
                                        Learn Nuxt Js land on your dream job
                                    </h4>
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-6">
                                        <button class="btn btnSecond btn-sm btnFont">
                                            <span>Enroll Now</span>
                                        </button>
                                    </div>
                                    <div class="col-6">
                                        <span>500+ enrolled</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <p class="CourseLevel">Difficulty: Basic</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="row CourseBorder">
                                <div class="row">
                                    <img src="Images/FC_Course5.png" class="mx-auto d-block courseImg1" />
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-5 my-auto">
                                        <img src="Images/FT_Tutor6.png" class="FC_TtrImg" />
                                    </div>
                                    <div class="col-7 my-auto">
                                        <h5 class="TutorNames">Charlotte Ava</h5>
                                    </div>
                                </div>

                                <div class="row">
                                    <h4 style="margin-top: 2rem">
                                        How to do Business Location
                                    </h4>
                                </div>

                                <div class="row" style="margin-top: 2rem">
                                    <div class="col-6">
                                        <button class="btn btnSecond btn-sm btnFont">
                                            <span>Enroll Now</span>
                                        </button>
                                    </div>
                                    <div class="col-6">
                                        <span>4,500+ enrolled</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <p class="CourseLevel">Difficulty: Intermediate</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br /><br />

                <div class="col text-center">
                    <button class="btn btnSecond btn-lg btnFont">Load More</button>
                </div>
                <br />
            </div>
        </div>
        <my-footer></my-footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>

    <script src="Js/main.js"></script>
    <!-- Link JS Here-->
</body>

</html>
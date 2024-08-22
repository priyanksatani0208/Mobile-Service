<!-- header -->
<style>
.fa-shopping-cart:hover {
    color: #a1a1a1;
}
</style>
<div class="header-w3l">

    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="home"><i>Mobile Services</i> </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item ">
                    <a class="nav-link" href="index">Home </a>
                </li>



                <li class="nav-item dropdown @@room__active">
                    <a class="nav-link dropdown" href="" id="navbarDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        About <span class="fa fa-angle-down"></span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="about">About</a>
                        <?php
 		                	if(isset($_SESSION['email']))
				        	{
				     	?>
                        <a class="dropdown-item" href="feedback">Feedback</a>
                        <?php
			                 }
			            ?>
                
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="services">Services</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link " href="contact">Contact</a>
                </li>

                <?php
					if(isset($_SESSION['email']))
					{
					?>

                <li class="">
                    <a class="nav-link " href="myprofile">Profile</a>
                </li>
                <li class="">
                    <a class="nav-link " href="add_cart"><i class="fa fa-shopping-cart"
                            style="font-size:20px ;"></i></a>
                </li>&nbsp;&nbsp;
                <li class="w3">
                    <a class="nav-link " href="logout">Logout</a>
                </li>
                <?php
					}
					else
					{
					?>
                <li class="w3">
                    <a class="nav-link " href="login">Login</a>
                </li>

                <?php
					}
					?>

            </ul>



        </div>

    </nav>

    <!-- //header -->
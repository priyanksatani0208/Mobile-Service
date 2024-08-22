<?php
include_once('model.php');

class control extends model
{
	
	function __construct()
	{
		
		session_start();
		
		model:: __construct();
						
		$path=$_SERVER['PATH_INFO'];
		switch($path)
		{
			case '/index':
			include_once('index.php');
			break;
			
			case '/contact':
				if(isset($_REQUEST['submit']))
				{
					$cont_name=$_REQUEST['cont_name'];
					$cont_mob=$_REQUEST['cont_mob'];
					$cont_message=$_REQUEST['cont_message'];
								
					
					$arr=array("cont_name"=>$cont_name,"cont_mob"=>$cont_mob,"cont_message"=>$cont_message);
					
					$res=$this->insert('contact',$arr);
					if($res)
					{
						echo "<script> alert('send contact') </script>";				
					}
					else
					{
						echo "";
					}
					
					
				}
			include_once('contact.php');
			break;
			
			case '/services':
			include_once('services.php');
			break;		
						
			case '/about-us':
			include_once('about-us.php');
			break;
			
			case '/rooms':
				$roomData = $this->selectall('rooms');
			include_once('rooms.php');
			break;
			
			case '/room':
				$roomId = $_GET['rooms-details'];
				$roomDetail = $this->getById('rooms','room_id',$roomId);
				
			include_once('room-details.php');
			break;
									
			case '/signup':
			if(isset($_REQUEST['submit']))
			{
				$cust_name=$_REQUEST['cust_name'];
				$cust_email=$_REQUEST['cust_email'];
				$cust_mob=$_REQUEST['cust_mob'];
				$cust_add=$_REQUEST['cust_add'];
				$cust_password=$_REQUEST['cust_password'];
               // $cust_password=md5($cust_password);	
				
				$confirm_password=$_REQUEST['confirm_password'];
			//	$confirm_password=md5($confirm_password);
				
				if($cust_password == $confirm_password)
				{
					$arr=array("cust_name"=>$cust_name,"cust_email"=>$cust_email,"cust_mob"=>$cust_mob,"cust_add"=>$cust_add,"cust_password"=>$cust_password);
					
					$res=$this->insert('customer',$arr);
					if($res)
					{
						echo "<script> 
						alert('sucessfully Register...')
						window.location='login';
						</script>";				
					}
				}
				else
				{
					echo "<script>alert('Password and conform password does not match..');</script>";
					echo "<script> window.location='signup';</script>";
				}
			}
			include_once('signup.php');
			break;
			
			case '/login':
			if(isset($_REQUEST['submit']))
				{
					$cust_email=$_REQUEST['cust_email'];
					$cust_password=$_REQUEST['cust_password'];
					// $cust_password=md5($cust_password);	
				
					
					$where=array("cust_email"=>$cust_email,"cust_password"=>$cust_password);
				
					$run=$this->select_where('customer',$where);
				
					$res=$run->num_rows;   // check cond by rows
					
					if($res==1)           // 1 means true
					{
							$fetch=$run->fetch_object();
							$_SESSION['email']=$fetch->cust_email;
							
							$_SESSION['cust_id']=$fetch->cust_id;
							$_SESSION['cust_mob']=$fetch->cust_mob;
							$_SESSION['cust_name']=$fetch->cust_name;
							
						// $_SESSION['cust_add']=$fetch->address;
							
							echo "<script> 
								alert('Login Success') 
								window.location='index';
								</script>";
					}
					else
					{
					
						echo "<script>alert('Login Failed due wrong credebntial')</script>";
					}
				}
			include_once('login.php');
			break;
			
			case '/logout':
			unset($_SESSION['email']);
			echo "<script> alert('Logout Success')
				window.location='index';
				</script>";			
			break;
			
			case '/rooms':
			$company_arr=$this->selectall('rooms');
			include_once('rooms.php');
			break;
			
			case '/booking':
			if(isset($_REQUEST['submit']))
			{
				
				$cust_id=$_REQUEST['cust_id'];
				$check_in=$_REQUEST['check_in'];
				$check_out=$_REQUEST['check_out'];
				$rooms = $_REQUEST['rooms'];
				$person = $_REQUEST['person'];
				
				$arr=array("cust_id"=>$cust_id,"check_in"=>$check_in,"check_out"=>$check_out,"rooms"=>$rooms,"person"=>$person);
				
				$res=$this->insert('booking',$arr);
				if($res)
				{
					echo "<script> 
					alert(' Success youre booking..'); 
					window.location='#';
					</script>";
				}
			}
			include_once('booking.php');
			break;
			
		}
	}
}
$obj=new control;
?>
<?php

class model
{
	public $conn="";
	function __construct()
	{
		$this->conn=new mysqli('localhost','root','','mobile_service');
	}
	
	function insert($tbl,$arr)
	{
		$key_arr=array_keys($arr); 
		$key=implode(",",$key_arr);
		
		$value_arr=array_values($arr);
		$value=implode("','",$value_arr);
		$ins="insert into $tbl($key) values('$value')"; // query
		$run=$this->conn->query($ins);  // run
		return $run;	
	}
	
	function selectall($tbl)
	{
		$ins="select * from $tbl ";
		$run=$this->conn->query($ins);
		while($fetch=$run->fetch_object())
		{
			$arr[]=$fetch;
		}
		if(!empty($arr))
		{
			return $arr;	
		}
		else
		{
			return $arr=array("Data Not Found");
		}
	}

	
	function select_where($tbl,$where)
	{
		$key_arr=array_keys($where); // 
		$value_arr=array_values($where);
		
		$sel="select * from $tbl where 1=1"; // query continue
		$i=0;
		foreach($where as $w)
		{
		    $sel.=" and $key_arr[$i]='$value_arr[$i]'";
			$i++;
		}
		$run=$this->conn->query($sel);
		return $run;
		
	}
	function delete_where($tbl,$where)
	{
		$key_arr=array_keys($where); // 
		$value_arr=array_values($where);
		
		$sel="delete from $tbl where 1=1"; // query continue
		$i=0;
		foreach($where as $w)
		{
		    $sel.=" and $key_arr[$i]='$value_arr[$i]'";
			$i++;
		}
		$run=$this->conn->query($sel);
		return $run;
		
	}
	function update($tbl,$arr,$where)
	{
		$key_arr=array_keys($arr); // 
		$value_arr=array_values($arr);
		
		$upd="update $tbl set "; // query continue
		$i=0;
		$count=count($arr);
		foreach($arr as $w)
		{
			if($count == $i+1)
			{
				$upd.=" $key_arr[$i]='$value_arr[$i]'";
			}
			else
			{
				$upd.="$key_arr[$i]='$value_arr[$i]',";
				$i++;
			}
		}
		$wkey_arr=array_keys($where); // 
		$wvalue_arr=array_values($where);
		$upd.="where 1=1"; // query continue
		$j=0;
		foreach($where as $w)
		{
			$upd.=" and $wkey_arr[$j]='$wvalue_arr[$j]'";
			$j++;
		}
		$run=$this->conn->query($upd);
		return $run;
	}

	function select_where_join1($tbl1,$tbl2,$on1,$tbl3,$on2)
	{
	    $ins="select * from $tbl1 join $tbl2 on $on1 join $tbl3 on $on2";
		$run=$this->conn->query($ins);
		while($fetch=$run->fetch_object())
		{
			$arr[]=$fetch;
		}
		if(!empty($arr))
		{
			return $arr;
		}
		else
		{
			return $arr=array("Data not found");
		}
	}

	function booking_report_view($tbl1,$tbl2,$val1,$val2)
	{
	    $ins="SELECT COUNT(t.booking_id) as totalBooking,sum(t2.service_price) as totalPrice
		FROM $tbl1 t
		left JOIN $tbl2 t2 on t2.service_id = t.service_id
		 where t.booking_date BETWEEN '$val1' and '$val2';";
		// exit($ins);

		$run=$this->conn->query($ins);

		while($fetch=$run->fetch_object())
		{
			$arr[]=$fetch;
		}
		if(!empty($arr))
		{
			return $arr;
		}
		else
		{
			return $arr=array("Data not found");
		}
	}

	
	
	
	
	
}
$obj=new model;


?>
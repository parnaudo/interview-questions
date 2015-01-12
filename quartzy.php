<?php
//given a user, group is user member of group return true/false
function is_member_of_group($user_id,$group_id){
		$query="Select count(*) from group_membership where user_id=$user_id and group_id=$group_id";
		$res=mysql_query($query);
		if(mysql_num_rows($res) > 0){
			return true;
		}
		else{
			return false;
		}
}
//given a user get all groups a user belongs to return array of group_ids
function given_user($user_id){
	$query="select distinct group_id from group_membership where user_id=$user_id";
	$res=mysql_query($query);
	while($row=mysql_fetch_array){
		$group_ids[]=$row['group_id'];
	}
	return $group_ids;
}

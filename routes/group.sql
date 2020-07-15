--------------  GROUPI -------
create VIEW GROUPI as 
SELECT * FROM `group` 
inner join group_user on group.id = group_user.group_id
inner join user on group_user.user_id = user.id
inner join coupon_list on user.coupon_list_id = coupon_list.id

$this->addaction[] = ['label'=>'Set Active','url'=>CRUDBooster::mainpath('set-status/active/[id]'),'icon'=>'fa fa-check','color'=>'success','showIf'=>"[status] == 'pending'"];
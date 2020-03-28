<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>	
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Список задач</title>
	
	<link rel="stylesheet" href="user_guide/_static/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="user_guide/_static/css/style.css"/>
	<link rel="stylesheet" href="user_guide/_static/css/css_scroll.css"/>
	
</head>
<body>
  <div class="top_block">
  </div>
	 
	 <div class="container-fluid">
	 <div class="row">
	 	<div class="col-md-4">
	 				<div class="container">
	 				<form class="todo" action="" method="post" style="background-color: white">
	 				 <div class="form-group">
	 				 <label for="userName">Имя:</label>
	 				 <input type="text" class="form-control" name= "userName" id="userName" />	
	 				  
	 				 </div>
	 				 
	 				 <div class="form-group">
	 				 <label for="email">Е-mail:</label>
	 				 <input type="email" class="form-control" name= "email" id="email" placeholder="test@gmail.com"/>
	 				 
	 				 </div>	 	 
	 					<div class="form-group">
	 				 <label for="todotext">Задания:</label>
	 				 <textarea class="form-control" placeholder="Задания" id="todotext" name="todotext" rows="4"></textarea>
	 				 
	 				 </div>	
	 					 
	 					
	 					
	 					<input type="submit" name="send_info" class="btn btn-primary" value="Сохранить">  
	 					
	 				</form>
	 				
	 			</div>
	 		</div>
	 	<div class="col-md-7">
	 		<div class="scrollbar" id="style-1">
	 		  <div class="container">
	 		  
	 		  <?if(count($todo_list) > 0){ ?>
	 		  
	 		     <? foreach($todo_list as $row){?>
	 			<div class="todo">
		 			<div class="container">
		 				<div class='row userName text-info'>		 				
			 				<div class="col-md-3">Пользователь  </div>
			 				<div class="col-md-9"><b> <?=htmlspecialchars($row->user_name);?> </b></div>	 				
		 				</div>
		 				
		 				<div class='row userName text-info'>
			 				<div class="col-md-3">Email  </div>
			 				<div class="col-md-9"><b><?=htmlspecialchars($row->user_email);?></b>
			 				</div>	 				
		 				</div>	
		 			  				 
		 				<div class='row'>
			 				<div class="col-md-3">
			 				О задача
			 				<hr>
			 				<p>			 				 
			 				<i style="color: <?=($row->status==0) ? 'red':'green'?>"><?=($row->status==0)?'Hе выполнено':"<img src='user_guide/_images/success.png'> Выполнено"?></i>			 			
			 				</p>
			 				</div>
			 				<div class="col-md-9 textStyle"> 
			 				  <?=htmlspecialchars($row->todo_text);?>
							</div>	 				
		 				</div>
		 			</div>
	 			</div>
	 			<br />
	 			 <? }   ?>
	 			 
	 			<?  } ?>
	 			 
	 			
	 			</div>
	 			<div class="force-overflow"></div>
	 			 </div>
	 	</div>
	 		 
	 </div>
	 		
	 </div>
	  <div align="center" >
	 	
	    <?if($_GET['page'] > 2){ ?> 
	    	 <a href="?page=1" class="btn btn-primary">1</a>	  
		  	<a href="?page=<?=($_GET['page'] - 1)?>" class="btn btn-primary">
		  	<<
		  	</a>
	   <? } ?>	  
	  	<a href="?page=<?=($_GET['page'] > 1 && $_GET['page'] < $_GET['amount_pages']) ? $_GET['page'] - 1 :(($_GET['page'] == $_GET['amount_pages'])? $_GET['amount_pages'] - 2 : 1) ?>" class="btn btn-<?=($_GET['page'] == 1) ? 'dark' : 'primary'?>">
	  	<?=($_GET['page'] > 1 && $_GET['page'] < $_GET['amount_pages']) ? $_GET['page'] - 1 : (($_GET['page'] == $_GET['amount_pages'])? $_GET['amount_pages'] - 2 : 1)?>	  		
	  	</a>
	  	
	    <? if( $_GET['amount_pages'] > 1){ ?>
	       
		  	<a href="?page=<?=($_GET['page']!= 1 && $_GET['page']!=$_GET['amount_pages']) ? $_GET['page'] :( ($_GET['page']== 1) ? 2 : $_GET['amount_pages'] - 1)  ?>" class="btn btn-<?=($_GET['page']!= 1 && $_GET['page']!=$_GET['amount_pages']) ? 'dark' :'primary'?>">
		  		<?=($_GET['page']!= 1 && $_GET['page']!=$_GET['amount_pages']) ? $_GET['page'] :( ($_GET['page']== 1) ? 2 : $_GET['amount_pages'] - 1)  ?>	  		
		  	</a>	
	  	 <? } ?>
	  	 
	  	 <? if( $_GET['amount_pages'] > 2){ ?> 
		  	<a href="?page=<?=($_GET['page'] < $_GET['amount_pages'] && $_GET['page'] != 1) ? $_GET['page'] + 1 :(($_GET['page'] == 1) ? 3 : $_GET['amount_pages'] )?>" class="btn btn-<?=($_GET['page'] == $_GET['amount_pages'] && $_GET['amount_pages'] > 2) ? 'dark' : 'primary'?>">
		  		<?=($_GET['page'] < $_GET['amount_pages'] && $_GET['page'] != 1) ? $_GET['page'] + 1 :(($_GET['page'] == 1) ? 3 : $_GET['amount_pages'] )?>
		  	</a>
	  	 <? } ?>
	  	 
	  	 
	  	<?if($_GET['page'] < $_GET['amount_pages'] - 1 && $_GET['amount_pages'] > 3){  ?>
	  	
		     	<a href="?page=<?=($_GET['page'] + 1)?>" class="btn btn-primary">
		     	>>		     		
		     	</a>	     			  	   		  	   	
	     		<a href="?page=<?=$_GET['amount_pages']?>" class="btn btn-primary">	     		
	     		<?=$_GET['amount_pages']?>	     		
	     		</a>		  	  
	  	<? } ?>	  		
	  </div>

	<script src="user_guide/_static/js/js_scroll.js"></script>
	
</body>
</html>
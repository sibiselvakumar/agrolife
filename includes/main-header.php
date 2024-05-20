<?php 

 if(isset($_Get['action'])){
		if(!empty($_SESSION['cart'])){
		foreach($_POST['quantity'] as $key => $val){
			if($val==0){
				unset($_SESSION['cart'][$key]);
			}else{
				$_SESSION['cart'][$key]['quantity']=$val;
			}
		}
		}
	}
?>
	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
					<!-- ============================================================= LOGO ============================================================= -->
<div class="logo">
	<a href="index.php">
		
		<h2><img src="img/logo.png" width="250" height="75" style="margin-top:-10px"></h2>

	</a>
</div>
</div>
<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
<div class="search-area" style="margin: 20px 0 8px 100px;"> <!-- top, right, bottom, left -->
 

	<style type="text/css">
		
		#rcorners2 {
/*  border-radius: 25px;*/
  border: 1px solid #008000;
  padding: 15px;
  width: 100%;
  height: 70px;
}
	</style>
<form name="search" method="post" action="search-result.php" id="rcorners2">
    <div class="control-group" style="position: relative;">
        <input class="search-field" placeholder="Search Here" name="product" required="required" style="padding-right: 40px;" />
        <button type="submit" style="position: absolute; top: 0; right: 0; width: 40px; height: 40px; background-color: green; border: none; background-image: url('data:image/svg+xml,%3Csvg xmlns=%22http://www.w3.org/2000/svg%22 width=%2214%22 height=%2214%22 viewBox=%220 0 24 24%22%3E%3Cpath fill=%22white%22 d=%22M21.7 20.3l-5.8-5.8c1.2-1.6 1.9-3.7 1.9-5.8 0-5-4-9-9-9s-9 4-9 9 4 9 9 9c2.1 0 4.2-0.7 5.8-1.9l5.8 5.8c0.3 0.3 0.8 0.3 1.1 0l2.1-2.1c0.3-0.2 0.3-0.6 0.1-0.9zM9 16c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7c0 1.5-0.4 2.9-1 4.1l-1.4-1.4c0.4-0.9 0.6-1.9 0.6-2.7 0-3.3-2.7-6-6-6s-6 2.7-6 6 2.7 6 6 6c1.6 0 3-0.6 4.1-1.6l1.4 1.4c-1.1 0.6-2.5 1-4.1 1z%22%3E%3C/path%3E%3C/svg%3E'); background-size: 80%; background-repeat: no-repeat; background-position: center; cursor: pointer;"></button>
    </div>
</form>


<!--     <<form name="search" method="post" action="search-result.php" id="rcorners2">
    <div class="control-group">
        <input class="search-field" placeholder="" name="product" required="required" />

        <button style="width: 40px; height: 40px; background-color: green; border: none; background-image: url('data:image/svg+xml,%3Csvg xmlns=%22http://www.w3.org/2000/svg%22 width=%2214%22 height=%2214%22 viewBox=%220 0 24 24%22%3E%3Cpath fill=%22white%22 d=%22M21.7 20.3l-5.8-5.8c1.2-1.6 1.9-3.7 1.9-5.8 0-5-4-9-9-9s-9 4-9 9 4 9 9 9c2.1 0 4.2-0.7 5.8-1.9l5.8 5.8c0.3 0.3 0.8 0.3 1.1 0l2.1-2.1c0.3-0.2 0.3-0.6 0.1-0.9zM9 16c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7c0 1.5-0.4 2.9-1 4.1l-1.4-1.4c0.4-0.9 0.6-1.9 0.6-2.7 0-3.3-2.7-6-6-6s-6 2.7-6 6 2.7 6 6 6c1.6 0 3-0.6 4.1-1.6l1.4 1.4c-1.1 0.6-2.5 1-4.1 1z%22%3E%3C/path%3E%3C/svg%3E'); background-size: 80%; background-repeat: no-repeat; background-position: right center; margin-left: 480px;"></button>
    </div>
</form> -->
</div><!-- /.search-area -->
<!-- ============================================================= SEARCH AREA : END ============================================================= -->				</div><!-- /.top-search-holder -->

<div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row" style="padding-top: 35px;">

					<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
<?php
if(!empty($_SESSION['cart'])){
	?>
	<div class="dropdown dropdown-cart">
		<a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
			<div class="items-cart-inner">
				<div class="total-price-basket">
<span style="color: green; font-weight: bold;" class="lbl">cart - </span>
					<span class="total-price">
						<span class="sign">Rs.</span>
						<span class="value"><?php echo $_SESSION['tp']; ?></span>
					</span>
				</div>
				<div class="basket">
					<i class="glyphicon glyphicon-shopping-cart"></i>
				</div>
				<div class="basket-item-count"><span class="count"><?php echo $_SESSION['qnty'];?></span></div>
			
		    </div>
		</a>
		<ul class="dropdown-menu">
		
		 <?php
    $sql = "SELECT * FROM products WHERE id IN(";
			foreach($_SESSION['cart'] as $id => $value){
			$sql .=$id. ",";
			}
			$sql=substr($sql,0,-1) . ") ORDER BY id ASC";
			$query = mysql_query($sql);
			$totalprice=0;
			$totalqunty=0;
			if(!empty($query)){
			while($row = mysql_fetch_array($query)){
				$quantity=$_SESSION['cart'][$row['id']]['quantity'];
				$subtotal= $_SESSION['cart'][$row['id']]['quantity']*$row['productPrice']+$row['shippingCharge'];
				$totalprice += $subtotal;
				$_SESSION['qnty']=$totalqunty+=$quantity;

	?>
		
		
			<li>
				<div class="cart-item product-summary">
					<div class="row">
						<div class="col-xs-4">
							<div class="image">
								<a href="detail.html"><img  src="admin/productimages/<?php echo $row['productName'];?>/<?php echo $row['productImage1'];?>" width="35" height="50" alt=""></a>
							</div>
						</div>
						<div class="col-xs-7">
							
							<h3 class="name"><a href="index.php?page-detail"><?php echo $row['productName']; ?></a></h3>
							<div class="price">Rs.<?php echo ($row['productPrice']+$row['shippingCharge']); ?>*<?php echo $_SESSION['cart'][$row['id']]['quantity']; ?></div>
						</div>
						
					</div>
				</div><!-- /.cart-item -->
			
				<?php } }?>
				<div class="clearfix"></div>
			<hr>
		
			<div class="clearfix cart-total">
				<div class="pull-right">
					
						<span class="text">Total :</span><span class='price'>Rs.<?php echo $_SESSION['tp']="$totalprice". ".00"; ?></span>
						
				</div>
			
				<div class="clearfix"></div>
					
				<a href="my-cart.php" class="btn btn-upper btn-primary btn-block m-t-20">My Cart</a>	
			</div><!-- /.cart-total-->
					
				
		</li>
		</ul><!-- /.dropdown-menu-->
	</div><!-- /.dropdown-cart -->
<?php } else { ?>
<div class="dropdown dropdown-cart">
		<a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
			<div class="items-cart-inner">
				<div class="total-price-basket">
					<span class="lbl">cart -</span>
					<span class="total-price">
						<span class="sign">Rs.</span>
						<span class="value">00.00</span>
					</span>
				</div>
				<div class="basket">
					<i class="glyphicon glyphicon-shopping-cart"></i>
				</div>
				<div class="basket-item-count"><span class="count">0</span></div>
			
		    </div>
		</a>
		<ul class="dropdown-menu">
		
	
		
		
			<li>
				<div class="cart-item product-summary">
					<div class="row">
						<div class="col-xs-12">
							Your Shopping Cart is Empty.
						</div>
						
						
					</div>
				</div><!-- /.cart-item -->
			
				
			<hr>
		
			<div class="clearfix cart-total">
				
				<div class="clearfix"></div>
					
				<a href="index.php" class="btn btn-upper btn-primary btn-block m-t-20">Continue Shooping</a>	
			</div><!-- /.cart-total-->
					
				
		</li>
		</ul><!-- /.dropdown-menu-->
	</div>
	<?php }?>




<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->				</div><!-- /.top-cart-row -->
			</div><!-- /.row -->

		</div><!-- /.container -->

	</div>
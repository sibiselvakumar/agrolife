<div class="header-nav animate-dropdown" style="background-color: green; box-shadow: 5px 10px 18px #888888;">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer">
		<ul class="nav navbar-nav">
			<li class="dropdown yamm-fw">
  <a style="color: white;" href="index.php" data-hover="dropdown" class="dropdown-toggle"
    onmouseover="changeColor(this, 'black', '#DAB80A')"
    onmouseout="changeColor(this, 'white', 'transparent')">
    Home
  </a>
</li>

<script>
  function changeColor(element, textColor, bgColor) {
    element.style.color = textColor;
    element.style.backgroundColor = bgColor;
  }
</script>

<style>
  .dropdown.yamm-fw a {
    color: white;
    background-color: transparent;
    transition: background-color 0.3s;
  }

  .dropdown.yamm-fw a:hover {
    color: black;
    background-color: #DAB80A;
  }
</style>

              <?php $sql=mysql_query("select id,categoryName  from category limit 6");
while($row=mysql_fetch_array($sql))
{
    ?>

			<!-- <li class="dropdown yamm">
<a href="category.php?cid=<?php echo $row['id']; ?>" style="color: white;" onmouseover="this.style.color='black'" onmouseout="this.style.color='white'"><?php echo $row['categoryName']; ?></a>

			
			</li> -->
			<li class="dropdown yamm" style="display: inline-block;">

  <a href="category.php?cid=<?php echo $row['id']; ?>"
    style="color: white; display: block; padding: 20px;"
    onmouseover="changeColor(this, 'black', '#DAB80A')"
    onmouseout="changeColor(this, 'white', 'transparent')">
    <?php echo $row['categoryName']; ?>
  </a>

</li>

<script>
  function changeColor(element, textColor, bgColor) {
    element.style.color = textColor;
    element.style.backgroundColor = bgColor;
  }
</script>

<style>
  .dropdown.yamm a {
    color: white;
    background-color: transparent;
    transition: background-color 0.3s;
  }
</style>

			<?php } ?>

			
		</ul><!-- /.navbar-nav -->
		<div class="clearfix"></div>
	</div>
</div>


            </div>
        </div>
    </div>
</div>
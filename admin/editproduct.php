<?php 
include 'inc/header.php';
if (isset($_POST['update'])) {
	echo $pd->Updateproduct($_POST,$_FILES,$_GET['proid']);
	 
}
$viewcat = $cat->getAllCat();
$viewbr = $br->getAllBrand();
$quant = $qa->getAllQuantity();
 ?>

      <div class="container-fluid">
        <h1 class="mt-4"> Upload New Product <a href="viewproduct.php">View Product</a></h1>
         <?php
                $getApd = $pd->getAllProductadminByid($_GET['proid']);
           
               
                  while ($result = $getApd->fetch_assoc()) {
              

                ?>
      	<form method="post" action="" enctype="multipart/form-data">
  <!-- Name input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form4Example1">Product title</label>
    <input type="text" value="<?php echo $result['productName'] ?>" name="productName" id="form4Example1" class="form-control" />
  </div>

  <!-- Email input -->
   <div class="form-group">
  <label for="sel1">Category:</label>
  <select name="catId" class="form-control" id="sel1">
    <option value="<?php echo $result['catId']; ?>"><?php echo $result['catName'] ?></option>
  	<?php  while ($res = $viewcat->fetch_assoc()) { ?>
    <option value="<?php echo $res['catId']; ?>"><?php echo $res['catName'] ?></option>
 <?php }  ?>
  </select>
</div> 
 <div class="form-group">
  <label for="sel1">Brand</label>
  <select name="brandId" class="form-control" id="sel1">
    <option value="<?php echo $result['brandId']; ?>"><?php echo $result['brandName'] ?></option>
    	<?php  while ($res = $viewbr->fetch_assoc()) { ?>
    <option value="<?php echo $res['brandId']; ?>"><?php echo $res['brandName'] ?></option>
 <?php }  ?>
 
  </select>
</div> 
<div class="form-group">
  <label for="sel1">Quantity</label>
  <select name="quantityId" class="form-control" id="sel1">
    <option value="<?php echo $result['quantityId']; ?>">1 <?php echo $result['quantity_name'] ?></option>
    	<?php  while ($res = $quant->fetch_assoc()) { ?>
    <option value="<?php echo $res['quantityId']; ?>">1 <?php echo $res['quantity_name'] ?></option>
 <?php }  ?>
 
  </select>
</div> 
<div class="form-group">
  <label for="sel1">Offer</label>
  <select name="offer" class="form-control" id="sel1">
     <option value="<?php echo $result['offer']; ?>"> <?php if($result['offer']==0){echo "No Offer";}else{echo "Ofer";}  ?></option>
    <option value="0">No Offer</option>
    <option value="1"> Offer</option>
 
 
  </select>
</div> 


 <div class="form-outline mb-4">
    <label class="form-label" for="form4Example1">Product Price</label>
    <input name="price" value="<?php echo $result['price'] ?>" type="text" id="form4Example1" class="form-control" />
  </div>
  <div class="form-outline mb-4">
    <label class="form-label" for="form4Example1">Sell status</label>
      <select name="type">
         <option value="0">Available</option>
    <option value="1"> Not Available</option>
      </select>
  </div>
<!--    <div class="form-outline mb-4">
    <label class="form-label" for="form4Example1">Product Code</label>
    <input name="productcode" value="<?php //echo substr(md5(time()), 0, 10); ?>" type="text" id="form4Example1" class="form-control" />
  </div> -->
  
   <div class="form-outline mb-4">
    <label class="form-label" for="form4Example1">Product Image</label>
    <input type="file" name="image" id="form4Example1" class="form-control" />
  </div>

  <!-- Message input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form4Example3">Description</label>
    <textarea class="form-control" name="body" id="form4Example3" rows="4"><?php echo $result['body'] ?></textarea>
  </div>

  <!-- Checkbox -->
 

  <!-- Submit button -->
  <button type="submit" name="update" class="btn btn-primary btn-block mb-4">Send</button>
</form>
<?php } ?>
      </div>
   <?php include 'inc/footer.php'; ?>
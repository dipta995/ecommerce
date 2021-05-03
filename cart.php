<?php include'inc/header.php';?>
<?php
 if (isset($_GET['delpro'])){
        $delId = $_GET['delpro'];
        $delProd = $ct->delProductById($delId);
    }
 if ($_SERVER['REQUEST_METHOD']== 'POST') {
      $cartId = $_POST['cartId'];
      $quantity = $_POST['quantity'];
      $updateCart = $ct->updateCartQuantity($cartId,$quantity);
      if ($quantity<= 0) {
        $delProd = $ct->delProductById($cartId);
      }
    }
    if (!isset($_GET['reload'])) {
      echo "<meta http-equiv='refresh' content='0;URL=?reload=shop'/>";
    }
?>
  <div id="cart-page-contain">
    <div class="container">
      <div class="row">
        <div class="col-md-9 col-xs-12"> 
          <!-- left block Start  -->
          <div class="cart-content table-responsive">
            <?php 
            if (isset($updateCart)) {
              echo $updateCart;
            }
            ?>
            <table class="cart-table table-responsive" style="width:100%">
              <tbody>
                <tr class="Cartproduct carttableheader">
                  <td style="width:15%"> Product</td>
                  <td style="width:45%">Details</td>
                  <td style="width:10%">QNT</td>
                  
                  <td style="width:15%">Total</td>
                  <td class="delete" style="width:10%">&nbsp;</td>
                </tr>
                  <?php
          
              $sum = "";
              $quanti = "";

              $getpro = $ct->getCartProduct();
                if ($getpro) {
                  $i = 0;
                  while ($result = $getpro->fetch_assoc()) {
                    $i++;
                  
              ?>
                <tr class="Cartproduct">
                  <td ><div class="image"><a href="product-detail-view.php?productid=<?php echo $result['productId'];?>"><img alt="img" src="<?php echo $result['image'];?>"></a></div></td>
                  <td><div class="product-name">
                      <h4><a href="product-detail-view.php?productid=<?php echo $result['productId'];?>"> <?php echo $result['productName']; ?></a></h4>
                    </div>
                    <span class="size"></span>
                    <div class="price"><span><?php echo $result['price']; ?> Taka</span></div></td>
                  <td class="product-quantity"><div class="quantity">
                       
                      <form action="" method="post">
              <input type="hidden" name="cartId" value="<?php echo $result['cartId']?>"/><input type="number" name="quantity" value="<?php echo $result['quantity']?>"/>
              <input type="submit" name="submit" value="Update"/>
            </form>
                    </div></td>
                   
                  <td class="price"><?php 

                    $total = floatval($result['price']) * floatval($result['quantity']);
                echo $total ?> Taka</td>
                  <td class="delete">
                    <a onclick="return confirm('Are you sure to delete ?');"href="?delpro=<?php echo $result['cartId']?>"><i class="glyphicon glyphicon-trash "></i></a></td>  
                </tr>
                 <?php 
                $quanti = floatval($quanti) + floatval($result['quantity']);
                $sum = floatval($sum) + floatval($total);
                
                Session::set("quanti", $quanti);
              ?>
              <?php } } ?>
                
              </tbody>
            </table>
          </div>
          <div class="cart-bottom">
            <div class="box-footer">
              <div class="pull-left"><a class="btn btn-default" href="index.php"> <i class="fa fa-arrow-left"></i> &nbsp; Continue shopping </a></div>
              <div class="pull-right">
               
              </div>
            </div>
          </div>
          <!-- left block end  --> 
        </div>
        <div class="col-md-3 col-xs-12"> 
          <!-- right block Start  -->
          <div id="right">
            <div class="sidebar-block">
              <div class="sidebar-widget">
                <div class="sidebar-title">
                  <h4>Cart Summary</h4>
                </div>
                <div id="order-detail-content" class="title-toggle table-block">
                  <div class="carttable">
                    <?php 
              $check = $ct->checkCart();
                if ($check){
            ?>
                    <table class="table" id="cart-summary">
                      <tbody>
                        <tr>
                          <td>Total products</td>
                          <td class="price"><?php echo $quanti ?></td>
                        </tr>
                        <tr>
                          <td>Shipping</td>
                          <td class="price"><span class="success">Free shipping!</span></td>
                        </tr>
                        <tr class="cart-total-price ">
                          <td>Total (tax excl.)</td>
                          <td class="price">TK. <?php echo $sum ?></td>
                        </tr>
                        <tr>
                          <td>Total tax</td>
                          <td id="total-tax" class="price">10%</td>
                        </tr>
                        <tr>
                          <td> Total</td>
                          <td id="total-price"><?php
                 $vat = $sum * 0.1;
                  $gtotal =  $sum + $vat;
                  echo $gtotal;
                  Session::set("sum", $gtotal);
                  ?></td>
                        </tr>
                        <tr>
                       <!--    <td colspan="2"><div class="input-append couponForm">
                              <input type="text" placeholder="Gift or Coupon code" id="appendedInputButton">
                              <button type="button" class="col-lg-4 btn btn-success">Apply!</button>
                            </div></td> -->
                        </tr>
                      </tbody>
                    </table> 
                    <div class="checkout"> <a href="checkout-step4.php" title="checkout" class="btn btn-default ">Proceed to checkout</a> </div>
                    <?php }else{ echo "<span class='danger'>Cart is an empty.</span>";?>
                  </div>
                </div>
              </div>
          
            <?php } ?>

            </div>
          </div>
          <!-- left block end  --> 
        </div>
      </div>
    </div>
  </div>
    
  <?php include'inc/footer.php';?>
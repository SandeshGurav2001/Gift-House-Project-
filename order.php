<?php include('partials-front/menu.php'); ?>

<?php 
    // Check whether item id is set or not
    if(isset($_GET['item_id']))
    {
        // Get the item id and details of the selected item
        $item_id = $_GET['item_id'];

        // Get the Details of the Selected item
        $sql = "SELECT * FROM item_master WHERE id=$item_id";
        // Execute the Query
        $res = mysqli_query($conn, $sql);
        // Count the rows
        $count = mysqli_num_rows($res);
        // Check whether the data is available or not
        if($count==1)
        {
            // We have Data
            // Get the Data from Database
            $row = mysqli_fetch_assoc($res);

            $title = $row['title'];
            $price = $row['price'];
            $image_name = $row['image_name'];
        }
        else
        {
            // Item not Available
            // Redirect to Home Page
            header('location:'.SITEURL);
        }
    }
    else
    {
        // Redirect to homepage
        header('location:'.SITEURL);
    }
?>

<!-- item search Section Starts Here -->
<section class="item-search">
    <div class="container">
        
        <h2 class="text-center text-white">Fill this form to confirm your order.</h2>

        <form action="" method="POST" class="order">
            <fieldset>
                <legend>Selected item</legend>

                <div class="item-menu-img">
                    <?php 
                    
                        // Check whether the image is available or not
                        if($image_name=="")
                        {
                            // Image not Available
                            echo "<div class='error'>Image not Available.</div>";
                        }
                        else
                        {
                            // Image is Available
                            ?>
                            <img src="<?php echo SITEURL; ?>images/item/<?php echo $image_name; ?>" alt="item" class="img-responsive img-curve">
                            <?php
                        }
                    
                    ?>
                    
                </div>

                <div class="item-menu-desc">
                    <h3><?php echo $title; ?></h3>
                    <input type="hidden" name="item" value="<?php echo $title; ?>">

                    <p class="item-price">&#8377;<?php echo $price; ?></p>
                    <input type="hidden" name="price" value="<?php echo $price; ?>">

                    <div class="order-label">Quantity</div>
                    <input type="number" name="qty" class="input-responsive" value="1" required>
                    
                </div>

            </fieldset>
            
            <fieldset>
                <legend>Delivery Details</legend>
                <div class="order-label">Full Name</div>
                <input type="text" name="full-name" placeholder="E.g. Sagar Yadav" class="input-responsive" required>

                <div class="order-label">Phone Number</div>
                <input type="tel" name="contact" placeholder="E.g. 9843xxxxxx" class="input-responsive" required>

                <div class="order-label">Email</div>
                <input type="email" name="email" placeholder="E.g. sagaryadav@gmail.com" class="input-responsive" required>

                <div class="order-label">Address</div>
                <textarea name="address" rows="10" placeholder="E.g. Street, City, Country" class="input-responsive" required></textarea>

                <input type="submit" name="submit" value="Confirm Order" class="btn btn-primary">
            </fieldset>

        </form>

        <?php 

            // Check whether submit button is clicked or not
            if(isset($_POST['submit']))
            {
                // Get all the details from the form

                $item = $_POST['item'];
                $price = $_POST['price'];
                $qty = $_POST['qty'];

                $total = $price * $qty; // total = price x qty 

                $order_date = date("Y-m-d h:i:sa"); // Order Date

                $status = "Ordered";  // Ordered, On Delivery, Delivered, Cancelled

                $customer_name = $_POST['full-name'];
                $customer_contact = $_POST['contact'];
                $customer_email = $_POST['email'];
                $customer_address = $_POST['address'];


                // Save the Order in Database
                // Create SQL to save the data
                $sql2 = "INSERT INTO order_master SET 
                    item = '$item',
                    price = $price,
                    qty = $qty,
                    total = $total,
                    order_date = '$order_date',
                    status = '$status',
                    customer_name = '$customer_name',
                    customer_contact = '$customer_contact',
                    customer_email = '$customer_email',
                    customer_address = '$customer_address'
                ";

                // Execute the Query
                $res2 = mysqli_query($conn, $sql2);

                

            }
        
        ?>

    </div>
</section>
<!-- item search Section Ends Here -->

<?php include('partials-front/footer.php'); ?>

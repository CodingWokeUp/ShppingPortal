<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <title>Payment</title>
    </head>
    <body class="container-fluid" class="center">
        <style>
            body{
                background-image: url("image/bgbuy.jpg"); background-repeat: no-repeat; background-size: cover;
            }
            .row{
                opacity: .9;
            }
        </style>

        <div class="container py-4">
            <!-- For demo purpose -->
           <div class="row mb-4">
                <div class="col-lg-8 mx-auto text-center">
                    <legend style="text-shadow:2px 2px 4px gray, 0 0 22px white, 0 0 6px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif; text-align:center;font-size: 40px;">PAYMENT </legend>
                    <h3 style="text-align:center;font-family:Times New Roman, Times, serif; "><b>Accepted Type</b></h3>

                </div>
            </div> <!-- End -->
            <div class="row" id="form">
                <div class="col-lg-10 mx-auto">
                    <div class="card ">
                        <div class="card-header">
                            <div class="bg-muted shadow-sm pt-4 pl-2 pr-2 pb-2">
                                <!-- Credit card form tabs -->
                                <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                                    <li class="nav-item nav-link active"> Credit Card </li>

                                </ul>
                            </div> <!-- End -->
                            <!-- Credit card form content -->
                            <div class="tab-content">
                                <!-- credit card info-->
                                <div id="credit-card" class="tab-pane fade show active pt-3">
                                    <form role="form" onsubmit="event.preventDefault();">
                                        <div class="form-group"> 
                                            <label for="username">
                                                <h6>Card Owner</h6>
                                            </label>
                                            <input type="text" name="username" placeholder="Card Owner Name" required class="form-control "> 
                                        </div>
                                        <div class="form-group"> <label for="cardNumber">
                                                <h6>Card number</h6>
                                            </label>
                                            <div class="input-group"> <input type="text" name="cardNumber" placeholder="Valid card number" class="form-control " required>
                                                <div class="input-group-append"> <span class="input-group-text text-muted"> <i class="fab fa-cc-visa mx-1"></i> <i class="fab fa-cc-mastercard mx-1"></i> <i class="fab fa-cc-amex mx-1"></i> </span> </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <div class="form-group"> <label><span class="hidden-xs">
                                                            <h6>Expiration Date</h6>
                                                        </span></label>
                                                    <div class="input-group"> <input type="number" placeholder="MM" name="" class="form-control" required> <input type="number" placeholder="YY" name="" class="form-control" required> </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-4"> <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                                                        <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                                    </label> <input type="text" required class="form-control"> </div>
                                            </div>
                                        </div>
                                   
                                        <div class="card-footer"> <button type="button" class="subscribe btn btn-primary btn-block shadow-sm"> Confirm Payment </button>
                                        </div>
                                    </form>
                                
                            </div> <!-- End -->
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
    </form>

</div>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/jquery.js" type="text/javascript"></script>
</body>
</html>

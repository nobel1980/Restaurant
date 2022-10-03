   <!-- Slider -->
<div class="flexslider">
    <ul class="slides">
        <li>
            {{ image("/img/slide-02.jpg", "alt": "English Breakfast") }}
            <div class="container">
                <div class="row">
                    <div class="col-md-12 centered">
                        <h1>English Breakfast</h1>
                        <h2>Serving with tea/coffee at early morning</h2>
                    </div>
                </div>
            </div>
        </li>
        <li>
            {{ image("/img/slider.jpg", "alt": "Salad") }}
            <div class="container">
                <div class="row">
                    <div class="col-md-12 centered">
                        <h1>Enjoy Fresh Salad</h1>
                        <h2>Why don't you taste it?</h2>
                    </div>
                </div>
            </div>
        </li>
        <li>
            {{ image("/img/slide-01.jpg", "alt": "Morning Tea") }}
            <div class="container">
              <div class="row">
                <div class="col-md-12 centered">
                  <h1>Early Morning Tea</h1>
                  <h2>Searving Tea and Coffee with Breakfast</h2>
                </div>
              </div>
          </div>
        </li>
    </ul>
</div>
<!-- End Slider -->


<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="offer offer-radius offer-danger">
                <div class="offer-content">
                    <div class="section-title">
                        <h4>Special Section </h4>
                    </div>
                    <p>
                        We will welcome our customers to sitting inside as well outside from 19th of May 2021.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="offer offer-radius offer-danger">
                <div class="offer-content">
                    <div class="section-title">
                        <h4>Opening Hours </h4>
                    </div>
                    <div style="position: relative;">
                        <ul class='opening_time'>
                            <ul class='opening_time'>
                            <li>
                                <div class="day" >Sunday</div>
                                <div class="time">8:00 AM - 3:30 PM </div>
                                <div style="clear: both;"></div>
                            </li>
                            <li>
                                <div class="day" >Monday</div>
                                <div class="time"> 7:00 AM - 5:00 PM </div>
                                <div style="clear: both;"></div>
                            <li>
                                <div class="day" >Tuesday</div>
                                <div class="time"> 7:00 AM - 5:00 PM </div>
                                <div style="clear: both;"></div>
                            </li>
                            <li>
                                <div class="day" >Wednesday</div>
                                <div class="time"> 7:00 AM - 5:00 PM </div>
                                <div style="clear: both;"></div>
                            </li>
                            <li>
                                <div class="day" >Thursday</div>
                                <div class="time"> 7:00 AM - 5:00 PM </div>
                                <div style="clear: both;"></div>
                            </li>
                            <li>
                                <div class="day" >Friday</div>
                                <div class="time"> 7:00 AM - 5:00 PM </div>
                                <div style="clear: both;"></div>
                            </li>
                            <li>
                                <div class="day" >Saturday</div>
                                <div class="time"> 7:00 AM - 5:00 PM </div>
                                <div style="clear: both;"></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="offer offer-radius offer-danger">
                <div class="offer-content">
                    <div class="section-title">
                        <h4>Contact Us</h4>
                    </div>
                    <p>
                        <strong>Address:</strong>  41 Heath Road,Twickenham,<br>
                        Middlesex.TW1 4AW
                        <br> <strong>Telephone:</strong> +020 853 89080
                        <br> <strong>Email:</strong> info@cafelacigale.co.uk
                    </p>
                    <div class="online-order">
                        <ul class="list-inline">
                            <li class="list-inline-item"><a href="https://www.ubereats.com/gb/london/food-delivery/cafe-la-cigale/JiwKXY7KTQmPP3a9le1C4g"><img src="/img/UberEats_Badge_Small.png" alt="logo"></a></li>
                            <li class="list-inline-item"><a href="https://www.just-eat.co.uk/restaurants-cafe-la-cigale-twickenham/reviews"><img src="/img/JustEat_Badge_Small.png" alt="logo"></a></li>
                            <li class="list-inline-item"><a href="https://deliveroo.co.uk/menu/london/twickenham/cafe-la-cigale?day=today&geohash=gcpu8njjqtdn&time=ASAP"><img src="/img/Deliveroo_Badge_Small.png" alt="logo"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="border-b"><span></span></div>
    </div>

    <!-- Products -->
    <div class="row deal">
        <div class="col-md-12">
            <h2 class="head"><strong>Meal Deal</strong> for this week</h2>
        </div>
        <div class="col-md-4 col-sm-8">
            <div class="blocks-frat">
                <span class="price">£6.90</span>
                {{ image("/img/deal-01.jpg","class": "img-fluid center-block offer-radius", "alt": "Hot Deal - Breakfast") }}
            </div>
            <h4 class="subtitle">Breakfast</h4>
            <p>2 fried eggs, 2 bacon, tomato, beans, 2 hash browns, 1 toast; tea/coffee.</p>
        </div>
        <div class="col-md-4 col-sm-8">
            <div class="blocks-frat">
                <span class="price">£6.90</span>
                {{ image("/img/deal-03.jpg","class": "img-fluid center-block offer-radius", "alt": "Hot Deal - Salad Panini") }}
            </div>
            <h4 class="subtitle">Special Salad </h4>
            <p>Combination of Greek salad & toasted Paninis</p>
        </div>
                <div class="col-md-4 col-sm-8">
            <div class="blocks-frat">
                <span class="price">£5.90</span>
                {{ image("/img/deal-02.jpg","class": "img-fluid center-block offer-radius", "alt": "Hot Deal - Burger") }}
            </div>
            <h4 class="subtitle">Quarter Pounder Burger</h4>
            <p>Delicious Cheese Burgers with chips</p>
        </div>
        <div class="border-b"><span></span></div>
    </div>
    <!-- End Products -->

    <!-- Menu -->
    <div class="row menu">
        <div class="col-md-12">
            <h2>Popular <strong>menu</strong></h2>
        </div>
        <div class="col-md-12">
            <div class="section">
                <h3><span class="menuhead">English <strong>Breakfast</strong></span></h3>
                <div class="row">
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/3.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">La Cigale Breakfast</span>
                            </div>
                            <div class="description">2 Eggs, 2 bacon, 2 sausages, beans, mushrooms, tomato, 1 toast, chips or hash browns</div>
                            <div class="legend"><span>£6.90</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/13.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Cheese Omelette</span>
                            </div>
                            <div class="description">Ham and cheese omelette with chips and beans</div>
                            <div class="legend"><span>£7.50</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/14.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Omelette and strips</span>
                            </div>
                            <div class="description">Cheese omelette with chicken strips and salad</div>
                            <div class="legend"><span>£9.90</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/4.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Brunch Breakfast</span>
                            </div>
                            <div class="description">2 Eggs, 2 bacon, 2 sausages, mushrooms, tomato, 1 toast</div>
                            <div class="legend"><span>£5.90</span></div>
                        </div>
                    </div>
                </div><!-- end .row -->
            </div><!-- end .section-->

            <div class="section">
                <h3><span class="menuhead">Sandwich  <strong>Paninis</strong></span></h3>
                <div class="row">
                    <div class="col-md-6">
                        {{ image("/img/menu/16.jpg","class": "thumb", "alt": "Salad Panini") }}
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Ham & Cheese Sandwich</span>
                            </div>
                            <div class="description">Toasted ham and cheese Sandwich</div>
                            <div class="legend"><span>£2.80</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        {{ image("/img/menu/1.jpg","class": "thumb", "alt": "Salad Panini") }}
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Greek salad & toasted Paninis</span>
                            </div>
                            <div class="description">Combination of Greek salad & toasted Egg Mayonnaise Panini</div>
                            <div class="legend"><span>£8.90</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/9.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Fresh Sandwich</span>
                            </div>
                            <div class="description">Fresh cut cheese salad sandwich with wholemeal bread.</div>
                            <div class="legend"><span>£ 2.60</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/15.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Falafel & Hummus Wrap</span>
                            </div>
                            <div class="description">Toasted wrap with falafel & hommus</div>
                            <div class="legend"><span>£ 4.50</span></div>
                        </div>
                    </div>
                </div><!-- end .row -->
            </div><!-- end .section -->

            <div class="section">
                <h3><span class="menuhead">Special  <strong>Salads</strong></span></h3>
                <div class="row">
                    <div class="col-md-6">
                        {{ image("/img/menu/11.jpg","class": "thumb", "alt": "Salad Panini") }}
                        <div class="item simpleCart_shelfItem" id="item-01">
                            <div class="info">
                                <span class="name item_name">Greek salad</span>
                            </div>
                            <div class="description">Cucumber, tomato, onions, olives & lemon</div>
                            <div class="legend"><span>£5.90</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/2.jpg" alt="" />
                        <div class="item simpleCart_shelfItem" id="item-02">
                            <div class="info">
                                <span class="name item_name">Falafel Hummus salad</span>
                            </div>
                            <div class="description">Combination of Falafel, Hummus, chicken strips salad</div>
                            <div class="legend"><span>£ 6.50</span></div>
                        </div>
                    </div>
                </div><!-- end .row -->
            </div><!-- end .section -->

            <div class="section">
                <h3><span class="menuhead">Jacket  <strong>Potatos</strong></span></h3>
                <div class="row">
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/18.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Jacket Potato</span>
                            </div>
                            <div class="description">Jacket Potato with Cheese</div>
                            <div class="legend"><span>£4.00</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/19.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Jacket Potato</span>
                            </div>
                            <div class="description">Jacket Potato with Tuna</div>
                            <div class="legend"><span>£ 4.00</span></div>
                        </div>
                    </div>
                </div><!-- end .row -->
            </div><!-- end .section -->

            <div class="section">
                <h3><span class="menuhead">Caribbean <strong>Taste</strong></span></h3>
                <div class="row">
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/5.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">

                            <div class="info">
                                <span class="name item_name">Traditional Jamaican food </span>
                            </div>

                            <div class="description">Traditional Jamaican style curry with rice and chips available Thursday and Friday.</div>
                            <div class="legend"><span>£ 5.90</span></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="thumb" src="/img/menu/6.jpg" alt="" />
                        <div class="item simpleCart_shelfItem">
                            <div class="info">
                                <span class="name item_name">Jerk chicken rice</span>
                            </div>
                            <div class="description">Caribbean jerk chicken and rice with salad available Thursday and Friday</div>
                            <div class="legend"><span>£ 5.90</span></div>
                        </div>
                    </div>
                </div><!-- end .row -->
            </div><!-- end .section -->
        </div>
        <div class="border-b"><span></span></div>
    </div><!-- end row -->
        <!-- End Menu -->


    <!-- About -->
    <div class="row about">
        <div class="col-md-12">
            <h2 class="head">About <strong>Cafe La Cigale</strong></h2>
        </div>
        <div class="col-md-7"><img src="/img/about.png" class="img-fluid" alt=""></div>
        <div class="col-md-5">
            <p class="text-justify">For a beautifully tasty and satisfying breakfast, look no further than <strong>Café La Cigale</strong>. Based in Twickenham, Middlesex, our friendly café has been serving quality hot and cold food since 2005. Whether you want to come in and relax or take your food away, we’re sure to have a delicious meal waiting for you – along with soft drinks, tea, and fresh coffee to wash it down with.</p>
            <p class="text-justify">Feel free to place your order via phone. Alternatively, you can make an order via Uber Eat, Just East or Deliveroo. Delivery is available, at no cost, with orders for 10 people or more.</p>
        </div>
    </div><!-- end .row -->
    <!-- End About -->

</div><!-- end .container -->

<style type="text/css">	
.shape{    
	border-style: solid; border-width: 0 70px 40px 0; float:right; height: 0px; width: 0px;
	-ms-transform:rotate(360deg); /* IE 9 */
	-o-transform: rotate(360deg);  /* Opera 10.5 */
	-webkit-transform:rotate(360deg); /* Safari and Chrome */
	transform:rotate(360deg);
}
.offer{
	background:#fff; border:1px solid #ddd; box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); margin: 15px 0; overflow:hidden;
}

.offer-radius{
	border-radius:7px;
}
.offer-danger {	border-color: #32cd32; }
.offer-danger .shape{
	border-color: transparent #32cd32 transparent transparent;
}
.offer-content{
	padding:0 20px 10px;
	min-height: 238px;
}
.offer-content h3{
    color: #32cd32;
    margin: 10px;
}

.offer-content .section-title h4 {
    color: #32cd32;
    position: relative;
    font-size: 16px;
    line-height: 30px;
    font-weight: 700;
    border-bottom: 1px solid #ddd;
    padding-bottom: 10px;
    text-transform: capitalize;
}

.offer-content .section-title h4:after {
    position: absolute;
    content: "";
    left: 0;
    bottom: -2px;
    width: 80px;
    height: 3px;
    border-bottom: 3px solid #32cd32;
    border-radius: 5px;
}
.deal h2, .menu h2, .about h2 {color: #32cd32;}
.menu .section h3 {
    color: #32cd32;
    position: relative;
    line-height: 30px;
    border-bottom: 1px solid #ddd;
    padding-bottom: 10px;
    padding-bottom: 10px;
}

.menu .section h3:after {
    position: absolute;
    content: "";
    left: 0;
    bottom: -2px;
    width: 100px;
    height: 3px;
    border-bottom: 3px solid #32cd32;
    border-radius: 5px;
}

@media (min-width: 487px) {
  .container {
    max-width: 750px;
  }
  .col-sm-6 {
    width: 50%;
  }
}
@media (min-width: 900px) {
  .container {
    max-width: 970px;
  }
  .col-md-4 {
    width: 33.33333333333333%;
  }
}

@media (min-width: 1200px) {
  .container {
    max-width: 1170px;
     }
  }

.opening_time{
        padding-left:0px;
    } 
.opening_time li{
        padding:10px;
        list-style: none;
        border-radius: 10px;
        line-height:0px;
    } 
    
.day{float: left;}
.time{float: right;}    

.active_day{	  
	  background-color: #32cd32;
	  color: #FFFFFF;
	  font-weight: bolder;
	}
</style>

<script type="text/javascript">
	$( document ).ready(function() {
		var d = new Date();
        //alert(d.getDay());
        var n = d.getDay();      
		$( "ul.opening_time li:eq("+n+")" ).addClass('active_day');		
});	
</script>

<section class="address-area section-big">
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="section-title text-center">
                    <h3 class="subtitle">CONTACT US</h3>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 col-sm-4">
                <div class="address-box">
                    <i class="fa fa-headphones"></i>
                    <h4>Phone Us</h4>
                    <a href="tel:0124121541">+000(111)22245</a>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="address-box">
                    <i class="fa fa-envelope"></i>
                    <h4>Email Us</h4>
                    <a href="mailto:support@admin.com">support@admin.com</a>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="address-box">
                    <i class="fa fa-send"></i>
                    <h4>Location</h4>
                    <p>New York, NY 100 234</p>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- Address area ends -->



<!-- Contact Form area starts -->
<section class="contact-form-area section-big">
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="section-title text-center">
                    <h3 class="subtitle">SEND US A MESSAGE</h3>
                    <p>Locavore pork belly scenester biodiesel mixtape tacos art party mustache cardigan kitsch squid disrupt. Biodiesel mixtape tacos art party mustache cardigan kitsch squid disrupt.</p>
                </div>
            </div>
        </div>

        <div class="contact-form">
            <!-- Submition status -->
            <div id="form-messages"></div>

            <form id="ajax-contact" action="http://designcarebd.com/corvance/assets/contact.php" method="post" class="comment-form">

                <div class="row">
                    <div class="col-md-6">
                        <input name="name" id="name" type="text" placeholder="Name" required="required">
                        <input name="phone" id="phone" type="text" placeholder="Phone">
                        <input name="email" id="email" type="text" placeholder="Email" required="required">
                    </div>
                    <div class="col-md-6">
                        <textarea name="message" id="message" rows="8" placeholder="Message"></textarea>
                        <div class="actions">
                            <input type="submit" value="SEND MESSAGE" name="submit" id="submitButton" class="btn con-button" title="Submit Your Message!">
                        </div>
                    </div>
                </div>

            </form>
        </div>

    </div>
</section>
<!-- Contact Form area ends -->



<!-- Google Map starts-->
<div id="contactgoogleMap"></div>

<!-- Google Map js-->
<script>

    var myCenter=new google.maps.LatLng(23.8028085, 90.4070036);
    function initialize()
    {
        var mapProp = {
            center:myCenter,
            scrollwheel: false,
            zoom:15,
            mapTypeId:google.maps.MapTypeId.ROADMAP
        };
        var map=new google.maps.Map(document.getElementById("contactgoogleMap"),mapProp);
        var marker=new google.maps.Marker({
            position:myCenter,
            animation:google.maps.Animation.BOUNCE,
            icon:'assets/img/map-marker.png',
            map: map,
        });
        var styles = [
            {
                stylers: [
                    { hue: "#03a9f5" },
                    { saturation: -60 }
                ]
            },
        ];
        map.setOptions({styles: styles});
        marker.setMap(map);
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
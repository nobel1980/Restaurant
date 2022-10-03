<?php
$catogories = unique_value_array($products,'cat_id', 'cat_name');
//print_r($catogories);exit;
?>
<div class="container">
    <div class="row">
        <div class="col-xs-2 col-sm-6 col-lg-2">
            <div id="prodCat" class="sticky-top sticky-offset">
                <ul class="nav nav-tabs">
                    <?php
                $i=0;
                foreach($catogories as $catkey=>$cat_name)
                    {
                    if($i>0)
                    {

                    echo "<li class='nav-item'><a href='#heading".$catkey."' role='tab' aria-controls='".$cat_name."'>".$cat_name."</a></li>";
                    }
                    else
                    {
                    echo "<li class='nav-item active'><a href='#heading".$catkey."' role='tab' aria-controls='".$cat_name."'>".$cat_name."</a></li>";
                    }

                    $i++;
                    }
                    ?>
                </ul>
            </div>
        </div>
        <div class="col-xs-6 col-sm-8 col-lg-6">
            <div  id="accordion-style-1">
                <section>
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <div class="accordion" id="accordionExample">
                                <?php
                                $i=0;
                                foreach($catogories as $catkey=>$cat_name)
                                    {
                                    echo "<div class='card tab-content'>";
                                        echo "<div class='card-header' id='heading".$catkey."' role='tabpanel'>";
                                            echo "<h5 class='mb-0'>";
                                               echo "<button class='btn btn-link btn-block text-left' type='button' data-toggle='collapse' data-target='#collapse".$catkey."' aria-expanded='true' aria-controls='collapse".$catkey."'>";
                                                    echo "<span class='oi oi-menu mr-3'></span>".$cat_name."";
                                                        foreach($groups as $gr)
                                                        {
                                                        if($gr['id']== $catkey)
                                                        {
                                                        echo "<h6 class='product-notes'>".$gr['description']."</h6>";
                                                        }
                                                        }

                                               echo "</button>";
                                            echo "</h5>";
                                        echo "</div>";

                                       echo "<div id='collapse".$catkey."' class='collapse show fade' aria-labelledby='heading".$catkey."' data-parent='#accordionExample'>";
                                        echo "<div class='card-body'>";
                                            foreach($products as $pd)
                                            {
                                            if($pd['cat_id'] == $catkey)
                                              {
                                              echo "<ul class='list-group list-group-flush'>";
                                                echo "<li class='list-group-item clearfix'>";
                                                    echo "<div class='product-title'>".$pd['name']."</div>";
                                                    echo"<div class='product-price'>£".$pd['price']."</div>";
                                                    echo"<span class='description'>".$pd['description']."</span>";
                                                echo "</li> ";
                                              echo "</ul>";
                                              }
                                            }
                                        echo "</div>";
                                       echo "</div>";
                                    echo "</div>";
                                    $i++;
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
<?php
function unique_value_array($arr,$key_str,$val_str)
{
    $new_arr;
    $i=0;
    foreach($arr as $key => $val) {
$new_arr[$val[$key_str]] = $val[$val_str];
$i++;
}
return $uniq_arr = array_unique($new_arr);
}
?>
<style type="text/css">
    .sticky-offset {
        top: 100px;
        bottom: 400px;
    }

    #prodCat .nav.nav-tabs {
        float: left;
        display: block;
        margin-right: 20px;
        border-bottom:0;
        padding-right: 5px;
    }

    #prodCat .nav.nav-tabs .nav-item {
        border-bottom: 1px solid #ddd;
        padding-bottom: 5px;
    }
/*----------*/
    #accordion-style-1 h1,
    #accordion-style-1 a{
        color:#32cd32;
    }
    #accordion-style-1 .btn-link {
        font-weight: 400;
        color: #32cd32;
        background-color: transparent;
        text-decoration: none !important;
        font-size: 16px;
        font-weight: bold;
        padding-left: 25px;
    }

    #accordion-style-1 .card-body {
        border-top: 2px solid #BFFF00;
    }

    /*---------*/
    .product-title{float: left;}
    .product-price{float: right}
    .product-notes{   overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2; /* number of lines to show */
        -webkit-box-orient: vertical;}
    .list-group-item{border: 1px dashed rgba(0,0,0,.125);}
</style>

<?php
include_once('../common.php');
$group['subject'] = "ABOUT";
$group2['subject'] = "오시는길";
include_once(G5_THEME_PATH.'/head2.php');
?>


<section class="ptb ptb-xs-60">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2 text-center">
          <h2>찾아오시는길</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 contact pb-60 pt-30">
          <div class="row text-center">
            <div class="col-sm-4 pb-xs-30"> <i class="ion-android-call icon-circle pos-s"></i><a href="#" class="mt-15 i-block">043-234-0170 </a> </div>
            <div class="col-sm-4 pb-xs-30"> <i class="ion-ios-location icon-circle pos-s"></i>
              <p  class="mt-15"> 충청북도 청주시 청원구 오창읍 중신리 84  </p>
            </div>
            <div class="col-sm-4 pb-xs-30"> <i class="ion-ios-email icon-circle pos-s"></i><a href="mailto:songs5669@hanmail.net"  class="mt-15 i-block">songs5669@hanmail.net</a> </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Map Section -->
 
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwlNqAEil52XRPHmSVb4Luk18qQG9GqcM&sensor=false&language=kr"></script> 
 
 
<script> 
  function initialize() { 
var myLatlng = new google.maps.LatLng(36.70186832609079, 127.43371191361983); // 좌표값
  var mapOptions = { 
        zoom: 14, // 지도 확대레벨 조정
        center: myLatlng, 
        mapTypeId: google.maps.MapTypeId.ROADMAP 
  } 
  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions); 
  var marker = new google.maps.Marker({ 
position: myLatlng, 
map: map, 
title: "가온디아이시스템" // 마커에 마우스를 올렸을때 간략하게 표기될 설명글
}); 
  } 
window.onload = initialize;
</script>
  
<div id="map_canvas" style="width: 100%; height: 500px; margin:0px;"></div>
    <!-- Map Section -->

  </section>

             
<?php
include_once(G5_THEME_PATH.'/tail.php');
?>
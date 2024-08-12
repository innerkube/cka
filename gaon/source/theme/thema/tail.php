<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/tail.php');
    return;
}
?>

<?php if(defined('_INDEX_')) { ?>


<?php } else { ?>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Service Section end --> 


<?php } ?>



    <button type="button" id="top_btn">
    	<i class="fa fa-angle-up" aria-hidden="true"></i><span class="sound_only">상단으로</span>
    </button>
    <script>
    $(function() {
        $("#top_btn").on("click", function() {
            $("html, body").animate({scrollTop:0}, '500');
            return false;
        });
    });
    </script>


<!-- } 콘텐츠 끝 -->


<!-- FOOTER -->
  <footer class="footer pt-30 pt-xs-0">
    <div class="container"> 
      
      <!--Footer Info -->
      <div class="row footer-info mb-0">
        <div class="col-md-12 col-sm-12 col-xs-12 mb-sm-30" align="left">
         <img src="<?php echo G5_THEME_URL; ?>/assets/images/tail.png"  alt=""   class="rev-slidebg " > 
        </div>
     
      </div>
      <!-- End Footer Info --> 
    </div>
    
    <!-- Copyright Bar -->
    <div class="copyright">
      <div class="container">
        <p class=""> © 2022 <a><b> songs5669@hanmail.net</b></a>. All Rights Reserved. </p>
      </div>
    </div>
    <!-- End Copyright Bar --> 
    
  </footer>
  <!-- END FOOTER --> 
  
</div>
<!-- Site Wraper End --> 


<!-- } 하단 끝 -->


<?php
include_once(G5_THEME_PATH."/tail.sub.php");
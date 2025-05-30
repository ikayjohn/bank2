<?php




$UniqueName  = "Lost Card";
require_once($_SERVER['DOCUMENT_ROOT'] . "/front/header.php");

?>
<!-- Page Banner Image Section -->
<div class="page-banner-image-section">
    <div class="image">
        <img src="<?= $web_url ?>front//images/background/2.jpg" alt="" />
    </div>
</div>
<!-- End Page Banner Image Section -->

<!-- About Section Two -->
<div class="about-section-two">
    <div class="auto-container">
        <div class="inner-container">
            <div class="row align-items-center clearfix">

                <!-- Image Column -->
                <div class="image-column col-lg-6">
                    <div class="about-image">
                        <div class="about-inner-image">
                            <img src="<?= $web_url ?>front//images/about/a.jpg" alt="about">
                        </div>
                    </div>
                </div>

                <!-- Content Column -->
                <div class="content-column col-lg-6 col-md-12 col-sm-12 mb-0">
                    <div class="inner-column">
                        <div class="sec-title">
                            <h2><span>Lost or Stolen Cards</span> </h2>
                        </div>
                        <div class="text">
                            <p style="font-size:18px;">

                                If your <?= $UniqueName ?> Card has been lost or stolen, notify us immediately.

                                Call at: +<?= $page['website_tel'] ?> or send us an email at <?= $page['website_email'] ?> 24 hours, 7 days a week. </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- End About Section Two -->



<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/front/footer.php");

?>
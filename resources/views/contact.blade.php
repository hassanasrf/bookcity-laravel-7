@extends('layout.master')
@section('page-title')
    Contact Us
@endsection
@section('main-content')
<main class="main-content">

		<!-- Contant Holder -->
		<div class="tc-padding">
			<div class="container">

				<!-- Address Columns -->
				<div class="tc-padding-bottom">
					<div class="row">
				
						<!-- Column -->
						<div class="col-lg-3 col-xs-6 r-full-width">
							<div class="address-column">
								<span class="address-icon"><i class="fa fa-map-marker"></i></span>
								<h6>Address</h6>
								<strong>6507 Elmwood Avenue Rocky  Mountt</strong>
								<p>Habitasse venenatis dictum sed habitant taciti fermentum cras himenaeos nunc et erat blandit at,</p>
							</div>
						</div>
						<!-- Column -->

						<!-- Column -->
						<div class="col-lg-3 col-xs-6 r-full-width">
							<div class="address-column">
								<span class="address-icon"><i class="fa fa-volume-control-phone"></i></span>
								<h6>Phone No.</h6>
								<strong>00+123-456-789</strong>
								<p>Habitasse venenatis dictum sed habitant taciti fermentum cras himenaeos nunc et erat blandit at,</p>
							</div>
						</div>
						<!-- Column -->

						<!-- Column -->
						<div class="col-lg-3 col-xs-6 r-full-width">
							<div class="address-column">
								<span class="address-icon"><i class="fa fa-envelope"></i></span>
								<h6>Email</h6>
								<strong>contact@onlinbookshops.com</strong>
								<p>Habitasse venenatis dictum sed habitant taciti fermentum cras himenaeos nunc et erat blandit at,</p>
							</div>
						</div>
						<!-- Column -->

						<!-- Column -->
						<div class="col-lg-3 col-xs-6 r-full-width">
							<div class="address-column">
								<span class="address-icon"><i class="fa fa-share-alt"></i></span>
								<h6>Fallow us</h6>
								<ul class="social-icons">
				                	<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
				                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
				                    <li><a class="youtube" href="#"><i class="fa fa-youtube-play"></i></a></li>
				                    <li><a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a></li>
				                </ul>
								<p>Habitasse venenatis dictum sed habitant taciti fermentum cras himenaeos nunc et erat blandit at,</p>
							</div>
						</div>
						<!-- Column -->

					</div>
				</div>
				<!-- Address Columns -->

				<!-- Contact Map -->
				<div class="tc-padding-bottom">
					<div id="contant-map" class="contant-map"></div>
				</div>
				<!-- Contact Map -->

				<!-- Form -->
				<div class="form-holder">

					<!-- Secondary heading -->
	        		<div class="sec-heading">
	        			<h3>Contact Form</h3>
	        		</div>
	        		<!-- Secondary heading -->

	        		<!-- Sending Form -->
	        		<form class="sending-form">
	        			<div class="row">
	        				<div class="col-sm-12">
			        			<div class="form-group">
			        				<textarea class="form-control" required="required" rows="5" placeholder="Text here..."></textarea>
			        				<i class="fa fa-pencil-square-o"></i>
			        			</div>
		        			</div>
		        			<div class="col-sm-4">
			        			<div class="form-group">
			        				<input class="form-control" required="required" placeholder="Full name">
			        				<i class="fa fa-user"></i>
			        			</div>
		        			</div>
		        			<div class="col-sm-4">
			        			<div class="form-group">
			        				<input class="form-control" required="required" placeholder="Phone no.">
			        				<i class="fa fa-phone"></i>
			        			</div>
		        			</div>
		        			<div class="col-sm-4">
			        			<div class="form-group">
			        				<input class="form-control" required="required" placeholder="Email">
			        				<i class="fa fa-envelope"></i>
			        			</div>
		        			</div>
		        			<div class="col-xs-12">
			        			<button class="btn-1 shadow-0 sm">send message</button>
		        			</div>
	        			</div>
	        		</form>
	        		<!-- Sending Form -->

				</div>
				<!-- Form -->

			</div>
		</div>
		<!-- Contant Holder -->

	</main>
@endsection
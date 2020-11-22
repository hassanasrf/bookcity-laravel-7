@extends('layout.master')
@section('page-title')
    About Us
@endsection
@section('main-content')
<main class="main-content">

		<!-- Service And Mission -->
		<section class="service-nd-mission tc-padding-top white-bg">
			<div class="container">
				<!-- Mission & values -->
		    	<div class="mission tc-padding-bottom">
		    		<div class="row">

		    			<!-- Mission Disc -->
		    			<div class="col-lg-6 col-xs-12">
		    				<div class="mission-disc">
		    					<h4>Mission <span>&amp; values</span></h4>
		    					<strong>Text Publishing is an independent, Melbourne-based publisher of literary fiction and non-fiction. Text won the Australian Book Industry Awards (ABIA) Small Publisher of the Year in 2012, 2013 and 2014.</strong>
		    					<p>At Text we want to publish books that make a difference to people’s lives. We believe that reading should be a marvellous experience, that every book you read should somehow change your life if only by a fraction. We love the phrase ‘lost in a book’.</p>
		    					<p> lost in books every day—on the tram, on the beach, in bed. Reading is what keeps the imagination supple and challenges preconceptions and prejudices.</p>
		    					<a href="#" class="btn-1 shadow-0">Read more<i aria-hidden="true" class="fa fa-arrow-circle-right"></i></a>
		    				</div>
		    			</div>
		    			<!-- Mission Disc -->

		    			<!-- Laptop Img -->
		    			<div class="col-sm-6">
		    				<div class="laptop-img">
		    					<img class="floating" src="/assets/images/laptop.png" alt="">
		    				</div>
		    			</div>
		    			<!-- Laptop Img -->

		    		</div>
		    	</div>
		    	<!-- Mission & values -->

			</div>
		</section>
		<!-- Service And Mission -->
		<!-- Team -->
		<section class="tc-padding white-bg">
			<div class="container">
				
				<!-- Main Heading -->
	    		<div class="main-heading-holder">
	    			<div class="main-heading style-2">
	    				<h2>Our <span class="theme-color">Creative Team</span></h2>
	    				<p>We are committed to providing first-class services to the writers who trust us</p>
	    			</div>
	    		</div>
	    		<!-- Main Heading -->	

				<!-- Team Slider -->
				<div class="team-slider">
					
					@foreach($teams as $team)
					<!-- Team Colmun -->
					<div class="item">
						<div class="team-column">
							<div class="team-img">
								@if($team->team_img == 'No image found')
									<img src="/assets/images/noimage.png" width="262" height="252" alt="No image found!">
								@else
									<img src="/uploads/{{ $team->team_img }}" width="262" height="252" alt="{{ $team->fullname }}">
								@endif
								<div class="overlay-padding">
									<div class="overlay">
										<ul class="position-center-center">
											<li>Tel: {{ $team->telephone }}</li>
											<li>Mob {{ $team->mobile }}</li>
											<li>Email: {{ $team->email }}</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="team-detail">
								<h5>{{ $team->fullname }}</h5>
								<span>{{ $team->designation }}</span>
							</div>
							<div class="team-btm">
								<ul class="social-icons"> 
									<li><a class="facebook" href="{{ $team->facebook_id }}" target="_blank"><i class="fa fa-facebook"></i></a></li>
									<li><a class="twitter" href="{{ $team->twitter_id }}" target="_blank"><i class="fa fa-twitter"></i></a></li>
									<li><a class="pinterest" href="{{ $team->pinterest_id }}" target="_blank"><i class="fa fa-pinterest-p"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Team Colmun -->
					@endforeach

				</div>
				<!-- Team Slider -->

			</div>
		</section>
		<!-- Team -->

	</main>
@endsection
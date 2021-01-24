@extends('layout.master')
@section('page-title')
Author
@endsection
@section('main-content')
<main class="main-content">

	<!-- Author Listing -->
	<div class="author-listing tc-padding">
		<div class="container">
			<div class="row">

				<!-- Content -->
				<div class="col-lg-9 col-md-8 col-xs-12">
					
					<!-- Author Filter -->
					<div class="authors-filter">
						<ul>
							@foreach(range('A', 'Z') as $letter)
							<li><a href="author?letter={{ $letter }}">{{ $letter }}</a></li>
							@endforeach
						</ul>
					</div>
					<!-- Author Filter -->

					<!-- Author List -->
					<ul class="author-list">
						@foreach($authors as $author)
						<li>
							<div class="author-list-widget">
								<div class="arthor-list-img">
									@if($author->author_img == 'No image found')
									<img src="{{ asset('assets/images/noimage.png') }}" width="178" height="178" alt="No image found!">
									@else
									<img src="{{ asset('uploads') }}/{{ $author->author_img }}" width="178" height="178" alt="{{ $author->fullname }}">
									@endif
									<div class="overlay">
										<a class="position-center-center" href="#">+</a>
									</div>
								</div>
								<div class="author-list-detail">
									<h6>{{ $author->title }}</h6>
									<span>Born: {{ $author->dob }} {{ $author->country }}</span>
									<p>{{ Str::limit($author->description, 150, '...') }}</p>
									<a href="#" class="btn-1 sm">Read more<i class="fa fa-arrow-circle-right"></i></a>
								</div>
							</div>
						</li>
						@endforeach

					</ul>
					<!-- Author List -->

					<!-- Pagination -->
					{{ $authors->links() }}
		           		{{-- <div class="pagination-holder">
		           			<ul class="pagination">
							    <li><a href="#" aria-label="Previous">Prev</a></li>
							    <li><a href="#">1</a></li>
							    <li class="active"><a href="#">2</a></li>
							    <li><a href="#">3</a></li>
							    <li><a href="#">4</a></li>
							    <li><a href="#">5</a></li>
							    <li><a href="#">6</a></li>
							    <li><a href="#">7</a></li>
							    <li><a href="#">...</a></li>
							    <li><a href="#">23</a></li>
							    <li><a href="#" aria-label="Next">Next</a></li>
							</ul>
						</div> --}}
						<!-- Pagination -->

					</div>
					<!-- Content -->

					<!-- Aside -->
					<aside class="col-lg-3 col-md-4 col-xs-12">
						<!-- Aside Widget -->
						<div class="aside-widget">
							<h6>Feature Authors</h6>
							<ul class="s-arthor-list">
								<li>
									<div class="s-arthor-wighet">
										<div class="s-arthor-img">
											<img src="{{ asset('assets/images/s-arthor-list/img-01.jpg') }}" alt="">
											<div class="overlay">
												<a class="position-center-center" href="#">+</a>
											</div>
										</div>
										<div class="s-arthor-detail">
											<h6>Jonathan Doe <a href="#">@jdoe</a></h6>
											<a href="#">+ Follow on</a>
										</div>
									</div>
								</li>
								<li>
									<div class="s-arthor-wighet">
										<div class="s-arthor-img">
											<img src="{{ asset('assets/images/s-arthor-list/img-02.jpg') }}" alt="">
											<div class="overlay">
												<a class="position-center-center" href="#">+</a>
											</div>
										</div>
										<div class="s-arthor-detail">
											<h6>Anelina Summer <a href="#">@asummer</a></h6>
											<a href="#">+ Follow on</a>
										</div>
									</div>
								</li>
								<li>
									<div class="s-arthor-wighet">
										<div class="s-arthor-img">
											<img src="{{ asset('assets/images/s-arthor-list/img-03.jpg')}}" alt="">
											<div class="overlay">
												<a class="position-center-center" href="#">+</a>
											</div>
										</div>
										<div class="s-arthor-detail">
											<h6>Sebastian Jeremy <a href="#">@sjermy</a></h6>
											<a href="#">+ Follow on</a>
										</div>
									</div>
								</li>
								<li>
									<div class="s-arthor-wighet">
										<div class="s-arthor-img">
											<img src="{{ asset('assets/images/s-arthor-list/img-04.jpg') }}" alt="">
											<div class="overlay">
												<a class="position-center-center" href="#">+</a>
											</div>
										</div>
										<div class="s-arthor-detail">
											<h6>Noah Jones <a href="#">@njones</a></h6>
											<a href="#">+ Follow on</a>
										</div>
									</div>
								</li>
								<li>
									<div class="s-arthor-wighet">
										<div class="s-arthor-img">
											<img src="{{ asset('assets/images/s-arthor-list/img-05.jpg') }}" alt="">
											<div class="overlay">
												<a class="position-center-center" href="#">+</a>
											</div>
										</div>
										<div class="s-arthor-detail">
											<h6>Tommy Adam <a href="#">@tadam</a></h6>
											<a href="#">+ Follow on</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- Aside Widget -->

						<!-- Aside Widget -->
						<div class="aside-widget">
							<h6>Most Downloaded Books</h6>
							<ul class="books-year-list">
								<li>
									<div class="books-post-widget">
										<img src="{{ asset('assets/images/books-year-list/img-01.jpg') }}" alt="">
										<h6><a href="#">My Brilliant Friend The Neapolitan Novels, Book One</a></h6>
										<span>By Elena Ferrante</span>
									</div>
								</li>
								<li>
									<div class="books-post-widget">
										<img src="{{ asset('assets/images/books-year-list/img-02.jpg') }}" alt="">
										<h6><a href="#">As night fell, something stirred the darkness.</a></h6>
										<span>By Meg Caddy</span>
									</div>
								</li>
								<li>
									<div class="books-post-widget">
										<img src="{{ asset('assets/images/books-year-list/img-03.jpg') }}" alt="">
										<h6><a href="#">The Rosie Project: Don Tillman 1</a></h6>
										<span>By Graeme Simsion</span>
									</div>
								</li>
								<li>
									<div class="books-post-widget">
										<img src="{{ asset('assets/images/books-year-list/img-04.jpg') }}" alt="">
										<h6><a href="#">Heartbreaking, joyous, traumatic, intimate and</a></h6>
										<span>By Magda Szubanski</span>
									</div>
								</li>
							</ul>
						</div>
						<!-- Aside Widget -->
					</aside>
					<!-- Aside -->
				</div>
			</div>
		</div>
		<!-- Author Listing -->
	</main>
	@endsection
@extends('layout.master')
@section('page-title')
Home
@endsection
@section('main-content')
<main class="main-content">
    <div id="main-slider" class="main-slider">
        @foreach($sliders as $slider)
        <!-- Item -->
        <div class="item">
            @if($slider->media_img == 'No image found')
            <img src="/assets/images/noimage.png" width="1349" height="516" alt="No image found!">
            @else
            <img src="/uploads/{{ $slider->media_img }}" width="1349" height="516" alt="{{ $slider->title }}">
            @endif
        </div>
        <!-- Item -->
        @endforeach
    </div>

    <section class="upcoming-release">
        <!-- Heading -->
        <div class="container-fluid p-0">
            <div class="release-heading pull-right h-white">
                <h5>New and Upcoming Release</h5>
            </div>
        </div>
        <!-- Heading -->

        <!-- Upcoming Release Slider -->
        <div class="upcoming-slider">
            <div class="container">
                <!-- Release Book Detail -->
                <div class="release-book-detail h-white p-white">
                    <div class="release-book-slider">
                        @foreach($upcomings as $upcoming)
                            <div class="item">
                                <div class="detail">
                                    <h5><a href="book-detail.html">{{ $upcoming->title }}</a></h5>
                                    <p>{{ Str::limit($upcoming->description, 130, '...') }}</p>
                                    <span>Rs/ {{ number_format($upcoming->price) }}</span>
                                    <i class="fa fa-angle-double-right"></i>
                                </div>
                                <div class="detail-img">
                                    @if($upcoming->book_img == 'No image found')
                                        <img src="/assets/images/noimage.png" width="112" height="156" alt="{{ $upcoming->title }}">
                                    @else
                                        <img src="/uploads/{{ $upcoming->book_img }}" width="112" height="156" alt="{{ $upcoming->title }}">
                                    @endif
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <!-- Release Book Detail -->

                <!-- Thumbs -->
                <div class="release-thumb-holder">
                    <ul id="release-thumb" class="release-thumb">
                        @foreach($upcomings as $key => $upcoming)
                            <li>
                                <a data-slide-index="{{ $key }}" href="#">
                                    <span>{{ Str::limit($upcoming->category->title ?? '', 10, '...') }}</span>
                                    @if($upcoming->book_img == 'No image found')
                                        <img src="/assets/images/noimage.png" width="94" height="122" alt="{{ $upcoming->title }}">
                                    @else
                                        <img src="/uploads/{{ $upcoming->book_img }}" width="94" height="122" alt="{{ $upcoming->title }}">
                                    @endif
                                </a>
                            </li>
                        @endforeach 
                    </ul>
                </div>
                <!-- Thumbs -->

            </div>
        </div>
        <!-- Upcoming Release Slider -->

    </section>

    <!-- Best Seller Products -->
    <section class="best-seller tc-padding">
        <div class="container">

            <!-- Main Heading -->
            <div class="main-heading-holder">
                <div class="main-heading style-1">
                    <h2>Best <span class="theme-color">Downloaded</span> Books</h2>
                </div>
            </div>
            <!-- Main Heading -->

            <!-- Best sellers Tabs -->
            <div id="best-sellers-tabs" class="best-sellers-tabs">
                <!-- Tab panes -->
                <div class="tab-content">

                    <!-- Best Seller Slider -->
                    <div id="tab-1">
                        <div class="best-seller-slider">
                        @forelse($downloaded as $downloaded)
                            <!-- Product Box -->
                            <div class="item">
                                <div class="product-box">
                                    <div class="product-img">
                                        @if($downloaded->book_img == 'No image found')
                                            <img src="/assets/images/noimage.png" width="132" height="197" alt="{{ $downloaded->title }}">
                                        @else
                                            <img src="/uploads/{{ $downloaded->book_img }}" width="132" height="197" alt="{{ $downloaded->title }}">
                                        @endif
                                        <ul class="product-cart-option position-center-x">
                                            <li><a href="{{ $downloaded->author->facebook_id ?? '' }}"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="{{ $downloaded->author->twitter_id ?? '' }}"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="{{ $downloaded->author->pinterest_id ?? '' }}"><i class="fa fa-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product-detail">
                                        <span>{{ $downloaded->category->title ?? '' }}</span>
                                        <h5><a href="book-detail.html">{{ $downloaded->title }}</a></h5>
                                        <p>{{ Str::limit($downloaded->description, 30, '...') }}</p>
                                        <div class="rating-nd-price">
                                            <strong>Rs/ {{ number_format($downloaded->price) }}</strong>
                                        </div>
                                        <div class="aurthor-detail">
                                            <span><img src="/assets/images/book-aurthor/img-01.jpg" alt="">{{ $downloaded->author->title ?? '' }}</span>
                                            <a class="add-wish" href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Product Box -->
                            @empty
                                <div class="alert alert-danger">No downloaded book found</div>
                        @endforelse
                        </div>
                    </div>
                    <!-- Best Seller Slider -->
                </div>
                <!-- Tab panes -->

            </div>
            <!-- Best sellers Tabs -->
        </div>
    </section>
    <!-- Best Seller Products -->

    <!-- Recomend products -->
    <div class="recomended-products tc-padding">
        <div class="container">
            <!-- Main Heading -->
            <div class="main-heading-holder">
                <div class="main-heading">
                    <h2>Staff <span class="theme-color">Recomended </span> Books</h2>
                    <p>Whether you’re a large or small employer, enterpreneur, educational institution, professional</p>
                </div>
            </div>
            <!-- Main Heading -->

            <!-- Recomend products Slider -->
            <div class="recomend-slider">
                @forelse($recommended as $recommend)
                <!-- Item -->
                <div class="item">
                    @if($recommend->book_img == 'No image found')
                        <img src="/assets/images/noimage.png" width="109" height="150" alt="{{ $recommend->title }}">
                    @else
                        <a href="#"><img src="/uploads/{{ $recommend->book_img }}" width="109" height="150" alt="{{ $recommend->title }}"></a>
                    @endif
                </div>
                <!-- Item -->
                @empty
                    <div class="alert alert-danger">No recomended book found</div>
                @endforelse

                </div>
                <!-- Recomend products Slider -->

            </div>
        </div>
        <!-- Recomend products -->

        <!-- Book Collections -->
        <section class="book-collection">
            <div class="container">
                <div class="row">

                    <!-- Book Collections Tabs -->
                    <div>
                        <!-- collection Name -->
                        <div class="col-lg-3 col-sm-12">
                            <div class="sidebar">
                                <h4>Top Books Catagories</h4>
                                <ul>
                                    @foreach($categories as $category)
                                    <li><a href="{{ route('category.show', ['slug' => $category->slug]) }}">{{ $category->title }}</a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <!-- collection Name -->

                        <!-- Collection Content -->
                        <div class="col-lg-9 col-sm-12">
                            <div class="collection">

                                <!-- Secondary heading -->
                                <div class="sec-heading">
                                    <h3>Shop <span class="theme-color">Books</span> Collection</h3>
                                    <a class="view-all" href="#">View All<i class="fa fa-angle-double-right"></i></a>
                                </div>
                                <!-- Secondary heading -->

                                <!-- Collection Content -->
                                <div class="collection-content">
                                    <ul>
                                        @foreach($books as $book)
                                        <li>
                                            <div class="s-product">
                                                <div class="s-product-img">
                                                    @if($book->book_img == 'No image found')
                                                        <img src="/assets/images/noimage.png" width="145" height="209" alt="No image found!">
                                                    @else
                                                        <img src="/uploads/{{ $book->book_img }}" width="145" height="209" alt="{{ $book->fullname }}">
                                                    @endif
                                                    <div class="s-product-hover"></div>
                                                </div>
                                                <h6><a href="book-detail.html">{{ $book->title }}</a></h6>
                                                <span>{{ $book->author->title ?? '' }}</span>
                                            </div>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <!-- Collection Content -->

                                <!-- Pagination -->
                                <div class="pagination-holder">
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
                                </div>
                                <!-- Pagination -->

                            </div>
                        </div>
                        <!-- Collection Content -->
                    </div>
                    <!-- Book Collections Tabs -->
                </div>
            </div>
        </section>
        <!-- Book Collections Tabs -->

    </div>
</div>
</section>
<!-- Book Collections --> 

<!-- Services -->
<section>&nbsp;</section>
<!-- Services --> 

<!-- Timeline -->
<section class="timeline-area tc-padding">
    <div class="container">
        <div class="row">

            <!-- Aurthor -->
            <div class="col-lg-3 col-sm-12">
                <div class="aurthor-img">
                    @if($author_feature->author_img == 'No image found')
                    <img src="/assets/images/noimage.png" width="243" height="344" alt="No image found!">
                    @else
                    <img src="/uploads/{{ $author_feature->author_feature_img }}" width="243" height="344" alt="{{ $author_feature->title }}">
                    @endif
                </div>
            </div>

            <!-- Aurthor -->

            <!-- Aurthor History -->
            <div class="col-lg-9 col-sm-12 h-white">
                <h2>Author <span class="theme-color">History</span> of Inovation</h2>
                <div id="timeline">
                    <ul id="issues">
                        <li id="1985">
                            <div class="text-box">
                                <div class="left-box">
                                    <h5><span class="theme-color">{{ $author_feature->title }}</span>{{ $author_feature->designation }}</h5>
                                    <p>{{ $author_feature->description }}</p>
                                    <div class="follow">
                                        <ul class="social-icons">
                                            <li>Follow us</li>
                                            <li><a class="facebook" href="{{ $author_feature->facebook_id }}" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                            <li><a class="twitter" href="{{ $author_feature->twitter_id }}" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                            <li><a class="youtube" href="{{ $author_feature->youtube_id }}" target="_blank"><i class="fa fa-youtube-play"></i></a></li>
                                            <li><a class="pinterest" href="{{ $author_feature->pinterest_id }}" target="_blank"><i class="fa fa-pinterest-p"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                @foreach($books->take(3) as $book)
                                <ul class="s-related-products">
                                    <li>
                                        @if($book->book_img == 'No image found')
                                        <img src="/assets/images/noimage.png" width="89" height="119" alt="No image found!">
                                        @else
                                        <img src="/uploads/{{ $book->book_img }}" width="89" height="119" alt="{{ $book->title }}">
                                        @endif
                                        <h6 class="name">{{ $book->title }}</h6> 
                                    </li>
                                </ul>
                                @endforeach
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Aurthor History -->

        </div>
    </div>
</section>
<!-- Timeline --> 

<!-- Blog Nd Gallery-->
<section class="tc-padding">
    <div class="container">
        <div class="row">
            <!-- Blog -->
            <div class="col-lg-4 col-xs-12">
                <!-- Secondary heading -->
                <div class="sec-heading">
                    <h3>Latest <span class="theme-color">Blog</span> Post</h3>
                </div>
                <!-- Secondary heading -->

                <!-- Blog list -->
                <div class="blog-style-1">
                    <div class="post-box">
                        <div class="thumb"><img src="/assets/images/blog/img-01.jpg" alt=""></div>
                        <div class="text-column"> <strong><i class="fa fa-user" aria-hidden="true"></i>Justin Greene</strong>
                            <a href="blog-detail.html">24 Images About Bookstores That Every Reader </a> <span><i class="fa fa-clock-o" aria-hidden="true"></i>2 hour ago</span>
                            <em><i class="fa fa-heart" aria-hidden="true"></i>125</em> </div>
                        </div>
                        <div class="post-box">
                            <div class="thumb"><img src="/assets/images/blog/img-02.jpg" alt=""></div>
                            <div class="text-column"> <strong><i class="fa fa-user" aria-hidden="true"></i>Rodolpho Henrique</strong>
                                <a href="blog-detail.html">The 30 Best Places To Be If You Love Books Mark</a> <span><i class="fa fa-clock-o" aria-hidden="true"></i>2 hour ago</span>
                                <em><i class="fa fa-heart" aria-hidden="true"></i>125</em> </div>
                            </div>
                            <div class="post-box">
                                <div class="thumb"><img src="/assets/images/blog/img-03.jpg" alt=""></div>
                                <div class="text-column"> <strong><i class="fa fa-user" aria-hidden="true"></i>Anderson jhon</strong>
                                    <a href="blog-detail.html">The Old Butcher's Bookshop, a rare books store</a> <span><i class="fa fa-clock-o" aria-hidden="true"></i>2 hour ago</span>
                                    <em><i class="fa fa-heart" aria-hidden="true"></i>125</em> </div>
                                </div>
                            </div>
                            <!-- Blog list -->

                        </div>
                        <!-- Blog -->

                        <!-- Gallery -->
                        <div class="col-lg-8 col-xs-12">
                            <div class="gallery">

                                <!-- Secondary heading -->
                                <div class="sec-heading">
                                    <h3>Gallery <span class="theme-color">Bookshop</span></h3>
                                    <a class="view-all" href="#">View All<i class="fa fa-angle-double-right"></i></a>
                                </div>
                                <!-- Secondary heading -->

                                <!-- Gallery List -->
                                <ul>
                                    @foreach($galleries as $gallery)
                                    <li>
                                        <div class="gallery-figure">
                                            @if($gallery->media_img == 'No image found')
                                            <img src="/assets/images/noimage.png" width="242" height="187" alt="No image found!">
                                            @else
                                            <img src="/uploads/{{ $gallery->media_img }}" width="242" height="187" alt="{{ $gallery->title }}">
                                            @endif 
                                            <div class="overlay">
                                                <ul class="position-center-x">
                                                    <li><a href="#"><i class="fa fa-heart"></i>Likes</a></li>
                                                    <li><a href="/assets/images/gallery/img-01.jpg" data-rel="prettyPhoto[gallery]"><i class="fa fa-plus"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    @endforeach
                                </ul>
                                <!-- Gallery List -->

                            </div>
                        </div>
                        <!-- Gallery -->

                    </div>
                </div>
            </section>
            <!-- Blog Nd Gallery--> 
        </main>
        <!-- END MAIN CONTENT -->
        @endsection
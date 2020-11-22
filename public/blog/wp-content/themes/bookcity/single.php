<?php get_header() ?>
<?php if ( have_posts() ) : the_post() ?>
<main class="main-content">

		<!-- Blog List -->
		<div class="tc-padding">
			<div class="container">
				<div class="row">

					<!-- Content -->
					<div class="col-lg-9 col-md-8">
						<!-- blog Detail -->
						<div class="single-blog-detail">
							<h2><?php the_title() ?></h2>
							<div class="large-blog-img">
								<?php if ( has_post_thumbnail() && ! post_password_required() ): ?>
				                    <?php the_post_thumbnail() ?>
				                <?php else: ?>
				                    <h3>No Image found</h3>
				                <?php endif ?>
							</div>
							<div class="social-text">
								<ul class="social-icons">
				                	<li><a class="facebook" target="_blank" href="//www.facebook.com/sharer.php?u=<?php echo the_permalink() ?>/&intent=share"><i class="fa fa-facebook"></i></a></li>
				                    <li><a class="twitter" target="_blank" href="https://twitter.com/intent/tweet?text=<?php the_title() ?>&<?php echo the_permalink() ?>"><i class="fa fa-twitter"></i></a></li>
				                    <li><a class="youtube" target="_blank" href="#"><i class="fa fa-youtube-play"></i></a></li>
				                    <li><a class="pinterest" target="_blank" href="#"><i class="fa fa-pinterest-p"></i></a></li>
				                </ul>
				                <p><?php the_content() ?></p>
							</div>
							<!-- BEGIN AUTHOR HERE -->
							<?php if ( get_the_author_meta( 'description') ): ?>
							<div class="blog-arthor">
								<img class="position-center-x" src="/assets/images/blog-arthor/img-01.jpg" alt="">
								<div class="blog-arthor-detail">
									<h6><?php the_author_meta( 'display_name' ); ?></h6>
									<p><?php the_author_meta( 'description' ); ?></p>
									<ul class="social-icons">
					                	<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
					                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
					                    <li><a class="youtube" href="#"><i class="fa fa-youtube-play"></i></a></li>
					                </ul>
				                </div>
							</div>
						<?php endif ?>

							<!-- END AUTHRO HERE -->

						</div>
						<!-- blog Detail -->

						<!-- Related Blog -->
						<div class="related-events">

							<!-- Secondary heading -->
			        		<div class="sec-heading">
			        			<h3>You may also like this</h3>
			        		</div>
			        		<!-- Secondary heading -->

			        		<!-- Related Blog -->
							<div class="related-events-slider">
								 <?php 
                                        $tags = wp_get_post_tags(get_the_ID());
                                        $tag_ids  = [];
                                        foreach ($tags as $tag) {
                                            $tag_ids = $tag->term_id; // term_id means tag id
                                        }

                                        $args = [
                                            'tag__in' => $tag_ids,
                                            'post__not_in' => [get_the_ID()],
                                            'posts_per_page'=> 6,
                                        ];

                                        $related = new WP_Query( $args );
                                    ?>       
                                    <?php if ( $related->have_posts() ) : while( $related->have_posts() ) : $related->the_post() ?>                                   
								<div class="item">
									<div class="grid-blog">
				    					<div class="grid-blog-img">
				    						<?php if ( has_post_thumbnail() ) : ?>
                                                <?php the_post_thumbnail( '',['class' => 'img-responsive'] ) ?>
                                            <?php else: ?>
                                                <h4>No Image found!</h4>                                            
                                            <?php endif ?>
				    					</div>
				    					<div class="product-detail blog-detail">
				    						<span class="date"><i class="fa fa-calendar"></i><?php echo get_the_date(); ?></span>
				    						<h5><?php echo the_title(); ?></h5>
				    						<p><?php echo wp_trim_words( get_the_content(), 15, '...' ); ?></p>
				    						<div class="aurthor-detail">
				    							<span>
				    								<?php echo get_avatar( get_the_author_meta( 'user_email' ), '30', '', '',  array('class' => array('img-circle') )); ?>
				    								<?php the_author_meta( 'display_name' ); ?>
				    							</span>
				    							<a class="add-wish" href="#"><i class="fa fa-share-alt"></i></a>
				    						</div>
				    					</div>
				    				</div>
								</div>
								<?php endwhile ?>                                        
                                <?php endif ?>
                                <?php wp_reset_query(); ?>	
		    				</div>
		    				<!-- Related Blog -->
						</div>
						<!-- Related Blog -->

						<!-- Comments Holder -->
						<?php comments_template(); ?>
						<!-- Form -->
					</div>
					<!-- Content -->

					<!-- Aside -->
					<?php get_sidebar() ?>
					<!-- Aside -->
				</div>
			</div>
		</div>
		<!-- Blog List -->
	</main>
<?php endif ?>
<?php get_footer() ?>

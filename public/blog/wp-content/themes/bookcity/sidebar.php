<aside class="col-lg-3 col-md-4 col-xs-12">
	<div class="aside-widget">
		<form method="get" action="/blog" class="search-bar style-2">
			<input name="s" type="search" class="form-control" required="required" placeholder="Type a search here...">
			<button type="submit" class="sub-btn fa fa-search"></button>
		</form>
	</div>

	<div class="aside-widget">
		<h6>Latest Blog</h6>
		<ul class="Category-list">
			<?php
	            $args = ['numberposts' => '5']; 
	            $recent_posts = wp_get_recent_posts( $args );
	        ?>
			<?php foreach ($recent_posts as $recent_post): ?>
			<li>
				<div class="s-arthor-wighet">
					<div class="s-arthor-img">
						<?php if ( has_post_thumbnail()) : ?>
	                        <?php the_post_thumbnail() ?>
	                    <?php else: ?>
							<img src="/assets/images/s-news-post/img-01.jpg" alt="">
	                    <?php endif ?>
					</div><br>
					<div class="s-arthor-detail">
						<h6><a href="<?php echo the_permalink( $recent_post["ID"] ); ?>"><?php echo substr($recent_post['post_title'], 0, 20); ?>...</a></h6>
					</div>
				</div>
			</li>
		<?php endforeach ?>
		</ul>
	</div>
</aside>
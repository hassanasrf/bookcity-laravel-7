<div id="post-<?php the_ID() ?>" <?php post_class( 'col-lg-4 col-md-6 col-xs-6 r-full-width' ) ?>>
	<div class="grid-blog">
		<div class="grid-blog-img">
			<?php if ( has_post_thumbnail() && ! post_password_required() ): ?>
                <?php the_post_thumbnail(); ?>
            <?php else: ?>
                    <h2>No image found</h2>
            <?php endif ?>
		</div>
		<div class="product-detail blog-detail">
			<span class="date"><i class="fa fa-calendar"></i><?php echo  get_the_date(); ?></span>
			<?php // megabooks_post_meta(); ?>
			<?php if ( is_single()): ?>
                <h5><?php the_title(); ?></h5>
            <?php else: ?>
                <h5><a href="<?php echo the_permalink() ?>"><?php the_title(); ?></a></h5>
            <?php endif ?>
			<?php if ( is_search() ): ?>
                <?php the_excerpt(); ?>
            <?php else: ?>
                <?php the_excerpt(); ?>
            <?php endif ?>
			<p></p>
			<div class="aurthor-detail">
				<span><?php echo get_avatar( get_the_author_meta( 'user_email' ), '34' ); ?><?php echo get_the_author(); ?></span>
				<a class="add-wish" href="#"><i class="fa fa-share-alt"></i></a>
			</div>
		</div>
	</div>
</div>
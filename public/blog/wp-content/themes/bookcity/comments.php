<?php if ( post_password_required() ){ return; } ?>
   
<?php if ( comments_open() ) : ?>
<div class="comments-holder">
	<!-- Secondary heading -->
	<div class="sec-heading">
		<h3>People Comments</h3>
	</div>
	<!-- Secondary heading -->

	<!-- Comments -->
	<ul>
		<?php foreach ($comments as $comment) : ?>
		<li>
			<img class="position-center-x" src="<?php echo get_avatar_url( $comment ) ?>" width="60" alt="<?php comment_author() ?>">
			<div class="comment">
				<h6><?php comment_author() ?><span><?php comment_date() ?> </span></h6>
				<?php if ( $comment->comment_approved == '0') : ?>
                    <p><?php _e( 'Your Comment is awaiting moderation', 'techbooks'); ?></p>
                <?php endif ?>
                <p><?php comment_text(); ?></p>
			</div>
		</li>
	<?php endforeach ?>
	</ul>
	<!-- Comments -->
</div>

<div class="form-holder">

	<!-- Secondary heading -->
	<div class="sec-heading">
		<h3>Leave Comments</h3>
	</div>
	<!-- Secondary heading -->

	<!-- Sending Form -->
    <form action="<?php echo site_url( 'wp-comments-post.php' ) ?>" method="post" id="commentform" class="sending-form">
    <input type="hidden" name="comment_post_ID" id="comment_post_ID" value="<?php echo $post->ID ?>">    
		<div class="row">
			<div class="col-sm-12">
    			<div class="form-group">
    				<textarea name="comment" class="form-control" required="required" rows="5" placeholder="Text here..."></textarea>
    				<i class="fa fa-pencil-square-o"></i>
    			</div>
			</div>
			<div class="col-sm-6">
    			<div class="form-group">
    				<input name="author" class="form-control" required="required" placeholder="Full name">
    				<i class="fa fa-user"></i>
    			</div>
			</div>
			<div class="col-sm-6">
    			<div class="form-group">
    				<input name="subject" class="form-control" required="required" placeholder="Subject">
    				<i class="fa fa-align-left"></i>
    			</div>
			</div>
			<div class="col-sm-6">
    			<div class="form-group">
    				<input name="email" class="form-control" required="required" placeholder="Email">
    				<i class="fa fa-envelope"></i>
    			</div>
			</div>
			<div class="col-sm-6">
    			<div class="form-group">
    				<input name="phone" class="form-control" required="required" placeholder="Phone no.">
    				<i class="fa fa-phone"></i>
    			</div>
			</div>
			<div class="col-sm-12">
    			<button type="submit" class="btn-1 shadow-0 sm">send message</button>
			</div>
		</div>
	</form>
	<!-- Sending Form -->
</div>
<?php endif ?>

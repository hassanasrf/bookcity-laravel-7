<?php 
	
	function custom_excerpt_length( $length ) 
	{
        return 10;
    }
    add_filter( 'excerpt_length', 'custom_excerpt_length', 999 );

    if ( ! function_exists( 'studentbooks_setup')) 
	{
		function studentbooks_setup()
		{
			$lang_dir = get_stylesheet_directory_uri() . '/assets/language';
			load_theme_textdomain( 'studentlaptop', $lang_dir );
			add_theme_support( 'automatic_feed_links' );
			add_theme_support( 'post-thumbnails' );
			register_nav_menus( [
				'top-menu' => __( 'Top Menu', 'studentlaptop' ) ,
				'footer-menu' => __( 'Footer Menu')
			] );
		}

		add_action( 'after_setup_theme', 'studentbooks_setup' );
	}

	if ( ! function_exists( 'megabooks_post_meta()' )) {
		function megabooks_post_meta()
		{
			echo '<ul class="meta-post">';
			if ( get_post_type() === 'post') 
			{
				if ( is_sticky()) 
				{
        			echo '<li><i class="fa fa-sticky-note-o"></i><span>' . __('Sticky', 'megabooks' ) . '</span></li>';
        		} 
					echo '<li><i class="fa fa-clock-o"></i><span>' . get_the_date() . '</span></li>';		
				
        			if ( comments_open()) {
        				echo '<li><i class="fa fa-comments-o"></i><span> ';
        				comments_popup_link( 
        					__( 'Leave a comment', 'megabooks' ), 
        					__( 'One comment', 'megabooks' ), 
        					__( 'View all % comment', 'megabooks' )
        				);
        				echo '</span></li>';        			
        			}
				}
			echo '</ul>';
		}
	}

	if ( ! function_exists( 'megabooks_numbered_pagination' )) {
		function megabooks_numbered_pagination()
		{
			echo '<div class="pagination-holder">';
				$args = [
				'prev_next' => false,
				'type' => 'array'
				];

				$paginates = paginate_links( $args );
				if ( is_array( $paginates )) {
					echo '<ul class="pagination">';
					foreach ($paginates as $paginate) {
						if ( strpos($paginate, 'current'))
							echo '<li class="active"><a href="#">' . $paginate . '</a></li>';
						else
							echo '<li>' . $paginate . '</li>';
					}
					echo '</ul>';
				}
			echo '</div>';
		}
	}

	/*----------  WORDPRESS ADMIN PANEL CUSTOMIZATION  ----------*/
	function edit_wp_menu()
	{
		// remove menu
		// https://codex.wordpress.org/Function_Reference/remove_menu_page
		remove_menu_page( 'edit.php?post_type=page' );
		remove_menu_page( 'themes.php' );            

		// Chagne the menu order
		// https://codex.wordpress.org/Function_Reference/remove_menu_page
		function change_menu_order( $menu_order )
		{
			return [
				'index.php',
				'edit.php',
				'themes.php',
				'upload.php'
			];
		}
		add_filter( 'menu_order', 'change_menu_order' );
		add_filter( 'custom_menu_order', '__return_true' );

		// rename posts to laptop | your any brand name

		global $menu;
		global $submenu;
		// print_r($submenu);
		$menu[5][0] = 'Blogs';
		$submenu['edit.php'][5][0] = 'All Blogs';
		$submenu['edit.php'][10][0] = 'Add new Blog';
		$submenu['edit.php'][15][0] = 'Category';
		$submenu['edit.php'][16][0] = 'Blog Tags';
	}

	// Rename posts to laptop | your any brannd name into post section.
	function change_post_labels(){
		global $wp_post_types;
		// print_r($wp_post_types);
		$labels = $wp_post_types['post']->labels;
		$labels->name = 'Blogs';
        $labels->singular_name = 'Blog';
        $labels->add_new = 'Add New Blog';
        $labels->add_new_item = 'Add New Blog';
        $labels->edit_item = 'Edit Blog';
        $labels->new_item = 'New Blog';
        $labels->view_item = 'View Blog';
        $labels->view_items = 'View Blogs';
        $labels->search_items = 'Search Blogs';
        $labels->not_found = 'No Blogs found.';
        $labels->not_found_in_trash = 'No Blogs found in Trash.';
        $labels->all_items = 'All Blogs';
        $labels->archives = 'Blog Archives';
        $labels->attributes = 'Blog Attributes';
        $labels->insert_into_item = 'Insert into Blog';
        $labels->uploaded_to_this_item = 'Uploaded to this Blog';
        $labels->filter_items_list = 'Filter Blogs list';
        $labels->items_list_navigation = 'Blogs list navigation';
        $labels->items_list = 'Blogs list';
        $labels->menu_name = 'Blogs';
        $labels->name_admin_bar = 'Blog';
	}
	add_action( 'init', 'change_post_labels' );
	add_action( 'admin_menu', 'edit_wp_menu' );

/*----------  THE DASHBOARD  ----------*/
	function customize_dashboard()
	{
		remove_meta_box( 'dashboard_quick_press', 'dashboard', 'side' );
		remove_action( 'welcome_panel', 'wp_welcome_panel' );
	}
	add_action( 'wp_dashboard_setup', 'customize_dashboard' );

	/*----------   THE COLUMNS.  ----------*/
	function customize_post_listing_cols( $columns )
	{
		unset($columns['tags']);
		unset($columns['comments']);
		return $columns;
	}
	add_action( 'manage_posts_columns', 'customize_post_listing_cols' );
	function customize_page_listing_cols( $columns )
	{
		unset($columns['tags']);
		unset($columns['comments']);
		return $columns;
	}
	add_action( 'manage_pages_columns', 'customize_page_listing_cols' );

	/*----------   THE SMALLER CHANGES.  ----------*/
	function change_admin_footer()
	{
		echo "Copyrights " . get_the_date('Y') . " &copy; All rights reserved - By Students of Al-Fateem Academy";
	}
	add_action( 'admin_footer_text', 'change_admin_footer' );

	function remove_footer_version()
	{
		remove_filter( 'update_footer', 'core_update_footer' );
	}
	add_action( 'admin_menu', 'remove_footer_version' );

	/*----------   WORDPRESS CHANGE LOGO, URL AND TITLE.  ----------*/
	function change_login_logo(){ ?>
		<style>
			#login h1 a{ 
				background-image: url(<?php echo get_stylesheet_directory_uri() ?>/assets/images/logo-1.png); 
				width:185px;
				height:64px;
				background-size: 185px 64px;
				background-repeat: no-repeat;
		        padding-bottom: 10px;
			}
		</style>
		<?php
	}
	add_action( 'login_enqueue_scripts', 'change_login_logo' );

	function change_login_logo_url()
	{
		return home_url();
	}
	function change_login_logo_url_title()
	{
		return "Allied Books";
	}
	add_filter( 'login_headerurl', 'change_login_logo_url' );
	add_filter( 'login_headertitle', 'change_login_logo_url_title' );

	function change_login_stylesheet()
	{
		// https://codex.wordpress.org/Customizing_the_Login_Form
		wp_enqueue_style( 'custom-login', get_stylesheet_directory_uri() . '/assets/css/custom-login.css' );
		wp_enqueue_script( 'custom-login', SCRIPTS . '/custom-login.js' );
	}
	add_action( 'login_enqueue_scripts', 'change_login_stylesheet' );

	function disable_reset_password()
	{
		return false;
	}
	add_filter( 'allow_password_reset', 'disable_reset_password' );

	function remove_shake()
	{
		remove_action( 'login_head', 'wp_shake_js', 12 );
	}
	add_action( 'login_head', 'remove_shake' );

	/*----------   change or remove admin bar.  ----------*/
	function remove_admin_bar_links()
	{
		global $wp_admin_bar;
		$wp_admin_bar->remove_menu('wp-logo');
	}
	add_action( 'wp_before_admin_bar_render', 'remove_admin_bar_links' );

	function add_admin_bar_links()
	{
		global $wp_admin_bar;
		$wp_admin_bar->add_menu( [
			'id' => 'alfateemacademy',
			'title' => 'Al-Fateem Academy',
			'href' => 'alfateemacademy.com',
			'meta' => ['target' => '_blank']
		]);
	}
		add_action( 'admin_bar_menu', 'add_admin_bar_links' );

		function admin_bar_css()
	{ ?>
		<style>
			#wpadminbar{ background-color: #444444; }
		</style>

	<?php }

	add_action( 'admin_head', 'admin_bar_css' );

?>
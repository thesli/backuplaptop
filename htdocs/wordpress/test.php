<?php 
	require("wp-blog-header.php");
	get_header( $name = null );

 ?>

 <?php 

while(have_posts()){
	the_post();
	the_author( $deprecated = '', $deprecated_echo = true );
	the_time( $d = '' );
	the_content( $more_link_text = null, $stripteaser = false );
	the_shortlink( $text = 'what da fuck', $title = 'fuck', $before = 'before fuck', $after = 'after fuck' );
}

  ?>
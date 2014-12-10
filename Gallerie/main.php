<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content="A touchable jQuery lightbox plugin for desktop, mobile and tablet" />
	<link rel="stylesheet" href="Gallerie/css/style.css">
	<link rel="stylesheet" href="Gallerie/source/swipebox.css">
	<title>Swipebox - Esempio JavaScript scaricato da HTML.it</title>
	<meta http-equiv="Content-type" content="text/html; charset=iso-8859-1" />
	<meta http-equiv="Content-Language" content="it" />
	<meta name="Robots" content="All" />
	<meta name="Description" content="HTML.it - il sito italiano sul Web publishing" />
	<meta name="Keywords" content="javascript" />
	<meta name="Owner" content="HTML.it srl" /> 
	<meta name="Author" content="HTML.it srl" />  
	<meta name="Copyright" content="HTML.it srl" />
	
	<!-- share buttons -->
	<script type="text/javascript">(function(doc, script) {
		var js, 
		fjs = doc.getElementsByTagName(script)[0],
		add = function(url, id) {
		if (doc.getElementById(id)) {return;}
		js = doc.createElement(script);
		js.src = url;
		id && (js.id = id);
		fjs.parentNode.insertBefore(js, fjs);
		};add("//connect.facebook.net/en_US/all.js#xfbml=1", "facebook-jssdk");
		add("//platform.twitter.com/widgets.js", "twitter-wjs");
		}(document, "script"));
	</script>
	<!-- end share buttons -->
</head>
<body>
<div id="contenuto">
    <table>
        <tr>
            <td id="contenutoTesto">
							<p style="text-align:center">CNC a 5 assi - Piano di lavoro mis. 2.500x1.200x800h rotazione asse C226 A+/-120</p>
				<div id="main">
					<div class="wrap">
			
						<section id="exemple" class="clearfix">
							<div id="try"></div>
			<?php
				
							$dir = "Immagini";
							if($contenuto = opendir($dir)){
								while(false !== ($file = readdir($contenuto))){
									$array = explode(".", $file);
									$ext = array_pop($array);
									if(strcasecmp($ext, "jpg") == 0 || strcasecmp($ext, "jpeg") == 0 || strcasecmp($ext, "png") == 0){
										$alt = str_replace("_", " ", $file); // toglie lo spazio sostituendolo con _ da nome file
										$url = "" . $dir . "/" . $file . "";
										
										?>
										<div class="box">
											<a href="Gallerie/<?php echo $url ?>" class="swipebox" title="Gambamodelli - Le macchine">
												<img src="Gallerie/<?php echo $url ?>" alt="nuke" >
											</a>
										</div>							
										
										<?php
									}
								}
							}
				
				
			?>
						</section>
			        </div>
				</div>
			
	<script src="../Gallerie/lib/ios-orientationchange-fix.js"></script>
	<script src="../Gallerie/lib/jquery-2.0.3.min.js"></script>
	<script src="../Gallerie/lib/jquery.isotope.min.js"></script>
	<script src="../Gallerie/source/jquery.swipebox.js"></script>
	<script type="text/javascript">
		jQuery(function($) {

			/* Basic Gallery */
			$(".swipebox").swipebox();
			
			/* Video */
			$(".swipebox-video").swipebox();


			/* Dynamic Gallery */
			$("#gallery").click(function(e){
				e.preventDefault();
				$.swipebox([
					{ href : 'http://swipebox.brutaldesign.com/assets/full/reine.jpg', title : 'My Caption' },
					{ href : 'http://swipebox.brutaldesign.com/assets/full/nuke.jpg', title : 'My Second Caption' }
				]);
			});


			/* Isotope */
			var swipeboxInstance = $(".swipebox-isotope:not(.isotope-hidden .swipebox-isotope)").swipebox();

			var $container = $('#grid');
			var optionFilter = $('#filter'),
			optionFilterLinks = optionFilter.find('a');
			optionFilterLinks.attr('href', '#');

			onAnimationCompleted = function(){
				swipeboxInstance.refresh();
			};

			optionFilterLinks.click( function(){
				var selector = $(this).attr('data-filter');
				$container.isotope({ 
					filter : '.' + selector, 
					itemSelector : '.item',
					layoutMode : 'fitRows',
					animationEngine : 'best-available',
				}, onAnimationCompleted);

				// Highlight the correct filter
				optionFilterLinks.removeClass('active');
				$(this).addClass('active');

			
				return false;
			});
		});
	</script>
                    </td>
               </tr>
            </table>
         </div>
</body>
	
</html>


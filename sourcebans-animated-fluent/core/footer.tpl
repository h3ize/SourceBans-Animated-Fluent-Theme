	<!-- </div> -->
	</div>
	</main>
	<footer class="footer">
	  <div class="layout_container flex flex-jc:space-between flex-ai:center">

	    <div class="flex flex-fd:column text:right">
	      <a href="https://heizemod.us/" target="_blank" rel="noopener noreferrer" style="color: inherit; text-decoration: none;">
 		 <span>Copyright © heizemod</span>
	    </a>

	    </div>
	  </div>
	</footer>
	<script type="text/javascript" src="themes/{$theme}/scripts/nav.js"></script>
	<script type="text/javascript" src="themes/{$theme}/scripts/jscolor.min.js"></script>
	<script type="text/javascript" src="themes/{$theme}/scripts/theme.js"></script>

	<script>
	  {$query}

	  {literal}
  	  window.addEvent('domready', function() {

  	    ProcessAdminTabs();

  	    var Tips2 = new Tips($('.tip'), {
  	      initialize: function() {
  	        this.fx = new Fx.Style(this.toolTip, 'opacity', {duration: 300, wait: false}).set(0);
  	      },
  	      onShow: function(toolTip) {
  	        this.fx.start(1);
  	      },
  	      onHide: function(toolTip) {
  	        this.fx.start(0);
  	      }
  	    });
  	    var Tips4 = new Tips($('.perm'), {
  	      className: 'perm'
  	    });
  	  });
	  {/literal}
	</script>
	</body>

	</html>

<script src="https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js"></script>
<script src="{$theme_url}particles.js"></script>
<script>
particlesJS('particles-js', {
  particles: {
    number: { value: 80, density: { enable: true, value_area: 800 }},
    color: { value: '#BA6F00' },
    shape: { type: 'circle' },
    opacity: { value: 0.5, random: false },
    size: { value: 3, random: true },
    line_linked: { enable: true, distance: 150, color: '#BA6F00', opacity: 0.4, width: 1 },
    move: { enable: true, speed: 2, direction: 'none', out_mode: 'out' }
  },
  interactivity: {
    detect_on: 'canvas',
    events: { onhover: { enable: true, mode: 'grab' }, onclick: { enable: true, mode: 'push' }},
    modes: { grab: { distance: 140, line_linked: { opacity: 1 }}}
  },
  retina_detect: true
});
</script>


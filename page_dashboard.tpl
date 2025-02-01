{if $dashboard_text || $dashboard_title}
  <div class="layout_box padding margin-bottom">
	  {if $dashboard_title}
		  <b>{$dashboard_title}</b><br>
	  {/if}
    {$dashboard_text}
  </div>
{/if}

<!-- Dashboard Statistics Box -->
<div class="layout_box padding margin-bottom" style="display: flex; justify-content: center; gap: 15px; flex-wrap: wrap;">
  <div class="card-statistics" style="margin: auto; text-align: center;">
    <h2 class="animated-gradient" style="font-size: 23px;">
      <i class="fa-solid fa-server" style="margin-right: 5px;"></i> Total Servers: <span id="total-servers">0</span>
    </h2>
  </div>
  <div class="card-statistics" style="margin: auto; text-align: center;">
    <h2 class="animated-gradient" style="font-size: 23px;">
      <i class="fa-solid fa-face-angry" style="margin-right: 5px;"></i> Total Bans: {$total_bans}
    </h2>
  </div>
  <div class="card-statistics" style="margin: auto; text-align: center;">
    <h2 class="animated-gradient" style="font-size: 23px;">
      <i class="fa-solid fa-volume-xmark" style="margin-right: 5px;"></i> Total Muted: {$total_comms}
    </h2>
  </div>
  <div class="card-statistics" style="margin: auto; text-align: center;">
    <h2 class="animated-gradient" style="font-size: 23px;">
      <i class="fa-solid fa-hand" style="margin-right: 5px;"></i> Total Stopped: {$total_blocked}
    </h2>
  </div>
</div>

<script>
window.onload = function() {
  const serverRows = document.querySelectorAll('tr[id^="opener_"]');
  const totalServers = serverRows.length;
  document.getElementById('total-servers').textContent = totalServers;
};
</script>

<style>
  .animated-gradient {
    display: inline;
    background-image: linear-gradient(90deg, #ff0000, #000000, #ff0000, #000000, #ff0000, #000000, #000000, #ff0000, #000000);
    background-size: 800% 100%;
    -webkit-background-clip: text;
    color: transparent;
    animation: animateBg 14s linear infinite;
  }

  @keyframes animateBg {
    0% { background-position: 100% 0%; }
    100% { background-position: 0% 0%; }
  }
</style>

<div class="margin-bottom">
  {include file='page_servers.tpl'}
</div>

<div class="layout_box margin-bottom">
  <div class="layout_box_title flex flex-jc:space-between flex-ai:center">
    <h2><i class="fa-solid fa-face-angry"></i> Latest Added Bans</h2>
    <span style="text-align: right;">Total bans: {$total_bans}</span>
  </div>

  <div class="padding">
    <div class="table table_box">
      <table>
        <thead>
          <tr>
            <th style="width: 15%"><span class="responsive_show:desktop">MOD | </span>Type</th>
            <th style="width: 28%" class="text:left">Date/Time</th>
			<th style="width: 28%" class="text:left">Name</th>
            <th style="width: 28%">Length</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$players_banned item="player"}
            <tr class="collapse" onclick="{$player.link_url}">
              <td class="text:center">
                <img src="images/games/{$player.icon}" alt="{$player.icon}" title="MOD" border="0" align="absmiddle"/>&nbsp;<i class="responsive_show:desktop fas fa-ban fa-lg"></i>
              </td>
              <td>
                {$player.created}
              </td>
			  <td>
                {if empty($player.short_name)}
                  <span class="text:italic">No nickname present</span>
                {else}
                  <span>{$player.short_name|escape:'html'}</span>
                {/if}
              </td>
              <td
                class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">
                {$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}
              </td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    </div>
  </div>
</div>

<div class="flex flex-ai:start flex-jc:space-bwtween m:flex-fd:column">
  <div class="layout_box flex:11 margin-right margin-bottom">
    <div class="layout_box_title flex flex-jc:space-between flex-ai:center">
      <h2><i class="fa-solid fa-volume-xmark"></i> Latest Added Comms Block</h2>
      <span style="text-align: right;">Total Blocks: {$total_comms}</span>
    </div>

    <div class="padding">
      <div class="table table_box">
        <table>
          <thead>
            <tr>
              <th><span class="responsive_show:desktop">MOD | </span>Type</th>
			  <th class="text:left">Date/Time</th>
              <th class="text:left">Name</th>
              <th>Length</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$players_commed item="player"}
              <tr class="collapse" onclick="{$player.link_url}">
                <td class="text:center">
                  <img src="images/games/{$player.icon}" alt="{$player.icon}" title="MOD" border="0" align="absmiddle"/>&nbsp;<i class="responsive_show:desktop {$player.type}"></i>
                </td>
                <td>
                  {$player.created}
                </td>
				<td>
                  {if empty($player.short_name)}
                    <span class="text:italic">No nickname present</span>
                  {else}
                    <span>{$player.short_name|escape:'html'}</span>
                  {/if}
                </td>
                <td
                  class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">
                  {$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>


  <div class="layout_box flex:11 margin-bottom">
    <div class="layout_box_title flex flex-jc:space-between flex-ai:center">
      <h2><i class="fa-solid fa-hand"></i> Latest Players Blocked</h2>
      <span style="text-align: right;">Total Stopped: {$total_blocked}</span>
    </div>

    <div class="padding">
      <div class="table table_box">
        <table>
          <thead>
            <tr>
              <th class="text:center">Type</th>
			        <th class="text:left">Date/Time</th>
              <th class="text:left">Name</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$players_blocked item="player"}
              <tr class="collapse"
              {if $dashboard_lognopopup}
                onclick="{$player.link_url}" 
              {else}
                onclick="{$player.popup}"
              {/if}
              onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'" style="cursor: pointer;" id="{$player.server}" title="Querying Server Data...">
                <td class="text:center">
                  <i class="fas fa-ban fa-lg"></i>
                </td>
                <td class="text:left">
                  {$player.date}
                </td>
				        <td class="text:left">
                  <span>{$player.short_name|escape:'html'}</span>
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

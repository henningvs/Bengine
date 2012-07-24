<form action="{@formaction}" method="post" class="form-sec">
<input type="hidden" name="id" value="{request[post]}id{/request}" />
<table class="ntable">
	<thead><tr>
		<th colspan="2">{lang=FLEET_FORMATION}</th>
	</tr></thead>
	<tfoot>
		<tr>
			<td colspan="2">
				<input type="hidden" name="invite" value="1"/>
				<input type="submit" value="{lang}COMMIT{/lang}" class="button" />
			</td>
		</tr>
	</tfoot>
	<tbody>
	<tr>
		<td><label for="invited">{lang=INVITED_PARTICIPANTS}</label></td>
		<td><select name="userid" id="invited" size="8" maxlength="{config=MAX_USER_CHARS}">{foreach[invitation]}<option value="{loop=userid}">{loop=username}</option>{/foreach}</select></td>
	</tr>
	<tr>
		<td><label for="name-id">{lang=FORMATION_NAME}</label></td>
		<td><input type="text" name="name" id="name-id" value="{@formationName}" maxlength="128" /></td>
	</tr>
	<tr>
		<td><label for="username">{lang=INVITE_PARTICIPANT}</label></td>
		<td><input type="text" name="username" id="username" value="" /></td>
	</tr></tbody>
</table>
</form>
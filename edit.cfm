<cfinclude template="header.cfm">

<!--- If form is submitted --->
<cfif isdefined('submit')>

<cfset contactExists = createObject("component", "Contacts").searchContact(FORM.email)>
		
<!--- If the contact exists, the id is passed to edit_full.cfm to edit the contact --->
	<cfif contactExists NEQ false>
			<cflocation url="edit_full.cfm?id=#contactExists#" />
	<cfelse>
		<cfoutput><div align="left" class="mainText">Contact #FORM.email# does not exist. <a href="add.cfm?email=#FORM.email#">Click here to add them</a></div></cfoutput>
	</cfif>
</cfif>

<!--- Search form --->
<cfform format="flash" name="search" action="edit.cfm" method="post" skin="haloBlue">
    <cfformgroup type="panel" label="Enter Contact Email Address" width="350">
            <cfinput type="text" name="email" label="Email Address" required="yes" validate="email" width="200" >
    </cfformgroup>
            <cfinput type="submit" value="submit" name="submit">
</cfform>
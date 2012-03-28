<cfinclude template="header.cfm">

<!--- Determine whether the selected contact should be edited, removed or set to 'Do not Mail' --->
	
<cfif isdefined('FORM.contactAction')>
	<cfif FORM.contactAction EQ "Edit Contact">
		<cflocation url="edit_full.cfm?id=#FORM.id#" />
	<cfelseif FORM.contactAction EQ "Remove Contact">
		<cfset VARIABLES.httpResponse = createObject("component", "Contacts").removeContact(FORM.id)>
		<cfoutput><div class="mainText">Contact #FORM.email# removed<br /></div></cfoutput>
	<cfelseif FORM.contactAction EQ "Delete Contact">
		<cfset VARIABLES.httpResponse = createObject("component", "Contacts").deleteContact(FORM.id)>		
		<cfoutput><div class="mainText">Contact #FORM.email# deleted<br /></div></cfoutput>
	</cfif>
</cfif>



<!--- Determine which url is being access (for pagination) --->
<cfif isdefined('URL.page')>
	<cfset VARIABLES.urlToGet="#URL.page#">
<cfelse> 
	<cfset VARIABLES.urlToGet="#application.apipath#/contacts">
</cfif>

<!--- Retrieve structure containing contacts and next link --->
<cfset VARIABLES.contactsStruct = createObject("component", "Contacts").getContacts(VARIABLES.urlToGet)>

<!--- Create a query for populating the data grid from the structure retrieved from the getContacts function --->
<cfset VARIABLES.contactsQuery = QueryNew("id, name, updated, status, email")> 
<cfset temp = QueryAddRow(contactsQuery, #arrayLen(VARIABLES.contactsStruct[1])#)>

<cfloop from="1" to="#arrayLen(contactsStruct[1])#" index="i"> 
	<cfset temp = QuerySetCell(VARIABLES.contactsQuery, "id", #VARIABLES.contactsStruct[1][i].Id#, #i#)>
	<cfset temp = QuerySetCell(VARIABLES.contactsQuery, "updated", #VARIABLES.contactsStruct[1][i].Updated#, #i#)>
	<cfset temp = QuerySetCell(VARIABLES.contactsQuery, "name", #VARIABLES.contactsStruct[1][i].Name#, #i#)>
	<cfset temp = QuerySetCell(VARIABLES.contactsQuery, "status", #VARIABLES.contactsStruct[1][i].Status#, #i#)>
	<cfset temp = QuerySetCell(VARIABLES.contactsQuery, "email", #VARIABLES.contactsStruct[1][i].EmailAddress#, #i#)>
</cfloop>

<!--- Contact Grid --->
<cfoutput><div class="mainText"><a href="list.cfm">First</a> | 
<cfif #VARIABLES.contactsStruct[2][1]# EQ "" >
	Next Page
<cfelse>
	<a href="list.cfm?page=#VARIABLES.contactsStruct[2][1]#">Next Page</a>
</cfif>
</div></cfoutput>
<cfform name="gridform" format="flash" skin="haloBlue">
	<cfgrid name="grid" query="contactsQuery" width="700" height="200">
		<cfgridcolumn name="id" header="Contact Id"display="false">
		<cfgridcolumn name="email" header="Email Address">
		<cfgridcolumn name="name" header="Name">
		<cfgridcolumn name="status" header="Status" width="90">
		<cfgridcolumn name="updated" header="Last Updated">
	</cfgrid>
	<cfformgroup type="horizontal">
		<cfformgroup type="vertical">
			<cfinput name="email" type="hidden" bind="{grid.selectedItem.email}"/>
			<cfinput name="contactAction" type="radio" value="Edit Contact" tooltip="Edit this contact's details">
			<cfinput name="contactAction" type="radio" value="Remove Contact" tooltip="This will unsubscribe a contact from all lists">
			<cfinput name="contactAction" type="radio" value="Delete Contact" 
				tooltip="This will set the contact's status to 'Do Not Mail'">
			<cfinput type="hidden" name="id" bind="{grid.selectedItem.id}">
			<cfinput name="submit" type="submit" value="submit" width="75" >
		</cfformgroup>
		<cfformgroup type="horizontal">
			<cfformitem type="html" bind="<b>{grid.selectedItem.name}</b><br />{grid.selectedItem.email}<br />Status: {grid.selectedItem.status}" />
		</cfformgroup>
	</cfformgroup>
</cfform>

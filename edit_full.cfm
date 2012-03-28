<cfinclude template="header.cfm">
<cfinclude template="import.cfm">


<!--- Submit Contact Form --->
<cfif isdefined('submit')>

<cfset VARIABLES.editContact = createObject("component", "Contacts").createContactXML()>
	
<!--- Updates the basic XML retrieved through the createContactXml function with contact details from the form --->
	<cfset temp = StructUpdate(editContact.entry.id, "xmlText", "#FORM.id#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.EmailAddress, "xmlText", "#FORM.email#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.FirstName, "xmlText", "#FORM.first#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.LastName, "xmlText", "#FORM.last#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.MiddleName, "xmlText", "#FORM.middle#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.HomePhone, "xmlText", "#FORM.homephone#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.Addr1, "xmlText", "#FORM.addr1#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.Addr2, "xmlText", "#FORM.addr2#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.Addr3, "xmlText", "#FORM.addr3#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.City, "xmlText", "#FORM.city#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.StateCode, "xmlText", "#FORM.state#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.StateName, "xmlText", "#FORM.stateother#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.PostalCode, "xmlText", "#FORM.zip#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.SubPostalCode, "xmlText", "#FORM.subzip#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CompanyName, "xmlText", "#FORM.companyname#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.JobTitle, "xmlText", "#FORM.jobtitle#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.WorkPhone, "xmlText", "#FORM.workphone#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField1, "xmlText", "#FORM.CustomField1#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField2, "xmlText", "#FORM.CustomField3#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField3, "xmlText", "#FORM.CustomField3#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField4, "xmlText", "#FORM.CustomField4#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField5, "xmlText", "#FORM.CustomField5#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField6, "xmlText", "#FORM.CustomField6#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField7, "xmlText", "#FORM.CustomField7#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField8, "xmlText", "#FORM.CustomField8#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField9, "xmlText", "#FORM.CustomField9#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField10, "xmlText", "#FORM.CustomField10#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField11, "xmlText", "#FORM.CustomField11#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField12, "xmlText", "#FORM.CustomField12#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField13, "xmlText", "#FORM.CustomField13#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField14, "xmlText", "#FORM.CustomField14#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.CustomField15, "xmlText", "#FORM.CustomField15#")>
	<cfset temp = StructUpdate(editContact.entry.content.Contact.Note, "xmlText", "#FORM.Notes#")>
	
	<!--- 
		Check to see if any lists are selected.
		If no lists are selected, the contact will be set to "Removed" Stats.
	--->
	<cfif isdefined('FORM.lists')>
	
		<cfset VARIABLES.contactLists = listtoarray(#FORM.lists#, ',', false) />
		<cfloop from="1" to="#ArrayLen(contactLists)#" index="i">
			<cfset ArrayAppend(editContact.entry.content.Contact.ContactLists.XmlChildren, XmlElemNew(editContact, "ContactList"))>
			<cfset StructInsert(editContact.entry.content.Contact.ContactLists.ContactList[i].XmlAttributes, "id", "#contactLists[i]#")>
		</cfloop>
	
	</cfif>
	
<!--- editContact function to send XML to Constant Contact --->
<cfset VARIABLES.httpResponse = createObject("component", "Contacts").editContact(editContact, FORM.id)>
	
	<div class="mainText"><cfoutput>Contact #FORM.email# Updated</cfoutput></div><br />
	
</cfif>

<!--- Check if an ID is set in the URL from edit.cfm --->
<cfif isdefined('URL.id')>
	<cfset VARIABLES.urlToGet="#URL.id#">
<cfelse>
	<cfset VARIABLES.urlToGet="#FORM.id#">
</cfif>

<!--- Get contact details --->
<cfset subscriberDetail = createObject("component", "Contacts").getContactDetails(urlToGet)>

<!--- Get all lists available in account --->
<cfset allLists = createObject("component", "Lists").getLists()>
	
<!--- Get all lists this contact is susbcribed to --->
<cfset subscribedLists = createObject("component", "Lists").getSubscribedLists(urlToGet)>

<!--- Create an array to store which checkboxes in the form need to be "checked" --->	
<cfset VARIABLES.checkedArray = ArrayNew(1)>

<cfloop from="1" to="#arrayLen(allLists)#" index="i">
	<cfset contactLists = StructNew()>
	<cfset contactLists.listName = allLists[i][1]>
	<cfset contactLists.listId = allLists[i][2]>
	<cfset contactLists.checked = "not checked">
	<cfset temp = arrayAppend(checkedArray, contactLists)>
</cfloop>

<cfloop from="1" to="#arrayLen(subscribedLists)#" index="i">
	<cfset temp = "#subscribedLists[i]#">
	<cfloop from="1" to="#arrayLen(checkedArray)#" index="z">
		<cfif "#checkedArray[z].listId#" EQ "#temp#">
			<cfset checkedArray[z].checked = "checked">
		</cfif>
	</cfloop>	
</cfloop>

<!--- Full Form --->
<div class="mainText">Edit Contact [Full Form]

<!--- Warning that a subscriber is on Do Not Mail and cannot be removed unless the opt-in source is 'ACTION_BY_CONTACT' --->
	<cfif subscriberDetail.status EQ "Do Not Mail">
		<font style="color: red; font-weight: bold;"> Status: DO NOT MAIL</font>
	</cfif>
</div>
<table class="mainText" width="900"><tr><td width="600">
<cfoutput>
<cfform format="html" width="600" action="edit_full.cfm" skin="blue">
    <fieldset class="mainFieldSet">
	    <legend> Personal Details </legend>
			Email: <cfinput type="text" name="email" label="Email" required="yes" validate="email" width="185" value="#subscriberDetail.email#"><br />
			First Name: <cfinput name="first" type="text" label="First Name" width="158" value="#subscriberDetail.firstName#"/>
			Last Name: <cfinput name="last" type="text" label="Last Name" width="180" value="#subscriberDetail.lastName#"/><br />
			Middle Name: <cfinput name="middle" type="text" label="Middle Name" width="145" value="#subscriberDetail.middleName#"/>
			Home Phome: <cfinput name="homephone" type="text" label="Home Phone" width="168" value="#subscriberDetail.homePhone#"/><br />
			Address 1: <cfinput name="addr1" type="text" label="Address 1" width="150" value="#subscriberDetail.addr1#"/><br />
			Address 2: <cfinput name="addr2" type="text" label="Address 2" width="150" value="#subscriberDetail.addr2#"/><br />
			Address 3: <cfinput name="addr3" type="text" label="Address 3" width="150" value="#subscriberDetail.addr3#"/><br />
			City: <cfinput type="text" name="city" label="City" value="#subscriberDetail.city#" width="198"> 
            State: 
			<cfselect name="state" label="State" width="205" >
            	<option value=""></option>
            	<cfloop from="1" to="#ArrayLen(StatesArray)#" index="i">        
                <option value="#StatesArray[i][2]#">#StatesArray[i][1]#</option> 
                </cfloop>   
            </cfselect><br />
            Zip: <cfinput type="text" name="zip" label="Zip" value="#subscriberDetail.postalCode#" width="203">
            State Other:<cfinput type="text" name="stateother" label="State (Other)" value="#subscriberDetail.stateName#" width="160"> <br />
			Sub-zip: <cfinput type="text" name="subzip" label="Sub-zip" value="#subscriberDetail.subPostalCode#" width="180">
            Country: 
			<cfselect name="country" label="Country" width="190">
            	<option value=""></option>
            	<cfloop from="1" to="#ArrayLen(CountryArray)#" index="i">        
                <option value="#CountryArray[i][2]#">#CountryArray[i][1]#</option> 
                </cfloop>   
            </cfselect><br />
            Email Type: 
			<cfselect name="emailtype" label="Email Type" width="180">
                <option value="HTML">HTML</option>
                <option value="Text">Text</option>
            </cfselect> 
	</fieldset><br />
	<fieldset class="mainFieldSet">
   	    <legend> Work Detials</legend>
			Company Name: <cfinput name="companyname" type="text" label="Company Name" width="100" value="#subscriberDetail.companyName#"/>
			Job Title: <cfinput name="jobtitle" type="text" label="Job Title" width="100" value="#subscriberDetail.jobTitle#"/><br />
			Work Phone: <cfinput name="workphone" type="text" label="Work Phone" width="100" value="#subscriberDetail.workPhone#"/>
	</fieldset> <br />
	<fieldset class="mainFieldSet">
	   <legend>Custom Fields & Notes</legend>
			Custom Field 1: <cfinput type="text" name="CustomField1" label="Custom Field 1" width="100" value="#subscriberDetail.customField1#"/>
			Custom Field 2: <cfinput type="text" name="CustomField2" label="Custom Field 2" width="100" value="#subscriberDetail.customField2#"/><br />
			Custom Field 3: <cfinput type="text" name="CustomField3" label="Custom Field 3" width="100" value="#subscriberDetail.customField3#"/>
			Custom Field 4: <cfinput type="text" name="CustomField4" label="Custom Field 4" width="100" value="#subscriberDetail.customField4#"/><br />
			Custom Field 5: <cfinput type="text" name="CustomField5" label="Custom Field 5" width="100" value="#subscriberDetail.customField5#"/>
			Custom Field 6: <cfinput type="text" name="CustomField6" label="Custom Field 6" width="100" value="#subscriberDetail.customField6#"/><br />
			Custom Field 7: <cfinput type="text" name="CustomField7" label="Custom Field 7" width="100" value="#subscriberDetail.customField7#"/>
			Custom Field 8: <cfinput type="text" name="CustomField8" label="Custom Field 8" width="100" value="#subscriberDetail.customField8#"/><br />
			Custom Field 9: <cfinput type="text" name="CustomField9" label="Custom Field 9" width="100" value="#subscriberDetail.customField9#"/>
			Custom Field 10: <cfinput type="text" name="CustomField10" label="Custom Field 10" width="100" value="#subscriberDetail.customField10#"/><br />
			Custom Field 11: <cfinput type="text" name="CustomField11" label="Custom Field 11" width="100" value="#subscriberDetail.customField11#"/>
			Custom Field 12: <cfinput type="text" name="CustomField12" label="Custom Field 12" width="100" value="#subscriberDetail.customField12#"/><br />
			Custom Field 13: <cfinput type="text" name="CustomField13" label="Custom Field 13" width="100" value="#subscriberDetail.customField13#"/>
			Custom Field 14: <cfinput type="text" name="CustomField14" label="Custom Field 14" width="100" value="#subscriberDetail.customField14#"/><br />
			Custom Field 15: <cfinput type="text" name="CustomField15" label="Custom Field 15" width="100" value="#subscriberDetail.customField15#"/><br />
			Notes: <br />
			<cftextarea width="320" height="85" name="notes" label="Notes" value="#subscriberDetail.note#" />
	</fieldset></td><td valign="top">
			<cfinput type="hidden" name="id" value="#subscriberDetail.id#">	
			<br />
		<fieldset class="mainFieldSet">
		<legend>Contact Lists</legend>
		<cfloop from="1" to="#arrayLen(checkedArray)#" index="i">
			<cfif "#checkedArray[i].checked#" EQ "checked">
				<cfinput type="checkbox" name="lists" value="#checkedArray[i].listId#" checked>#checkedArray[i].listName#<br />
			<cfelse>
				<cfinput type="checkbox" name="lists" value="#checkedArray[i].listId#">#checkedArray[i].listName#<br />
			</cfif>
		</cfloop>
		</fieldset>
		</td></tr></table>
	<cfinput type="submit" value="submit" name="submit">
</cfform>
</cfoutput>

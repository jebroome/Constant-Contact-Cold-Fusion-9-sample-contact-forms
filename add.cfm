<cfinclude template="header.cfm" />
<cfinclude template="import.cfm" />

<!--- Submit Information --->
<cfif isdefined('submit')>

<!--- createContactXML function to get basic contact XML --->
<cfset VARIABLES.newContact = createObject("component", "Contacts").createContactXML()>

<!--- Updates the basic XML retrieved through the createContactXml function with contact details from the form --->
	<cfset temp = StructUpdate(newContact.entry.content.Contact.EmailAddress, "xmlText", "#FORM.email#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.FirstName, "xmlText", "#FORM.first#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.LastName, "xmlText", "#FORM.last#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.MiddleName, "xmlText", "#FORM.middle#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.HomePhone, "xmlText", "#FORM.homephone#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.Addr1, "xmlText", "#FORM.addr1#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.Addr2, "xmlText", "#FORM.addr2#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.Addr3, "xmlText", "#FORM.addr3#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.City, "xmlText", "#FORM.city#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.StateCode, "xmlText", "#FORM.state#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.StateName, "xmlText", "#FORM.stateother#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.PostalCode, "xmlText", "#FORM.zip#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.SubPostalCode, "xmlText", "#FORM.subzip#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CompanyName, "xmlText", "#FORM.companyname#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.JobTitle, "xmlText", "#FORM.jobtitle#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.WorkPhone, "xmlText", "#FORM.workphone#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField1, "xmlText", "#FORM.CustomField1#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField2, "xmlText", "#FORM.CustomField3#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField3, "xmlText", "#FORM.CustomField3#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField4, "xmlText", "#FORM.CustomField4#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField5, "xmlText", "#FORM.CustomField5#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField6, "xmlText", "#FORM.CustomField6#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField7, "xmlText", "#FORM.CustomField7#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField8, "xmlText", "#FORM.CustomField8#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField9, "xmlText", "#FORM.CustomField9#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField10, "xmlText", "#FORM.CustomField10#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField11, "xmlText", "#FORM.CustomField11#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField12, "xmlText", "#FORM.CustomField12#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField13, "xmlText", "#FORM.CustomField13#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField14, "xmlText", "#FORM.CustomField14#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.CustomField15, "xmlText", "#FORM.CustomField15#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.Note, "xmlText", "#FORM.Notes#")>
	<cfset VARIABLES.contactLists = listtoarray(#FORM.lists#, ',', false) />
	
	<cfloop from="1" to="#ArrayLen(contactLists)#" index="i">
		<cfset ArrayAppend(newContact.entry.content.Contact.ContactLists.XmlChildren, XmlElemNew(newContact, "ContactList"))>
		<cfset StructInsert(newContact.entry.content.Contact.ContactLists.ContactList[i].XmlAttributes, "id", "#contactLists[i]#")>
	</cfloop>
	
	<!--- Use the updated XML to create a contact --->
	
	<cfset VARIABLES.httpResponse = createObject("component", "Contacts").addContact(newContact)>	
	<div class="mainText">Contact <cfoutput>#FORM.email#</cfoutput> Added</div><br />
</cfif>	

<!--- Get all available contact lists --->
<cfset VARIABLES.listArray = createObject("component", "Lists").getLists()>

<!--- Form --->
<div class="mainText">Add a new Contact [Full Form]</div>
<cfoutput>
<cfform format="flash" width="600" action="add.cfm" skin="haloBlue">
	<cfformgroup type="tabnavigator" >
		<cfformgroup type="page" label="Personal Details">
			<cfformgroup type="horizontal">
				<cfif isdefined('URL.email')>
				<cfinput type="text" name="email" label="Email" required="yes" validate="email" width="185" value="#URL.email#">
				<cfelse>
				<cfinput type="text" name="email" label="Email" required="yes" validate="email" width="185">
				</cfif>
			</cfformgroup>
			<cfformgroup type="horizontal">
				<cfinput name="first" type="text" label="First Name" width="158" />
				<cfinput name="last" type="text" label="Last Name" width="180" />
			</cfformgroup>
			<cfformgroup type="horizontal">
				<cfinput name="middle" type="text" label="Middle Name" width="145" />
				<cfinput name="homephone" type="text" label="Home Phone" width="168"/>
			</cfformgroup>
			<cfformgroup type="horizontal">
				<cfformgroup type="vertical">
					<cfinput name="Addr1" type="text" label="Address 1" width="150" />
					<cfinput name="Addr2" type="text" label="Address 2" width="150" />
					<cfinput name="Addr3" type="text" label="Address 3" width="150" />
				</cfformgroup>
			</cfformgroup>
			        <cfformgroup type="horizontal">
            <cfinput type="text" name="city" label="City" width="198" > 
            <cfselect name="state" label="State" width="205">
            	<option value=""></option>
            	<cfloop from="1" to="#ArrayLen(StatesArray)#" index="i">        
                <option value="#StatesArray[i][2]#">#StatesArray[i][1]#</option> 
                </cfloop>   
            </cfselect>
        </cfformgroup>
		        <cfformgroup type="horizontal">
            <cfinput type="text" name="zip" label="Zip" validate="zipcode" width="203">
            <cfinput type="text" name="stateother" label="State (Other)" width="160">
        </cfformgroup>
        <cfformgroup type="horizontal">
            <cfinput type="text" name="subzip" label="Sub-zip" width="180">
            <cfselect name="country" label="Country" width="190">
            	<option value=""></option>
            	<cfloop from="1" to="#ArrayLen(CountryArray)#" index="i">        
                <option value="#CountryArray[i][2]#">#CountryArray[i][1]#</option> 
                </cfloop>   
            </cfselect>
        </cfformgroup>
		        <cfformgroup type="horizontal">
            <cfselect name="emailtype" label="Email Type" width="165">
                <option value="HTML">HTML</option>
                <option value="Text">Text</option>
            </cfselect>
        </cfformgroup>  
		</cfformgroup>
		<cfformgroup type="page" label="Work Details">
			<cfformgroup type="horizontal">
				<cfinput name="companyname" type="text" label="Company Name" width="100" />
				<cfinput name="jobtitle" type="text" label="Job Title" width="100" />
			</cfformgroup>
			<cfformgroup type="horizontal">
				<cfinput name="workphone" type="text" label="Work Phone" width="100" />
			</cfformgroup>
		</cfformgroup>
		<cfformgroup type="page" label="Custom Fields & Notes">
			<cfformgroup type="horizontal">
				<cfinput type="text" name="CustomField1" label="Custom Field 1" width="100"/>
				<cfinput type="text" name="CustomField2" label="Custom Field 2" width="100"/>
			</cfformgroup>
						<cfformgroup type="horizontal">
				<cfinput type="text" name="CustomField3" label="Custom Field 3" width="100"/>
				<cfinput type="text" name="CustomField4" label="Custom Field 4" width="100"/>
			</cfformgroup>
						<cfformgroup type="horizontal">
				<cfinput type="text" name="CustomField5" label="Custom Field 5" width="100"/>
				<cfinput type="text" name="CustomField6" label="Custom Field 6" width="100"/>
			</cfformgroup>
						<cfformgroup type="horizontal">
				<cfinput type="text" name="CustomField7" label="Custom Field 7" width="100"/>
				<cfinput type="text" name="CustomField8" label="Custom Field 8" width="100"/>
			</cfformgroup>
						<cfformgroup type="horizontal">
				<cfinput type="text" name="CustomField9" label="Custom Field 9" width="100"/>
				<cfinput type="text" name="CustomField10" label="Custom Field 10" width="100"/>
			</cfformgroup>
						<cfformgroup type="horizontal">
				<cfinput type="text" name="CustomField11" label="Custom Field 11" width="100"/>
				<cfinput type="text" name="CustomField12" label="Custom Field 12" width="100"/>
			</cfformgroup>
						<cfformgroup type="horizontal">
				<cfinput type="text" name="CustomField13" label="Custom Field 13" width="100"/>
				<cfinput type="text" name="CustomField14" label="Custom Field 14" width="100"/>
			</cfformgroup>
						<cfformgroup type="horizontal">
				<cfinput type="text" name="CustomField15" label="Custom Field 15" width="100"/>
            <cftextarea width="320" height="85" name="notes" label="Notes" >
            </cftextarea>
			</cfformgroup>
		</cfformgroup>
			<cfformgroup type="page" label="Contact Lists">
			<cfformgroup type="horizontal">
				<cfselect type="text" name="lists" size="10" width="400" multiple="true" label="Contact Lists" required="true">
				<cfloop from="1" to="#ArrayLen(listArray)#" index="i"> 
					<option value="#listArray[i][2]#">#listArray[i][1]#</option value>
				</cfloop>
				</cfselect>
			</cfformgroup>
			</cfformgroup>
	</cfformgroup>
	<cfinput type="submit" value="submit" name="submit">
</cfform>
</cfoutput>

            
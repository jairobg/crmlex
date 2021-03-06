<cfinvoke component="components.legalMattersStatus" method="legalMatterStatusGetAll" returnvariable="legalMatterStatusGetAllQuery" />
<cfinvoke component="components.usStates" method="usStatesGet" returnvariable="usStates" />

<form class="form" action="" id="legalMatterAddForm">

    <cfoutput>
        <input
             id="clientId" 
             name="clientId" 
             type="hidden" 
             value="#URL.clientId#">
    </cfoutput>
	
    <fieldset>
		<div class="widget">

			<div class="title">
				<img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>New Legal Matter</h6>
			</div>

			<div class="formRow fluid">
            	<label>Information:</label>
                <div class="formRight mt12">
                    <span class="span7">
                    	<select
                    		id="creditorId" 
                    		name="creditorId"> 
							<option value="" selected="selected">Select related account</option> 
							<option value="1">Account 1</option> 
							<option value="2">Account 2</option> 
							<option value="3">Account 3</option> 
							<option value="4">Account 4</option>
						</select>
                    </span>
                    <span class="span5">
                    	<select 
                    		id="userId"
                    		name="userId"> 
							<option value="" selected="selected">Assigned to</option> 
							<option value="1">Attorney 1</option> 
							<option value="2">Attorney 2</option> 
							<option value="3">Attorney 3</option> 
							<option value="4">Attorney 4</option>
						</select>
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span3">
                    	<input 
                            id="legalMatterPlantiff"
                            name="legalMatterPlantiff"
                    		placeholder="Plantiff"
                    		type="text" />
                    </span>
                    <span class="span3">
                    	<input 
                            id="legalMatterDefender"
                            name="legalMatterDefender"
                    		placeholder="Defender"
                    		type="text" />
                    </span>
                    <span class="span3">
                    	<select id="legalMatterStatusId" name="legalMatterStatusId">
							<option value="0" selected="selected">Select Status</option> 
                    		<cfoutput query="legalMatterStatusGetAllQuery">
                    			<option value="#legalMatterStatusId#">#legalMatterStatusName#</option> 
                    		</cfoutput> 
						</select>
                    </span>
                    <span class="span3">
                    	<input 
                            id="legalMatterRef"
                            name="legalMatterRef"
                    		placeholder="Ref"
                    		type="text" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span6">
                    	<input
                    		class="datepicker"
                            id="legalMatterOpenDate" 
                            name="legalMatterOpenDate" 
                    		placeholder="Open Date"
                    		type="text" />
                    </span>
                    <span class="span6">
                    	<input
                    		class="datepicker"
                            id="legalMatterCloseDate"
                            name="legalMatterCloseDate"
	                    	placeholder="Close Date"
                    		type="text" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span12">
                    	<textarea 
                            id="legalMatterDescription"
                            name="legalMatterDescription"
                    		placeholder="Description"></textarea>
                    </span>
                </div>
            </div>


			<div class="formRow fluid">
            	<label>Opposing Counsel:</label>
                <div class="formRight mt12">
                    <span class="span6">
                    	<input 
                            id="legalMatterOCName"
                            name="legalMatterOCName"
                    		placeholder="Name"
                    		type="text" />
                    </span>
                    <span class="span6">
                    	<input 
                            id="legalMatterOCLawFirm"
                            name="legalMatterOCLawFirm"
                    		type="text" 
                    		placeholder="Law Firm" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                    	<input 
                            id="legalMatterOCJurisdiction"
                            name="legalMatterOCJurisdiction"
                    		placeholder="Jurisdiction"
                    		type="text" />
                    </span>
                    <span class="span4">
                    	<input 
                            id="legalMatterOCEmail"
                            name="legalMatterOCEmail"
                    		placeholder="E-mail"
                    		type="text" />
                    </span>
                    <span class="span2">
                    	<input 
                            id="legalMatterOCPhone"
                            name="legalMatterOCPhone"
                    		placeholder="Phone"
                    		type="text" />
                    </span>
                    <span class="span2">
                    	<input 
                            id="legalMatterOCFax"
                            name="legalMatterOCFax"
                    		placeholder="Fax"
                    		type="text" />
                    </span>
                </div>
                <div class="formRight mt12">
                    <span class="span4">
                    	<input 
                            id="legalMatterOCAddress"
                            name="legalMatterOCAddress"
                    		placeholder="Address"
                    		type="text" />
                    </span>
                    <span class="span2">
                    	<input 
                            id="legalMatterOCCity"
                            name="legalMatterOCCity"
                    		placeholder="City"
                    		type="text" />
                    </span>
                    <span class="span4">
						<select id="legalMatterOCUsState" name="legalMatterOCUsState"> 
							<option value="" selected="selected">Select a State</option> 
							<cfloop query="usStates">
								<option value="#usStates.abbreviation#">
                                    #usStates.name#
                                </option>
							</cfloop>
						</select>         
                    </span>
                    <span class="span2">
                    	<input 
                            id="legalMatterOCZip"
                            name="legalMatterOCZip"
                    		placeholder="Zip"
                    		type="text" />
                    </span>
                </div>
            </div>

		    <cfoutput>
            <div class="formSubmit">
                <input 
                    class="redB" 
                    onClick="legalMatterAdd(#URL.clientId#); return false;"
                    type="submit" 
                    value="Save" />
            </div>
            </cfoutput>

        </div>
    </fieldset>
</form>
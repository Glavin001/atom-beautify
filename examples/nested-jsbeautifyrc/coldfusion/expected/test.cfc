<cfcomponent
    hint="extend this class with a class that implements the interface IImporter"
    output="no">
    <cffunction name="init" output="false" returntype="any">
        <cfscript>
            variables.instance = structNew();
            return this;
        </cfscript>
    </cffunction>

    <cffunction
        access="private"
        name="readExcelFile"
        output="false"
        returntype="any">
        <cfargument
            hint="Full path to the spreadsheet being read"
            name="filepath"
            required="true"
            type="string"/>
        <cfargument
            default="1"
            hint="number, 1-based, of the sheet in the workbook to read"
            name="sheetNumber"
            type="numeric"/>
        <cfargument
            default="1"
            hint="if no content is found in a row by the time this column is reached then that row will be ignored"
            name="ignoreColumnPoint"
            type="numeric"/>
        <cfargument
            default=""
            hint="either a numeric index of the row OR a comma separated list of headers"
            name="headerRow"
            type="string"/>
        <cfargument
            default="0"
            hint="provide this if the actual data starts on a wierd row relative to the header info"
            name="dataStartRow"
            type="numeric"/>

        <cfset var local=structNew()/>

        <!--- We are decrementing by 1 so users can continue to pass the literal number they see in the Excel spreadsheet and not worry about the zero-based stuff --->
        <cfif Arguments.dataStartRow GT 0>
            <cfset Arguments.dataStartRow=Arguments.dataStartRow - 1>
        </cfif>

        <cfset local.headerRowIndex=0/>
        <cfset local.headers=""/>
        <cfif IsNumeric(arguments.headerRow)>
            <cfset local.headerRowIndex=arguments.headerRow/>
        <cfelse>
            <cfset local.headers=arguments.headerRow/>
        </cfif>

        <cfscript>
            initFormattingRules();
            local.reader = createObject("component", "foo.com.ExcelReader").init(arguments.filepath, arguments.sheetNumber);
            local.data = local
                .reader
                .read(arguments.ignoreColumnPoint, arguments.dataStartRow);
            local.data = local
                .reader
                .fixDateAndNumericColumns(local.data, variables.instance.dateColumns, variables.instance.numberColumns);
            return local.data;
        </cfscript>
    </cffunction>

    <cffunction
        hint="left pads any string with the character provided until the string is the correct length"
        name="pad"
        output="false"
        returntype="string">
        <cfargument name="inString" required="true" type="string"/>
        <cfargument name="padChar" required="true" type="string"/>
        <cfargument name="maxLen" required="true" type="numeric"/>

        <cfset var mult=arguments.maxLen - len(arguments.inString)/>
        <cfset var i=0/>

        <cfloop from="1" index="i" to="#mult#"><cfset arguments.instring=arguments.padChar & arguments.instring/></cfloop>

        <cfreturn arguments.inString/>

    </cffunction>

    <cffunction access="private" name="getDSN" output="false" returntype="string">
        <cfreturn variables.instance.dsn/>
    </cffunction>

    <cffunction access="public" name="setDSN" output="false" returntype="void">
        <cfargument name="dsn" required="true" type="string"/>
        <cfset variables.instance.dsn=arguments.dsn/>
    </cffunction>
</cfcomponent>

public class ADG_Router {
    
    public class Request {
        @InvocableVariable(required=true label='User Prompt')
        public String prompt;
        @InvocableVariable(label='Routing Hint' description='IoT, Finance, Docs')
        public String domainHint;
    }

    @InvocableMethod(label='ADG: Intelligence Router' description='Routes intent to the optimal Data Cloud engine')
    public static List<String> routeRequest(List<Request> requests) {
        List<String> responses = new List<String>();
        
        for(Request req : requests) {
            // Strategic Routing Logic
            if(req.domainHint == 'IoT' || req.prompt.containsIgnoreCase('sensor')) {
                 // Future State: Route to Databricks Node
                 responses.add('[ROUTED TO DATABRICKS MOSAIC AI]: ' + req.prompt);
            } else {
                 // Default: Route to Snowflake Cortex Node
                 responses.add(ADG_CortexService.executeCortex(req.prompt));
            }
        }
        return responses;
    }
}
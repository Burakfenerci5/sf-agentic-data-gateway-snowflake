@RestResource(urlMapping='/api/adg/v1/*')
global with sharing class ADG_HeadlessAPI {
    
    @HttpPost
    global static String handleInference(String prompt, String domain) {
        // Exposes the Gateway to React Apps, ServiceNow, or Mobile
        ADG_Router.Request req = new ADG_Router.Request();
        req.prompt = prompt;
        req.domainHint = domain;
        
        // Reuse the same router logic used by Agentforce
        return ADG_Router.routeRequest(new List<ADG_Router.Request>{req})[0];
    }
}
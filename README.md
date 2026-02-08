# Agentic Data Gateway (ADG): Snowflake Node

### Headless Intelligence. Zero Metadata Latency. Enterprise Scale.

This repository hosts the **Snowflake Node** of the Agentic Data Gateway. It is architected to bypass the Salesforce Semantic Layer and provide direct, low-latency access to **Snowflake Cortex AI**.

**Architecture:**


* **Standard:** Salesforce DX (SFDX) Structure
* **Routing:** `ADG_Router.cls` handles multi-cloud traffic dispatch.
* **Inference:** `ADG_CortexService.cls` executes SQL-based LLM calls.
* **Headless:** `ADG_HeadlessAPI.cls` exposes intelligence to external apps.

**Related Node:**
* [Databricks Mosaic AI Node](https://github.com/Burakfenerci5/sf-agentforce-databricks-mosaic)

**Contributor:** Burak Fenercioglu
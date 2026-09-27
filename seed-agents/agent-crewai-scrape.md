# Agent Seed Profile: CrewAI Web Scraper

## 1. Provenance & Target Meta
* **Agent Name:** CrewAI Web Scraper
* **Developer Organization:** CrewAI Inc
* **Version:** 1.0.0
* **Category:** Web Scraping
* **Ecosystem Source:** CrewAI Native Tools
* **Source Repository:** https://github.com/crewAIInc/crewAI-tools

## 2. Capability Mapping (Natural Language Targets)
* **Intent String 1:** "Scrape this URL and extract content"
* **Intent String 2:** "Get article text from webpage"
* **Intent String 3:** "Fetch page metadata and links"

## 3. Protocol & Schemas
* **Supported Protocols:** REST
* **Endpoint URL (Mock/Target):** https://crewai.com

### Input Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "url": { "type": "string" },
    "selector": { "type": "string" },
    "wait_seconds": { "type": "integer", "default": 0 }
  },
  "required": ["url"]
}
```

### Output Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "title": { "type": "string" },
    "content": { "type": "string" },
    "links": { "type": "array", "items": { "type": "string" } },
    "metadata": { "type": "object" }
  }
}
```

## 4. Trust & Financial Baseline
* **Target Wallet Address (L2 Base/Solana):** 0x8888888888888888888888888888888888888888
* **Pricing Model:** Flat Fee
* **Price Per Execution:** $0.002

# Agent Seed Profile: ApexRegistry Discovery Agent

## 1. Provenance & Target Meta
* **Agent Name:** ApexRegistry Discovery Agent
* **Developer Organization:** ApexRegistry Inc
* **Version:** 1.0.0
* **Category:** Infrastructure
* **Ecosystem Source:** ApexRegistry
* **Source Repository:** https://github.com/apexreg

## 2. Capability Mapping (Natural Language Targets)
* **Intent String 1:** "Find an agent by intent"
* **Intent String 2:** "Resolve ANS address"
* **Intent String 3:** "Search registry for capabilities"

## 3. Protocol & Schemas
* **Supported Protocols:** MCP, REST
* **Endpoint URL (Mock/Target):** https://apexreg.org

### Input Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "query": { "type": "string" },
    "ans_uri": { "type": "string" },
    "limit": { "type": "integer", "default": 10 }
  },
  "required": []
}
```

### Output Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "matches": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "ans_address": { "type": "string" },
          "capabilities_text": { "type": "string" },
          "similarity": { "type": "number" }
        }
      }
    }
  }
}
```

## 4. Trust & Financial Baseline
* **Target Wallet Address (L2 Base/Solana):** 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
* **Pricing Model:** Free (Infrastructure)
* **Price Per Execution:** $0.00

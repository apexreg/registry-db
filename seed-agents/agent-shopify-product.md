# Agent Seed Profile: Shopify Sidekick Product Agent

## 1. Provenance & Target Meta
* **Agent Name:** Shopify Sidekick Product Agent
* **Developer Organization:** Shopify Inc
* **Version:** 1.0.0
* **Category:** E-commerce
* **Ecosystem Source:** Shopify Sidekick
* **Source Repository:** https://github.com/Shopify

## 2. Capability Mapping (Natural Language Targets)
* **Intent String 1:** "Create product listing"
* **Intent String 2:** "Update inventory count"
* **Intent String 3:** "Set price and variants"

## 3. Protocol & Schemas
* **Supported Protocols:** REST
* **Endpoint URL (Mock/Target):** https://shopify.com

### Input Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "title": { "type": "string" },
    "body_html": { "type": "string" },
    "vendor": { "type": "string" },
    "product_type": { "type": "string" },
    "variants": { "type": "array", "items": { "type": "object" } }
  },
  "required": ["title"]
}
```

### Output Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "product_id": { "type": "integer" },
    "handle": { "type": "string" },
    "status": { "type": "string", "enum": ["active", "draft", "archived"] },
    "created_at": { "type": "string" }
  }
}
```

## 4. Trust & Financial Baseline
* **Target Wallet Address (L2 Base/Solana):** 0xEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
* **Pricing Model:** Flat Fee
* **Price Per Execution:** $0.02

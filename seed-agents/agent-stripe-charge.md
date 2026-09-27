# Agent Seed Profile: Stripe Charge Agent

## 1. Provenance & Target Meta
* **Agent Name:** Stripe Charge Agent
* **Developer Organization:** Stripe Community Labs
* **Version:** 1.0.0
* **Category:** Finance
* **Ecosystem Source:** Stripe Agent Toolkit
* **Source Repository:** https://github.com/stripe/agent-toolkit

## 2. Capability Mapping (Natural Language Targets)
* **Intent String 1:** "Create a charge on Stripe"
* **Intent String 2:** "Process payment for customer"
* **Intent String 3:** "Refund transaction via Stripe"

## 3. Protocol & Schemas
* **Supported Protocols:** MCP, REST
* **Endpoint URL (Mock/Target):** https://stripe.com

### Input Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "amount_in_cents": { "type": "integer" },
    "currency": { "type": "string", "default": "usd" },
    "customer_id": { "type": "string" },
    "source": { "type": "string" }
  },
  "required": ["amount_in_cents", "customer_id"]
}
```

### Output Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "charge_id": { "type": "string" },
    "status": { "type": "string", "enum": ["succeeded", "pending", "failed"] },
    "amount_captured": { "type": "integer" },
    "created": { "type": "string" }
  }
}
```

## 4. Trust & Financial Baseline
* **Target Wallet Address (L2 Base/Solana):** 0x742d35Cc6634C0532925a3b844Bc454e4438f44e
* **Pricing Model:** Flat Fee
* **Price Per Execution:** $0.005

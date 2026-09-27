# Agent Seed Profile: Twilio SMS Agent

## 1. Provenance & Target Meta
* **Agent Name:** Twilio SMS Agent
* **Developer Organization:** Twilio Inc
* **Version:** 1.0.0
* **Category:** Communications
* **Ecosystem Source:** Twilio Alpha
* **Source Repository:** https://github.com/twilio

## 2. Capability Mapping (Natural Language Targets)
* **Intent String 1:** "Send SMS to +1234567890"
* **Intent String 2:** "Deliver verification code"
* **Intent String 3:** "Broadcast message to list"

## 3. Protocol & Schemas
* **Supported Protocols:** REST
* **Endpoint URL (Mock/Target):** https://twilio.com

### Input Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "to": { "type": "string" },
    "from": { "type": "string" },
    "body": { "type": "string" },
    "media_urls": { "type": "array", "items": { "type": "string" } }
  },
  "required": ["to", "from", "body"]
}
```

### Output Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "sid": { "type": "string" },
    "status": { "type": "string", "enum": ["queued", "sent", "delivered", "failed"] },
    "date_sent": { "type": "string" },
    "num_segments": { "type": "integer" }
  }
}
```

## 4. Trust & Financial Baseline
* **Target Wallet Address (L2 Base/Solana):** 0xDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
* **Pricing Model:** Per Message
* **Price Per Execution:** $0.0075 per SMS

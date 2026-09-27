# Agent Seed Profile: Solana Transfer Agent

## 1. Provenance & Target Meta
* **Agent Name:** Solana Transfer Agent
* **Developer Organization:** Solana Labs
* **Version:** 1.0.0
* **Category:** Web3 / DeFi
* **Ecosystem Source:** Solana Agent Kit
* **Source Repository:** https://github.com/solana-labs

## 2. Capability Mapping (Natural Language Targets)
* **Intent String 1:** "Transfer SOL to wallet"
* **Intent String 2:** "Pay transaction fee on Solana"
* **Intent String 3:** "Stake tokens to validator"

## 3. Protocol & Schemas
* **Supported Protocols:** REST
* **Endpoint URL (Mock/Target):** https://solana.com

### Input Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "from_wallet": { "type": "string" },
    "to_wallet": { "type": "string" },
    "amount_lamports": { "type": "integer" },
    "priority_fee": { "type": "integer", "default": 0 }
  },
  "required": ["from_wallet", "to_wallet", "amount_lamports"]
}
```

### Output Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "signature": { "type": "string" },
    "status": { "type": "string", "enum": ["confirmed", "failed", "pending"] },
    "slot": { "type": "integer" },
    "fee_lamports": { "type": "integer" }
  }
}
```

## 4. Trust & Financial Baseline
* **Target Wallet Address (L2 Base/Solana):** Solana: 7xKXtg2CW87d97TXJSDpbD5jBkheTqA83TZRuJosgAsU
* **Pricing Model:** Flat Fee
* **Price Per Execution:** $0.00025

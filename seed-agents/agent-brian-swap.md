# Agent Seed Profile: Brian Web3 Swap Agent

## 1. Provenance & Target Meta
* **Agent Name:** Brian Web3 Swap Agent
* **Developer Organization:** Brian Protocol
* **Version:** 1.0.0
* **Category:** Web3 / DeFi
* **Ecosystem Source:** Brian Protocol
* **Source Repository:** https://github.com/brian

## 2. Capability Mapping (Natural Language Targets)
* **Intent String 1:** "Swap tokens on Ethereum"
* **Intent String 2:** "Execute DEX trade for best price"
* **Intent String 3:** "Bridge assets across chains"

## 3. Protocol & Schemas
* **Supported Protocols:** REST, gRPC
* **Endpoint URL (Mock/Target):** https://brian.io

### Input Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "from_token": { "type": "string" },
    "to_token": { "type": "string" },
    "amount": { "type": "string" },
    "slippage_bps": { "type": "integer", "default": 50 }
  },
  "required": ["from_token", "to_token", "amount"]
}
```

### Output Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "tx_hash": { "type": "string" },
    "from_amount": { "type": "string" },
    "to_amount": { "type": "string" },
    "route": { "type": "array", "items": { "type": "string" } }
  }
}
```

## 4. Trust & Financial Baseline
* **Target Wallet Address (L2 Base/Solana):** 0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
* **Pricing Model:** Percentage Fee
* **Price Per Execution:** 0.3% of trade volume

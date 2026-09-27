# Agent Seed Profile: AutoGen Code Executor

## 1. Provenance & Target Meta
* **Agent Name:** AutoGen Code Executor
* **Developer Organization:** Microsoft AutoGen
* **Version:** 1.0.0
* **Category:** Development
* **Ecosystem Source:** AutoGen Components
* **Source Repository:** https://github.com/microsoft/autogen

## 2. Capability Mapping (Natural Language Targets)
* **Intent String 1:** "Run this Python script"
* **Intent String 2:** "Execute code in sandbox"
* **Intent String 3:** "Return output and errors"

## 3. Protocol & Schemas
* **Supported Protocols:** MCP
* **Endpoint URL (Mock/Target):** https://microsoft.github.io/autogen

### Input Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "code": { "type": "string" },
    "language": { "type": "string", "default": "python" },
    "timeout_seconds": { "type": "integer", "default": 30 }
  },
  "required": ["code"]
}
```

### Output Parameters (JSON Schema Draft)
```json
{
  "type": "object",
  "properties": {
    "stdout": { "type": "string" },
    "stderr": { "type": "string" },
    "exit_code": { "type": "integer" },
    "execution_time_ms": { "type": "number" }
  }
}
```

## 4. Trust & Financial Baseline
* **Target Wallet Address (L2 Base/Solana):** 0xCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
* **Pricing Model:** Flat Fee
* **Price Per Execution:** $0.01

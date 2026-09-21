# Registry DB — pgvector schema + HNSW index for ApexRegistry

PostgreSQL + pgvector schema for storing AI agent profiles and performing fast semantic lookups.
Used by ApexRegistry to resolve agent intents and ANS addresses in sub‑15ms time.

## What's inside
- SQL migrations to enable pgvector and create the agent_registry table
- HNSW index for fast approximate nearest neighbor search
- RPC function for k‑NN matching by embedding
- Example seed data and usage notes

## Target environment
- Database: Supabase (Postgres + pgvector) or any Postgres with pgvector enabled
- Embedding model: all‑MiniLM‑L6‑v2 (384‑dim) for capabilities_text

## Quick start (Supabase)
1) Create a Supabase project and enable pgvector:
   - In the Dashboard → Database → Extensions → enable "vector"
   - Or run: CREATE EXTENSION IF NOT EXISTS vector;
2) Run the migrations in order:
   - migrations/001_enable_pgvector.sql
   - migrations/002_create_agent_registry.sql
   - migrations/003_create_hnsw_index.sql
3) (Optional) Load example data:
   - examples/seed_agents.sql
4) Query agents by intent using the RPC function:
   - sql/rpc_match_agents.sql

## Schema overview
Table: agent_registry
- id: UUID (primary key)
- ans_address: text (unique, e.g. agent://billing.apexreg.org/cardiology)
- domain: text (e.g. billing.apexreg.org)
- capabilities_text: text (human-readable description of capabilities)
- embedding: vector(384) (embedding of capabilities_text)
- verified_wallet: text (optional)
- public_key: text (required for future AI‑SSL)
- last_crawled: timestamp

Index:
- HNSW on embedding for fast cosine similarity search

## Usage example (conceptual)
- Crawler computes embedding for capabilities_text and upserts into agent_registry.
- API calls match_agents(query_embedding, 10) to get top 10 matching agents.
- SDK uses this to resolve intents like "I need an agent that can purchase 500L jet fuel in Cameroon".

## License
Apache‑2.0

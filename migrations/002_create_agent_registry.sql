-- Create the agent_registry table for storing AI agent profiles
CREATE TABLE IF NOT EXISTS agent_registry (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    ans_address VARCHAR(255) UNIQUE NOT NULL,
    domain VARCHAR(255) NOT NULL,
    capabilities_text TEXT NOT NULL,
    embedding vector(384),
    verified_wallet VARCHAR(255),
    public_key TEXT NOT NULL,
    last_crawled TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Optional: basic index on domain for quick filtering
CREATE INDEX IF NOT EXISTS idx_agent_registry_domain ON agent_registry (domain);

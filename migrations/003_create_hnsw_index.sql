-- Create HNSW index on embedding for fast approximate nearest neighbor search
-- Uses cosine distance (vector_cosine_ops)
CREATE INDEX IF NOT EXISTS idx_agent_registry_embedding
ON agent_registry
USING hnsw (embedding vector_cosine_ops);

-- Optional tuning hints (run separately if needed):
-- SET hnsw.ef_search = 64;        -- higher = more accurate, slower
-- SET hnsw.ef_construction = 128; -- index build quality
-- SET hnsw.m = 16;                -- graph connectivity

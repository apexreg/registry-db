-- RPC function: match agents by query embedding (k-NN search)
-- Returns top match_count agents ordered by cosine similarity
CREATE OR REPLACE FUNCTION match_agents(
    query_embedding vector(384),
    match_count INT DEFAULT 10
)
RETURNS TABLE (
    id UUID,
    ans_address VARCHAR,
    domain VARCHAR,
    capabilities_text TEXT,
    embedding vector(384),
    verified_wallet VARCHAR,
    public_key TEXT,
    last_crawled TIMESTAMP,
    similarity FLOAT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        ar.id,
        ar.ans_address,
        ar.domain,
        ar.capabilities_text,
        ar.embedding,
        ar.verified_wallet,
        ar.public_key,
        ar.last_crawled,
        1 - (ar.embedding <=> query_embedding) AS similarity
    FROM agent_registry ar
    ORDER BY ar.embedding <=> query_embedding
    LIMIT match_count;
END;
$$ LANGUAGE plpgsql STABLE;

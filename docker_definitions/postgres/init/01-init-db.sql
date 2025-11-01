-- Base schema for JedAI
CREATE SCHEMA IF NOT EXISTS jedai AUTHORIZATION jedai;
CREATE SCHEMA IF NOT EXISTS jedai_n8n AUTHORIZATION jedai;

-- Example table for storing metadata
CREATE TABLE IF NOT EXISTS jedai.video_metadata (
    id SERIAL PRIMARY KEY,
    source TEXT,
    title TEXT,
    transcript TEXT,
    embedding JSONB,
    tags TEXT[],
    created_at TIMESTAMP DEFAULT NOW()
);

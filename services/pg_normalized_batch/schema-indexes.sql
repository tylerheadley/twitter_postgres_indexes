-- Enables Bitmap Scan for 01.sql
CREATE INDEX idx_tags ON tweet_tags(tag);
-- Also works for 02.sql

-- For 03.sql, create index on tweets idx_id_tweets to enable bitmap scan
-- Also uses idx_tags
CREATE INDEX idx_id_tweets ON tweets(id_tweets);

-- To speed up 04.sql and 05.sql, create GIN index for FTS on tweet content
CREATE INDEX idx_text_fts on tweets USING gin(to_tsvector('english', text));

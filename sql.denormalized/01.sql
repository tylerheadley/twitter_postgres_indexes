/*
 * Count the number of tweets that use #coronavirus
 */
SELECT count(distinct id_tweets)
FROM tweet_tags_mat
WHERE tag='#coronavirus';

http-gone
=========

Simple `HTTP 410` generator for decommissioned sites.

Use it as a target for old domains to encourage search engines to drop
them.  It'll return a valid `/robots.txt` and a `410` for all other
paths.

Built to run on Google Cloud Run but should work on Heroku or some
place container-y.


Optional environment variables
------------------------------

`$PORT` == TCP port to bind to

`$WEB_CONCURRENCY` == number of workers

`$MAX_THREADS` == max threads per worker

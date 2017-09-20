# s3-server

Serve the contents of a S3 bucket (private or public) over HTTP.

```shell
$ npm install -g s3-server
$ s3-server --key $AWS_ACCESS_KEY_ID --secret $AWS_ACCESS_KEY_SECRET --bucket my-s3-bucket --port 9101
Serving my-s3-bucket on port 9101
```

S3 Server is a proxy server which streams resources from an S3 bucket over HTTP. For example, in the example above, a request for "http://localhost:9101/index.html" would return the contents of "index.html" in the "my-s3-bucket", regardless of whether it's private or not (so long as the key provided has access).

## Parameters

* `--key` parameter or `AWS_ACCESS_KEY_ID` environment variable. Required.
* `--secret` parameter or `AWS_SECRET_ACCESS_KEY` environment variable. Required.
* `--bucket` parameter or `S3_SERVER_BUCKET` environment variable. Required.
* `--endpoint` parameter or `S3_SERVER_ENDPOINT` environment variable. Required.
* `--port` parameter or `S3_SERVER_PORT` environment variable. Optional, defaults to 3010.


## Developing
Please see the `bin/server.js` file if you're having any problems, the code for this module is very small, it delegates the work to express and knox.
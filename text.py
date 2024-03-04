from prometheus_client import start_http_server, Summary
import random
import time

# Create a metric to track time spent and requests made.
REQUEST_TIME = Summary('request_processing_seconds', 'Time spent processing request')

# Decorate function with metric.
@REQUEST_TIME.time()
def process_request(t):
    """A dummy function that takes some time."""
    time.sleep(t)

if __name__ == '__main__':
    # Start up the server to expose the metrics.
    start_http_server(9091, '127.0.0.1')
    # Generate some requests.
    while True:
        process_request(random.random())

# len_text = 120
# text = 'grafana timescaledb settings'

# text = f' | {text.upper()} | '

# print('# ' + '=' * len_text)
# print('# ' + f'| {text:-^{len_text - 4}} |')
# print('# ' + '=' * len_text)






alpine-statsd
=============
statsd container with a small disk footprint (~12 MB)

Example Usage
-------------

Create a statsd configuration, for example ``/path/to/statsd/cfg_dir/config.js``:

.. code:: javascript

    {
      graphitePort: 2003,
      graphiteHost: "graphite.example.com",
      port: 8125,
      backends: [ "./backends/graphite" ]
    }

.. code-block::

    docker run --name statsd -d -p 8125:8125/udp -p 8126:8126 \
      -v /path/to/statsd/cfg_dir:/statsd aweber/alpine-statsd /statsd/config.js

FROM ubuntu:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  pip python3-gst-1.0 gstreamer1.0-plugins-good gstreamer1.0-plugins-bad curl \
  && rm -rf /var/lib/apt/lists/*

RUN pip install Mopidy Mopidy-Jellyfin Mopidy-MPD Mopidy-Local Mopidy-Party Mopidy-Iris Mopidy-YouTube youtube-dl ytmusicapi

COPY mopidy.conf /config/mopidy.conf
COPY entrypoint.sh /entrypoint.sh

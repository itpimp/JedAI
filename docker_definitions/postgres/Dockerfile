# PostgreSQL 17 custom build
FROM postgres:17

LABEL maintainer="JedAI Dev Team <dev@jedai.io>"
LABEL description="Custom PostgreSQL 17 build for JedAI with tuned config and extensions"

# Install common Postgres extensions and utils
RUN apt update --fix-missing
RUN apt install -y --no-install-recommends \
      postgresql-contrib postgresql-plpython3-17 postgis curl \
      iotop nano && \
    rm -rf /var/lib/apt/lists/*

# Copy configs and initialization SQL
COPY configs/postgresql.conf /etc/postgresql/postgresql.conf
COPY init /docker-entrypoint-initdb.d

RUN chown -R postgres:postgres /var/lib/postgresql/data


# Default runtime settings
EXPOSE 5432
HEALTHCHECK CMD pg_isready -U jedai || exit 1

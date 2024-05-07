CREATE TABLE IF NOT EXISTS weather_data.weather_detail_by_location_and_epoch (
    location_name text,
    last_updated_epoch timestamp,
    celsius float,
    cloud tinyint,
    condition_text text,
    fahrenheit float,
    gust_kph float,
    gust_mph float,
    humidity tinyint,
    last_updated_local text,
    precip_in float,
    precip_mm float,
    wind_kph float,
    wind_mph float,
    PRIMARY KEY (location_name, last_updated_epoch)
) WITH ID = 9f071b70-00d2-11ef-96c0-cb1b86ef8292
    AND CLUSTERING ORDER BY (last_updated_epoch DESC)
    AND additional_write_policy = '99p'
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND cdc = false
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.TimeWindowCompactionStrategy', 'compaction_window_size': '1', 'compaction_window_unit': 'DAYS', 'max_threshold': '32', 'min_threshold': '4'}
    AND compression = {'chunk_length_in_kb': '16', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND memtable = 'default'
    AND crc_check_chance = 1.0
    AND default_time_to_live = 0
    AND extensions = {}
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair = 'BLOCKING'
    AND speculative_retry = '99p';

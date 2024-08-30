CREATE DATABASE IF NOT EXISTS ids
COMMENT 'Database for IDS Data'
LOCATION '/user/ids_analysis/db/';

CREATE TABLE IF NOT EXISTS ids.data (
    srcip STRING,
    sport INT,
    dstip STRING,
    dsport INT,
    proto STRING,
    state STRING,
    dur DOUBLE,
    sbytes INT,
    dbytes INT,
    sttl INT,
    dttl INT,
    sloss INT,
    dloss INT,
    service STRING,
    Sload DOUBLE,
    Dload DOUBLE,
    Spkts INT,
    Dpkts INT,
    swin INT,
    dwin INT,
    stcpb BIGINT,
    dtcpb BIGINT,
    smeansz INT,
    dmeansz INT,
    trans_depth INT,
    res_bdy_len INT,
    Sjit DOUBLE,
    Djit DOUBLE,
    Stime INT,
    Ltime INT,
    Sintpkt DOUBLE,
    Dintpkt DOUBLE,
    tcprtt DOUBLE,
    synack DOUBLE,
    ackdat DOUBLE,
    is_sm_ips_ports INT,
    ct_state_ttl INT,
    ct_flw_http_mthd INT,
    is_ftp_login INT,
    ct_ftp_cmd INT,
    ct_srv_src INT,
    ct_srv_dst INT,
    ct_dst_ltm INT,
    ct_src_ltm INT,
    ct_src_dport_ltm INT,
    ct_dst_sport_ltm INT,
    ct_dst_src_ltm INT,
    attack_cat STRING,
    Label INT
)
COMMENT 'Raw data table for network traffic analysis'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

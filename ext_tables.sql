#
# Table structure for table 'tt_content'
#
CREATE TABLE tt_content (
	tx_rlmpflashdetection_flashmovie blob NOT NULL
);


#
# Table structure for table 'tx_rlmpflashdetection_flashmovie'
#
CREATE TABLE tx_rlmpflashdetection_flashmovie (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	t3ver_oid int(11) DEFAULT '0' NOT NULL,
    t3ver_id int(11) DEFAULT '0' NOT NULL,
    t3ver_wsid int(11) DEFAULT '0' NOT NULL,
    t3ver_label varchar(30) DEFAULT '' NOT NULL,
    t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
    t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
    t3ver_count int(11) DEFAULT '0' NOT NULL,
    t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
    t3_origuid int(11) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	starttime int(11) DEFAULT '0' NOT NULL,
	endtime int(11) DEFAULT '0' NOT NULL,
	description varchar(100) DEFAULT '' NOT NULL,
	requiresflashversion tinyint(4) DEFAULT '0' NOT NULL,
	ajax tinyint(4) unsigned DEFAULT '0' NOT NULL,
	width varchar(6) DEFAULT '' NOT NULL,
	height varchar(6) DEFAULT '' NOT NULL,
	quality tinyint(4) unsigned DEFAULT '0' NOT NULL,
	displaymenu tinyint(3) unsigned DEFAULT '0' NOT NULL,
	flashloop tinyint(3) unsigned DEFAULT '0' NOT NULL,
	alternatepic blob NOT NULL,
	alternatelink varchar(255) DEFAULT '' NOT NULL,
	alternatetext varchar(255) DEFAULT '' NOT NULL,
	flashmovie blob NOT NULL,
	additionalparams text NOT NULL,
	xmlfile blob NOT NULL,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY t3ver_oid (t3ver_oid,t3ver_wsid)
);

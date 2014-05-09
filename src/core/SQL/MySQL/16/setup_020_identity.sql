CREATE TABLE identity (
       identityid bigint(20) unsigned NOT NULL auto_increment,
       userid bigint(20) unsigned NOT NULL,
       identityname varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
       realname varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
       awaynick varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci,
       awaynickenabled boolean NOT NULL DEFAULT FALSE,
       awayreason varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci,
       awayreasonenabled boolean NOT NULL DEFAULT FALSE,
       autoawayenabled boolean NOT NULL DEFAULT FALSE,
       autoawaytime integer NOT NULL,
       autoawayreason varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci,
       autoawayreasonenabled boolean NOT NULL DEFAULT FALSE,
       detachawayenabled boolean NOT NULL DEFAULT FALSE,
       detachawayreason varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci,
       detachawayreasonenabled boolean NOT NULL DEFAULT FALSE,
       ident varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci,
       kickreason varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci,
       partreason varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci,
       quitreason varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci,
       sslcert BLOB,
       sslkey BLOB,
       PRIMARY KEY (identityid),
       UNIQUE KEY userid (userid, identityname),
       CONSTRAINT identity_ibfk_1 FOREIGN KEY (userid) REFERENCES quasseluser (userid) ON DELETE CASCADE
) ENGINE=InnoDB
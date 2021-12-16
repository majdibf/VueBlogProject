SET SCHEMA APP;

DROP TABLE M_USER;
DROP TABLE M_BLOG;

CREATE TABLE m_user (
id bigint NOT NULL GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),
username varchar(64) DEFAULT NULL,
avatar varchar(255) DEFAULT NULL,
email varchar(64) DEFAULT NULL,
password varchar(64) DEFAULT NULL,
status int NOT NULL,
created TIMESTAMP DEFAULT NULL,
last_login TIMESTAMP DEFAULT NULL,
PRIMARY KEY (id),
UNIQUE (username) ) ;


CREATE TABLE m_blog (
id bigint NOT NULL GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),
user_id bigint NOT NULL,
title varchar(255) NOT NULL,
description varchar(255) NOT NULL,
content CLOB,
created TIMESTAMP NOT NULL,
status SMALLINT DEFAULT NULL,
PRIMARY KEY (id)
);




-----------------------------
--Records of m_blog
-----------------------------
INSERT INTO m_blog VALUES
            (
                        default,
                        1,
                        'Life is like an ocean, only a strong-willed person can reach the other shore',
                        'Here is a summary hahaha',
                        'Content???',
                        '2020-05-21 22:08:42',
                        0
            );

INSERT INTO m_blog VALUES
            (
                        default,
                        1,
                        'The most worth learning blog project eblog',
                        'eblog is a blog learning project developed based on Springboot 2.1.2, in order to allow the project to integrate more knowledge points to achieve The purpose of study is to write a detailed development document from 0 to 1.',
                        '**Recommended reading:**\r\n\r\n[Share a set of SpringBoot development blog system source code , And complete development documentation! Speed ​​save!](https://mp.weixin.qq.com/s/jz6e977xP-OyaAKNjNca8w)\r\n\r\n[100 Java open source projects worth learning on Github, Covers various technology stacks!](https://mp.weixin.qq.com/s/N-U0TaEUXnBFfBsmt_OESQ)\r\n\r\n[2020 latest frequently asked enterprise interview questions and answers](https ://mp.weixin.qq.com/s/lR5LC5GnD2Gs59ecV5R0XA)',
                        '2020-05-28 09:36:38',
                        0
            );

INSERT INTO m_blog VALUES
            (
                        default,
                        1,
                        'Follow the official account JavaCat, reply to xshell or navicat to obtain the corresponding tool for cracking',
                        'Get the xshell and navicat used in the video directly!',
                        '### Tool acquisition\r\n\r\n* xshell 6 green cracked version: follow the official account: JavaCat, reply to xshell to get\r\n* Navicat 11 simplified Chinese version: follow the official account: JavaCat, reply to naavicat to get\r\n \r\n QR code of the official account:\r\n\r\n![JavaCat](//image-1300566513.cos.ap-guangzhou.myqcloud.com/upload/images/20201020/7fa16a1f957f4cfebe7be1f6675f6f36.png \" JavaCat\")\r\n\r\nScan the code directly to reply to the corresponding keyword\r\n\r\n**Recommended reading: **\r\n\r\n[86K playback volume at station B, SpringBoot +Vue front-end separation complete tutorial!](https://mp.weixin.qq.com/s/jGEkHTf2X8l-wUenc-PpEw)\r\n\r\n[Share a set of SpringBoot development blog system source code, and Complete development documentation! Speed ​​save!](https://mp.weixin.qq.com/s/jz6e977xP-OyaAKNjNca8w)\r\n\r\n[100 Java open source projects worth learning on Github, covering all Kind of technology stack!](https://mp.weixin.qq.com/s/N-U0TaEUXnBFfBsmt_OESQ)\r\n\r\n[2020 latest frequently asked enterprise interview questions and answers](https:/ /mp.weixin.qq.com/s/lR5LC5GnD2Gs59ecV5R0XA)',
                        '2020-10-20 05:05:31',
                        0
            );

INSERT INTO m_blog VALUES
            (
                        default,
                        1,
                        'Do you really know how to write singleton mode?',
                        'This article summarizes the common singleton pattern writing in Java. If there are any mistakes or omissions, please correct me.',
                        '> Author: Eat oranges Siege Lion Source: http://www.tekbroaden.com/singleton-java.html\n\n\nSingleton mode may be the mode with the least code, but less does not necessarily mean simple. If you want to use it well, It really takes a lot of brains to use the singleton pattern. This article summarizes the common singleton pattern writing in Java. If there are any errors or omissions, please correct me.\n\nHungry Chinese method\n=== \n\nAs the name suggests, the Hungry Chinese method is to create an object instance when the class is first referenced, regardless of whether it actually needs to be created. The code is as follows:\n\n\npublic class Singleton {\n private static Singleton = new Singleton();\n private Singleton() {)\n public static getSignleton(){\n return singleton;\n }\n)\n\n\n\nThe advantage of doing this is It is simple to write, but it is impossible to delay the creation of objects. However, we often hope that objects can be loaded as lazily as possible to reduce the load, so the following lazy method is needed:\n',
                        '2020-05-22 00:42:44',
                        0
            );

INSERT INTO m_blog VALUES
            (
                        default,
                        1,
                        'Really understand the four isolation levels of Mysql@',
                        'When all the steps are successfully executed, the transaction is committed. If one of the steps fails, a rollback operation will occur, and all operations from before the undo to the beginning of the transaction are undone.',
                        '### What is a transaction\n\n> A transaction is an application In a series of strict operations, all operations must be completed successfully, otherwise all changes made in each operation will be undone. That is to say, the transaction is atomic, and a series of operations in a transaction are either all successful or none Do.\n> \n> There are two types of transaction endings. When all the steps in the transaction are successfully executed, the transaction is committed. If one of the steps fails, a rollback operation will occur, and it is from before the undo to the beginning of the transaction. Operation.\n\n**ACID of transaction**\n\nTransaction has four characteristics: Atomicity, Consistency, Isolation and Durability. These four Features are referred to as ACID features for short.\n\n> 1. Atomicity. Transaction is the logical work unit of the database. All operations contained in the transaction are either done or not done\n> \n> 2. Consistency. Transaction. The result of execution must be to change the database from one consistency state to another consistency state. Therefore, when the database only contains the results of successful transaction submission, the database is said to be in a consistent state. If a failure occurs during the operation of the database system, some transactions It was forced to be interrupted before completion. Some of the modifications made to the database by these unfinished transactions have been written to the physical database. At this time, the database is in an incorrect or inconsistent state.',
                        '2020-05-22 22:04:46',
                        0
            );

-----------------------------
--Records of m_user
-----------------------------
INSERT
	INTO
	m_user
VALUES (default,
             'mbenfredj',
'https://www.pvsm.ru/images/2016/04/13/bolshoi-JVM-opros-versii-Java-alternativnye-JVM-yazyki-versii-Java-EE.png'
             ,
NULL,
'0000',
0,
'2020-04-20 10:44:01',
NULL);

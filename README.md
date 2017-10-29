# SMS

## Student Management System - NITC

## Follow the setup instructions below.
1.  Clone the Repository
    ```
    $ git clone https://github.com/krk2211/sms.git
    ```

2. Edit the dbconf.php file.

3. After setting up the database following steps 4-9, run the website from home.php.

4. Create a table of the users.
```sql
CREATE TABLE `members` (
  `id` char(23) NOT NULL,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `mod_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```

5. Create a table to keep track of the Login Attempts.
```sql
CREATE TABLE `loginAttempts` (
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `Username` varchar(65) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```


6. Use `<?php require "login/loginheader.php"; ?>` To require session usage.


## TO-Dos

- [ ] Setup Database

- [ ] Teacher Module

- [ ] Student Module

- [ ] Admin Module

- [ ] Mess Module

- [ ] Attendance Module



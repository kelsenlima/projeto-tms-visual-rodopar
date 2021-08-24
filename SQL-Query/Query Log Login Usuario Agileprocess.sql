/* INICIO DO SCRIPT 
 SCRIPT VISUAL RODOPAR  
 ## ID ......: 
 ## AUTOR ...: Kelsen Lima
 ## DATA ....: 06/07/2018 
*/

SELECT
c.last_read,
c.last_write, 
c.connect_time,
s.login_time,
s.host_name,
s.login_name
FROM sys.dm_exec_connections AS c
JOIN sys.dm_exec_sessions AS s ON c.session_id = s.session_id
WHERE s.login_name = 'agileprocess'
OR c.client_net_address = '54.207.102.230'
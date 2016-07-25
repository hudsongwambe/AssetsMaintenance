-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2016 at 03:40 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vtiger`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflows`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflows` (
  `workflow_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `test` text,
  `execution_condition` int(11) NOT NULL,
  `defaultworkflow` int(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `filtersavedinnew` int(1) DEFAULT NULL,
  `schtypeid` int(10) DEFAULT NULL,
  `schdayofmonth` varchar(100) DEFAULT NULL,
  `schdayofweek` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(100) DEFAULT NULL,
  `schtime` varchar(50) DEFAULT NULL,
  `nexttrigger_time` datetime DEFAULT NULL,
  PRIMARY KEY (`workflow_id`),
  UNIQUE KEY `com_vtiger_workflows_idx` (`workflow_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `com_vtiger_workflows`
--

INSERT INTO `com_vtiger_workflows` (`workflow_id`, `module_name`, `summary`, `test`, `execution_condition`, `defaultworkflow`, `type`, `filtersavedinnew`, `schtypeid`, `schdayofmonth`, `schdayofweek`, `schannualdates`, `schtime`, `nexttrigger_time`) VALUES
(1, 'Invoice', 'UpdateInventoryProducts On Every Save', '[{"fieldname":"subject","operation":"does not contain","value":"`!`"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Accounts', 'Send Email to user when Notifyowner is True', '[{"fieldname":"notify_owner","operation":"is","value":"true:boolean"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Contacts', 'Send Email to user when Notifyowner is True', '[{"fieldname":"notify_owner","operation":"is","value":"true:boolean"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Contacts', 'Send Email to user when Portal User is True', '[{"fieldname":"portal","operation":"is","value":"true:boolean"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Potentials', 'Send Email to users on Potential creation', NULL, 1, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Contacts', 'Workflow for Contact Creation or Modification', '', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'HelpDesk', 'Ticket Creation From Portal : Send Email to Record Owner and Contact', '[{"fieldname":"from_portal","operation":"is","value":1,"valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":0},{"fieldname":"from_portal","operation":"is","value":"1","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'HelpDesk', 'Send Email to Contact on Ticket Update', '[{"fieldname":"(contact_id : (Contacts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":0,"valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":0},{"fieldname":"ticketstatus","operation":"has changed to","value":"Closed","valuetype":"rawtext","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"solution","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"description","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Events', 'Workflow for Events when Send Notification is True', '[{"fieldname":"sendnotification","operation":"is","value":"true:boolean"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Calendar', 'Workflow for Calendar Todos when Send Notification is True', '[{"fieldname":"sendnotification","operation":"is","value":"true:boolean"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Potentials', 'Calculate or Update forecast amount', '', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Events', 'Workflow for Events when Send Notification is True', '[{"fieldname":"sendnotification","operation":"is","value":"true:boolean"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Calendar', 'Workflow for Calendar Todos when Send Notification is True', '[{"fieldname":"sendnotification","operation":"is","value":"true:boolean"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'HelpDesk', 'Comment Added From CRM : Send Email to Organization', '[{"fieldname":"_VT_add_comment","operation":"is added","value":"","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"(parent_id : (Accounts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'PurchaseOrder', 'Update Inventory Products On Every Save', NULL, 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'HelpDesk', 'Comment Added From Portal : Send Email to Record Owner', '[{"fieldname":"_VT_add_comment","operation":"is added","value":"","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"1","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'HelpDesk', 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User', '[{"fieldname":"(contact_id : (Contacts) portal)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"_VT_add_comment","operation":"is added","value":"","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"(contact_id : (Contacts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'HelpDesk', 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User', '[{"fieldname":"(contact_id : (Contacts) portal)","operation":"is","value":"1","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"_VT_add_comment","operation":"is added","value":"","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"(contact_id : (Contacts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'HelpDesk', 'Send Email to Record Owner on Ticket Update', '[{"fieldname":"from_portal","operation":"is","value":0,"valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":0},{"fieldname":"ticketstatus","operation":"has changed to","value":"Closed","valuetype":"rawtext","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"solution","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"assigned_user_id","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"description","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Record Owner', '[{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'HelpDesk', 'Send Email to Organization on Ticket Update', '[{"fieldname":"(parent_id : (Accounts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":0,"valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":0},{"fieldname":"ticketstatus","operation":"has changed to","value":"Closed","valuetype":"rawtext","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"solution","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"description","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Organization', '[{"fieldname":"(parent_id : (Accounts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Contact', '[{"fieldname":"(contact_id : (Contacts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflows_seq`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflows_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflows_seq`
--

INSERT INTO `com_vtiger_workflows_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_id` int(11) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `task` text,
  PRIMARY KEY (`task_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_idx` (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `com_vtiger_workflowtasks`
--

INSERT INTO `com_vtiger_workflowtasks` (`task_id`, `workflow_id`, `summary`, `task`) VALUES
(1, 1, '', 'O:18:"VTEntityMethodTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:1;s:7:"summary";s:0:"";s:6:"active";b:1;s:10:"methodName";s:15:"UpdateInventory";s:2:"id";i:1;}'),
(2, 2, 'An account has been created ', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:1:"2";s:7:"summary";s:28:"An account has been created ";s:6:"active";s:1:"1";s:10:"methodName";s:11:"NotifyOwner";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:26:"Regarding Account Creation";s:7:"content";s:301:"An Account has been assigned to you on vtigerCRM<br>Details of account are :<br><br>AccountId:<b>$account_no</b><br>AccountName:<b>$accountname</b><br>Rating:<b>$rating</b><br>Industry:<b>$industry</b><br>AccountType:<b>$accounttype</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin";s:2:"id";s:1:"2";}'),
(3, 3, 'An contact has been created ', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:1:"3";s:7:"summary";s:28:"An contact has been created ";s:6:"active";s:1:"1";s:10:"methodName";s:11:"NotifyOwner";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:26:"Regarding Contact Creation";s:7:"content";s:305:"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin";s:2:"id";s:1:"3";}'),
(4, 4, 'Email Customer Portal Login Details', 'O:18:"VTEntityMethodTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:4;s:7:"summary";s:35:"Email Customer Portal Login Details";s:6:"active";b:1;s:10:"methodName";s:22:"SendPortalLoginDetails";s:2:"id";i:4;}'),
(5, 5, 'An Potential has been created ', 'O:11:"VTEmailTask":8:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:1:"5";s:7:"summary";s:30:"An Potential has been created ";s:6:"active";s:1:"1";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:30:"Regarding Potential Assignment";s:7:"content";s:342:"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>$potential_no</b><br>Potential Name:<b>$potentialname</b><br>Amount:<b>$amount</b><br>Expected Close Date:<b>$closingdate ($_DATE_FORMAT_)</b><br>Type:<b>$opportunity_type</b><br><br><br>Description :$description<br><br>Thank You<br>Admin";s:2:"id";s:1:"5";}'),
(6, 6, 'An contact has been created ', 'O:11:"VTEmailTask":8:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:1:"6";s:7:"summary";s:28:"An contact has been created ";s:6:"active";s:1:"1";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:28:"Regarding Contact Assignment";s:7:"content";s:384:"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>And <b>CustomerPortal Login Details</b> is sent to the EmailID :-$email<br><br>Thank You<br>Admin";s:2:"id";s:1:"6";}'),
(7, 7, 'Notify Related Contact when Ticket is created from Portal', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:57:"Notify Related Contact when Ticket is created from Portal";s:6:"active";s:1:"1";s:2:"id";s:1:"7";s:10:"workflowId";s:1:"7";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:93:"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:161:"Ticket No : $ticket_no<br>\r\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\r\n							  Ticket Title : $ticket_title<br><br>\r\n							  $description";}'),
(10, 9, 'Send Email to Contact on Ticket Update', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:38:"Send Email to Contact on Ticket Update";s:6:"active";s:1:"1";s:2:"id";s:2:"10";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:636:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";s:10:"workflowId";s:1:"9";}'),
(13, 12, 'update forecast amount', 'O:18:"VTUpdateFieldsTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:12;s:7:"summary";s:22:"update forecast amount";s:6:"active";b:1;s:19:"field_value_mapping";s:95:"[{"fieldname":"forecast_amount","valuetype":"expression","value":"amount * probability / 100"}]";s:2:"id";i:13;}'),
(14, 13, 'Send Notification Email to Record Owner', 'O:11:"VTEmailTask":8:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:2:"13";s:7:"summary";s:39:"Send Notification Email to Record Owner";s:6:"active";s:1:"1";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:17:"Event :  $subject";s:7:"content";s:771:"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Activity Notification Details:</b><br/>Subject             : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($(general : (__VtigerMeta__) usertimezone)) <br/>Status              : $eventstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Location            : $location <br/>Description         : $description";s:2:"id";s:2:"14";}'),
(15, 14, 'Send Notification Email to Record Owner', 'O:11:"VTEmailTask":8:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:2:"14";s:7:"summary";s:39:"Send Notification Email to Record Owner";s:6:"active";s:1:"1";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:16:"Task :  $subject";s:7:"content";s:689:"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Task Notification Details:</b><br/>Subject : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($_DATE_FORMAT_) <br/>Status              : $taskstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Description         : $description";s:2:"id";s:2:"15";}'),
(18, 16, 'Update Inventory Products', 'O:18:"VTEntityMethodTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:16;s:7:"summary";s:25:"Update Inventory Products";s:6:"active";b:1;s:10:"methodName";s:15:"UpdateInventory";s:2:"id";i:18;}'),
(19, 17, 'Comment Added From Portal : Send Email to Record Owner', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:54:"Comment Added From Portal : Send Email to Record Owner";s:6:"active";s:1:"1";s:2:"id";s:2:"19";s:10:"workflowId";s:2:"17";s:9:"fromEmail";s:112:"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(contact_id : (Contacts) email)&gt;";s:9:"recepient";s:37:",$(assigned_user_id : (Users) email1)";s:7:"subject";s:92:"Respond to Ticket ID## $(general : (__VtigerMeta__) recordId) ## in Customer Portal - URGENT";s:7:"content";s:329:"Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								Customer has provided the following additional information to your reply:<br><br>\r\n								<b>$lastComment</b><br><br>\r\n								Kindly respond to above ticket at the earliest.<br><br>\r\n								Regards<br>Support Administrator";}'),
(20, 18, 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:82:"Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User";s:6:"active";s:1:"1";s:2:"id";s:2:"20";s:10:"workflowId";s:2:"18";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:525:"Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n							The Ticket is replied the details are :<br><br>\r\n							Ticket No : $ticket_no<br>\r\n							Status : $ticketstatus<br>\r\n							Category : $ticketcategories<br>\r\n							Severity : $ticketseverities<br>\r\n							Priority : $ticketpriorities<br><br>\r\n							Description : <br>$description<br><br>\r\n							Solution : <br>$solution<br>\r\n							The comments are : <br>\r\n							$allComments<br><br>\r\n							Regards<br>Support Administrator";}'),
(21, 19, 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:76:"Comment Added From CRM : Send Email to Contact, where Contact is Portal User";s:6:"active";s:1:"1";s:2:"id";s:2:"21";s:10:"workflowId";s:2:"19";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:554:"Ticket No : $ticket_no<br>\r\n										Ticket Id : $(general : (__VtigerMeta__) recordId)<br>\r\n										Subject : $ticket_title<br><br>\r\n										Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n										There is a reply to <b>$ticket_title</b> in the "Customer Portal" at VTiger.\r\n										You can use the following link to view the replies made:<br>\r\n										<a href="$(general : (__VtigerMeta__) portaldetailviewurl)">Ticket Details</a><br><br>\r\n										Thanks<br>$(general : (__VtigerMeta__) supportName)";}'),
(22, 15, 'Comment Added From CRM : Send Email to Organization', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:51:"Comment Added From CRM : Send Email to Organization";s:6:"active";s:1:"1";s:2:"id";s:2:"22";s:10:"workflowId";s:2:"15";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:34:",$(parent_id : (Accounts) email1),";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:601:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";}'),
(23, 7, 'Notify Record Owner when Ticket is created from Portal', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:54:"Notify Record Owner when Ticket is created from Portal";s:6:"active";s:1:"1";s:2:"id";s:2:"23";s:10:"workflowId";s:1:"7";s:9:"fromEmail";s:124:"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:37:",$(assigned_user_id : (Users) email1)";s:7:"subject";s:93:"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:161:"Ticket No : $ticket_no<br>\r\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\r\n							  Ticket Title : $ticket_title<br><br>\r\n							  $description";}'),
(24, 20, 'Send Email to Record Owner on Ticket Update', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:43:"Send Email to Record Owner on Ticket Update";s:6:"active";s:1:"1";s:2:"id";s:2:"24";s:10:"workflowId";s:2:"20";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:37:",$(assigned_user_id : (Users) email1)";s:7:"subject";s:40:"Ticket Number : $ticket_no $ticket_title";s:7:"content";s:607:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";}'),
(25, 21, 'Ticket Creation From CRM : Send Email to Record Owner', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:53:"Ticket Creation From CRM : Send Email to Record Owner";s:6:"active";s:1:"1";s:2:"id";s:2:"25";s:10:"workflowId";s:2:"21";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:37:",$(assigned_user_id : (Users) email1)";s:7:"subject";s:40:"Ticket Number : $ticket_no $ticket_title";s:7:"content";s:607:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";}'),
(26, 22, 'Send Email to Organization on Ticket Update', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:43:"Send Email to Organization on Ticket Update";s:6:"active";s:1:"1";s:2:"id";s:2:"26";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(parent_id : (Accounts) email1)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:601:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";s:10:"workflowId";s:2:"22";}'),
(27, 23, 'Ticket Creation From CRM : Send Email to Organization', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:53:"Ticket Creation From CRM : Send Email to Organization";s:6:"active";s:1:"1";s:2:"id";s:2:"27";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(parent_id : (Accounts) email1)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:601:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";s:10:"workflowId";s:2:"23";}'),
(28, 24, 'Ticket Creation From CRM : Send Email to Contact', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:48:"Ticket Creation From CRM : Send Email to Contact";s:6:"active";s:1:"1";s:2:"id";s:2:"28";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:636:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";s:10:"workflowId";s:2:"24";}');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_entitymethod` (
  `workflowtasks_entitymethod_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `method_name` varchar(100) DEFAULT NULL,
  `function_path` varchar(400) DEFAULT NULL,
  `function_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`workflowtasks_entitymethod_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_entitymethod_idx` (`workflowtasks_entitymethod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod` (`workflowtasks_entitymethod_id`, `module_name`, `method_name`, `function_path`, `function_name`) VALUES
(1, 'SalesOrder', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel'),
(2, 'Invoice', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel'),
(3, 'Contacts', 'SendPortalLoginDetails', 'modules/Contacts/ContactsHandler.php', 'Contacts_sendCustomerPortalLoginDetails'),
(4, 'HelpDesk', 'NotifyOnPortalTicketCreation', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_nofifyOnPortalTicketCreation'),
(5, 'HelpDesk', 'NotifyOnPortalTicketComment', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyOnPortalTicketComment'),
(6, 'HelpDesk', 'NotifyOwnerOnTicketChange', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyOwnerOnTicketChange'),
(7, 'HelpDesk', 'NotifyParentOnTicketChange', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyParentOnTicketChange'),
(8, 'ModComments', 'CustomerCommentFromPortal', 'modules/ModComments/ModCommentsHandler.php', 'CustomerCommentFromPortal'),
(9, 'ModComments', 'TicketOwnerComments', 'modules/ModComments/ModCommentsHandler.php', 'TicketOwnerComments'),
(10, 'PurchaseOrder', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod_seq`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_entitymethod_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod_seq`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_seq`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflowtasks_seq`
--

INSERT INTO `com_vtiger_workflowtasks_seq` (`id`) VALUES
(28);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtask_queue`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtask_queue` (
  `task_id` int(11) DEFAULT NULL,
  `entity_id` varchar(100) DEFAULT NULL,
  `do_after` int(11) DEFAULT NULL,
  `task_contents` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflowtask_queue`
--

INSERT INTO `com_vtiger_workflowtask_queue` (`task_id`, `entity_id`, `do_after`, `task_contents`) VALUES
(14, '18x18', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Event :  Meeting","content":"shio mosses ,<br\\/><b>Activity Notification Details:<\\/b><br\\/>Subject             : Meeting<br\\/>Start date and time : 30-06-2016 5:30 PM ((UTC+03:00) Nairobi)<br\\/>End date and time   : 21-07-2016 6:30 PM ((UTC+03:00) Nairobi) <br\\/>Status              : Planned <br\\/>Priority            :  <br\\/>Related To          :       <br\\/>Contacts List       :  <br\\/>Location            :  <br\\/>Description         : "}'),
(6, '12x21', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>mosses<\\/b><br>FirstName:<b>Mosses<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}'),
(6, '12x21', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>mosses<\\/b><br>FirstName:<b>Mosses<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}'),
(6, '12x21', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>mosses<\\/b><br>FirstName:<b>Mosses<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}'),
(6, '12x30', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON2<\\/b><br>LastName:<b>Elipokea<\\/b><br>FirstName:<b>Xhio<\\/b><br>Lead Source:<b><\\/b><br>Department:<b>CSE<\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-elipokeamosses@gmail.com<br><br>Thank You<br>Admin"}'),
(6, '12x33', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"joseph.f.henry@gmail.com, doreenpreseino2004@gmail.com, User1@gmail.com, user2@user2.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>Gwambe<\\/b><br>FirstName:<b>Hudson<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}'),
(6, '12x21', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>mosses<\\/b><br>FirstName:<b>Mosses<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-hudsonguambe@gmail.com<br><br>Thank You<br>Admin"}'),
(6, '12x33', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"joseph.f.henry@gmail.com, doreenpreseino2004@gmail.com, User1@gmail.com, hudsongwambe@hotmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>Gwambe<\\/b><br>FirstName:<b>Hudson<\\/b><br>Lead Source:<b><\\/b><br>Department:<b>CSE<\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-hudsonguambe@gmail.com<br><br>Thank You<br>Admin"}'),
(6, '12x21', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>mosses<\\/b><br>FirstName:<b>Mosses<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-hudsonguambe@gmail.com<br><br>Thank You<br>Admin"}'),
(6, '12x21', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>mosses<\\/b><br>FirstName:<b>Mosses<\\/b><br>Lead Source:<b><\\/b><br>Department:<b>CSE<\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-hudsonguambe@gmail.com<br><br>Thank You<br>Admin"}'),
(6, '12x33', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"joseph.f.henry@gmail.com, doreenpreseino2004@gmail.com, User1@gmail.com, hudsongwambe@hotmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>Gwambe<\\/b><br>FirstName:<b>Hudson<\\/b><br>Lead Source:<b><\\/b><br>Department:<b>CSE<\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-hudsonguambe@gmail.com<br><br>Thank You<br>Admin"}'),
(6, '12x21', 0, '{"fromEmail":"doreenpreseino2004@gmail.com","fromName":"shio","toEmail":"doreenpreseino2004@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>mosses<\\/b><br>FirstName:<b>Mosses<\\/b><br>Lead Source:<b><\\/b><br>Department:<b>CSE<\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-hudsonguambe@gmail.com<br><br>Thank You<br>Admin"}'),
(14, '18x57', 0, '{"fromEmail":"elipokeamosses@gmail.com","fromName":"shio","toEmail":"elipokeamosses@gmail.com","ccEmail":"","bccEmail":"","subject":"Event :  Meeting","content":"shio mosses ,<br\\/><b>Activity Notification Details:<\\/b><br\\/>Subject             : Meeting<br\\/>Start date and time : 07-07-2016 1:17 PM ((UTC+03:00) Nairobi)<br\\/>End date and time   : 09-07-2016 1:22 PM ((UTC+03:00) Nairobi) <br\\/>Status              : Planned <br\\/>Priority            :  <br\\/>Related To          :       <br\\/>Contacts List       :  <br\\/>Location            :  <br\\/>Description         : "}'),
(14, '18x57', 0, '{"fromEmail":"elipokeamosses@gmail.com","fromName":"shio","toEmail":"elipokeamosses@gmail.com","ccEmail":"","bccEmail":"","subject":"Event :  Meeting","content":"shio mosses ,<br\\/><b>Activity Notification Details:<\\/b><br\\/>Subject             : Meeting<br\\/>Start date and time : 07-07-2016 1:17 PM ((UTC+03:00) Nairobi)<br\\/>End date and time   : 07-07-2016 1:22 PM ((UTC+03:00) Nairobi) <br\\/>Status              : Planned <br\\/>Priority            :  <br\\/>Related To          :       <br\\/>Contacts List       :  <br\\/>Location            :  <br\\/>Description         : "}'),
(6, '12x21', 0, '{"fromEmail":"elipokeamosses@gmail.com","fromName":"shio","toEmail":"elipokeamosses@gmail.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>mosses<\\/b><br>FirstName:<b>Mosses<\\/b><br>Lead Source:<b><\\/b><br>Department:<b>CSE<\\/b><br>Description:<b>$description<\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-inocentvicent@gmail.com<br><br>Thank You<br>Admin"}');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtemplates`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtemplates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `title` varchar(400) DEFAULT NULL,
  `template` text,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_activatedonce`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflow_activatedonce` (
  `workflow_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY (`workflow_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_tasktypes`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflow_tasktypes` (
  `id` int(11) NOT NULL,
  `tasktypename` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `classpath` varchar(255) DEFAULT NULL,
  `templatepath` varchar(255) DEFAULT NULL,
  `modules` varchar(500) DEFAULT NULL,
  `sourcemodule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes`
--

INSERT INTO `com_vtiger_workflow_tasktypes` (`id`, `tasktypename`, `label`, `classname`, `classpath`, `templatepath`, `modules`, `sourcemodule`) VALUES
(1, 'VTEmailTask', 'Send Mail', 'VTEmailTask', 'modules/com_vtiger_workflow/tasks/VTEmailTask.inc', 'com_vtiger_workflow/taskforms/VTEmailTask.tpl', '{"include":[],"exclude":[]}', ''),
(2, 'VTEntityMethodTask', 'Invoke Custom Function', 'VTEntityMethodTask', 'modules/com_vtiger_workflow/tasks/VTEntityMethodTask.inc', 'com_vtiger_workflow/taskforms/VTEntityMethodTask.tpl', '{"include":[],"exclude":[]}', ''),
(3, 'VTCreateTodoTask', 'Create Todo', 'VTCreateTodoTask', 'modules/com_vtiger_workflow/tasks/VTCreateTodoTask.inc', 'com_vtiger_workflow/taskforms/VTCreateTodoTask.tpl', '{"include":["Leads","Accounts","Potentials","Contacts","HelpDesk","Campaigns","Quotes","PurchaseOrder","SalesOrder","Invoice"],"exclude":["Calendar","FAQ","Events"]}', ''),
(4, 'VTCreateEventTask', 'Create Event', 'VTCreateEventTask', 'modules/com_vtiger_workflow/tasks/VTCreateEventTask.inc', 'com_vtiger_workflow/taskforms/VTCreateEventTask.tpl', '{"include":["Leads","Accounts","Potentials","Contacts","HelpDesk","Campaigns"],"exclude":["Calendar","FAQ","Events"]}', ''),
(5, 'VTUpdateFieldsTask', 'Update Fields', 'VTUpdateFieldsTask', 'modules/com_vtiger_workflow/tasks/VTUpdateFieldsTask.inc', 'com_vtiger_workflow/taskforms/VTUpdateFieldsTask.tpl', '{"include":[],"exclude":[]}', ''),
(6, 'VTCreateEntityTask', 'Create Entity', 'VTCreateEntityTask', 'modules/com_vtiger_workflow/tasks/VTCreateEntityTask.inc', 'com_vtiger_workflow/taskforms/VTCreateEntityTask.tpl', '{"include":[],"exclude":[]}', ''),
(7, 'VTSMSTask', 'SMS Task', 'VTSMSTask', 'modules/com_vtiger_workflow/tasks/VTSMSTask.inc', 'com_vtiger_workflow/taskforms/VTSMSTask.tpl', '{"include":[],"exclude":[]}', 'SMSNotifier');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_tasktypes_seq`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflow_tasktypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes_seq`
--

INSERT INTO `com_vtiger_workflow_tasktypes_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_account`
--

CREATE TABLE IF NOT EXISTS `vtiger_account` (
  `accountid` int(19) NOT NULL DEFAULT '0',
  `account_no` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `parentid` int(19) DEFAULT '0',
  `account_type` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `annualrevenue` decimal(25,8) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `ownership` varchar(50) DEFAULT NULL,
  `siccode` varchar(50) DEFAULT NULL,
  `tickersymbol` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `otherphone` varchar(30) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `employees` int(10) DEFAULT '0',
  `emailoptout` varchar(3) DEFAULT '0',
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  PRIMARY KEY (`accountid`),
  KEY `account_account_type_idx` (`account_type`),
  KEY `email_idx` (`email1`,`email2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_account`
--

INSERT INTO `vtiger_account` (`accountid`, `account_no`, `accountname`, `parentid`, `account_type`, `industry`, `annualrevenue`, `rating`, `ownership`, `siccode`, `tickersymbol`, `phone`, `otherphone`, `email1`, `email2`, `website`, `fax`, `employees`, `emailoptout`, `notify_owner`, `isconvertedfromlead`) VALUES
(11, 'ACC1', 'UCC', 0, '', '', 0.00000000, '', '', '', '', '', '', '', '', '', '', 0, '0', '0', '0'),
(13, 'ACC2', 'CoICT', 0, '', '', 0.00000000, '', '', '', '', '', '', '', '', '', '', 0, '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountbillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_accountbillads` (
  `accountaddressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_accountbillads`
--

INSERT INTO `vtiger_accountbillads` (`accountaddressid`, `bill_city`, `bill_code`, `bill_country`, `bill_state`, `bill_street`, `bill_pobox`) VALUES
(11, '', '', '', '', '', ''),
(13, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountrating`
--

CREATE TABLE IF NOT EXISTS `vtiger_accountrating` (
  `accountratingid` int(19) NOT NULL AUTO_INCREMENT,
  `rating` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`accountratingid`),
  UNIQUE KEY `accountrating_rating_idx` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_accountscf` (
  `accountid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_accountscf`
--

INSERT INTO `vtiger_accountscf` (`accountid`) VALUES
(11),
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_accountshipads` (
  `accountaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_accountshipads`
--

INSERT INTO `vtiger_accountshipads` (`accountaddressid`, `ship_city`, `ship_code`, `ship_country`, `ship_state`, `ship_pobox`, `ship_street`) VALUES
(11, '', '', '', '', '', ''),
(13, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accounttype`
--

CREATE TABLE IF NOT EXISTS `vtiger_accounttype` (
  `accounttypeid` int(19) NOT NULL AUTO_INCREMENT,
  `accounttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`accounttypeid`),
  UNIQUE KEY `accounttype_accounttype_idx` (`accounttype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `vtiger_accounttype`
--

INSERT INTO `vtiger_accounttype` (`accounttypeid`, `accounttype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Analyst', 1, 2, 1),
(3, 'Competitor', 1, 3, 2),
(4, 'Customer', 1, 4, 3),
(5, 'Integrator', 1, 5, 4),
(6, 'Investor', 1, 6, 5),
(7, 'Partner', 1, 7, 6),
(8, 'Press', 1, 8, 7),
(9, 'Prospect', 1, 9, 8),
(10, 'Reseller', 1, 10, 9),
(11, 'Other', 1, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accounttype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_accounttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_accounttype_seq`
--

INSERT INTO `vtiger_accounttype_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_actionmapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_actionmapping` (
  `actionid` int(19) NOT NULL,
  `actionname` varchar(200) NOT NULL,
  `securitycheck` int(19) DEFAULT NULL,
  PRIMARY KEY (`actionid`,`actionname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_actionmapping`
--

INSERT INTO `vtiger_actionmapping` (`actionid`, `actionname`, `securitycheck`) VALUES
(0, 'Save', 0),
(0, 'SavePriceBook', 1),
(0, 'SaveVendor', 1),
(1, 'DetailViewAjax', 1),
(1, 'EditView', 0),
(1, 'PriceBookEditView', 1),
(1, 'QuickCreate', 1),
(1, 'VendorEditView', 1),
(2, 'Delete', 0),
(2, 'DeletePriceBook', 1),
(2, 'DeleteVendor', 1),
(3, 'index', 0),
(3, 'Popup', 1),
(4, 'DetailView', 0),
(4, 'PriceBookDetailView', 1),
(4, 'TagCloud', 1),
(4, 'VendorDetailView', 1),
(5, 'Import', 0),
(6, 'Export', 0),
(8, 'Merge', 0),
(9, 'ConvertLead', 0),
(10, 'DuplicatesHandling', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL,
  `semodule` varchar(20) DEFAULT NULL,
  `activitytype` varchar(200) NOT NULL,
  `date_start` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `time_start` varchar(50) DEFAULT NULL,
  `time_end` varchar(50) DEFAULT NULL,
  `sendnotification` varchar(3) NOT NULL DEFAULT '0',
  `duration_hours` varchar(200) DEFAULT NULL,
  `duration_minutes` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `eventstatus` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `notime` varchar(3) NOT NULL DEFAULT '0',
  `visibility` varchar(50) NOT NULL DEFAULT 'all',
  `recurringtype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`activityid`),
  KEY `activity_activityid_subject_idx` (`activityid`,`subject`),
  KEY `activity_activitytype_date_start_idx` (`activitytype`,`date_start`),
  KEY `activity_date_start_due_date_idx` (`date_start`,`due_date`),
  KEY `activity_date_start_time_start_idx` (`date_start`,`time_start`),
  KEY `activity_eventstatus_idx` (`eventstatus`),
  KEY `activity_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activity`
--

INSERT INTO `vtiger_activity` (`activityid`, `subject`, `semodule`, `activitytype`, `date_start`, `due_date`, `time_start`, `time_end`, `sendnotification`, `duration_hours`, `duration_minutes`, `status`, `eventstatus`, `priority`, `location`, `notime`, `visibility`, `recurringtype`) VALUES
(18, 'Meeting', NULL, 'Mobile Call', '2016-06-30', '2016-07-21', '14:30:00', '15:30:00', '1', '505', '0', NULL, 'Planned', '', '', '0', 'Public', '--None--'),
(34, 'hi', '', 'Emails', '2016-07-04', NULL, '07:02', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(35, 'Testing', '', 'Emails', '2016-07-04', NULL, '07:50', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(36, 'Testing', '', 'Emails', '2016-07-04', NULL, '07:50', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(38, 'hi', '', 'Emails', '2016-07-04', NULL, '07:53', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(41, 'hey', '', 'Emails', '2016-07-04', NULL, '07:57', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(42, 'hi', '', 'Emails', '2016-07-04', NULL, '08:21', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(43, 'now', '', 'Emails', '2016-07-04', NULL, '08:25', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(44, 'hi', '', 'Emails', '2016-07-04', NULL, '08:27', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(45, 'brother', '', 'Emails', '2016-07-05', NULL, '09:45', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL),
(57, 'Meeting', NULL, 'Meeting', '2016-07-07', '2016-07-07', '10:17:00', '10:22:00', '1', '0', '5', NULL, 'Planned', '', '', '0', 'Public', '--None--'),
(58, 'salam', '', 'Emails', '2016-07-10', NULL, '20:03', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitycf`
--

CREATE TABLE IF NOT EXISTS `vtiger_activitycf` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activitycf`
--

INSERT INTO `vtiger_activitycf` (`activityid`) VALUES
(18),
(57);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activityproductrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_activityproductrel` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  `productid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activityid`,`productid`),
  KEY `activityproductrel_activityid_idx` (`activityid`),
  KEY `activityproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitytype`
--

CREATE TABLE IF NOT EXISTS `vtiger_activitytype` (
  `activitytypeid` int(19) NOT NULL AUTO_INCREMENT,
  `activitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitytypeid`),
  UNIQUE KEY `activitytype_activitytype_idx` (`activitytype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_activitytype`
--

INSERT INTO `vtiger_activitytype` (`activitytypeid`, `activitytype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Call', 0, 12, 0),
(2, 'Meeting', 0, 13, 1),
(3, 'Mobile Call', 0, 295, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitytype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_activitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activitytype_seq`
--

INSERT INTO `vtiger_activitytype_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_reminder`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity_reminder` (
  `activity_id` int(11) NOT NULL,
  `reminder_time` int(11) NOT NULL,
  `reminder_sent` int(2) NOT NULL,
  `recurringid` int(19) NOT NULL,
  PRIMARY KEY (`activity_id`,`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activity_reminder`
--

INSERT INTO `vtiger_activity_reminder` (`activity_id`, `reminder_time`, `reminder_sent`, `recurringid`) VALUES
(57, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_reminder_popup`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity_reminder_popup` (
  `reminderid` int(19) NOT NULL AUTO_INCREMENT,
  `semodule` varchar(100) NOT NULL,
  `recordid` int(19) NOT NULL,
  `date_start` date NOT NULL,
  `time_start` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`reminderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_activity_reminder_popup`
--

INSERT INTO `vtiger_activity_reminder_popup` (`reminderid`, `semodule`, `recordid`, `date_start`, `time_start`, `status`) VALUES
(1, 'Events', 18, '2016-06-30', '14:30:00', 0),
(2, 'Events', 57, '2016-07-07', '10:17:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_view`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity_view` (
  `activity_viewid` int(19) NOT NULL AUTO_INCREMENT,
  `activity_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`activity_viewid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_activity_view`
--

INSERT INTO `vtiger_activity_view` (`activity_viewid`, `activity_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'This Week', 1, 1),
(3, 'This Month', 2, 1),
(4, 'This Year', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_view_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activity_view_seq`
--

INSERT INTO `vtiger_activity_view_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_announcement`
--

CREATE TABLE IF NOT EXISTS `vtiger_announcement` (
  `creatorid` int(19) NOT NULL,
  `announcement` text,
  `title` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`creatorid`),
  KEY `announcement_creatorid_idx` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_announcement`
--

INSERT INTO `vtiger_announcement` (`creatorid`, `announcement`, `title`, `time`) VALUES
(5, 'today is a public dau', 'announcement', '2016-07-07 11:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assets`
--

CREATE TABLE IF NOT EXISTS `vtiger_assets` (
  `assetsid` int(11) NOT NULL,
  `asset_no` varchar(30) NOT NULL,
  `account` int(19) DEFAULT NULL,
  `product` int(19) NOT NULL,
  `serialnumber` varchar(200) DEFAULT NULL,
  `datesold` date DEFAULT NULL,
  `dateinservice` date DEFAULT NULL,
  `assetstatus` varchar(200) DEFAULT 'In Service',
  `tagnumber` varchar(300) DEFAULT NULL,
  `invoiceid` int(19) DEFAULT NULL,
  `shippingmethod` varchar(200) DEFAULT NULL,
  `shippingtrackingnumber` varchar(200) DEFAULT NULL,
  `assetname` varchar(100) DEFAULT NULL,
  `contact` int(19) DEFAULT NULL,
  PRIMARY KEY (`assetsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_assets`
--

INSERT INTO `vtiger_assets` (`assetsid`, `asset_no`, `account`, `product`, `serialnumber`, `datesold`, `dateinservice`, `assetstatus`, `tagnumber`, `invoiceid`, `shippingmethod`, `shippingtrackingnumber`, `assetname`, `contact`) VALUES
(12, 'ASSET1', 11, 5, 'FUR01', '2016-06-19', '2016-07-27', 'In Service', '34ER', NULL, NULL, NULL, 'Table', NULL),
(14, 'ASSET2', 13, 2, 'BLOCK A', '2016-06-30', '2016-06-26', 'In Service', '12', NULL, NULL, NULL, 'Administration Block', NULL),
(15, 'ASSET3', 13, 3, 'TA342', '2016-07-10', '2016-06-30', 'In Service', '123', NULL, NULL, NULL, 'Integrated circuit', NULL),
(16, 'ASSET4', 13, 4, '345', '2016-09-13', '2016-06-26', 'Out-of-service', '87', NULL, NULL, NULL, 'Pipes', NULL),
(17, 'ASSET5', 13, 5, 'FUR04', '2016-09-15', '2016-07-20', 'Schedulled', '564', NULL, NULL, NULL, 'Chair', NULL),
(53, 'ASSET6', 11, 2, 'BLOCK C', '2016-07-21', '2016-07-23', 'Out-of-service', '', NULL, NULL, NULL, 'Building', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_assetscf` (
  `assetsid` int(19) NOT NULL,
  `cf_723` varchar(255) DEFAULT '',
  `cf_733` varchar(50) DEFAULT '',
  `cf_749` varchar(255) DEFAULT '',
  `cf_787` varchar(255) DEFAULT '',
  PRIMARY KEY (`assetsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_assetscf`
--

INSERT INTO `vtiger_assetscf` (`assetsid`, `cf_723`, `cf_733`, `cf_749`, `cf_787`) VALUES
(12, 'Furnitures', '', '', ''),
(14, 'Buildings', '', 'Corrective Maintenance', 'Kijitonyama Campus'),
(15, 'Components', '', '', ''),
(16, 'Fixtures', '', '', ''),
(17, 'Furnitures', '', '', ''),
(53, 'Buildings', '5', 'Periodic Maintenance', 'Kijitonyama Campus');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_assetstatus` (
  `assetstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `assetstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`assetstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_assetstatus`
--

INSERT INTO `vtiger_assetstatus` (`assetstatusid`, `assetstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'In Service', 1, 235, 1),
(2, 'Out-of-service', 1, 236, 2),
(3, 'Schedulled', 1, 301, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_assetstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_assetstatus_seq`
--

INSERT INTO `vtiger_assetstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asterisk`
--

CREATE TABLE IF NOT EXISTS `vtiger_asterisk` (
  `server` varchar(30) DEFAULT NULL,
  `port` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskextensions`
--

CREATE TABLE IF NOT EXISTS `vtiger_asteriskextensions` (
  `userid` int(11) DEFAULT NULL,
  `asterisk_extension` varchar(50) DEFAULT NULL,
  `use_asterisk` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_asteriskextensions`
--

INSERT INTO `vtiger_asteriskextensions` (`userid`, `asterisk_extension`, `use_asterisk`) VALUES
(1, NULL, NULL),
(5, NULL, NULL),
(11, NULL, NULL),
(12, NULL, NULL),
(13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskincomingcalls`
--

CREATE TABLE IF NOT EXISTS `vtiger_asteriskincomingcalls` (
  `from_number` varchar(50) DEFAULT NULL,
  `from_name` varchar(50) DEFAULT NULL,
  `to_number` varchar(50) DEFAULT NULL,
  `callertype` varchar(30) DEFAULT NULL,
  `flag` int(19) DEFAULT NULL,
  `timer` int(19) DEFAULT NULL,
  `refuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskincomingevents`
--

CREATE TABLE IF NOT EXISTS `vtiger_asteriskincomingevents` (
  `uid` varchar(255) NOT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `from_number` bigint(20) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `to_number` bigint(20) DEFAULT NULL,
  `callertype` varchar(100) DEFAULT NULL,
  `timer` int(20) DEFAULT NULL,
  `flag` varchar(3) DEFAULT NULL,
  `pbxrecordid` int(19) DEFAULT NULL,
  `relcrmid` int(19) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachments`
--

CREATE TABLE IF NOT EXISTS `vtiger_attachments` (
  `attachmentsid` int(19) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `type` varchar(100) DEFAULT NULL,
  `path` text,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attachmentsid`),
  KEY `attachments_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_attachments`
--

INSERT INTO `vtiger_attachments` (`attachmentsid`, `name`, `description`, `type`, `path`, `subject`) VALUES
(20, 'Building.xls', NULL, 'application/vnd.ms-excel', 'storage/2016/June/week4/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachmentsfolder`
--

CREATE TABLE IF NOT EXISTS `vtiger_attachmentsfolder` (
  `folderid` int(19) NOT NULL AUTO_INCREMENT,
  `foldername` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `createdby` int(19) NOT NULL,
  `sequence` int(19) DEFAULT NULL,
  PRIMARY KEY (`folderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vtiger_attachmentsfolder`
--

INSERT INTO `vtiger_attachmentsfolder` (`folderid`, `foldername`, `description`, `createdby`, `sequence`) VALUES
(1, 'Default', 'This is a Default Folder', 1, 1),
(2, 'Buildings', 'Reports related to Buildings', 5, 2),
(3, 'Furnitures', 'Reports related to Furnitures', 5, 3),
(4, 'Components', 'Reports related to Components', 5, 4),
(5, 'Fixtures', 'Reports related to Fixtures', 5, 5),
(6, 'Laboratory Equipments', 'Reports related to Laboratory Equip.', 5, 6),
(7, 'Machinery', 'Reports related to Machinery', 5, 7),
(8, 'Office Equipments', 'Reports related to Office Equip.', 5, 8),
(9, 'Softwares', 'Reports related to Softwares', 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachmentsfolder_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_attachmentsfolder_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_attachmentsfolder_seq`
--

INSERT INTO `vtiger_attachmentsfolder_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_audit_trial`
--

CREATE TABLE IF NOT EXISTS `vtiger_audit_trial` (
  `auditid` int(19) NOT NULL,
  `userid` int(19) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `recordid` varchar(20) DEFAULT NULL,
  `actiondate` datetime DEFAULT NULL,
  PRIMARY KEY (`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_blocks`
--

CREATE TABLE IF NOT EXISTS `vtiger_blocks` (
  `blockid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `blocklabel` varchar(100) NOT NULL,
  `sequence` int(10) DEFAULT NULL,
  `show_title` int(2) DEFAULT NULL,
  `visible` int(2) NOT NULL DEFAULT '0',
  `create_view` int(2) NOT NULL DEFAULT '0',
  `edit_view` int(2) NOT NULL DEFAULT '0',
  `detail_view` int(2) NOT NULL DEFAULT '0',
  `display_status` int(1) NOT NULL DEFAULT '1',
  `iscustom` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blockid`),
  KEY `block_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_blocks`
--

INSERT INTO `vtiger_blocks` (`blockid`, `tabid`, `blocklabel`, `sequence`, `show_title`, `visible`, `create_view`, `edit_view`, `detail_view`, `display_status`, `iscustom`) VALUES
(1, 2, 'LBL_OPPORTUNITY_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(2, 2, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(3, 2, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(4, 4, 'LBL_CONTACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(5, 4, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(6, 4, 'LBL_CUSTOMER_PORTAL_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(7, 4, 'LBL_ADDRESS_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(8, 4, 'LBL_DESCRIPTION_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(9, 6, 'LBL_ACCOUNT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(10, 6, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(11, 6, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(12, 6, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(13, 7, 'LBL_LEAD_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(14, 7, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(15, 7, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(16, 7, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(17, 8, 'LBL_NOTE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(18, 8, 'LBL_FILE_INFORMATION', 2, 1, 0, 0, 0, 0, 1, 0),
(19, 9, 'LBL_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(20, 9, 'LBL_DESCRIPTION_INFORMATION', 2, 1, 0, 0, 0, 0, 1, 0),
(21, 10, 'LBL_EMAIL_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(22, 10, 'Emails_Block1', 2, 1, 0, 0, 0, 0, 1, 0),
(23, 10, 'Emails_Block2', 3, 1, 0, 0, 0, 0, 1, 0),
(24, 10, 'Emails_Block3', 4, 1, 0, 0, 0, 0, 1, 0),
(25, 13, 'LBL_TICKET_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(26, 13, '', 2, 1, 0, 0, 0, 0, 1, 0),
(27, 13, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(28, 13, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(29, 13, 'LBL_TICKET_RESOLUTION', 5, 0, 0, 1, 0, 0, 1, 0),
(30, 13, 'LBL_COMMENTS', 6, 0, 0, 1, 0, 0, 1, 0),
(31, 14, 'LBL_PRODUCT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(32, 14, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(33, 14, 'LBL_STOCK_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(34, 14, 'LBL_CUSTOM_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(35, 14, 'LBL_IMAGE_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(36, 14, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(37, 15, 'LBL_FAQ_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(38, 15, 'LBL_COMMENT_INFORMATION', 4, 0, 0, 1, 0, 0, 1, 0),
(39, 16, 'LBL_EVENT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(40, 16, 'LBL_REMINDER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(41, 16, 'LBL_DESCRIPTION_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(42, 18, 'LBL_VENDOR_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(43, 18, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(44, 18, 'LBL_VENDOR_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(45, 18, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(46, 19, 'LBL_PRICEBOOK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(47, 19, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(48, 19, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(49, 20, 'LBL_QUOTE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(50, 20, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(51, 20, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(52, 20, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(53, 20, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(54, 20, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(55, 21, 'LBL_PO_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(56, 21, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(57, 21, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(58, 21, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(59, 21, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(60, 21, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(61, 22, 'LBL_SO_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(62, 22, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(63, 22, 'LBL_ADDRESS_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(64, 22, 'LBL_RELATED_PRODUCTS', 5, 0, 0, 0, 0, 0, 1, 0),
(65, 22, 'LBL_TERMS_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(66, 22, 'LBL_DESCRIPTION_INFORMATION', 7, 0, 0, 0, 0, 0, 1, 0),
(67, 23, 'LBL_INVOICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(68, 23, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(69, 23, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(70, 23, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(71, 23, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(72, 23, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(73, 4, 'LBL_IMAGE_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(74, 26, 'LBL_CAMPAIGN_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(75, 26, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(76, 26, 'LBL_EXPECTATIONS_AND_ACTUALS', 3, 0, 0, 0, 0, 0, 1, 0),
(77, 29, 'LBL_USERLOGIN_ROLE', 1, 0, 0, 0, 0, 0, 1, 0),
(78, 29, 'LBL_CURRENCY_CONFIGURATION', 3, 0, 0, 0, 0, 0, 1, 0),
(79, 29, 'LBL_MORE_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(80, 29, 'LBL_ADDRESS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(81, 26, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(82, 29, 'LBL_USER_IMAGE_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(83, 29, 'LBL_USER_ADV_OPTIONS', 6, 0, 0, 0, 0, 0, 1, 0),
(84, 8, 'LBL_DESCRIPTION', 3, 0, 0, 0, 0, 0, 1, 0),
(85, 22, 'Recurring Invoice Information', 2, 0, 0, 0, 0, 0, 1, 0),
(86, 9, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(87, 16, 'LBL_CUSTOM_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(88, 31, 'LBL_SERVICE_CONTRACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(89, 31, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(90, 36, 'LBL_PBXMANAGER_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(91, 37, 'LBL_SERVICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(92, 37, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(93, 37, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(94, 37, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(95, 39, 'LBL_ASSET_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(96, 39, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(97, 39, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(98, 42, 'LBL_SMSNOTIFIER_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(99, 42, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(100, 42, 'StatusInformation', 3, 0, 0, 0, 0, 0, 1, 0),
(101, 43, 'LBL_MODCOMMENTS_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(102, 43, 'LBL_OTHER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(103, 43, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(104, 44, 'LBL_PROJECT_MILESTONE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(105, 44, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(106, 44, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(107, 45, 'LBL_PROJECT_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(108, 45, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(109, 45, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(110, 46, 'LBL_PROJECT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(111, 46, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(112, 46, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(113, 23, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(114, 22, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(115, 21, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(116, 20, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(117, 16, 'LBL_RECURRENCE_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(118, 29, 'LBL_CALENDAR_SETTINGS', 2, 0, 0, 0, 0, 0, 1, 0),
(119, 16, 'LBL_RELATED_TO', 4, 0, 0, 0, 0, 0, 1, 0),
(120, 39, 'FILTER', 2, 0, 0, 0, 0, 0, 1, 1),
(121, 50, 'MAINTENANCE INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(122, 50, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(123, 51, 'VALUATION INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(124, 51, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(125, 50, 'REHABILITATION OR RENOVATION', 2, 0, 0, 0, 0, 0, 1, 1),
(126, 51, 'FIELD FOR BUILDING', 2, 0, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_blocks_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_blocks_seq`
--

INSERT INTO `vtiger_blocks_seq` (`id`) VALUES
(126);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendarsharedtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendarsharedtype` (
  `calendarsharedtypeid` int(11) NOT NULL AUTO_INCREMENT,
  `calendarsharedtype` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`calendarsharedtypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_calendarsharedtype`
--

INSERT INTO `vtiger_calendarsharedtype` (`calendarsharedtypeid`, `calendarsharedtype`, `sortorderid`, `presence`) VALUES
(1, 'public', 1, 1),
(2, 'private', 2, 1),
(3, 'seletedusers', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendarsharedtype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendarsharedtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_calendarsharedtype_seq`
--

INSERT INTO `vtiger_calendarsharedtype_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_default_activitytypes`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendar_default_activitytypes` (
  `id` int(19) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  `defaultcolor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_user_activitytypes`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendar_user_activitytypes` (
  `id` int(19) NOT NULL,
  `defaultid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_callduration`
--

CREATE TABLE IF NOT EXISTS `vtiger_callduration` (
  `calldurationid` int(11) NOT NULL AUTO_INCREMENT,
  `callduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`calldurationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_callduration`
--

INSERT INTO `vtiger_callduration` (`calldurationid`, `callduration`, `sortorderid`, `presence`) VALUES
(1, '5', 1, 1),
(2, '10', 2, 1),
(3, '30', 3, 1),
(4, '60', 4, 1),
(5, '120', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_callduration_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_callduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_callduration_seq`
--

INSERT INTO `vtiger_callduration_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaign`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaign` (
  `campaign_no` varchar(100) NOT NULL,
  `campaignname` varchar(255) DEFAULT NULL,
  `campaigntype` varchar(200) DEFAULT NULL,
  `campaignstatus` varchar(200) DEFAULT NULL,
  `expectedrevenue` decimal(25,8) DEFAULT NULL,
  `budgetcost` decimal(25,8) DEFAULT NULL,
  `actualcost` decimal(25,8) DEFAULT NULL,
  `expectedresponse` varchar(200) DEFAULT NULL,
  `numsent` decimal(11,0) DEFAULT NULL,
  `product_id` int(19) DEFAULT NULL,
  `sponsor` varchar(255) DEFAULT NULL,
  `targetaudience` varchar(255) DEFAULT NULL,
  `targetsize` int(19) DEFAULT NULL,
  `expectedresponsecount` int(19) DEFAULT NULL,
  `expectedsalescount` int(19) DEFAULT NULL,
  `expectedroi` decimal(25,8) DEFAULT NULL,
  `actualresponsecount` int(19) DEFAULT NULL,
  `actualsalescount` int(19) DEFAULT NULL,
  `actualroi` decimal(25,8) DEFAULT NULL,
  `campaignid` int(19) NOT NULL,
  `closingdate` date DEFAULT NULL,
  PRIMARY KEY (`campaignid`),
  KEY `campaign_campaignstatus_idx` (`campaignstatus`),
  KEY `campaign_campaignname_idx` (`campaignname`),
  KEY `campaign_campaignid_idx` (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignaccountrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignaccountrel` (
  `campaignid` int(19) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `campaignrelstatusid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigncontrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaigncontrel` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  `contactid` int(19) NOT NULL DEFAULT '0',
  `campaignrelstatusid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`,`contactid`,`campaignrelstatusid`),
  KEY `campaigncontrel_contractid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignleadrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignleadrel` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  `leadid` int(19) NOT NULL DEFAULT '0',
  `campaignrelstatusid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`,`leadid`,`campaignrelstatusid`),
  KEY `campaignleadrel_leadid_campaignid_idx` (`leadid`,`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignrelstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignrelstatus` (
  `campaignrelstatusid` int(19) DEFAULT NULL,
  `campaignrelstatus` varchar(256) DEFAULT NULL,
  `sortorderid` int(19) DEFAULT NULL,
  `presence` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaignrelstatus`
--

INSERT INTO `vtiger_campaignrelstatus` (`campaignrelstatusid`, `campaignrelstatus`, `sortorderid`, `presence`) VALUES
(2, 'Contacted - Successful', 1, 1),
(3, 'Contacted - Unsuccessful', 2, 1),
(4, 'Contacted - Never Contact Again', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignrelstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignrelstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaignrelstatus_seq`
--

INSERT INTO `vtiger_campaignrelstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignscf` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignstatus` (
  `campaignstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `campaignstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaignstatusid`),
  KEY `campaignstatus_campaignstatus_idx` (`campaignstatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_campaignstatus`
--

INSERT INTO `vtiger_campaignstatus` (`campaignstatusid`, `campaignstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Planning', 1, 15, 1),
(3, 'Active', 1, 16, 2),
(4, 'Inactive', 1, 17, 3),
(5, 'Completed', 1, 18, 4),
(6, 'Cancelled', 1, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaignstatus_seq`
--

INSERT INTO `vtiger_campaignstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigntype`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaigntype` (
  `campaigntypeid` int(19) NOT NULL AUTO_INCREMENT,
  `campaigntype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaigntypeid`),
  UNIQUE KEY `campaigntype_campaigntype_idx` (`campaigntype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `vtiger_campaigntype`
--

INSERT INTO `vtiger_campaigntype` (`campaigntypeid`, `campaigntype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Conference', 1, 21, 1),
(3, 'Webinar', 1, 22, 2),
(4, 'Trade Show', 1, 23, 3),
(5, 'Public Relations', 1, 24, 4),
(6, 'Partners', 1, 25, 5),
(7, 'Referral Program', 1, 26, 6),
(8, 'Advertisement', 1, 27, 7),
(9, 'Banner Ads', 1, 28, 8),
(10, 'Direct Mail', 1, 29, 9),
(11, 'Email', 1, 30, 10),
(12, 'Telemarketing', 1, 31, 11),
(13, 'Others', 1, 32, 12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigntype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaigntype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaigntype_seq`
--

INSERT INTO `vtiger_campaigntype_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_carrier`
--

CREATE TABLE IF NOT EXISTS `vtiger_carrier` (
  `carrierid` int(19) NOT NULL AUTO_INCREMENT,
  `carrier` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`carrierid`),
  UNIQUE KEY `carrier_carrier_idx` (`carrier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_carrier`
--

INSERT INTO `vtiger_carrier` (`carrierid`, `carrier`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'FedEx', 1, 33, 0),
(2, 'UPS', 1, 34, 1),
(3, 'USPS', 1, 35, 2),
(4, 'DHL', 1, 36, 3),
(5, 'BlueDart', 1, 37, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_carrier_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_carrier_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_carrier_seq`
--

INSERT INTO `vtiger_carrier_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_723`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_723` (
  `cf_723id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_723` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_723id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vtiger_cf_723`
--

INSERT INTO `vtiger_cf_723` (`cf_723id`, `cf_723`, `sortorderid`, `presence`) VALUES
(1, 'Buildings', 1, 1),
(2, 'Components', 2, 1),
(3, 'Fixtures', 3, 1),
(4, 'Furnitures', 4, 1),
(5, 'Laboratory Equipments', 5, 1),
(6, 'Machinery', 6, 1),
(7, 'Office Equipments', 7, 1),
(8, 'Softwares', 8, 1),
(9, 'Vehicles', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_723_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_723_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_723_seq`
--

INSERT INTO `vtiger_cf_723_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_741`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_741` (
  `cf_741id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_741` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_741id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `vtiger_cf_741`
--

INSERT INTO `vtiger_cf_741` (`cf_741id`, `cf_741`, `sortorderid`, `presence`) VALUES
(1, 'Office', 1, 1),
(2, 'Class', 2, 1),
(3, 'Laboratory', 3, 1),
(4, 'Store', 4, 1),
(5, 'Staff House', 5, 1),
(6, 'Teaching Facility', 6, 1),
(7, 'Special Building', 7, 1),
(8, 'Covered walkway', 8, 1),
(9, 'Staff House Low Level', 9, 1),
(10, 'Staff House Medium Level', 10, 1),
(11, 'Staff House High Level', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_741_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_741_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_741_seq`
--

INSERT INTO `vtiger_cf_741_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_749`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_749` (
  `cf_749id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_749` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_749id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_cf_749`
--

INSERT INTO `vtiger_cf_749` (`cf_749id`, `cf_749`, `sortorderid`, `presence`) VALUES
(1, 'Corrective Maintenance', 1, 1),
(2, 'Preventive Maintenance', 2, 1),
(3, 'Predictive Maintenance', 3, 1),
(4, 'Periodic Maintenance', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_749_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_749_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_749_seq`
--

INSERT INTO `vtiger_cf_749_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_757`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_757` (
  `cf_757id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_757` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_757id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_cf_757`
--

INSERT INTO `vtiger_cf_757` (`cf_757id`, `cf_757`, `sortorderid`, `presence`) VALUES
(1, 'Teaching Facility', 1, 1),
(2, 'Covered Walkway', 2, 1),
(3, 'Special Building', 3, 1),
(4, 'Staff House Low Level', 4, 1),
(5, 'Staff House High Level', 5, 1),
(6, 'Staff House Medium Level', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_757_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_757_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_757_seq`
--

INSERT INTO `vtiger_cf_757_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_765`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_765` (
  `cf_765id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_765` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_765id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_cf_765`
--

INSERT INTO `vtiger_cf_765` (`cf_765id`, `cf_765`, `sortorderid`, `presence`) VALUES
(1, 'Teaching Facility', 1, 1),
(2, 'Student Facility', 2, 1),
(3, 'Student House', 3, 1),
(4, 'Others', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_765_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_765_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_765_seq`
--

INSERT INTO `vtiger_cf_765_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_783`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_783` (
  `cf_783id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_783` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_783id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vtiger_cf_783`
--

INSERT INTO `vtiger_cf_783` (`cf_783id`, `cf_783`, `sortorderid`, `presence`) VALUES
(1, 'Laboratory Equipments', 1, 1),
(2, 'Office Equipments', 2, 1),
(3, 'Softwares', 3, 1),
(4, 'Components', 4, 1),
(5, 'Buildings', 5, 1),
(6, 'Furnitures', 6, 1),
(7, 'Fixtures', 7, 1),
(8, 'Vehicles', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_783_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_783_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_783_seq`
--

INSERT INTO `vtiger_cf_783_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_787`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_787` (
  `cf_787id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_787` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_787id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_cf_787`
--

INSERT INTO `vtiger_cf_787` (`cf_787id`, `cf_787`, `sortorderid`, `presence`) VALUES
(1, 'Kijitonyama Campus', 1, 1),
(2, 'MJKN Campus ', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_787_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_787_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_787_seq`
--

INSERT INTO `vtiger_cf_787_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_789`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_789` (
  `cf_789id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_789` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_789id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vtiger_cf_789`
--

INSERT INTO `vtiger_cf_789` (`cf_789id`, `cf_789`, `sortorderid`, `presence`) VALUES
(1, 'Buildings', 1, 1),
(2, 'Furnitures', 2, 1),
(3, 'Fixtures', 3, 1),
(4, 'Vehicles', 4, 1),
(5, 'Components', 5, 1),
(6, 'Laboratory Equipments', 6, 1),
(7, 'Office Equipments', 7, 1),
(8, 'Softwares', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_789_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_789_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_789_seq`
--

INSERT INTO `vtiger_cf_789_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_791`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_791` (
  `cf_791id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_791` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_791id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_cf_791`
--

INSERT INTO `vtiger_cf_791` (`cf_791id`, `cf_791`, `sortorderid`, `presence`) VALUES
(1, 'K/Nyama campusc', 1, 1),
(2, 'MJKNY Campus', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_791_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_791_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_791_seq`
--

INSERT INTO `vtiger_cf_791_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_795`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_795` (
  `cf_795id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_795` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cf_795id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_cf_795`
--

INSERT INTO `vtiger_cf_795` (`cf_795id`, `cf_795`, `sortorderid`, `presence`) VALUES
(1, 'Kijitonyama Campus', 1, 1),
(2, 'MJKN Campus', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cf_795_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_cf_795_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cf_795_seq`
--

INSERT INTO `vtiger_cf_795_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cntactivityrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_cntactivityrel` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`,`activityid`),
  KEY `cntactivityrel_contactid_idx` (`contactid`),
  KEY `cntactivityrel_activityid_idx` (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactaddress`
--

CREATE TABLE IF NOT EXISTS `vtiger_contactaddress` (
  `contactaddressid` int(19) NOT NULL DEFAULT '0',
  `mailingcity` varchar(40) DEFAULT NULL,
  `mailingstreet` varchar(250) DEFAULT NULL,
  `mailingcountry` varchar(40) DEFAULT NULL,
  `othercountry` varchar(30) DEFAULT NULL,
  `mailingstate` varchar(30) DEFAULT NULL,
  `mailingpobox` varchar(30) DEFAULT NULL,
  `othercity` varchar(40) DEFAULT NULL,
  `otherstate` varchar(50) DEFAULT NULL,
  `mailingzip` varchar(30) DEFAULT NULL,
  `otherzip` varchar(30) DEFAULT NULL,
  `otherstreet` varchar(250) DEFAULT NULL,
  `otherpobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`contactaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contactaddress`
--

INSERT INTO `vtiger_contactaddress` (`contactaddressid`, `mailingcity`, `mailingstreet`, `mailingcountry`, `othercountry`, `mailingstate`, `mailingpobox`, `othercity`, `otherstate`, `mailingzip`, `otherzip`, `otherstreet`, `otherpobox`) VALUES
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_contactdetails` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `contact_no` varchar(100) NOT NULL,
  `accountid` int(19) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(80) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `reportsto` varchar(30) DEFAULT NULL,
  `training` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `contacttype` varchar(50) DEFAULT NULL,
  `otheremail` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `donotcall` varchar(3) DEFAULT NULL,
  `emailoptout` varchar(3) DEFAULT '0',
  `imagename` varchar(150) DEFAULT NULL,
  `reference` varchar(3) DEFAULT NULL,
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  PRIMARY KEY (`contactid`),
  KEY `contactdetails_accountid_idx` (`accountid`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contactdetails`
--

INSERT INTO `vtiger_contactdetails` (`contactid`, `contact_no`, `accountid`, `salutation`, `firstname`, `lastname`, `email`, `phone`, `mobile`, `title`, `department`, `fax`, `reportsto`, `training`, `usertype`, `contacttype`, `otheremail`, `secondaryemail`, `donotcall`, `emailoptout`, `imagename`, `reference`, `notify_owner`, `isconvertedfromlead`) VALUES
(21, 'CON1', 13, 'Mr.', 'Mosses', 'mosses', 'inocentvicent@gmail.com', '', '+255789025030', '', 'CSE', '', '0', NULL, NULL, NULL, NULL, '', '0', '0', '', '0', '0', '0'),
(30, 'CON2', 13, 'Mr.', 'Xhio', 'Elipokea', 'elipokeamosses@gmail.com', '+22123', '+255789025030', NULL, 'CSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', NULL, '0', '0'),
(33, 'CON3', 0, '', 'Hudson', 'Gwambe', 'hudsonguambe@gmail.com', '9684384', '+255688188349', NULL, 'CSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', NULL, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_contactscf` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contactscf`
--

INSERT INTO `vtiger_contactscf` (`contactid`) VALUES
(21),
(30),
(33);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactsubdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_contactsubdetails` (
  `contactsubscriptionid` int(19) NOT NULL DEFAULT '0',
  `homephone` varchar(50) DEFAULT NULL,
  `otherphone` varchar(50) DEFAULT NULL,
  `assistant` varchar(30) DEFAULT NULL,
  `assistantphone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `laststayintouchrequest` int(30) DEFAULT '0',
  `laststayintouchsavedate` int(19) DEFAULT '0',
  `leadsource` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`contactsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contactsubdetails`
--

INSERT INTO `vtiger_contactsubdetails` (`contactsubscriptionid`, `homephone`, `otherphone`, `assistant`, `assistantphone`, `birthday`, `laststayintouchrequest`, `laststayintouchsavedate`, `leadsource`) VALUES
(21, '', '', '', '', NULL, 0, 0, ''),
(30, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL),
(33, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contpotentialrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_contpotentialrel` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `potentialid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`,`potentialid`),
  KEY `contpotentialrel_potentialid_idx` (`potentialid`),
  KEY `contpotentialrel_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_priority`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_priority` (
  `contract_priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_priority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_priorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_contract_priority`
--

INSERT INTO `vtiger_contract_priority` (`contract_priorityid`, `contract_priority`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Low', 1, 220, 1),
(2, 'Normal', 1, 221, 2),
(3, 'High', 1, 222, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_priority_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_priority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contract_priority_seq`
--

INSERT INTO `vtiger_contract_priority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_status`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_status` (
  `contract_statusid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_statusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_contract_status`
--

INSERT INTO `vtiger_contract_status` (`contract_statusid`, `contract_status`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Undefined', 1, 214, 1),
(2, 'In Planning', 1, 215, 2),
(3, 'In Progress', 1, 216, 3),
(4, 'On Hold', 1, 217, 4),
(5, 'Complete', 0, 218, 5),
(6, 'Archived', 1, 219, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_status_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contract_status_seq`
--

INSERT INTO `vtiger_contract_status_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_type`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_type` (
  `contract_typeid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_typeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_contract_type`
--

INSERT INTO `vtiger_contract_type` (`contract_typeid`, `contract_type`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Support', 1, 223, 1),
(2, 'Services', 1, 224, 2),
(3, 'Administrative', 1, 225, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_type_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contract_type_seq`
--

INSERT INTO `vtiger_contract_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_convertleadmapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_convertleadmapping` (
  `cfmid` int(19) NOT NULL AUTO_INCREMENT,
  `leadfid` int(19) NOT NULL,
  `accountfid` int(19) DEFAULT NULL,
  `contactfid` int(19) DEFAULT NULL,
  `potentialfid` int(19) DEFAULT NULL,
  `editable` int(19) DEFAULT '1',
  PRIMARY KEY (`cfmid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `vtiger_convertleadmapping`
--

INSERT INTO `vtiger_convertleadmapping` (`cfmid`, `leadfid`, `accountfid`, `contactfid`, `potentialfid`, `editable`) VALUES
(1, 43, 1, 0, 110, 0),
(2, 49, 14, 0, 0, 1),
(3, 40, 3, 69, 0, NULL),
(4, 0, 0, 0, 0, NULL),
(5, 44, 5, 77, 0, 1),
(6, 52, 13, 0, 0, 1),
(7, 46, 9, 80, 0, 0),
(8, 48, 4, 0, 0, 1),
(9, 61, 26, 98, 0, 1),
(10, 60, 30, 0, 0, 1),
(11, 62, 32, 104, 0, 1),
(12, 63, 28, 100, 0, 1),
(13, 59, 24, 96, 0, 1),
(14, 64, 34, 106, 0, 1),
(15, 61, 27, 0, 0, 1),
(16, 60, 31, 0, 0, 1),
(17, 62, 33, 0, 0, 1),
(18, 63, 29, 0, 0, 1),
(19, 59, 25, 0, 0, 1),
(20, 64, 35, 0, 0, 1),
(21, 65, 36, 109, 125, 1),
(22, 37, 0, 66, 0, 1),
(23, 38, 0, 67, 0, 0),
(24, 41, 0, 70, 0, 0),
(25, 42, 0, 71, 0, 1),
(26, 45, 0, 76, 0, 1),
(27, 55, 0, 83, 0, 1),
(28, 47, 0, 74, 117, 1),
(29, 50, 0, 0, 0, 1),
(30, 53, 10, 0, 0, 1),
(31, 51, 17, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity`
--

CREATE TABLE IF NOT EXISTS `vtiger_crmentity` (
  `crmid` int(19) NOT NULL,
  `smcreatorid` int(19) NOT NULL DEFAULT '0',
  `smownerid` int(19) NOT NULL DEFAULT '0',
  `modifiedby` int(19) NOT NULL DEFAULT '0',
  `setype` varchar(30) NOT NULL,
  `description` text,
  `createdtime` datetime NOT NULL,
  `modifiedtime` datetime NOT NULL,
  `viewedtime` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`crmid`),
  KEY `crmentity_smcreatorid_idx` (`smcreatorid`),
  KEY `crmentity_modifiedby_idx` (`modifiedby`),
  KEY `crmentity_deleted_idx` (`deleted`),
  KEY `crm_ownerid_del_setype_idx` (`smownerid`,`deleted`,`setype`),
  KEY `vtiger_crmentity_labelidx` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_crmentity`
--

INSERT INTO `vtiger_crmentity` (`crmid`, `smcreatorid`, `smownerid`, `modifiedby`, `setype`, `description`, `createdtime`, `modifiedtime`, `viewedtime`, `status`, `version`, `presence`, `deleted`, `label`) VALUES
(2, 5, 5, 5, 'Products', '', '2016-06-26 11:48:08', '2016-06-26 11:48:08', NULL, NULL, 0, 1, 0, 'Building'),
(3, 5, 5, 5, 'Products', '', '2016-06-26 11:48:46', '2016-06-26 11:48:46', NULL, NULL, 0, 1, 0, 'Components'),
(4, 5, 5, 5, 'Products', '', '2016-06-26 11:49:08', '2016-06-26 11:49:08', NULL, NULL, 0, 1, 0, 'Fixtures'),
(5, 5, 5, 5, 'Products', '', '2016-06-26 11:49:47', '2016-06-26 11:49:47', NULL, NULL, 0, 1, 0, 'Furniture'),
(6, 5, 5, 5, 'Products', '', '2016-06-26 11:50:11', '2016-06-26 11:50:11', NULL, NULL, 0, 1, 0, 'Laboratory Equipment'),
(7, 5, 5, 5, 'Products', '', '2016-06-26 11:50:31', '2016-07-11 12:34:06', NULL, NULL, 0, 1, 0, 'Machinery'),
(8, 5, 5, 5, 'Products', '', '2016-06-26 11:51:00', '2016-07-11 12:33:42', NULL, NULL, 0, 1, 0, 'Office Equipment'),
(9, 5, 5, 5, 'Products', '', '2016-06-26 11:51:18', '2016-07-11 12:33:25', NULL, NULL, 0, 1, 0, 'Software'),
(10, 5, 5, 5, 'Products', '', '2016-06-26 11:51:49', '2016-07-11 12:32:38', NULL, NULL, 0, 1, 0, 'Vehicle'),
(11, 5, 5, 5, 'Accounts', '', '2016-06-26 11:58:28', '2016-06-26 11:58:28', NULL, NULL, 0, 1, 0, 'UCC'),
(12, 5, 5, 5, 'Assets', '', '2016-06-26 11:59:00', '2016-06-26 11:59:00', NULL, NULL, 0, 1, 0, 'Table'),
(13, 5, 5, 5, 'Accounts', '', '2016-06-26 12:08:39', '2016-06-26 12:08:39', NULL, NULL, 0, 1, 0, 'CoICT'),
(14, 5, 5, 5, 'Assets', '', '2016-06-26 12:08:43', '2016-07-05 11:55:21', NULL, NULL, 0, 1, 0, 'Administration Block'),
(15, 5, 5, 5, 'Assets', '', '2016-06-26 12:16:52', '2016-06-26 12:16:52', NULL, NULL, 0, 1, 0, 'Integrated circuit'),
(16, 5, 5, 5, 'Assets', '', '2016-06-26 12:20:53', '2016-06-26 12:20:53', NULL, NULL, 0, 1, 0, 'Pipes'),
(17, 5, 5, 5, 'Assets', '', '2016-06-26 12:57:10', '2016-06-26 12:57:10', NULL, NULL, 0, 1, 0, 'Chair'),
(18, 5, 5, 5, 'Calendar', '', '2016-06-26 13:27:14', '2016-06-26 13:27:14', NULL, NULL, 0, 1, 0, 'Meeting'),
(19, 5, 11, 5, 'Documents', NULL, '2016-06-26 16:56:21', '2016-06-26 16:56:21', NULL, NULL, 0, 1, 0, 'Recorded Buildings'),
(20, 5, 11, 0, 'Documents Attachment', NULL, '2016-06-26 16:56:21', '2016-06-26 16:56:21', NULL, NULL, 0, 1, 0, NULL),
(21, 5, 5, 5, 'Contacts', NULL, '2016-06-26 18:17:52', '2016-07-10 20:02:00', NULL, NULL, 0, 1, 0, 'Mosses mosses'),
(22, 5, 5, 5, 'SMSNotifier', NULL, '2016-06-26 18:18:17', '2016-06-27 18:44:26', NULL, NULL, 0, 1, 1, 'hfdhdd'),
(23, 5, 5, 5, 'SMSNotifier', NULL, '2016-06-26 18:20:53', '2016-06-27 18:44:27', NULL, NULL, 0, 1, 1, 'kl'),
(24, 5, 5, 5, 'SMSNotifier', NULL, '2016-06-27 09:18:24', '2016-06-27 18:44:26', NULL, NULL, 0, 1, 1, 'free'),
(25, 5, 5, 5, 'SMSNotifier', NULL, '2016-06-27 09:20:02', '2016-06-27 18:44:26', NULL, NULL, 0, 1, 1, 'julio'),
(26, 5, 5, 5, 'SMSNotifier', NULL, '2016-06-27 18:34:51', '2016-06-27 18:44:26', NULL, NULL, 0, 1, 1, 'fr'),
(27, 5, 5, 5, 'ServiceContracts', NULL, '2016-06-27 18:37:47', '2016-06-27 18:37:47', NULL, NULL, 0, 1, 0, 'Network Facility Repair'),
(28, 5, 5, 5, 'SMSNotifier', NULL, '2016-06-27 18:44:38', '2016-06-27 18:45:09', NULL, NULL, 0, 1, 1, 'bh'),
(29, 5, 5, 5, 'SMSNotifier', NULL, '2016-06-27 19:19:34', '2016-06-27 19:19:35', NULL, NULL, 0, 1, 0, 'by you'),
(30, 5, 5, 5, 'Contacts', NULL, '2016-06-27 19:22:16', '2016-06-27 19:22:16', NULL, NULL, 0, 1, 0, 'Xhio Elipokea'),
(31, 5, 5, 5, 'SMSNotifier', NULL, '2016-06-27 19:22:43', '2016-06-27 19:22:44', NULL, NULL, 0, 1, 0, 'hi'),
(32, 5, 5, 5, 'SMSNotifier', NULL, '2016-07-01 11:45:14', '2016-07-01 11:45:14', NULL, NULL, 0, 1, 0, 'hi'),
(33, 5, 6, 5, 'Contacts', NULL, '2016-07-01 14:29:44', '2016-07-05 09:52:47', NULL, NULL, 0, 1, 0, 'Hudson Gwambe'),
(34, 12, 12, 12, 'Emails', 'check my list', '2016-07-04 07:02:45', '2016-07-04 07:02:45', NULL, NULL, 0, 1, 0, 'hi'),
(35, 12, 12, 12, 'Emails', 'testinggggg', '2016-07-04 07:50:07', '2016-07-04 07:50:07', NULL, NULL, 0, 1, 0, 'Testing'),
(36, 12, 12, 12, 'Emails', 'testinggggg', '2016-07-04 07:50:30', '2016-07-04 07:50:30', NULL, NULL, 0, 1, 0, 'Testing'),
(37, 12, 12, 12, 'SMSNotifier', NULL, '2016-07-04 07:51:49', '2016-07-04 07:51:49', NULL, NULL, 0, 1, 0, 'hi'),
(38, 5, 5, 5, 'Emails', 'testing', '2016-07-04 07:53:38', '2016-07-04 07:53:38', NULL, NULL, 0, 1, 0, 'hi'),
(39, 5, 5, 5, 'SMSNotifier', NULL, '2016-07-04 07:55:50', '2016-07-04 07:55:50', NULL, NULL, 0, 1, 0, 'cf'),
(40, 5, 5, 5, 'SMSNotifier', NULL, '2016-07-04 07:56:59', '2016-07-04 07:57:00', NULL, NULL, 0, 1, 0, 'vgh'),
(41, 5, 5, 5, 'Emails', 'chec that', '2016-07-04 07:57:49', '2016-07-04 07:57:49', NULL, NULL, 0, 1, 0, 'hey'),
(42, 5, 5, 5, 'Emails', 'hello', '2016-07-04 08:21:24', '2016-07-04 08:21:24', NULL, NULL, 0, 1, 0, 'hi'),
(43, 5, 5, 5, 'Emails', 'is it working ?', '2016-07-04 08:25:21', '2016-07-04 08:25:21', NULL, NULL, 0, 1, 0, 'now'),
(44, 5, 5, 5, 'Emails', 'xxxzxz', '2016-07-04 08:27:15', '2016-07-04 08:27:15', NULL, NULL, 0, 1, 0, 'hi'),
(45, 5, 5, 5, 'Emails', 'we are almost there', '2016-07-05 09:45:06', '2016-07-05 09:45:06', NULL, NULL, 0, 1, 0, 'brother'),
(46, 5, 5, 5, 'SMSNotifier', NULL, '2016-07-05 09:47:06', '2016-07-05 09:47:07', NULL, NULL, 0, 1, 0, 'gkdaj'),
(47, 5, 5, 5, 'SMSNotifier', NULL, '2016-07-05 09:49:21', '2016-07-05 09:49:23', NULL, NULL, 0, 1, 0, 'hd'),
(48, 5, 5, 5, 'SMSNotifier', NULL, '2016-07-05 09:51:01', '2016-07-05 09:51:02', NULL, NULL, 0, 1, 0, 'fr'),
(49, 5, 5, 5, 'SMSNotifier', NULL, '2016-07-05 09:53:22', '2016-07-05 09:53:24', NULL, NULL, 0, 1, 0, 'ty'),
(50, 5, 5, 5, 'Maintenance', NULL, '2016-07-05 11:22:16', '2016-07-05 13:29:30', NULL, NULL, 0, 1, 0, 'Building'),
(51, 5, 5, 5, 'Maintenance', NULL, '2016-07-05 11:25:53', '2016-07-05 11:25:53', NULL, NULL, 0, 1, 0, 'Component'),
(52, 5, 5, 5, 'Valuation', NULL, '2016-07-05 11:29:54', '2016-07-05 12:33:50', NULL, NULL, 0, 1, 0, 'Building'),
(53, 5, 5, 5, 'Assets', '', '2016-07-05 12:01:56', '2016-07-05 12:01:56', NULL, NULL, 0, 1, 0, 'Building'),
(54, 5, 5, 5, 'Valuation', NULL, '2016-07-05 13:12:52', '2016-07-05 13:12:52', NULL, NULL, 0, 1, 0, 'IC TA234'),
(55, 5, 5, 5, 'Maintenance', NULL, '2016-07-07 10:00:31', '2016-07-07 10:00:31', NULL, NULL, 0, 1, 0, 'Building'),
(56, 5, 5, 5, 'Faq', NULL, '2016-07-07 10:10:10', '2016-07-07 10:10:10', NULL, NULL, 0, 1, 0, 'how to update your check if you are connected to the system'),
(57, 5, 5, 5, 'Calendar', '', '2016-07-07 10:15:24', '2016-07-07 10:17:24', NULL, NULL, 0, 1, 0, 'Meeting'),
(58, 5, 5, 5, 'Emails', 'hi', '2016-07-10 20:03:00', '2016-07-10 20:03:00', NULL, NULL, 0, 1, 0, 'salam');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentityrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_crmentityrel` (
  `crmid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relcrmid` int(11) NOT NULL,
  `relmodule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_crmentityrel`
--

INSERT INTO `vtiger_crmentityrel` (`crmid`, `module`, `relcrmid`, `relmodule`) VALUES
(22, 'SMSNotifier', 21, 'SMSNotifier'),
(23, 'SMSNotifier', 21, 'SMSNotifier'),
(24, 'SMSNotifier', 21, 'SMSNotifier'),
(25, 'SMSNotifier', 21, 'SMSNotifier'),
(26, 'SMSNotifier', 21, 'SMSNotifier'),
(28, 'SMSNotifier', 21, 'SMSNotifier'),
(29, 'SMSNotifier', 21, 'SMSNotifier'),
(31, 'SMSNotifier', 30, 'SMSNotifier'),
(32, 'SMSNotifier', 21, 'SMSNotifier'),
(37, 'SMSNotifier', 30, 'SMSNotifier'),
(39, 'SMSNotifier', 21, 'SMSNotifier'),
(40, 'SMSNotifier', 30, 'SMSNotifier'),
(46, 'SMSNotifier', 33, 'SMSNotifier'),
(47, 'SMSNotifier', 21, 'SMSNotifier'),
(47, 'SMSNotifier', 33, 'SMSNotifier'),
(48, 'SMSNotifier', 21, 'SMSNotifier'),
(48, 'SMSNotifier', 33, 'SMSNotifier'),
(49, 'SMSNotifier', 21, 'SMSNotifier'),
(49, 'SMSNotifier', 33, 'SMSNotifier');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_crmentity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_crmentity_seq`
--

INSERT INTO `vtiger_crmentity_seq` (`id`) VALUES
(58);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmsetup`
--

CREATE TABLE IF NOT EXISTS `vtiger_crmsetup` (
  `userid` int(11) DEFAULT NULL,
  `setup_status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_crmsetup`
--

INSERT INTO `vtiger_crmsetup` (`userid`, `setup_status`) VALUES
(1, 1),
(5, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cron_task`
--

CREATE TABLE IF NOT EXISTS `vtiger_cron_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `handler_file` varchar(100) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `laststart` int(11) unsigned DEFAULT NULL,
  `lastend` int(11) unsigned DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `handler_file` (`handler_file`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vtiger_cron_task`
--

INSERT INTO `vtiger_cron_task` (`id`, `name`, `handler_file`, `frequency`, `laststart`, `lastend`, `status`, `module`, `sequence`, `description`) VALUES
(1, 'Workflow', 'cron/modules/com_vtiger_workflow/com_vtiger_workflow.service', 900, NULL, NULL, 1, 'com_vtiger_workflow', 1, 'Recommended frequency for Workflow is 15 mins'),
(2, 'RecurringInvoice', 'cron/modules/SalesOrder/RecurringInvoice.service', 43200, NULL, NULL, 1, 'SalesOrder', 2, 'Recommended frequency for RecurringInvoice is 12 hours'),
(3, 'SendReminder', 'cron/SendReminder.service', 900, NULL, NULL, 1, 'Calendar', 3, 'Recommended frequency for SendReminder is 15 mins'),
(5, 'MailScanner', 'cron/MailScanner.service', 900, NULL, NULL, 1, 'Settings', 5, 'Recommended frequency for MailScanner is 15 mins'),
(6, 'Scheduled Import', 'cron/modules/Import/ScheduledImport.service', 900, NULL, NULL, 0, 'Import', 6, 'Recommended frequency for MailScanner is 15 mins'),
(7, 'ScheduleReports', 'cron/modules/Reports/ScheduleReports.service', 900, NULL, NULL, 1, 'Reports', 7, 'Recommended frequency for ScheduleReports is 15 mins');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currencies`
--

CREATE TABLE IF NOT EXISTS `vtiger_currencies` (
  `currencyid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(200) DEFAULT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `currency_symbol` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`currencyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `vtiger_currencies`
--

INSERT INTO `vtiger_currencies` (`currencyid`, `currency_name`, `currency_code`, `currency_symbol`) VALUES
(1, 'Albania, Leke', 'ALL', 'Lek'),
(2, 'Argentina, Pesos', 'ARS', '$'),
(3, 'Aruba, Guilders', 'AWG', 'ƒ'),
(4, 'Australia, Dollars', 'AUD', '$'),
(5, 'Azerbaijan, New Manats', 'AZN', '???'),
(6, 'Bahamas, Dollars', 'BSD', '$'),
(7, 'Bahrain, Dinar', 'BHD', 'BD'),
(8, 'Barbados, Dollars', 'BBD', '$'),
(9, 'Belarus, Rubles', 'BYR', 'p.'),
(10, 'Belize, Dollars', 'BZD', 'BZ$'),
(11, 'Bermuda, Dollars', 'BMD', '$'),
(12, 'Bolivia, Bolivianos', 'BOB', '$b'),
(13, 'China, Yuan Renminbi', 'CNY', '¥'),
(14, 'Convertible Marka', 'BAM', 'KM'),
(15, 'Botswana, Pulas', 'BWP', 'P'),
(16, 'Bulgaria, Leva', 'BGN', '??'),
(17, 'Brazil, Reais', 'BRL', 'R$'),
(18, 'Great Britain Pounds', 'GBP', '£'),
(19, 'Brunei Darussalam, Dollars', 'BND', '$'),
(20, 'Canada, Dollars', 'CAD', '$'),
(21, 'Cayman Islands, Dollars', 'KYD', '$'),
(22, 'Chile, Pesos', 'CLP', '$'),
(23, 'Colombia, Pesos', 'COP', '$'),
(24, 'Costa Rica, Colón', 'CRC', '?'),
(25, 'Croatia, Kuna', 'HRK', 'kn'),
(26, 'Cuba, Pesos', 'CUP', '?'),
(27, 'Czech Republic, Koruny', 'CZK', 'K?'),
(28, 'Cyprus, Pounds', 'CYP', '£'),
(29, 'Denmark, Kroner', 'DKK', 'kr'),
(30, 'Dominican Republic, Pesos', 'DOP', 'RD$'),
(31, 'East Caribbean, Dollars', 'XCD', '$'),
(32, 'Egypt, Pounds', 'EGP', '£'),
(33, 'El Salvador, Colón', 'SVC', '?'),
(34, 'England, Pounds', 'GBP', '£'),
(35, 'Estonia, Krooni', 'EEK', 'kr'),
(36, 'Euro', 'EUR', '€'),
(37, 'Falkland Islands, Pounds', 'FKP', '£'),
(38, 'Fiji, Dollars', 'FJD', '$'),
(39, 'Ghana, Cedis', 'GHC', '¢'),
(40, 'Gibraltar, Pounds', 'GIP', '£'),
(41, 'Guatemala, Quetzales', 'GTQ', 'Q'),
(42, 'Guernsey, Pounds', 'GGP', '£'),
(43, 'Guyana, Dollars', 'GYD', '$'),
(44, 'Honduras, Lempiras', 'HNL', 'L'),
(45, 'Hong Kong, Dollars', 'HKD', 'HK$'),
(46, 'Hungary, Forint', 'HUF', 'Ft'),
(47, 'Iceland, Krona', 'ISK', 'kr'),
(48, 'India, Rupees', 'INR', '?'),
(49, 'Indonesia, Rupiahs', 'IDR', 'Rp'),
(50, 'Iran, Rials', 'IRR', '?'),
(51, 'Isle of Man, Pounds', 'IMP', '£'),
(52, 'Israel, New Shekels', 'ILS', '?'),
(53, 'Jamaica, Dollars', 'JMD', 'J$'),
(54, 'Japan, Yen', 'JPY', '¥'),
(55, 'Jersey, Pounds', 'JEP', '£'),
(56, 'Jordan, Dinar', 'JOD', 'JOD'),
(57, 'Kazakhstan, Tenge', 'KZT', '?'),
(58, 'Kenya, Shilling', 'KES', 'KES'),
(59, 'Korea (North), Won', 'KPW', '?'),
(60, 'Korea (South), Won', 'KRW', '?'),
(61, 'Kuwait, Dinar', 'KWD', 'KWD'),
(62, 'Kyrgyzstan, Soms', 'KGS', '??'),
(63, 'Laos, Kips', 'LAK', '?'),
(64, 'Latvia, Lati', 'LVL', 'Ls'),
(65, 'Lebanon, Pounds', 'LBP', '£'),
(66, 'Liberia, Dollars', 'LRD', '$'),
(67, 'Switzerland Francs', 'CHF', 'CHF'),
(68, 'Lithuania, Litai', 'LTL', 'Lt'),
(69, 'MADAGASCAR, Malagasy Ariary', 'MGA', 'MGA'),
(70, 'Macedonia, Denars', 'MKD', '???'),
(71, 'Malaysia, Ringgits', 'MYR', 'RM'),
(72, 'Malta, Liri', 'MTL', '?'),
(73, 'Mauritius, Rupees', 'MUR', '?'),
(74, 'Mexico, Pesos', 'MXN', '$'),
(75, 'Mongolia, Tugriks', 'MNT', '?'),
(76, 'Mozambique, Meticais', 'MZN', 'MT'),
(77, 'Namibia, Dollars', 'NAD', '$'),
(78, 'Nepal, Rupees', 'NPR', '?'),
(79, 'Netherlands Antilles, Guilders', 'ANG', 'ƒ'),
(80, 'New Zealand, Dollars', 'NZD', '$'),
(81, 'Nicaragua, Cordobas', 'NIO', 'C$'),
(82, 'Nigeria, Nairas', 'NGN', '?'),
(83, 'North Korea, Won', 'KPW', '?'),
(84, 'Norway, Krone', 'NOK', 'kr'),
(85, 'Oman, Rials', 'OMR', '?'),
(86, 'Pakistan, Rupees', 'PKR', '?'),
(87, 'Panama, Balboa', 'PAB', 'B/.'),
(88, 'Paraguay, Guarani', 'PYG', 'Gs'),
(89, 'Peru, Nuevos Soles', 'PEN', 'S/.'),
(90, 'Philippines, Pesos', 'PHP', 'Php'),
(91, 'Poland, Zlotych', 'PLN', 'z?'),
(92, 'Qatar, Rials', 'QAR', '?'),
(93, 'Romania, New Lei', 'RON', 'lei'),
(94, 'Russia, Rubles', 'RUB', '???'),
(95, 'Saint Helena, Pounds', 'SHP', '£'),
(96, 'Saudi Arabia, Riyals', 'SAR', '?'),
(97, 'Serbia, Dinars', 'RSD', '???.'),
(98, 'Seychelles, Rupees', 'SCR', '?'),
(99, 'Singapore, Dollars', 'SGD', '$'),
(100, 'Solomon Islands, Dollars', 'SBD', '$'),
(101, 'Somalia, Shillings', 'SOS', 'S'),
(102, 'South Africa, Rand', 'ZAR', 'R'),
(103, 'South Korea, Won', 'KRW', '?'),
(104, 'Sri Lanka, Rupees', 'LKR', '?'),
(105, 'Sweden, Kronor', 'SEK', 'kr'),
(106, 'Switzerland, Francs', 'CHF', 'CHF'),
(107, 'Suriname, Dollars', 'SRD', '$'),
(108, 'Syria, Pounds', 'SYP', '£'),
(109, 'Taiwan, New Dollars', 'TWD', 'NT$'),
(110, 'Thailand, Baht', 'THB', '?'),
(111, 'Trinidad and Tobago, Dollars', 'TTD', 'TT$'),
(112, 'Turkey, New Lira', 'TRY', 'YTL'),
(113, 'Turkey, Liras', 'TRL', '?'),
(114, 'Tuvalu, Dollars', 'TVD', '$'),
(115, 'Ukraine, Hryvnia', 'UAH', '?'),
(116, 'United Arab Emirates, Dirham', 'AED', 'AED'),
(117, 'United Kingdom, Pounds', 'GBP', '£'),
(118, 'United Republic of Tanzania, Shilling', 'TZS', 'TZS'),
(119, 'USA, Dollars', 'USD', '$'),
(120, 'Uruguay, Pesos', 'UYU', '$U'),
(121, 'Uzbekistan, Sums', 'UZS', '??'),
(122, 'Venezuela, Bolivares Fuertes', 'VEF', 'Bs'),
(123, 'Vietnam, Dong', 'VND', '?'),
(124, 'Zambia, Kwacha', 'ZMK', 'ZMK'),
(125, 'Yemen, Rials', 'YER', '?'),
(126, 'Zimbabwe Dollars', 'ZWD', 'Z$'),
(127, 'Malawi, Kwacha', 'MWK', 'MK'),
(128, 'Tunisian, Dinar', 'TD', 'TD'),
(129, 'Moroccan, Dirham', 'MAD', 'DH'),
(130, 'Iraqi Dinar', 'IQD', 'ID'),
(131, 'Maldivian Ruffiya', 'MVR', 'MVR'),
(132, 'Ugandan Shilling', 'UGX', 'Sh'),
(133, 'Sudanese Pound', 'SDG', '£'),
(134, 'CFA Franc BCEAO', 'XOF', 'CFA'),
(135, 'CFA Franc BEAC', 'XAF', 'CFA'),
(136, 'Haiti, Gourde', 'HTG', 'G'),
(137, 'Libya, Dinar', 'LYD', 'LYD');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currencies_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currencies_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currencies_seq`
--

INSERT INTO `vtiger_currencies_seq` (`id`) VALUES
(137);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency` (
  `currencyid` int(19) NOT NULL AUTO_INCREMENT,
  `currency` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currencyid`),
  UNIQUE KEY `currency_currency_idx` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_decimal_separator`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_decimal_separator` (
  `currency_decimal_separatorid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_decimal_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_decimal_separatorid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_currency_decimal_separator`
--

INSERT INTO `vtiger_currency_decimal_separator` (`currency_decimal_separatorid`, `currency_decimal_separator`, `sortorderid`, `presence`) VALUES
(1, '.', 0, 1),
(2, ',', 1, 1),
(3, '''', 2, 1),
(4, ' ', 3, 1),
(5, '$', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_decimal_separator_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_decimal_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_decimal_separator_seq`
--

INSERT INTO `vtiger_currency_decimal_separator_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_pattern`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_grouping_pattern` (
  `currency_grouping_patternid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_grouping_pattern` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_grouping_patternid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_currency_grouping_pattern`
--

INSERT INTO `vtiger_currency_grouping_pattern` (`currency_grouping_patternid`, `currency_grouping_pattern`, `sortorderid`, `presence`) VALUES
(1, '123,456,789', 0, 1),
(2, '123456789', 1, 1),
(3, '123456,789', 2, 1),
(4, '12,34,56,789', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_pattern_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_grouping_pattern_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_grouping_pattern_seq`
--

INSERT INTO `vtiger_currency_grouping_pattern_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_separator`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_grouping_separator` (
  `currency_grouping_separatorid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_grouping_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_grouping_separatorid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_currency_grouping_separator`
--

INSERT INTO `vtiger_currency_grouping_separator` (`currency_grouping_separatorid`, `currency_grouping_separator`, `sortorderid`, `presence`) VALUES
(1, '.', 0, 1),
(2, ',', 1, 1),
(3, '''', 2, 1),
(4, ' ', 3, 1),
(5, '$', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_separator_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_grouping_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_grouping_separator_seq`
--

INSERT INTO `vtiger_currency_grouping_separator_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_info`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_code` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(30) DEFAULT NULL,
  `conversion_rate` decimal(12,5) DEFAULT NULL,
  `currency_status` varchar(25) DEFAULT NULL,
  `defaultid` varchar(10) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_currency_info`
--

INSERT INTO `vtiger_currency_info` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `conversion_rate`, `currency_status`, `defaultid`, `deleted`) VALUES
(1, 'United Republic of Tanzania, Shilling', 'TZS', 'TZS', 1.00000, 'Active', '-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_info_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_info_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_info_seq`
--

INSERT INTO `vtiger_currency_info_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_symbol_placement`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_symbol_placement` (
  `currency_symbol_placementid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_symbol_placement` varchar(30) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_symbol_placementid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_currency_symbol_placement`
--

INSERT INTO `vtiger_currency_symbol_placement` (`currency_symbol_placementid`, `currency_symbol_placement`, `sortorderid`, `presence`) VALUES
(1, '$1.0', 0, 1),
(2, '1.0$', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_symbol_placement_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_symbol_placement_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_symbol_placement_seq`
--

INSERT INTO `vtiger_currency_symbol_placement_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customaction`
--

CREATE TABLE IF NOT EXISTS `vtiger_customaction` (
  `cvid` int(19) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` text,
  KEY `customaction_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_customerdetails` (
  `customerid` int(19) NOT NULL,
  `portal` varchar(3) DEFAULT NULL,
  `support_start_date` date DEFAULT NULL,
  `support_end_date` date DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customerdetails`
--

INSERT INTO `vtiger_customerdetails` (`customerid`, `portal`, `support_start_date`, `support_end_date`) VALUES
(21, '0', '2016-06-26', '2017-06-26'),
(30, NULL, NULL, NULL),
(33, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_fields`
--

CREATE TABLE IF NOT EXISTS `vtiger_customerportal_fields` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) DEFAULT NULL,
  `visible` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_prefs`
--

CREATE TABLE IF NOT EXISTS `vtiger_customerportal_prefs` (
  `tabid` int(19) NOT NULL,
  `prefkey` varchar(100) NOT NULL,
  `prefvalue` int(20) DEFAULT NULL,
  PRIMARY KEY (`tabid`,`prefkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customerportal_prefs`
--

INSERT INTO `vtiger_customerportal_prefs` (`tabid`, `prefkey`, `prefvalue`) VALUES
(0, 'defaultassignee', 5),
(0, 'userid', 5),
(4, 'showrelatedinfo', 1),
(6, 'showrelatedinfo', 1),
(8, 'showrelatedinfo', 1),
(13, 'showrelatedinfo', 1),
(14, 'showrelatedinfo', 1),
(15, 'showrelatedinfo', 1),
(20, 'showrelatedinfo', 1),
(23, 'showrelatedinfo', 1),
(37, 'showrelatedinfo', 1),
(39, 'showrelatedinfo', 1),
(44, 'showrelatedinfo', 1),
(45, 'showrelatedinfo', 1),
(46, 'showrelatedinfo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_tabs`
--

CREATE TABLE IF NOT EXISTS `vtiger_customerportal_tabs` (
  `tabid` int(19) NOT NULL,
  `visible` int(1) DEFAULT '1',
  `sequence` int(1) DEFAULT NULL,
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customerportal_tabs`
--

INSERT INTO `vtiger_customerportal_tabs` (`tabid`, `visible`, `sequence`) VALUES
(4, 1, 9),
(6, 1, 10),
(8, 1, 8),
(13, 1, 2),
(14, 1, 6),
(15, 1, 3),
(20, 1, 5),
(23, 1, 4),
(37, 1, 7),
(39, 1, 11),
(44, 1, 12),
(45, 1, 13),
(46, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customview`
--

CREATE TABLE IF NOT EXISTS `vtiger_customview` (
  `cvid` int(19) NOT NULL,
  `viewname` varchar(100) NOT NULL,
  `setdefault` int(1) DEFAULT '0',
  `setmetrics` int(1) DEFAULT '0',
  `entitytype` varchar(25) NOT NULL,
  `status` int(1) DEFAULT '1',
  `userid` int(19) DEFAULT '1',
  PRIMARY KEY (`cvid`),
  KEY `customview_entitytype_idx` (`entitytype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customview`
--

INSERT INTO `vtiger_customview` (`cvid`, `viewname`, `setdefault`, `setmetrics`, `entitytype`, `status`, `userid`) VALUES
(1, 'All', 1, 0, 'Leads', 0, 1),
(2, 'Hot Leads', 0, 1, 'Leads', 3, 1),
(3, 'This Month Leads', 0, 0, 'Leads', 3, 1),
(4, 'All', 1, 0, 'Accounts', 0, 1),
(5, 'Prospect Accounts', 0, 1, 'Accounts', 3, 1),
(6, 'New This Week', 0, 0, 'Accounts', 3, 1),
(7, 'All', 1, 0, 'Contacts', 0, 1),
(8, 'Contacts Address', 0, 0, 'Contacts', 3, 1),
(9, 'Todays Birthday', 0, 0, 'Contacts', 3, 1),
(10, 'All', 1, 0, 'Potentials', 0, 1),
(11, 'Potentials Won', 0, 1, 'Potentials', 3, 1),
(12, 'Prospecting', 0, 0, 'Potentials', 3, 1),
(13, 'All', 1, 0, 'HelpDesk', 0, 1),
(14, 'Open Tickets', 0, 1, 'HelpDesk', 3, 1),
(15, 'High Prioriy Tickets', 0, 0, 'HelpDesk', 3, 1),
(16, 'All', 1, 0, 'Quotes', 0, 1),
(17, 'Open Quotes', 0, 1, 'Quotes', 3, 1),
(18, 'Rejected Quotes', 0, 0, 'Quotes', 3, 1),
(19, 'All', 1, 0, 'Calendar', 0, 1),
(20, 'All', 1, 0, 'Emails', 0, 1),
(21, 'All', 1, 0, 'Invoice', 0, 1),
(22, 'All', 1, 0, 'Documents', 0, 1),
(23, 'All', 1, 0, 'PriceBooks', 0, 1),
(24, 'All', 1, 0, 'Products', 0, 1),
(25, 'All', 1, 0, 'PurchaseOrder', 0, 1),
(26, 'All', 1, 0, 'SalesOrder', 0, 1),
(27, 'All', 1, 0, 'Vendors', 0, 1),
(28, 'All', 1, 0, 'Faq', 0, 1),
(29, 'All', 1, 0, 'Campaigns', 0, 1),
(30, 'All', 1, 0, 'Webmails', 0, 1),
(31, 'Drafted FAQ', 0, 0, 'Faq', 3, 1),
(32, 'Published FAQ', 0, 0, 'Faq', 3, 1),
(33, 'Open Purchase Orders', 0, 0, 'PurchaseOrder', 3, 1),
(34, 'Received Purchase Orders', 0, 0, 'PurchaseOrder', 3, 1),
(35, 'Open Invoices', 0, 0, 'Invoice', 3, 1),
(36, 'Paid Invoices', 0, 0, 'Invoice', 3, 1),
(37, 'Pending Sales Orders', 0, 0, 'SalesOrder', 3, 1),
(38, 'All', 1, 0, 'ServiceContracts', 0, 1),
(39, 'All', 1, 0, 'PBXManager', 0, 1),
(40, 'All', 1, 0, 'Services', 0, 1),
(41, 'All', 1, 0, 'Assets', 0, 1),
(42, 'All', 0, 0, 'SMSNotifier', 0, 1),
(43, 'All', 0, 0, 'ModComments', 0, 1),
(47, 'All', 1, 0, 'ProjectMilestone', 0, 1),
(48, 'All', 1, 0, 'ProjectTask', 0, 1),
(49, 'All', 1, 0, 'Project', 0, 1),
(50, 'Buildings', 0, 0, 'Assets', 3, 5),
(51, 'Components', 0, 0, 'Assets', 3, 5),
(52, 'Furnitures', 0, 0, 'Assets', 3, 5),
(53, 'Fixtures', 0, 0, 'Assets', 3, 5),
(54, 'Laboratory Equipments', 0, 0, 'Assets', 3, 5),
(55, 'Machinery ', 0, 0, 'Assets', 3, 5),
(56, 'Office Equipments', 0, 0, 'Assets', 3, 5),
(57, 'Software', 0, 0, 'Assets', 3, 5),
(58, 'Vehicles', 0, 0, 'Assets', 3, 5),
(59, 'All', 1, 0, 'Maintenance', 0, 1),
(60, 'All', 1, 0, 'Valuation', 0, 1),
(61, 'Furnitures', 0, 0, 'Maintenance', 3, 5),
(62, 'Components', 0, 0, 'Maintenance', 3, 5),
(63, 'Buidings', 0, 0, 'Valuation', 3, 5),
(64, 'Components', 0, 0, 'Valuation', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customview_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_customview_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customview_seq`
--

INSERT INTO `vtiger_customview_seq` (`id`) VALUES
(64);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvadvfilter`
--

CREATE TABLE IF NOT EXISTS `vtiger_cvadvfilter` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT '1',
  `column_condition` varchar(255) DEFAULT 'and',
  PRIMARY KEY (`cvid`,`columnindex`),
  KEY `cvadvfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cvadvfilter`
--

INSERT INTO `vtiger_cvadvfilter` (`cvid`, `columnindex`, `columnname`, `comparator`, `value`, `groupid`, `column_condition`) VALUES
(2, 0, 'vtiger_leaddetails:leadstatus:leadstatus:Leads_Lead_Status:V', 'e', 'Hot', 1, 'and'),
(5, 0, 'vtiger_account:account_type:accounttype:Accounts_Type:V', 'e', 'Prospect', 1, 'and'),
(11, 0, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V', 'e', 'Closed Won', 1, 'and'),
(12, 0, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V', 'e', 'Prospecting', 1, 'and'),
(14, 0, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V', 'n', 'Closed', 1, 'and'),
(15, 0, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V', 'e', 'High', 1, 'and'),
(17, 0, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'n', 'Accepted', 1, 'and'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'n', 'Rejected', 1, 'and'),
(18, 0, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'e', 'Rejected', 1, 'and'),
(31, 0, 'vtiger_faq:status:faqstatus:Faq_Status:V', 'e', 'Draft', 1, 'and'),
(32, 0, 'vtiger_faq:status:faqstatus:Faq_Status:V', 'e', 'Published', 1, 'and'),
(33, 0, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V', 'e', 'Created, Approved, Delivered', 1, 'and'),
(34, 0, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V', 'e', 'Received Shipment', 1, 'and'),
(35, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Created, Approved, Sent', 1, 'and'),
(36, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Paid', 1, 'and'),
(37, 0, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V', 'e', 'Created, Approved', 1, 'and'),
(50, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Buildings', 1, ''),
(51, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Components', 1, ''),
(52, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Furnitures', 1, ''),
(53, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Fixtures', 1, ''),
(54, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Laboratory Equipments', 1, ''),
(55, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Machinery', 1, ''),
(56, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Office Equipments', 1, ''),
(57, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Softwares', 1, ''),
(58, 0, 'vtiger_assetscf:cf_723:cf_723:Assets_asset_type:V', 'e', 'Vehicles', 1, ''),
(61, 0, 'vtiger_maintenancecf:cf_783:cf_783:Maintenance_Related_to_:V', 'e', 'Furnitures', 1, ''),
(62, 0, 'vtiger_maintenancecf:cf_783:cf_783:Maintenance_Related_to_:V', 'e', 'Components', 1, ''),
(63, 0, 'vtiger_valuationcf:cf_789:cf_789:Valuation_FILTERS:V', 'e', 'Buildings', 1, ''),
(64, 0, 'vtiger_valuationcf:cf_789:cf_789:Valuation_FILTERS:V', 'e', 'Components', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvadvfilter_grouping`
--

CREATE TABLE IF NOT EXISTS `vtiger_cvadvfilter_grouping` (
  `groupid` int(11) NOT NULL,
  `cvid` int(19) NOT NULL,
  `group_condition` varchar(255) DEFAULT NULL,
  `condition_expression` text,
  PRIMARY KEY (`groupid`,`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cvadvfilter_grouping`
--

INSERT INTO `vtiger_cvadvfilter_grouping` (`groupid`, `cvid`, `group_condition`, `condition_expression`) VALUES
(1, 2, '', ''),
(1, 5, '', ''),
(1, 11, '', ''),
(1, 12, '', ''),
(1, 14, '', ''),
(1, 15, '', ''),
(1, 17, '', ''),
(1, 18, '', ''),
(1, 31, '', ''),
(1, 32, '', ''),
(1, 33, '', ''),
(1, 34, '', ''),
(1, 35, '', ''),
(1, 36, '', ''),
(1, 37, '', ''),
(1, 50, 'and', ' 0 '),
(1, 51, 'and', ' 0 '),
(1, 52, 'and', ' 0 '),
(1, 53, 'and', ' 0 '),
(1, 54, 'and', ' 0 '),
(1, 55, 'and', ' 0 '),
(1, 56, 'and', ' 0 '),
(1, 57, 'and', ' 0 '),
(1, 58, 'and', ' 0 '),
(1, 61, 'and', ' 0 '),
(1, 62, 'and', ' 0 '),
(1, 63, 'and', ' 0 '),
(1, 64, 'and', ' 0 ');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvcolumnlist`
--

CREATE TABLE IF NOT EXISTS `vtiger_cvcolumnlist` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  PRIMARY KEY (`cvid`,`columnindex`),
  KEY `cvcolumnlist_columnindex_idx` (`columnindex`),
  KEY `cvcolumnlist_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cvcolumnlist`
--

INSERT INTO `vtiger_cvcolumnlist` (`cvid`, `columnindex`, `columnname`) VALUES
(1, 1, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(1, 2, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(1, 3, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(1, 4, 'vtiger_leadaddress:phone:phone:Leads_Phone:V'),
(1, 5, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(1, 6, 'vtiger_leaddetails:email:email:Leads_Email:V'),
(1, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Leads_Assigned_To:V'),
(2, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(2, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(2, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(2, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(2, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(2, 5, 'vtiger_leaddetails:email:email:Leads_Email:V'),
(3, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(3, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(3, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(3, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(3, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(3, 5, 'vtiger_leaddetails:email:email:Leads_Email:V'),
(4, 1, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(4, 2, 'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),
(4, 3, 'vtiger_account:website:website:Accounts_Website:V'),
(4, 4, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(4, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(5, 0, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(5, 1, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(5, 2, 'vtiger_account:website:website:Accounts_Website:V'),
(5, 3, 'vtiger_account:rating:rating:Accounts_Rating:V'),
(5, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(6, 0, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(6, 1, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(6, 2, 'vtiger_account:website:website:Accounts_Website:V'),
(6, 3, 'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),
(6, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(7, 1, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(7, 2, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(7, 3, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(7, 4, 'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:V'),
(7, 5, 'vtiger_contactdetails:email:email:Contacts_Email:V'),
(7, 6, 'vtiger_contactdetails:phone:phone:Contacts_Office_Phone:V'),
(7, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),
(8, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(8, 1, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(8, 2, 'vtiger_contactaddress:mailingstreet:mailingstreet:Contacts_Mailing_Street:V'),
(8, 3, 'vtiger_contactaddress:mailingcity:mailingcity:Contacts_Mailing_City:V'),
(8, 4, 'vtiger_contactaddress:mailingstate:mailingstate:Contacts_Mailing_State:V'),
(8, 5, 'vtiger_contactaddress:mailingzip:mailingzip:Contacts_Mailing_Zip:V'),
(8, 6, 'vtiger_contactaddress:mailingcountry:mailingcountry:Contacts_Mailing_Country:V'),
(9, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(9, 1, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(9, 2, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(9, 3, 'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:V'),
(9, 4, 'vtiger_contactdetails:email:email:Contacts_Email:V'),
(9, 5, 'vtiger_contactsubdetails:otherphone:otherphone:Contacts_Other_Phone:V'),
(9, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),
(10, 1, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(10, 2, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(10, 3, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V'),
(10, 4, 'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),
(10, 5, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(10, 6, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(10, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(10, 8, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(11, 0, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(11, 1, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(11, 2, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(11, 3, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(11, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(11, 5, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(12, 0, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(12, 1, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(12, 2, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(12, 3, 'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),
(12, 4, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(12, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(12, 6, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(13, 1, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(13, 2, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:V'),
(13, 3, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(13, 4, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(13, 5, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(13, 6, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(14, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(14, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:V'),
(14, 2, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(14, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:V'),
(14, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(14, 5, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(15, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(15, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:V'),
(15, 2, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(15, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:V'),
(15, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(15, 5, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(16, 1, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(16, 2, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(16, 3, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:V'),
(16, 4, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:V'),
(16, 5, 'vtiger_quotes:total:hdnGrandTotal:Quotes_Total:V'),
(16, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(17, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(17, 2, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:V'),
(17, 3, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:V'),
(17, 4, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(17, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(18, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(18, 1, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:V'),
(18, 2, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:V'),
(18, 3, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(18, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(19, 0, 'vtiger_activity:status:taskstatus:Calendar_Status:V'),
(19, 1, 'vtiger_activity:activitytype:activitytype:Calendar_Type:V'),
(19, 2, 'vtiger_activity:subject:subject:Calendar_Subject:V'),
(19, 3, 'vtiger_seactivityrel:crmid:parent_id:Calendar_Related_to:V'),
(19, 4, 'vtiger_activity:date_start:date_start:Calendar_Start_Date:D'),
(19, 5, 'vtiger_activity:due_date:due_date:Calendar_End_Date:D'),
(19, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Calendar_Assigned_To:V'),
(20, 0, 'vtiger_activity:subject:subject:Emails_Subject:V'),
(20, 1, 'vtiger_emaildetails:to_email:saved_toid:Emails_To:V'),
(20, 2, 'vtiger_activity:date_start:date_start:Emails_Date_Sent:D'),
(21, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(21, 2, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:V'),
(21, 3, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(21, 4, 'vtiger_invoice:total:hdnGrandTotal:Invoice_Total:V'),
(21, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(22, 1, 'vtiger_notes:title:notes_title:Notes_Title:V'),
(22, 2, 'vtiger_notes:filename:filename:Notes_File:V'),
(22, 3, 'vtiger_crmentity:modifiedtime:modifiedtime:Notes_Modified_Time:DT'),
(22, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Notes_Assigned_To:V'),
(23, 1, 'vtiger_pricebook:bookname:bookname:PriceBooks_Price_Book_Name:V'),
(23, 2, 'vtiger_pricebook:active:active:PriceBooks_Active:V'),
(23, 3, 'vtiger_pricebook:currency_id:currency_id:PriceBooks_Currency:V'),
(24, 1, 'vtiger_products:productname:productname:Products_Product_Name:V'),
(24, 2, 'vtiger_products:productcode:productcode:Products_Part_Number:V'),
(24, 3, 'vtiger_products:commissionrate:commissionrate:Products_Commission_Rate:V'),
(24, 4, 'vtiger_products:qtyinstock:qtyinstock:Products_Quantity_In_Stock:V'),
(24, 5, 'vtiger_products:qty_per_unit:qty_per_unit:Products_Qty/Unit:V'),
(24, 6, 'vtiger_products:unit_price:unit_price:Products_Unit_Price:V'),
(25, 1, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(25, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:V'),
(25, 3, 'vtiger_purchaseorder:tracking_no:tracking_no:PurchaseOrder_Tracking_Number:V'),
(25, 4, 'vtiger_purchaseorder:total:hdnGrandTotal:PurchaseOrder_Total:V'),
(25, 5, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(26, 1, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(26, 2, 'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:V'),
(26, 3, 'vtiger_salesorder:quoteid:quote_id:SalesOrder_Quote_Name:V'),
(26, 4, 'vtiger_salesorder:total:hdnGrandTotal:SalesOrder_Total:V'),
(26, 5, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(27, 1, 'vtiger_vendor:vendorname:vendorname:Vendors_Vendor_Name:V'),
(27, 2, 'vtiger_vendor:phone:phone:Vendors_Phone:V'),
(27, 3, 'vtiger_vendor:email:email:Vendors_Email:V'),
(27, 4, 'vtiger_vendor:category:category:Vendors_Category:V'),
(27, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Vendors_Assigned_To:V'),
(28, 1, 'vtiger_faq:question:question:Faq_Question:V'),
(28, 2, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(28, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:V'),
(28, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(28, 5, 'vtiger_crmentity:modifiedtime:modifiedtime:Faq_Modified_Time:DT'),
(29, 1, 'vtiger_campaign:campaignname:campaignname:Campaigns_Campaign_Name:V'),
(29, 2, 'vtiger_campaign:campaigntype:campaigntype:Campaigns_Campaign_Type:N'),
(29, 3, 'vtiger_campaign:campaignstatus:campaignstatus:Campaigns_Campaign_Status:N'),
(29, 4, 'vtiger_campaign:expectedrevenue:expectedrevenue:Campaigns_Expected_Revenue:V'),
(29, 5, 'vtiger_campaign:closingdate:closingdate:Campaigns_Expected_Close_Date:D'),
(29, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Campaigns_Assigned_To:V'),
(30, 0, 'subject:subject:subject:Subject:V'),
(30, 1, 'from:fromname:fromname:From:N'),
(30, 2, 'to:tpname:toname:To:N'),
(30, 3, 'body:body:body:Body:V'),
(31, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(31, 1, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(31, 2, 'vtiger_faq:product_id:product_id:Faq_Product_Name:V'),
(31, 3, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(31, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(32, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(32, 1, 'vtiger_faq:answer:faq_answer:Faq_Answer:V'),
(32, 2, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(32, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:V'),
(32, 4, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(32, 5, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(33, 0, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(33, 1, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),
(33, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:V'),
(33, 3, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(33, 4, 'vtiger_purchaseorder:duedate:duedate:PurchaseOrder_Due_Date:V'),
(34, 0, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(34, 1, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:V'),
(34, 2, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(34, 3, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),
(34, 4, 'vtiger_purchaseorder:carrier:carrier:PurchaseOrder_Carrier:V'),
(34, 5, 'vtiger_poshipads:ship_street:ship_street:PurchaseOrder_Shipping_Address:V'),
(35, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(35, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(35, 2, 'vtiger_invoice:accountid:account_id:Invoice_Account_Name:V'),
(35, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:V'),
(35, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(35, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(35, 6, 'vtiger_crmentity:createdtime:createdtime:Invoice_Created_Time:DT'),
(36, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(36, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(36, 2, 'vtiger_invoice:accountid:account_id:Invoice_Account_Name:V'),
(36, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:V'),
(36, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(36, 5, 'vtiger_invoiceshipads:ship_street:ship_street:Invoice_Shipping_Address:V'),
(36, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(37, 0, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(37, 1, 'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:V'),
(37, 2, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V'),
(37, 3, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(37, 4, 'vtiger_soshipads:ship_street:ship_street:SalesOrder_Shipping_Address:V'),
(37, 5, 'vtiger_salesorder:carrier:carrier:SalesOrder_Carrier:V'),
(38, 1, 'vtiger_servicecontracts:subject:subject:ServiceContracts_Subject:V'),
(38, 2, 'vtiger_servicecontracts:sc_related_to:sc_related_to:ServiceContracts_Related_to:V'),
(38, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ServiceContracts_Assigned_To:V'),
(38, 4, 'vtiger_servicecontracts:start_date:start_date:ServiceContracts_Start_Date:D'),
(38, 5, 'vtiger_servicecontracts:due_date:due_date:ServiceContracts_Due_date:D'),
(38, 7, 'vtiger_servicecontracts:progress:progress:ServiceContracts_Progress:N'),
(38, 8, 'vtiger_servicecontracts:contract_status:contract_status:ServiceContracts_Status:V'),
(39, 0, 'vtiger_pbxmanager:callstatus:callstatus:PBXManager_Call_Status:V'),
(39, 1, 'vtiger_pbxmanager:customernumber:customernumber:PBXManager_Customer_Number:V'),
(39, 2, 'vtiger_pbxmanager:customer:customer:PBXManager_Customer:V'),
(39, 3, 'vtiger_pbxmanager:user:user:PBXManager_User:V'),
(39, 4, 'vtiger_pbxmanager:recordingurl:recordingurl:PBXManager_Recording_URL:V'),
(39, 5, 'vtiger_pbxmanager:totalduration:totalduration:PBXManager_Total_Duration:I'),
(39, 6, 'vtiger_pbxmanager:starttime:starttime:PBXManager_Start_Time:DT'),
(40, 1, 'vtiger_service:servicename:servicename:Services_Service_Name:V'),
(40, 2, 'vtiger_service:service_usageunit:service_usageunit:Services_Usage_Unit:V'),
(40, 3, 'vtiger_service:unit_price:unit_price:Services_Price:N'),
(40, 4, 'vtiger_service:qty_per_unit:qty_per_unit:Services_No_of_Units:N'),
(40, 5, 'vtiger_service:servicecategory:servicecategory:Services_Service_Category:V'),
(40, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Services_Owner:I'),
(41, 1, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(41, 2, 'vtiger_assets:account:account:Assets_Customer_Name:V'),
(41, 3, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(42, 0, 'vtiger_smsnotifier:message:message:SMSNotifier_message:V'),
(42, 2, 'vtiger_crmentity:smownerid:assigned_user_id:SMSNotifier_Assigned_To:V'),
(42, 3, 'vtiger_crmentity:createdtime:createdtime:SMSNotifier_Created_Time:DT'),
(42, 4, 'vtiger_crmentity:modifiedtime:modifiedtime:SMSNotifier_Modified_Time:DT'),
(43, 0, 'vtiger_modcomments:commentcontent:commentcontent:ModComments_Comment:V'),
(43, 1, 'vtiger_modcomments:related_to:related_to:ModComments_Related_To:V'),
(43, 2, 'vtiger_crmentity:modifiedtime:modifiedtime:ModComments_Modified_Time:DT'),
(43, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ModComments_Assigned_To:V'),
(47, 0, 'vtiger_projectmilestone:projectmilestonename:projectmilestonename:ProjectMilestone_Project_Milestone_Name:V'),
(47, 1, 'vtiger_projectmilestone:projectmilestonedate:projectmilestonedate:ProjectMilestone_Milestone_Date:D'),
(47, 3, 'vtiger_crmentity:description:description:ProjectMilestone_description:V'),
(47, 4, 'vtiger_crmentity:createdtime:createdtime:ProjectMilestone_Created_Time:T'),
(47, 5, 'vtiger_crmentity:modifiedtime:modifiedtime:ProjectMilestone_Modified_Time:T'),
(48, 2, 'vtiger_projecttask:projecttaskname:projecttaskname:ProjectTask_Project_Task_Name:V'),
(48, 3, 'vtiger_projecttask:projectid:projectid:ProjectTask_Related_to:V'),
(48, 4, 'vtiger_projecttask:projecttaskpriority:projecttaskpriority:ProjectTask_Priority:V'),
(48, 5, 'vtiger_projecttask:projecttaskprogress:projecttaskprogress:ProjectTask_Progress:V'),
(48, 6, 'vtiger_projecttask:projecttaskhours:projecttaskhours:ProjectTask_Worked_Hours:V'),
(48, 7, 'vtiger_projecttask:startdate:startdate:ProjectTask_Start_Date:D'),
(48, 8, 'vtiger_projecttask:enddate:enddate:ProjectTask_End_Date:D'),
(48, 9, 'vtiger_crmentity:smownerid:assigned_user_id:ProjectTask_Assigned_To:V'),
(49, 0, 'vtiger_project:projectname:projectname:Project_Project_Name:V'),
(49, 1, 'vtiger_project:linktoaccountscontacts:linktoaccountscontacts:Project_Related_to:V'),
(49, 2, 'vtiger_project:startdate:startdate:Project_Start_Date:D'),
(49, 3, 'vtiger_project:targetenddate:targetenddate:Project_Target_End_Date:D'),
(49, 4, 'vtiger_project:actualenddate:actualenddate:Project_Actual_End_Date:D'),
(49, 5, 'vtiger_project:targetbudget:targetbudget:Project_Target_Budget:V'),
(49, 6, 'vtiger_project:progress:progress:Project_Progress:V'),
(49, 7, 'vtiger_project:projectstatus:projectstatus:Project_Status:V'),
(49, 8, 'vtiger_crmentity:smownerid:assigned_user_id:Project_Assigned_To:V'),
(50, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(50, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(50, 2, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(50, 3, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(50, 4, 'vtiger_assets:dateinservice:dateinservice:Assets_Date_in_Service:D'),
(50, 5, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(50, 6, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(50, 7, 'vtiger_assets:contact:contact:Assets_Contact_Name:V'),
(51, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(51, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(51, 2, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(51, 3, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(51, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(51, 5, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(52, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(52, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(52, 2, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(52, 3, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(52, 4, 'vtiger_assets:dateinservice:dateinservice:Assets_Date_in_Service:D'),
(52, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(52, 6, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(53, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(53, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(53, 2, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(53, 3, 'vtiger_assets:dateinservice:dateinservice:Assets_Date_in_Service:D'),
(53, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(53, 5, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(54, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(54, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(54, 2, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(54, 3, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(54, 4, 'vtiger_assets:dateinservice:dateinservice:Assets_Date_in_Service:D'),
(54, 5, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(54, 6, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(55, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(55, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(55, 2, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(55, 3, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(55, 4, 'vtiger_assets:dateinservice:dateinservice:Assets_Date_in_Service:D'),
(55, 5, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(55, 6, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(56, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(56, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(56, 2, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(56, 3, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(56, 4, 'vtiger_assets:dateinservice:dateinservice:Assets_Date_in_Service:D'),
(56, 5, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(56, 6, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(57, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(57, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(57, 2, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(57, 3, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(57, 4, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(57, 5, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(58, 0, 'vtiger_assets:asset_no:asset_no:Assets_Asset_No:V'),
(58, 1, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(58, 2, 'vtiger_assets:serialnumber:serialnumber:Assets_Serial_Number:V'),
(58, 3, 'vtiger_crmentity:smownerid:assigned_user_id:Assets_Assigned_To:V'),
(58, 4, 'vtiger_assets:dateinservice:dateinservice:Assets_Date_in_Service:D'),
(58, 5, 'vtiger_assets:assetstatus:assetstatus:Assets_Status:V'),
(58, 6, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(59, 0, 'vtiger_maintenance:assets:assets:Maintenance_Assets:V'),
(59, 1, 'vtiger_crmentity:smownerid:assigned_user_id:Maintenance_Assigned_To:V'),
(59, 2, 'vtiger_crmentity:createdtime:createdtime:Maintenance_Created_Time:T'),
(60, 0, 'vtiger_valuation:assets:assets:Valuation_Assets:V'),
(60, 1, 'vtiger_crmentity:smownerid:assigned_user_id:Valuation_Assigned_To:V'),
(60, 2, 'vtiger_crmentity:createdtime:createdtime:Valuation_Created_Time:T'),
(61, 0, 'vtiger_maintenance:assets:assets:Maintenance_Assets:V'),
(61, 1, 'vtiger_crmentity:smownerid:assigned_user_id:Maintenance_Assigned_To:V'),
(61, 2, 'vtiger_maintenancecf:cf_737:cf_737:Maintenance_Zone:V'),
(61, 3, 'vtiger_maintenancecf:cf_739:cf_739:Maintenance_User:V'),
(61, 4, 'vtiger_maintenancecf:cf_775:cf_775:Maintenance_Room_Number:I'),
(61, 5, 'vtiger_maintenancecf:cf_785:cf_785:Maintenance_Asset_Number:V'),
(61, 6, 'vtiger_maintenancecf:cf_743:cf_743:Maintenance_Material_Cost:N'),
(61, 7, 'vtiger_maintenancecf:cf_745:cf_745:Maintenance_Company_Cost:N'),
(61, 8, 'vtiger_maintenancecf:cf_779:cf_779:Maintenance_Description:V'),
(61, 9, 'vtiger_maintenancecf:cf_741:cf_741:Maintenance_Designation:V'),
(62, 0, 'vtiger_maintenance:assets:assets:Maintenance_Assets:V'),
(62, 1, 'vtiger_maintenancecf:cf_737:cf_737:Maintenance_Zone:V'),
(62, 2, 'vtiger_maintenancecf:cf_739:cf_739:Maintenance_User:V'),
(62, 3, 'vtiger_maintenancecf:cf_775:cf_775:Maintenance_Room_Number:I'),
(62, 4, 'vtiger_maintenancecf:cf_777:cf_777:Maintenance_Asset_Type:V'),
(62, 5, 'vtiger_maintenancecf:cf_785:cf_785:Maintenance_Asset_Number:V'),
(62, 6, 'vtiger_maintenancecf:cf_743:cf_743:Maintenance_Material_Cost:N'),
(63, 0, 'vtiger_valuation:assets:assets:Valuation_Assets:V'),
(63, 1, 'vtiger_valuationcf:cf_751:cf_751:Valuation_Zone:V'),
(63, 2, 'vtiger_valuationcf:cf_753:cf_753:Valuation_Address:V'),
(63, 3, 'vtiger_valuationcf:cf_767:cf_767:Valuation_Valuation_Date:D'),
(63, 4, 'vtiger_valuationcf:cf_761:cf_761:Valuation_Name_Of_Surveryor:V'),
(63, 5, 'vtiger_valuationcf:cf_771:cf_771:Valuation_Volume_(Cubic_Meter):NN'),
(63, 6, 'vtiger_valuationcf:cf_769:cf_769:Valuation_Gross_Floor_Area_(Square_meter):NN'),
(63, 7, 'vtiger_valuationcf:cf_765:cf_765:Valuation_Budget:V'),
(63, 8, 'vtiger_valuationcf:cf_757:cf_757:Valuation_Type_of_Building:V'),
(64, 0, 'vtiger_valuation:assets:assets:Valuation_Assets:V'),
(64, 1, 'vtiger_valuationcf:cf_751:cf_751:Valuation_Zone:V'),
(64, 2, 'vtiger_valuationcf:cf_753:cf_753:Valuation_Address:V'),
(64, 3, 'vtiger_valuationcf:cf_767:cf_767:Valuation_Valuation_Date:D'),
(64, 4, 'vtiger_valuationcf:cf_761:cf_761:Valuation_Name_Of_Surveryor:V'),
(64, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Valuation_Assigned_To:V');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvstdfilter`
--

CREATE TABLE IF NOT EXISTS `vtiger_cvstdfilter` (
  `cvid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `stdfilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`cvid`),
  KEY `cvstdfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cvstdfilter`
--

INSERT INTO `vtiger_cvstdfilter` (`cvid`, `columnname`, `stdfilter`, `startdate`, `enddate`) VALUES
(3, 'vtiger_crmentity:modifiedtime:modifiedtime:Leads_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30'),
(6, 'vtiger_crmentity:createdtime:createdtime:Accounts_Created_Time', 'thisweek', '2005-06-19', '2005-06-25'),
(9, 'vtiger_contactsubdetails:birthday:birthday:Contacts_Birthdate', 'today', '2005-06-25', '2005-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2grp`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2grp` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_grp2grp_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2role` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_grp2role_share_groupid` (`share_groupid`),
  KEY `idx_datashare_grp2role_to_roleid` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2rs`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2rs` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_grp2rs_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_module_rel`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_module_rel` (
  `shareid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `relationtype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_module_rel_tabid` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodules`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodules` (
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `tabid` int(19) DEFAULT NULL,
  `relatedto_tabid` int(19) DEFAULT NULL,
  PRIMARY KEY (`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodules_tabid_idx` (`tabid`),
  KEY `datashare_relatedmodules_relatedto_tabid_idx` (`relatedto_tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_datashare_relatedmodules`
--

INSERT INTO `vtiger_datashare_relatedmodules` (`datashare_relatedmodule_id`, `tabid`, `relatedto_tabid`) VALUES
(1, 6, 2),
(2, 6, 13),
(3, 6, 20),
(4, 6, 22),
(5, 6, 23),
(6, 2, 20),
(7, 2, 22),
(8, 20, 22),
(9, 22, 23);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodules_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodules_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_datashare_relatedmodules_seq`
--

INSERT INTO `vtiger_datashare_relatedmodules_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodule_permission`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodule_permission` (
  `shareid` int(19) NOT NULL,
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`,`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodule_permission_shareid_permissions_idx` (`shareid`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2group`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2group` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_role2group_share_roleid` (`share_roleid`),
  KEY `idx_datashare_role2group_to_groupid` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2role` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_role2role_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2rs`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_role2s_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2s_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2grp`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2grp` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2grp_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2role` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2role_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2rs`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2rs_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `idx_datashare_rs2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_date_format`
--

CREATE TABLE IF NOT EXISTS `vtiger_date_format` (
  `date_formatid` int(19) NOT NULL AUTO_INCREMENT,
  `date_format` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`date_formatid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_date_format`
--

INSERT INTO `vtiger_date_format` (`date_formatid`, `date_format`, `sortorderid`, `presence`) VALUES
(1, 'dd-mm-yyyy', 0, 1),
(2, 'mm-dd-yyyy', 1, 1),
(3, 'yyyy-mm-dd', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_date_format_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_date_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_date_format_seq`
--

INSERT INTO `vtiger_date_format_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dayoftheweek`
--

CREATE TABLE IF NOT EXISTS `vtiger_dayoftheweek` (
  `dayoftheweekid` int(11) NOT NULL AUTO_INCREMENT,
  `dayoftheweek` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dayoftheweekid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vtiger_dayoftheweek`
--

INSERT INTO `vtiger_dayoftheweek` (`dayoftheweekid`, `dayoftheweek`, `sortorderid`, `presence`) VALUES
(1, 'Sunday', 1, 1),
(2, 'Monday', 2, 1),
(3, 'Tuesday', 3, 1),
(4, 'Wednesday', 4, 1),
(5, 'Thursday', 5, 1),
(6, 'Friday', 6, 1),
(7, 'Saturday', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dayoftheweek_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_dayoftheweek_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_dayoftheweek_seq`
--

INSERT INTO `vtiger_dayoftheweek_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultactivitytype`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaultactivitytype` (
  `defaultactivitytypeid` int(11) NOT NULL AUTO_INCREMENT,
  `defaultactivitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`defaultactivitytypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_defaultactivitytype`
--

INSERT INTO `vtiger_defaultactivitytype` (`defaultactivitytypeid`, `defaultactivitytype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Call', 1, 299, 1),
(2, 'Meeting', 1, 300, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultactivitytype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaultactivitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_defaultactivitytype_seq`
--

INSERT INTO `vtiger_defaultactivitytype_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultcv`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaultcv` (
  `tabid` int(19) NOT NULL,
  `defaultviewname` varchar(50) NOT NULL,
  `query` text,
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaulteventstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaulteventstatus` (
  `defaulteventstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `defaulteventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`defaulteventstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_defaulteventstatus`
--

INSERT INTO `vtiger_defaulteventstatus` (`defaulteventstatusid`, `defaulteventstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Planned', 1, 296, 1),
(2, 'Held', 1, 297, 2),
(3, 'Not Held', 1, 298, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaulteventstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaulteventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_defaulteventstatus_seq`
--

INSERT INTO `vtiger_defaulteventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_default_record_view`
--

CREATE TABLE IF NOT EXISTS `vtiger_default_record_view` (
  `default_record_viewid` int(11) NOT NULL AUTO_INCREMENT,
  `default_record_view` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`default_record_viewid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_default_record_view`
--

INSERT INTO `vtiger_default_record_view` (`default_record_viewid`, `default_record_view`, `sortorderid`, `presence`) VALUES
(1, 'Summary', 1, 1),
(2, 'Detail', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_default_record_view_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_default_record_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_default_record_view_seq`
--

INSERT INTO `vtiger_default_record_view_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_field`
--

CREATE TABLE IF NOT EXISTS `vtiger_def_org_field` (
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL,
  PRIMARY KEY (`fieldid`),
  KEY `def_org_field_tabid_fieldid_idx` (`tabid`,`fieldid`),
  KEY `def_org_field_tabid_idx` (`tabid`),
  KEY `def_org_field_visible_fieldid_idx` (`visible`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_def_org_field`
--

INSERT INTO `vtiger_def_org_field` (`tabid`, `fieldid`, `visible`, `readonly`) VALUES
(6, 1, 0, 0),
(6, 2, 0, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(7, 37, 0, 0),
(7, 38, 0, 0),
(7, 39, 0, 0),
(7, 40, 0, 0),
(7, 41, 0, 0),
(7, 42, 0, 0),
(7, 43, 0, 0),
(7, 44, 0, 0),
(7, 45, 0, 0),
(7, 46, 0, 0),
(7, 47, 0, 0),
(7, 48, 0, 0),
(7, 49, 0, 0),
(7, 50, 0, 0),
(7, 51, 0, 0),
(7, 52, 0, 0),
(7, 53, 0, 0),
(7, 54, 0, 0),
(7, 55, 0, 0),
(7, 56, 0, 0),
(7, 57, 0, 0),
(7, 58, 0, 0),
(7, 59, 0, 0),
(7, 60, 0, 0),
(7, 61, 0, 0),
(7, 62, 0, 0),
(7, 63, 0, 0),
(7, 64, 0, 0),
(7, 65, 0, 0),
(4, 66, 0, 0),
(4, 67, 0, 0),
(4, 68, 0, 0),
(4, 69, 0, 0),
(4, 70, 0, 0),
(4, 71, 0, 0),
(4, 72, 0, 0),
(4, 73, 0, 0),
(4, 74, 0, 0),
(4, 75, 0, 0),
(4, 76, 0, 0),
(4, 77, 0, 0),
(4, 78, 0, 0),
(4, 79, 0, 0),
(4, 80, 0, 0),
(4, 81, 0, 0),
(4, 82, 0, 0),
(4, 83, 0, 0),
(4, 84, 0, 0),
(4, 85, 0, 0),
(4, 86, 0, 0),
(4, 87, 0, 0),
(4, 88, 0, 0),
(4, 89, 0, 0),
(4, 90, 0, 0),
(4, 91, 0, 0),
(4, 92, 0, 0),
(4, 93, 0, 0),
(4, 94, 0, 0),
(4, 95, 0, 0),
(4, 96, 0, 0),
(4, 97, 0, 0),
(4, 98, 0, 0),
(4, 99, 0, 0),
(4, 100, 0, 0),
(4, 101, 0, 0),
(4, 102, 0, 0),
(4, 103, 0, 0),
(4, 104, 0, 0),
(4, 105, 0, 0),
(4, 106, 0, 0),
(4, 107, 0, 0),
(4, 108, 0, 0),
(4, 109, 0, 0),
(2, 110, 0, 0),
(2, 111, 0, 0),
(2, 112, 0, 0),
(2, 113, 0, 0),
(2, 114, 0, 0),
(2, 115, 0, 0),
(2, 116, 0, 0),
(2, 117, 0, 0),
(2, 118, 0, 0),
(2, 119, 0, 0),
(2, 120, 0, 0),
(2, 121, 0, 0),
(2, 122, 0, 0),
(2, 123, 0, 0),
(2, 124, 0, 0),
(2, 125, 0, 0),
(26, 126, 0, 0),
(26, 127, 0, 0),
(26, 128, 0, 0),
(26, 129, 0, 0),
(26, 130, 0, 0),
(26, 131, 0, 0),
(26, 132, 0, 0),
(26, 133, 0, 0),
(26, 134, 0, 0),
(26, 135, 0, 0),
(26, 136, 0, 0),
(26, 137, 0, 0),
(26, 138, 0, 0),
(26, 139, 0, 0),
(26, 140, 0, 0),
(26, 141, 0, 0),
(26, 142, 0, 0),
(26, 143, 0, 0),
(26, 144, 0, 0),
(26, 145, 0, 0),
(26, 146, 0, 0),
(26, 147, 0, 0),
(26, 148, 0, 0),
(26, 149, 0, 0),
(26, 150, 0, 0),
(4, 151, 0, 0),
(6, 152, 0, 0),
(7, 153, 0, 0),
(26, 154, 0, 0),
(13, 155, 0, 0),
(13, 156, 0, 0),
(13, 157, 0, 0),
(13, 158, 0, 0),
(13, 159, 0, 0),
(13, 160, 0, 0),
(13, 161, 0, 0),
(13, 162, 0, 0),
(13, 163, 0, 0),
(13, 164, 0, 0),
(13, 165, 0, 0),
(13, 166, 0, 0),
(13, 167, 0, 0),
(13, 168, 0, 0),
(13, 169, 0, 0),
(13, 170, 0, 0),
(13, 171, 0, 0),
(13, 172, 0, 0),
(14, 173, 0, 0),
(14, 174, 0, 0),
(14, 175, 0, 0),
(14, 176, 0, 0),
(14, 177, 0, 0),
(14, 178, 0, 0),
(14, 179, 0, 0),
(14, 180, 0, 0),
(14, 181, 0, 0),
(14, 182, 0, 0),
(14, 183, 0, 0),
(14, 184, 0, 0),
(14, 185, 0, 0),
(14, 186, 0, 0),
(14, 187, 0, 0),
(14, 188, 0, 0),
(14, 189, 0, 0),
(14, 190, 0, 0),
(14, 191, 0, 0),
(14, 192, 0, 0),
(14, 193, 0, 0),
(14, 194, 0, 0),
(14, 195, 0, 0),
(14, 196, 0, 0),
(14, 197, 0, 0),
(14, 198, 0, 0),
(14, 199, 0, 0),
(14, 200, 0, 0),
(14, 201, 0, 0),
(14, 202, 0, 0),
(14, 203, 0, 0),
(8, 204, 0, 0),
(8, 205, 0, 0),
(8, 206, 0, 0),
(8, 207, 0, 0),
(8, 208, 0, 0),
(8, 209, 0, 0),
(8, 210, 0, 0),
(8, 211, 0, 0),
(8, 212, 0, 0),
(8, 213, 0, 0),
(8, 214, 0, 0),
(8, 215, 0, 0),
(8, 216, 0, 0),
(8, 217, 0, 0),
(8, 218, 0, 0),
(10, 219, 0, 0),
(10, 220, 0, 0),
(10, 221, 0, 0),
(10, 222, 0, 0),
(10, 223, 0, 0),
(10, 224, 0, 0),
(10, 225, 0, 0),
(10, 226, 0, 0),
(10, 227, 0, 0),
(10, 228, 0, 0),
(10, 229, 0, 0),
(10, 230, 0, 0),
(9, 231, 0, 0),
(9, 232, 0, 0),
(9, 233, 0, 0),
(9, 234, 0, 0),
(9, 235, 0, 0),
(9, 236, 0, 0),
(9, 237, 0, 0),
(9, 238, 0, 0),
(9, 239, 0, 0),
(9, 240, 0, 0),
(9, 241, 0, 0),
(9, 242, 0, 0),
(9, 243, 0, 0),
(9, 244, 0, 0),
(9, 245, 0, 0),
(9, 246, 0, 0),
(9, 247, 0, 0),
(9, 248, 0, 0),
(9, 249, 0, 0),
(9, 250, 0, 0),
(9, 251, 0, 0),
(9, 252, 0, 0),
(9, 253, 0, 0),
(9, 254, 0, 0),
(16, 255, 0, 0),
(16, 256, 0, 0),
(16, 257, 0, 0),
(16, 258, 0, 0),
(16, 259, 0, 0),
(16, 260, 0, 0),
(16, 261, 0, 0),
(16, 262, 0, 0),
(16, 263, 0, 0),
(16, 264, 0, 0),
(16, 265, 0, 0),
(16, 266, 0, 0),
(16, 267, 0, 0),
(16, 268, 0, 0),
(16, 269, 0, 0),
(16, 270, 0, 0),
(16, 271, 0, 0),
(16, 272, 0, 0),
(16, 273, 0, 0),
(16, 274, 0, 0),
(16, 275, 0, 0),
(16, 276, 0, 0),
(16, 277, 0, 0),
(15, 278, 0, 0),
(15, 279, 0, 0),
(15, 280, 0, 0),
(15, 281, 0, 0),
(15, 282, 0, 0),
(15, 283, 0, 0),
(15, 284, 0, 0),
(15, 285, 0, 0),
(15, 286, 0, 0),
(15, 287, 0, 0),
(18, 288, 0, 0),
(18, 289, 0, 0),
(18, 290, 0, 0),
(18, 291, 0, 0),
(18, 292, 0, 0),
(18, 293, 0, 0),
(18, 294, 0, 0),
(18, 295, 0, 0),
(18, 296, 0, 0),
(18, 297, 0, 0),
(18, 298, 0, 0),
(18, 299, 0, 0),
(18, 300, 0, 0),
(18, 301, 0, 0),
(18, 302, 0, 0),
(18, 303, 0, 0),
(18, 304, 0, 0),
(19, 305, 0, 0),
(19, 306, 0, 0),
(19, 307, 0, 0),
(19, 308, 0, 0),
(19, 309, 0, 0),
(19, 310, 0, 0),
(19, 311, 0, 0),
(19, 312, 0, 0),
(20, 313, 0, 0),
(20, 314, 0, 0),
(20, 315, 0, 0),
(20, 316, 0, 0),
(20, 317, 0, 0),
(20, 318, 0, 0),
(20, 319, 0, 0),
(20, 320, 0, 0),
(20, 321, 0, 0),
(20, 322, 0, 0),
(20, 323, 0, 0),
(20, 324, 0, 0),
(20, 325, 0, 0),
(20, 326, 0, 0),
(20, 327, 0, 0),
(20, 328, 0, 0),
(20, 329, 0, 0),
(20, 330, 0, 0),
(20, 331, 0, 0),
(20, 332, 0, 0),
(20, 333, 0, 0),
(20, 334, 0, 0),
(20, 335, 0, 0),
(20, 336, 0, 0),
(20, 337, 0, 0),
(20, 338, 0, 0),
(20, 339, 0, 0),
(20, 340, 0, 0),
(20, 341, 0, 0),
(20, 342, 0, 0),
(20, 343, 0, 0),
(20, 344, 0, 0),
(20, 345, 0, 0),
(20, 346, 0, 0),
(20, 347, 0, 0),
(20, 348, 0, 0),
(20, 349, 0, 0),
(21, 350, 0, 0),
(21, 351, 0, 0),
(21, 352, 0, 0),
(21, 353, 0, 0),
(21, 354, 0, 0),
(21, 355, 0, 0),
(21, 356, 0, 0),
(21, 357, 0, 0),
(21, 358, 0, 0),
(21, 359, 0, 0),
(21, 360, 0, 0),
(21, 361, 0, 0),
(21, 362, 0, 0),
(21, 363, 0, 0),
(21, 364, 0, 0),
(21, 365, 0, 0),
(21, 366, 0, 0),
(21, 367, 0, 0),
(21, 368, 0, 0),
(21, 369, 0, 0),
(21, 370, 0, 0),
(21, 371, 0, 0),
(21, 372, 0, 0),
(21, 373, 0, 0),
(21, 374, 0, 0),
(21, 375, 0, 0),
(21, 376, 0, 0),
(21, 377, 0, 0),
(21, 378, 0, 0),
(21, 379, 0, 0),
(21, 380, 0, 0),
(21, 381, 0, 0),
(21, 382, 0, 0),
(21, 383, 0, 0),
(21, 384, 0, 0),
(21, 385, 0, 0),
(21, 386, 0, 0),
(21, 387, 0, 0),
(22, 388, 0, 0),
(22, 389, 0, 0),
(22, 390, 0, 0),
(22, 391, 0, 0),
(22, 392, 0, 0),
(22, 393, 0, 0),
(22, 394, 0, 0),
(22, 395, 0, 0),
(22, 396, 0, 0),
(22, 397, 0, 0),
(22, 398, 0, 0),
(22, 399, 0, 0),
(22, 400, 0, 0),
(22, 401, 0, 0),
(22, 402, 0, 0),
(22, 403, 0, 0),
(22, 404, 0, 0),
(22, 405, 0, 0),
(22, 406, 0, 0),
(22, 407, 0, 0),
(22, 408, 0, 0),
(22, 409, 0, 0),
(22, 410, 0, 0),
(22, 411, 0, 0),
(22, 412, 0, 0),
(22, 413, 0, 0),
(22, 414, 0, 0),
(22, 415, 0, 0),
(22, 416, 0, 0),
(22, 417, 0, 0),
(22, 418, 0, 0),
(22, 419, 0, 0),
(22, 420, 0, 0),
(22, 421, 0, 0),
(22, 422, 0, 0),
(22, 423, 0, 0),
(22, 424, 0, 0),
(22, 425, 0, 0),
(22, 426, 0, 0),
(22, 427, 0, 0),
(22, 428, 0, 0),
(22, 429, 0, 0),
(22, 430, 0, 0),
(22, 431, 0, 0),
(22, 432, 0, 0),
(22, 433, 0, 0),
(22, 434, 0, 0),
(23, 435, 0, 0),
(23, 436, 0, 0),
(23, 437, 0, 0),
(23, 438, 0, 0),
(23, 439, 0, 0),
(23, 440, 0, 0),
(23, 441, 0, 0),
(23, 442, 0, 0),
(23, 443, 0, 0),
(23, 444, 0, 0),
(23, 445, 0, 0),
(23, 446, 0, 0),
(23, 447, 0, 0),
(23, 448, 0, 0),
(23, 449, 0, 0),
(23, 450, 0, 0),
(23, 451, 0, 0),
(23, 452, 0, 0),
(23, 453, 0, 0),
(23, 454, 0, 0),
(23, 455, 0, 0),
(23, 456, 0, 0),
(23, 457, 0, 0),
(23, 458, 0, 0),
(23, 459, 0, 0),
(23, 460, 0, 0),
(23, 461, 0, 0),
(23, 462, 0, 0),
(23, 463, 0, 0),
(23, 464, 0, 0),
(23, 465, 0, 0),
(23, 466, 0, 0),
(23, 467, 0, 0),
(23, 468, 0, 0),
(23, 469, 0, 0),
(23, 470, 0, 0),
(23, 471, 0, 0),
(23, 472, 0, 0),
(23, 473, 0, 0),
(29, 474, 0, 0),
(29, 478, 0, 0),
(29, 479, 0, 0),
(29, 481, 0, 0),
(29, 488, 0, 0),
(29, 489, 0, 0),
(29, 490, 0, 0),
(29, 491, 0, 0),
(29, 493, 0, 0),
(29, 494, 0, 0),
(29, 495, 0, 0),
(29, 496, 0, 0),
(29, 497, 0, 0),
(29, 502, 0, 0),
(29, 503, 0, 0),
(29, 504, 0, 0),
(29, 505, 0, 0),
(29, 513, 0, 0),
(10, 518, 0, 0),
(10, 519, 0, 0),
(10, 520, 0, 0),
(10, 521, 0, 0),
(10, 522, 0, 0),
(10, 523, 0, 0),
(31, 524, 0, 0),
(31, 525, 0, 0),
(31, 526, 0, 0),
(31, 527, 0, 0),
(31, 528, 0, 0),
(31, 529, 0, 0),
(31, 530, 0, 0),
(31, 531, 0, 0),
(31, 532, 0, 0),
(31, 533, 0, 0),
(31, 534, 0, 0),
(31, 535, 0, 0),
(31, 536, 0, 0),
(31, 537, 0, 0),
(31, 538, 0, 0),
(31, 539, 0, 0),
(31, 540, 0, 0),
(31, 541, 0, 0),
(31, 542, 0, 0),
(36, 543, 0, 0),
(36, 544, 0, 0),
(36, 545, 0, 0),
(36, 546, 0, 0),
(36, 547, 0, 0),
(36, 548, 0, 0),
(36, 549, 0, 0),
(36, 550, 0, 0),
(36, 551, 0, 0),
(36, 552, 0, 0),
(36, 553, 0, 0),
(36, 554, 0, 0),
(36, 555, 0, 0),
(36, 556, 0, 0),
(36, 557, 0, 0),
(36, 558, 0, 0),
(29, 559, 0, 0),
(37, 560, 0, 0),
(37, 561, 0, 0),
(37, 562, 0, 0),
(37, 563, 0, 0),
(37, 564, 0, 0),
(37, 565, 0, 0),
(37, 566, 0, 0),
(37, 567, 0, 0),
(37, 568, 0, 0),
(37, 569, 0, 0),
(37, 570, 0, 0),
(37, 571, 0, 0),
(37, 572, 0, 0),
(37, 573, 0, 0),
(37, 574, 0, 0),
(37, 575, 0, 0),
(37, 576, 0, 0),
(37, 577, 0, 0),
(37, 578, 0, 0),
(39, 579, 0, 0),
(39, 580, 0, 0),
(39, 581, 0, 0),
(39, 582, 0, 0),
(39, 583, 0, 0),
(39, 584, 0, 0),
(39, 585, 0, 0),
(39, 586, 0, 0),
(39, 587, 0, 0),
(39, 588, 0, 0),
(39, 589, 0, 0),
(39, 590, 0, 0),
(39, 591, 0, 0),
(39, 592, 0, 0),
(39, 593, 0, 0),
(39, 594, 0, 0),
(39, 595, 0, 0),
(39, 596, 0, 0),
(42, 597, 0, 0),
(42, 598, 0, 0),
(42, 599, 0, 0),
(42, 600, 0, 0),
(42, 601, 0, 0),
(43, 602, 0, 0),
(43, 603, 0, 0),
(43, 604, 0, 0),
(43, 605, 0, 0),
(43, 606, 0, 0),
(43, 607, 0, 0),
(43, 608, 0, 0),
(44, 609, 0, 0),
(44, 610, 0, 0),
(44, 611, 0, 0),
(44, 612, 0, 0),
(44, 613, 0, 0),
(44, 614, 0, 0),
(44, 615, 0, 0),
(44, 616, 0, 0),
(44, 617, 0, 0),
(44, 618, 0, 0),
(45, 619, 0, 0),
(45, 620, 0, 0),
(45, 621, 0, 0),
(45, 622, 0, 0),
(45, 623, 0, 0),
(45, 624, 0, 0),
(45, 625, 0, 0),
(45, 626, 0, 0),
(45, 627, 0, 0),
(45, 628, 0, 0),
(45, 629, 0, 0),
(45, 630, 0, 0),
(45, 631, 0, 0),
(45, 632, 0, 0),
(45, 633, 0, 0),
(46, 634, 0, 0),
(46, 635, 0, 0),
(46, 636, 0, 0),
(46, 637, 0, 0),
(46, 638, 0, 0),
(46, 639, 0, 0),
(46, 640, 0, 0),
(46, 641, 0, 0),
(46, 642, 0, 0),
(46, 643, 0, 0),
(46, 644, 0, 0),
(46, 645, 0, 0),
(46, 646, 0, 0),
(46, 647, 0, 0),
(46, 648, 0, 0),
(46, 649, 0, 0),
(46, 650, 0, 0),
(2, 651, 0, 0),
(29, 652, 0, 0),
(23, 653, 0, 0),
(23, 654, 0, 0),
(23, 655, 0, 0),
(23, 656, 0, 0),
(23, 657, 0, 0),
(23, 658, 0, 0),
(23, 659, 0, 0),
(23, 660, 0, 0),
(23, 661, 0, 0),
(22, 662, 0, 0),
(22, 663, 0, 0),
(22, 664, 0, 0),
(22, 665, 0, 0),
(22, 666, 0, 0),
(22, 667, 0, 0),
(22, 668, 0, 0),
(22, 669, 0, 0),
(22, 670, 0, 0),
(21, 671, 0, 0),
(21, 672, 0, 0),
(21, 673, 0, 0),
(21, 674, 0, 0),
(21, 675, 0, 0),
(21, 676, 0, 0),
(21, 677, 0, 0),
(21, 678, 0, 0),
(21, 679, 0, 0),
(20, 680, 0, 0),
(20, 681, 0, 0),
(20, 682, 0, 0),
(20, 683, 0, 0),
(20, 684, 0, 0),
(20, 685, 0, 0),
(20, 686, 0, 0),
(20, 687, 0, 0),
(20, 688, 0, 0),
(29, 689, 0, 0),
(45, 690, 0, 0),
(43, 691, 0, 0),
(29, 692, 0, 0),
(29, 693, 0, 0),
(29, 694, 0, 0),
(23, 695, 0, 0),
(22, 696, 0, 0),
(21, 697, 0, 0),
(20, 698, 0, 0),
(29, 699, 0, 0),
(6, 700, 0, 0),
(4, 701, 0, 0),
(2, 702, 0, 0),
(29, 703, 0, 0),
(23, 704, 0, 0),
(23, 705, 0, 0),
(21, 706, 0, 0),
(21, 707, 0, 0),
(18, 708, 0, 0),
(7, 709, 0, 0),
(43, 710, 0, 0),
(43, 711, 0, 0),
(23, 712, 0, 0),
(20, 713, 0, 0),
(21, 714, 0, 0),
(22, 715, 0, 0),
(29, 716, 0, 0),
(2, 717, 0, 0),
(13, 718, 0, 0),
(29, 719, 0, 0),
(13, 720, 0, 0),
(29, 721, 0, 0),
(29, 722, 0, 0),
(39, 724, 0, 0),
(50, 725, 0, 0),
(50, 726, 0, 0),
(50, 727, 0, 0),
(50, 728, 0, 0),
(51, 729, 0, 0),
(51, 730, 0, 0),
(51, 731, 0, 0),
(51, 732, 0, 0),
(39, 734, 0, 0),
(50, 740, 0, 0),
(50, 742, 0, 0),
(50, 744, 0, 0),
(50, 746, 0, 0),
(39, 750, 0, 0),
(51, 754, 0, 0),
(51, 758, 0, 0),
(51, 760, 0, 0),
(51, 762, 0, 0),
(51, 766, 0, 0),
(51, 768, 0, 0),
(51, 770, 0, 0),
(51, 772, 0, 0),
(50, 774, 0, 0),
(50, 780, 0, 0),
(51, 782, 0, 0),
(50, 784, 0, 0),
(39, 788, 0, 0),
(51, 790, 0, 0),
(51, 792, 0, 0),
(50, 794, 0, 0),
(50, 796, 0, 0),
(50, 798, 0, 0),
(50, 800, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_share`
--

CREATE TABLE IF NOT EXISTS `vtiger_def_org_share` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT,
  `tabid` int(11) NOT NULL,
  `permission` int(19) DEFAULT NULL,
  `editstatus` int(19) DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `vtiger_def_org_share`
--

INSERT INTO `vtiger_def_org_share` (`ruleid`, `tabid`, `permission`, `editstatus`) VALUES
(1, 2, 2, 0),
(2, 4, 2, 2),
(3, 6, 2, 0),
(4, 7, 2, 0),
(5, 9, 3, 1),
(6, 13, 2, 0),
(7, 16, 3, 2),
(8, 20, 2, 0),
(9, 21, 2, 0),
(10, 22, 2, 0),
(11, 23, 2, 0),
(12, 26, 2, 0),
(13, 8, 2, 0),
(14, 14, 2, 0),
(15, 31, 2, 0),
(16, 36, 3, 0),
(17, 37, 2, 0),
(18, 39, 2, 0),
(19, 42, 2, 0),
(20, 43, 2, 0),
(21, 44, 2, 0),
(22, 45, 2, 0),
(23, 46, 2, 0),
(24, 18, 2, 0),
(25, 10, 2, 0),
(26, 50, 2, 0),
(27, 51, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_share_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_def_org_share_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_def_org_share_seq`
--

INSERT INTO `vtiger_def_org_share_seq` (`id`) VALUES
(27);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_durationhrs`
--

CREATE TABLE IF NOT EXISTS `vtiger_durationhrs` (
  `hrsid` int(19) NOT NULL AUTO_INCREMENT,
  `hrs` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`hrsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_durationmins`
--

CREATE TABLE IF NOT EXISTS `vtiger_durationmins` (
  `minsid` int(19) NOT NULL AUTO_INCREMENT,
  `mins` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`minsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_duration_minutes`
--

CREATE TABLE IF NOT EXISTS `vtiger_duration_minutes` (
  `minutesid` int(19) NOT NULL AUTO_INCREMENT,
  `duration_minutes` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`minutesid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_duration_minutes`
--

INSERT INTO `vtiger_duration_minutes` (`minutesid`, `duration_minutes`, `sortorderid`, `presence`) VALUES
(1, '00', 0, 1),
(2, '15', 1, 1),
(3, '30', 2, 1),
(4, '45', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_duration_minutes_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_duration_minutes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_duration_minutes_seq`
--

INSERT INTO `vtiger_duration_minutes_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emaildetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_emaildetails` (
  `emailid` int(19) NOT NULL,
  `from_email` varchar(50) NOT NULL DEFAULT '',
  `to_email` text,
  `cc_email` text,
  `bcc_email` text,
  `assigned_user_email` varchar(50) NOT NULL DEFAULT '',
  `idlists` text,
  `email_flag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_emaildetails`
--

INSERT INTO `vtiger_emaildetails` (`emailid`, `from_email`, `to_email`, `cc_email`, `bcc_email`, `assigned_user_email`, `idlists`, `email_flag`) VALUES
(34, 'user2@user2.com', '["elipokeamosses@gmail.com"]', '[""]', '[""]', '', '30@1|', 'SENT'),
(35, 'hudsongwambe@hotmail.com', '["elipokeamosses@gmail.com"]', '[""]', '[""]', '', '30@1|', 'SENT'),
(36, 'hudsongwambe@hotmail.com', '["elipokeamosses@gmail.com"]', '[""]', '[""]', '', '30@1|', 'SENT'),
(38, 'doreenpreseino2004@gmail.com', '["hudsonguambe@gmail.com"]', '[""]', '[""]', '', '21@1|', 'SENT'),
(41, 'doreenpreseino2004@gmail.com', '["hudsonguambe@gmail.com"]', '[""]', '[""]', '', '21@1|', 'SENT'),
(42, 'doreenpreseino2004@gmail.com', '["hudsonguambe@gmail.com"]', '[""]', '[""]', '', '21@1|', 'SENT'),
(43, 'doreenpreseino2004@gmail.com', '["hudsonguambe@gmail.com"]', '[""]', '[""]', '', '21@1|', 'SENT'),
(44, 'doreenpreseino2004@gmail.com', '["hudsonguambe@gmail.com"]', '[""]', '[""]', '', '21@1|', 'SENT'),
(45, 'doreenpreseino2004@gmail.com', '["hudsonguambe@gmail.com"]', '[""]', '[""]', '', '21@1|', 'SENT'),
(58, 'elipokeamosses@gmail.com', '["inocentvicent@gmail.com"]', '[""]', '[""]', '', '21@1|', 'SENT');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailtemplates`
--

CREATE TABLE IF NOT EXISTS `vtiger_emailtemplates` (
  `foldername` varchar(100) DEFAULT NULL,
  `templatename` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `description` text,
  `body` text,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `templateid` int(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`templateid`),
  KEY `emailtemplates_foldernamd_templatename_subject_idx` (`foldername`,`templatename`,`subject`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vtiger_emailtemplates`
--

INSERT INTO `vtiger_emailtemplates` (`foldername`, `templatename`, `subject`, `description`, `body`, `deleted`, `templateid`) VALUES
('Public', 'Announcement for Release', 'Announcement for Release', 'Announcement of a release', 'Hello!   <br />\n	<br />\n	On behalf of the vtiger team,  I am pleased to announce the release of vtiger crm4.2 . This is a feature packed release including the mass email template handling, custom view feature, vtiger_reports feature and a host of other utilities. vtiger runs on all platforms.    <br />\n        <br />\n	Notable Features of vtiger are :   <br />\n	<br />\n	-Email Client Integration    <br />\n	-Trouble Ticket Integration   <br />\n	-Invoice Management Integration   <br />\n	-Reports Integration   <br />\n	-Portal Integration   <br />\n	-Enhanced Word Plugin Support   <br />\n	-Custom View Integration   <br />\n	<br />\n	Known Issues:   <br />\n	-ABCD   <br />\n	-EFGH   <br />\n	-IJKL   <br />\n	-MNOP   <br />\n	-QRST', 0, 1),
('Public', 'Pending Invoices', 'Invoices Pending', 'Payment Due', 'name <br />\nstreet, <br />\ncity, <br />\nstate, <br />\n zip) <br />\n  <br />\n Dear <br />\n <br />\n Please check the following invoices that are yet to be paid by you: <br />\n <br />\n No. Date      Amount <br />\n 1   1/1/01    $4000 <br />\n 2   2/2//01   $5000 <br />\n 3   3/3/01    $10000 <br />\n 4   7/4/01    $23560 <br />\n <br />\n Kindly let us know if there are any issues that you feel are pending to be discussed. <br />\n We will be more than happy to give you a call. <br />\n We would like to continue our business with you.', 0, 2),
('Public', 'Acceptance Proposal', 'Acceptance Proposal', 'Acceptance of Proposal', ' Dear <br />\n <br />\nYour proposal on the project XYZW has been reviewed by us <br />\nand is acceptable in its entirety. <br />\n <br />\nWe are eagerly looking forward to this project <br />\nand are pleased about having the opportunity to work <br />\ntogether. We look forward to a long standing relationship <br />\nwith your esteemed firm. <br />\n<br />\nI would like to take this opportunity to invite you <br />\nto a game of golf on Wednesday morning 9am at the <br />\nCuff Links Ground. We will be waiting for you in the <br />\nExecutive Lounge. <br />\n<br />\nLooking forward to seeing you there.', 0, 3),
('Public', 'Goods received acknowledgement', 'Goods received acknowledgement', 'Acknowledged Receipt of Goods', ' The undersigned hereby acknowledges receipt and delivery of the goods. <br />\nThe undersigned will release the payment subject to the goods being discovered not satisfactory. <br />\n<br />\nSigned under seal this <date>', 0, 4),
('Public', 'Accept Order', 'Accept Order', 'Acknowledgement/Acceptance of Order', ' Dear <br />\n         We are in receipt of your order as contained in the <br />\n   purchase order form.We consider this to be final and binding on both sides. <br />\nIf there be any exceptions noted, we shall consider them <br />\nonly if the objection is received within ten days of receipt of <br />\nthis notice. <br />\n <br />\nThank you for your patronage.', 0, 5),
('Public', 'Address Change', 'Change of Address', 'Address Change', 'Dear <br />\n <br />\nWe are relocating our office to <br />\n11111,XYZDEF Cross, <br />\nUVWWX Circle <br />\nThe telephone number for this new location is (101) 1212-1328. <br />\n<br />\nOur Manufacturing Division will continue operations <br />\nat 3250 Lovedale Square Avenue, in Frankfurt. <br />\n<br />\nWe hope to keep in touch with you all. <br />\nPlease update your addressbooks.', 0, 6),
('Public', 'Follow Up', 'Follow Up', 'Follow Up of meeting', 'Dear <br />\n<br />\nThank you for extending us the opportunity to meet with <br />\nyou and members of your staff. <br />\n<br />\nI know that John Doe serviced your account <br />\nfor many years and made many friends at your firm. He has personally <br />\ndiscussed with me the deep relationship that he had with your firm. <br />\nWhile his presence will be missed, I can promise that we will <br />\ncontinue to provide the fine service that was accorded by <br />\nJohn to your firm. <br />\n<br />\nI was genuinely touched to receive such fine hospitality. <br />\n<br />\nThank you once again.', 0, 7),
('Public', 'Target Crossed!', 'Target Crossed!', 'Fantastic Sales Spree!', 'Congratulations! <br />\n<br />\nThe numbers are in and I am proud to inform you that our <br />\ntotal sales for the previous quarter <br />\namounts to $100,000,00.00!. This is the first time <br />\nwe have exceeded the target by almost 30%. <br />\nWe have also beat the previous quarter record by a <br />\nwhopping 75%! <br />\n<br />\nLet us meet at Smoking Joe for a drink in the evening! <br />\n\nC you all there guys!', 0, 8),
('Public', 'Thanks Note', 'Thanks Note', 'Note of thanks', 'Dear <br />\n<br />\nThank you for your confidence in our ability to serve you. <br />\nWe are glad to be given the chance to serve you.I look <br />\nforward to establishing a long term partnership with you. <br />\nConsider me as a friend. <br />\nShould any need arise,please do give us a call.', 0, 9),
('Public', 'Customer Login Details', 'Customer Portal Login Details', 'Send Portal login details to customer', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM<br /> </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contact_name$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;"> Thank you very much for subscribing to the vtiger CRM - annual support service.<br />Here is your self service portal login details:</td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center">\n                                                <table width="75%" cellspacing="0" cellpadding="10" border="0" style="border: 2px solid rgb(180, 180, 179); background-color: rgb(226, 226, 225); font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal;">\n                                                        <tr>\n                                                            <td><br />User ID     : <font color="#990000"><strong> $login_name$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td>Password: <font color="#990000"><strong> $password$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td align="center"> <strong>  $URL$<br /> </strong> </td>\n                                                        </tr>\n                                                </table>\n                                                </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;"><strong>NOTE:</strong> We suggest you to change your password after logging in first time. <br /><br /> <strong><u>Help Documentation</u></strong><br />  <br /> After logging in to vtiger Self-service Portal first time, you can access the vtiger CRM documents from the <strong>Documents</strong> tab. Following documents are available for your reference:<br />\n                                                <ul>\n                                                    <li>Installation Manual (Windows &amp; Linux OS)<br /> </li>\n                                                    <li>User &amp; Administrator Manual<br /> </li>\n                                                    <li>vtiger Customer Portal - User Manual<br /> </li>\n                                                    <li>vtiger Outlook Plugin - User Manual<br /> </li>\n                                                    <li>vtiger Office Plug-in - User Manual<br /> </li>\n                                                    <li>vtiger Thunderbird Extension - User Manual<br /> </li>\n                                                    <li>vtiger Web Forms - User Manual<br /> </li>\n                                                    <li>vtiger Firefox Tool bar - User Manual<br /> </li>\n                                                </ul>\n                                                <br />  <br /> <strong><u>Knowledge Base</u></strong><br /> <br /> Periodically we update frequently asked question based on our customer experiences. You can access the latest articles from the <strong>FAQ</strong> tab.<br /> <br /> <strong><u>vtiger CRM - Details</u></strong><br /> <br /> Kindly let us know your current vtiger CRM version and system specification so that we can provide you necessary guidelines to enhance your vtiger CRM system performance. Based on your system specification we alert you about the latest security &amp; upgrade patches.<br />  <br />			 Thank you once again and wish you a wonderful experience with vtiger CRM.<br /> </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Best Regards</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">$support_team$ </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);" href="http://www.vtiger.com">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);" href="mailto:support@vtiger.com">support@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 10),
('Public', 'Support end notification before a week', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a week of support end date', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;">This is just a notification mail regarding your support end.<br /><span style="font-weight: bold;">Priority:</span> Urgent<br />Your Support is going to expire on next week<br />Please contact support@vtiger.com.<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);" href="http://www.vtiger.com">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);" href="mailto:info@vtiger.com">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 11),
('Public', 'Support end notification before a month', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a month of support end date', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;">This is just a notification mail regarding your support end.<br /><span style="font-weight: bold;">Priority:</span> Normal<br />Your Support is going to expire on next month.<br />Please contact support@vtiger.com<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a href="http://www.vtiger.com" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a href="mailto:info@vtiger.com" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailtemplates_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_emailtemplates_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_emailtemplates_seq`
--

INSERT INTO `vtiger_emailtemplates_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_email_access`
--

CREATE TABLE IF NOT EXISTS `vtiger_email_access` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `accessdate` date DEFAULT NULL,
  `accesstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_email_track`
--

CREATE TABLE IF NOT EXISTS `vtiger_email_track` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  UNIQUE KEY `link_tabidtype_idx` (`crmid`,`mailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_email_track`
--

INSERT INTO `vtiger_email_track` (`crmid`, `mailid`, `access_count`) VALUES
(30, 34, 0),
(21, 41, 0),
(21, 42, 0),
(21, 43, 0),
(21, 44, 0),
(21, 45, 0),
(21, 58, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_entityname`
--

CREATE TABLE IF NOT EXISTS `vtiger_entityname` (
  `tabid` int(19) NOT NULL DEFAULT '0',
  `modulename` varchar(50) NOT NULL,
  `tablename` varchar(100) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `entityidfield` varchar(150) NOT NULL,
  `entityidcolumn` varchar(150) NOT NULL,
  PRIMARY KEY (`tabid`),
  KEY `entityname_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_entityname`
--

INSERT INTO `vtiger_entityname` (`tabid`, `modulename`, `tablename`, `fieldname`, `entityidfield`, `entityidcolumn`) VALUES
(2, 'Potentials', 'vtiger_potential', 'potentialname', 'potentialid', 'potential_id'),
(4, 'Contacts', 'vtiger_contactdetails', 'firstname,lastname', 'contactid', 'contact_id'),
(6, 'Accounts', 'vtiger_account', 'accountname', 'accountid', 'account_id'),
(7, 'Leads', 'vtiger_leaddetails', 'firstname,lastname', 'leadid', 'leadid'),
(8, 'Documents', 'vtiger_notes', 'title', 'notesid', 'notesid'),
(9, 'Calendar', 'vtiger_activity', 'subject', 'activityid', 'activityid'),
(10, 'Emails', 'vtiger_activity', 'subject', 'activityid', 'activityid'),
(13, 'HelpDesk', 'vtiger_troubletickets', 'title', 'ticketid', 'ticketid'),
(14, 'Products', 'vtiger_products', 'productname', 'productid', 'product_id'),
(15, 'Faq', 'vtiger_faq', 'question', 'id', 'id'),
(18, 'Vendors', 'vtiger_vendor', 'vendorname', 'vendorid', 'vendor_id'),
(19, 'PriceBooks', 'vtiger_pricebook', 'bookname', 'pricebookid', 'pricebookid'),
(20, 'Quotes', 'vtiger_quotes', 'subject', 'quoteid', 'quote_id'),
(21, 'PurchaseOrder', 'vtiger_purchaseorder', 'subject', 'purchaseorderid', 'purchaseorderid'),
(22, 'SalesOrder', 'vtiger_salesorder', 'subject', 'salesorderid', 'salesorder_id'),
(23, 'Invoice', 'vtiger_invoice', 'subject', 'invoiceid', 'invoiceid'),
(26, 'Campaigns', 'vtiger_campaign', 'campaignname', 'campaignid', 'campaignid'),
(29, 'Users', 'vtiger_users', 'first_name,last_name', 'id', 'id'),
(31, 'ServiceContracts', 'vtiger_servicecontracts', 'subject', 'servicecontractsid', 'servicecontractsid'),
(36, 'PBXManager', 'vtiger_pbxmanager', 'customernumber', 'pbxmanagerid', 'pbxmanagerid'),
(37, 'Services', 'vtiger_service', 'servicename', 'serviceid', 'serviceid'),
(39, 'Assets', 'vtiger_assets', 'assetname', 'assetsid', 'assetsid'),
(42, 'SMSNotifier', 'vtiger_smsnotifier', 'message', 'smsnotifierid', 'smsnotifierid'),
(43, 'ModComments', 'vtiger_modcomments', 'commentcontent', 'modcommentsid', 'modcommentsid'),
(44, 'ProjectMilestone', 'vtiger_projectmilestone', 'projectmilestonename', 'projectmilestoneid', 'projectmilestoneid'),
(45, 'ProjectTask', 'vtiger_projecttask', 'projecttaskname', 'projecttaskid', 'projecttaskid'),
(46, 'Project', 'vtiger_project', 'projectname', 'projectid', 'projectid'),
(50, 'Maintenance', 'vtiger_maintenance', 'assets', 'maintenanceid', 'maintenanceid'),
(51, 'Valuation', 'vtiger_valuation', 'assets', 'valuationid', 'valuationid');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandlers`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventhandlers` (
  `eventhandler_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) NOT NULL,
  `handler_path` varchar(400) NOT NULL,
  `handler_class` varchar(100) NOT NULL,
  `cond` text,
  `is_active` int(1) NOT NULL,
  `dependent_on` varchar(255) DEFAULT '[]',
  PRIMARY KEY (`eventhandler_id`,`event_name`,`handler_class`),
  UNIQUE KEY `eventhandler_idx` (`eventhandler_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `vtiger_eventhandlers`
--

INSERT INTO `vtiger_eventhandlers` (`eventhandler_id`, `event_name`, `handler_path`, `handler_class`, `cond`, `is_active`, `dependent_on`) VALUES
(1, 'vtiger.entity.aftersave', 'modules/SalesOrder/RecurringInvoiceHandler.php', 'RecurringInvoiceHandler', '', 1, '[]'),
(2, 'vtiger.entity.beforesave', 'data/VTEntityDelta.php', 'VTEntityDelta', '', 1, '[]'),
(3, 'vtiger.entity.aftersave', 'data/VTEntityDelta.php', 'VTEntityDelta', '', 1, '[]'),
(4, 'vtiger.entity.aftersave', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1, '["VTEntityDelta"]'),
(5, 'vtiger.entity.afterrestore', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1, '[]'),
(6, 'vtiger.entity.aftersave.final', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDeskHandler', '', 1, '[]'),
(7, 'vtiger.entity.aftersave.final', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(8, 'vtiger.entity.beforedelete', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(9, 'vtiger.entity.afterrestore', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(10, 'vtiger.entity.beforesave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1, '[]'),
(11, 'vtiger.entity.aftersave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1, '[]'),
(12, 'vtiger.entity.aftersave', 'modules/WSAPP/WorkFlowHandlers/WSAPPAssignToTracker.php', 'WSAPPAssignToTracker', '', 1, '["VTEntityDelta"]'),
(18, 'vtiger.entity.aftersave', 'modules/Vtiger/handlers/RecordLabelUpdater.php', 'Vtiger_RecordLabelUpdater_Handler', '', 1, '[]'),
(19, 'vtiger.entity.aftersave', 'modules/Invoice/InvoiceHandler.php', 'InvoiceHandler', '', 1, '[]'),
(20, 'vtiger.entity.aftersave', 'modules/PurchaseOrder/PurchaseOrderHandler.php', 'PurchaseOrderHandler', '', 1, '[]'),
(21, 'vtiger.entity.aftersave', 'modules/ModComments/ModCommentsHandler.php', 'ModCommentsHandler', '', 1, '[]'),
(22, 'vtiger.picklist.afterrename', 'modules/Settings/Picklist/handlers/PickListHandler.php', 'PickListHandler', '', 1, '[]'),
(23, 'vtiger.picklist.afterdelete', 'modules/Settings/Picklist/handlers/PickListHandler.php', 'PickListHandler', '', 1, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandlers_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventhandlers_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_eventhandlers_seq`
--

INSERT INTO `vtiger_eventhandlers_seq` (`id`) VALUES
(23);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandler_module`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventhandler_module` (
  `eventhandler_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`eventhandler_module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_eventhandler_module`
--

INSERT INTO `vtiger_eventhandler_module` (`eventhandler_module_id`, `module_name`, `handler_class`) VALUES
(1, 'ModTracker', 'ModTrackerHandler'),
(2, 'ServiceContracts', 'ServiceContractsHandler'),
(3, 'Home', 'Vtiger_RecordLabelUpdater_Handler'),
(4, 'Invoice', 'InvoiceHandler'),
(5, 'PurchaseOrder', 'PurchaseOrderHandler');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandler_module_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventhandler_module_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_eventhandler_module_seq`
--

INSERT INTO `vtiger_eventhandler_module_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventstatus` (
  `eventstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `eventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_eventstatus`
--

INSERT INTO `vtiger_eventstatus` (`eventstatusid`, `eventstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Planned', 0, 38, 0),
(2, 'Held', 0, 39, 1),
(3, 'Not Held', 0, 40, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_eventstatus_seq`
--

INSERT INTO `vtiger_eventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_expectedresponse`
--

CREATE TABLE IF NOT EXISTS `vtiger_expectedresponse` (
  `expectedresponseid` int(19) NOT NULL AUTO_INCREMENT,
  `expectedresponse` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`expectedresponseid`),
  UNIQUE KEY `CampaignExpRes_UK01` (`expectedresponse`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_expectedresponse`
--

INSERT INTO `vtiger_expectedresponse` (`expectedresponseid`, `expectedresponse`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Excellent', 1, 42, 1),
(3, 'Good', 1, 43, 2),
(4, 'Average', 1, 44, 3),
(5, 'Poor', 1, 45, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_expectedresponse_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_expectedresponse_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_expectedresponse_seq`
--

INSERT INTO `vtiger_expectedresponse_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_extnstore_users`
--

CREATE TABLE IF NOT EXISTS `vtiger_extnstore_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `instanceurl` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faq`
--

CREATE TABLE IF NOT EXISTS `vtiger_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_no` varchar(100) NOT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `question` text,
  `answer` text,
  `category` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_id_idx` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `vtiger_faq`
--

INSERT INTO `vtiger_faq` (`id`, `faq_no`, `product_id`, `question`, `answer`, `category`, `status`) VALUES
(56, 'FAQ1', '9', 'how to update your check if you are connected to the system', 'Navigate to left ....', 'General', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcategories`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqcategories` (
  `faqcategories_id` int(19) NOT NULL AUTO_INCREMENT,
  `faqcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`faqcategories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_faqcategories`
--

INSERT INTO `vtiger_faqcategories` (`faqcategories_id`, `faqcategories`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'General', 1, 46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcategories_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_faqcategories_seq`
--

INSERT INTO `vtiger_faqcategories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqcf` (
  `faqid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_faqcf`
--

INSERT INTO `vtiger_faqcf` (`faqid`) VALUES
(56);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcomments`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqcomments` (
  `commentid` int(19) NOT NULL AUTO_INCREMENT,
  `faqid` int(19) DEFAULT NULL,
  `comments` text,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `faqcomments_faqid_idx` (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqstatus` (
  `faqstatus_id` int(19) NOT NULL AUTO_INCREMENT,
  `faqstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`faqstatus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_faqstatus`
--

INSERT INTO `vtiger_faqstatus` (`faqstatus_id`, `faqstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Draft', 0, 47, 0),
(2, 'Reviewed', 0, 48, 1),
(3, 'Published', 0, 49, 2),
(4, 'Obsolete', 0, 50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_faqstatus_seq`
--

INSERT INTO `vtiger_faqstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_feedback`
--

CREATE TABLE IF NOT EXISTS `vtiger_feedback` (
  `userid` int(19) DEFAULT NULL,
  `dontshow` varchar(19) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_field`
--

CREATE TABLE IF NOT EXISTS `vtiger_field` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) NOT NULL AUTO_INCREMENT,
  `columnname` varchar(30) NOT NULL,
  `tablename` varchar(50) NOT NULL,
  `generatedtype` int(19) NOT NULL DEFAULT '0',
  `uitype` varchar(30) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldlabel` varchar(50) NOT NULL,
  `readonly` int(1) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT '1',
  `defaultvalue` text,
  `maximumlength` int(19) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `block` int(19) DEFAULT NULL,
  `displaytype` int(19) DEFAULT NULL,
  `typeofdata` varchar(100) DEFAULT NULL,
  `quickcreate` int(10) NOT NULL DEFAULT '1',
  `quickcreatesequence` int(19) DEFAULT NULL,
  `info_type` varchar(20) DEFAULT NULL,
  `masseditable` int(10) NOT NULL DEFAULT '1',
  `helpinfo` text,
  `summaryfield` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `field_tabid_idx` (`tabid`),
  KEY `field_fieldname_idx` (`fieldname`),
  KEY `field_block_idx` (`block`),
  KEY `field_displaytype_idx` (`displaytype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=801 ;

--
-- Dumping data for table `vtiger_field`
--

INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`) VALUES
(6, 1, 'accountname', 'vtiger_account', 1, '2', 'accountname', 'Account Name', 1, 0, '', 100, 1, 9, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(6, 2, 'account_no', 'vtiger_account', 1, '4', 'account_no', 'Account No', 1, 0, '', 100, 2, 9, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(6, 3, 'phone', 'vtiger_account', 1, '11', 'phone', 'Phone', 1, 2, '', 100, 4, 9, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 1),
(6, 4, 'website', 'vtiger_account', 1, '17', 'website', 'Website', 1, 1, '', 100, 3, 9, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1),
(6, 5, 'fax', 'vtiger_account', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 6, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 6, 'tickersymbol', 'vtiger_account', 1, '1', 'tickersymbol', 'Ticker Symbol', 1, 1, '', 100, 5, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 7, 'otherphone', 'vtiger_account', 1, '11', 'otherphone', 'Other Phone', 1, 2, '', 100, 8, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 8, 'parentid', 'vtiger_account', 1, '51', 'account_id', 'Member Of', 1, 1, '', 100, 7, 9, 1, 'I~O', 1, NULL, 'BAS', 2, NULL, 0),
(6, 9, 'email1', 'vtiger_account', 1, '13', 'email1', 'Email', 1, 2, '', 100, 10, 9, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 1),
(6, 10, 'employees', 'vtiger_account', 1, '7', 'employees', 'Employees', 1, 1, '', 100, 9, 9, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 11, 'email2', 'vtiger_account', 1, '13', 'email2', 'Other Email', 1, 2, '', 100, 11, 9, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 12, 'ownership', 'vtiger_account', 1, '1', 'ownership', 'Ownership', 1, 1, '', 100, 12, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 13, 'rating', 'vtiger_account', 1, '15', 'rating', 'Rating', 1, 1, '', 100, 14, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 14, 'industry', 'vtiger_account', 1, '15', 'industry', 'industry', 1, 2, '', 100, 13, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 15, 'siccode', 'vtiger_account', 1, '1', 'siccode', 'SIC Code', 1, 1, '', 100, 16, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 16, 'account_type', 'vtiger_account', 1, '15', 'accounttype', 'Type', 1, 2, '', 100, 15, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 17, 'annualrevenue', 'vtiger_account', 1, '71', 'annual_revenue', 'Annual Revenue', 1, 1, '', 100, 18, 9, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 18, 'emailoptout', 'vtiger_account', 1, '56', 'emailoptout', 'Email Opt Out', 1, 1, '', 100, 17, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 19, 'notify_owner', 'vtiger_account', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, '', 10, 20, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 20, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 19, 9, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1),
(6, 21, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 22, 9, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(6, 22, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 21, 9, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(6, 23, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 23, 9, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(6, 24, 'bill_street', 'vtiger_accountbillads', 1, '21', 'bill_street', 'Billing Address', 1, 1, '', 100, 1, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 25, 'ship_street', 'vtiger_accountshipads', 1, '21', 'ship_street', 'Shipping Address', 1, 1, '', 100, 2, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 26, 'bill_city', 'vtiger_accountbillads', 1, '1', 'bill_city', 'Billing City', 1, 1, '', 100, 5, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(6, 27, 'ship_city', 'vtiger_accountshipads', 1, '1', 'ship_city', 'Shipping City', 1, 1, '', 100, 6, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 28, 'bill_state', 'vtiger_accountbillads', 1, '1', 'bill_state', 'Billing State', 1, 1, '', 100, 7, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 29, 'ship_state', 'vtiger_accountshipads', 1, '1', 'ship_state', 'Shipping State', 1, 1, '', 100, 8, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 30, 'bill_code', 'vtiger_accountbillads', 1, '1', 'bill_code', 'Billing Code', 1, 1, '', 100, 9, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 31, 'ship_code', 'vtiger_accountshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 1, '', 100, 10, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 32, 'bill_country', 'vtiger_accountbillads', 1, '1', 'bill_country', 'Billing Country', 1, 1, '', 100, 11, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(6, 33, 'ship_country', 'vtiger_accountshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 1, '', 100, 12, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 34, 'bill_pobox', 'vtiger_accountbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 1, '', 100, 3, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 35, 'ship_pobox', 'vtiger_accountshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 1, '', 100, 4, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 36, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 12, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 37, 'salutation', 'vtiger_leaddetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, '', 100, 1, 13, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 38, 'firstname', 'vtiger_leaddetails', 1, '55', 'firstname', 'First Name', 1, 0, '', 100, 2, 13, 1, 'V~O', 2, 1, 'BAS', 1, NULL, 1),
(7, 39, 'lead_no', 'vtiger_leaddetails', 1, '4', 'lead_no', 'Lead No', 1, 0, '', 100, 3, 13, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(7, 40, 'phone', 'vtiger_leadaddress', 1, '11', 'phone', 'Phone', 1, 2, '', 100, 5, 13, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 1),
(7, 41, 'lastname', 'vtiger_leaddetails', 1, '255', 'lastname', 'Last Name', 1, 0, '', 100, 4, 13, 1, 'V~M', 0, 2, 'BAS', 1, NULL, 1),
(7, 42, 'mobile', 'vtiger_leadaddress', 1, '11', 'mobile', 'Mobile', 1, 2, '', 100, 7, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 43, 'company', 'vtiger_leaddetails', 1, '2', 'company', 'Company', 1, 2, '', 100, 6, 13, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1),
(7, 44, 'fax', 'vtiger_leadaddress', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 9, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 45, 'designation', 'vtiger_leaddetails', 1, '1', 'designation', 'Designation', 1, 2, '', 100, 8, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 46, 'email', 'vtiger_leaddetails', 1, '13', 'email', 'Email', 1, 2, '', 100, 11, 13, 1, 'E~O', 2, 5, 'BAS', 1, NULL, 1),
(7, 47, 'leadsource', 'vtiger_leaddetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 10, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(7, 48, 'website', 'vtiger_leadsubdetails', 1, '17', 'website', 'Website', 1, 2, '', 100, 13, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 1),
(7, 49, 'industry', 'vtiger_leaddetails', 1, '15', 'industry', 'Industry', 1, 2, '', 100, 12, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 50, 'leadstatus', 'vtiger_leaddetails', 1, '15', 'leadstatus', 'Lead Status', 1, 2, '', 100, 15, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 51, 'annualrevenue', 'vtiger_leaddetails', 1, '71', 'annualrevenue', 'Annual Revenue', 1, 2, '', 100, 14, 13, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 52, 'rating', 'vtiger_leaddetails', 1, '15', 'rating', 'Rating', 1, 2, '', 100, 17, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 53, 'noofemployees', 'vtiger_leaddetails', 1, '1', 'noofemployees', 'No Of Employees', 1, 2, '', 100, 16, 13, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 54, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 19, 13, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1),
(7, 55, 'secondaryemail', 'vtiger_leaddetails', 1, '13', 'secondaryemail', 'Secondary Email', 1, 2, '', 100, 18, 13, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 56, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 21, 13, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(7, 57, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 20, 13, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(7, 58, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 23, 13, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(7, 59, 'lane', 'vtiger_leadaddress', 1, '21', 'lane', 'Street', 1, 2, '', 100, 1, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 60, 'code', 'vtiger_leadaddress', 1, '1', 'code', 'Postal Code', 1, 2, '', 100, 3, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 61, 'city', 'vtiger_leadaddress', 1, '1', 'city', 'City', 1, 2, '', 100, 4, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(7, 62, 'country', 'vtiger_leadaddress', 1, '1', 'country', 'Country', 1, 2, '', 100, 5, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(7, 63, 'state', 'vtiger_leadaddress', 1, '1', 'state', 'State', 1, 2, '', 100, 6, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 64, 'pobox', 'vtiger_leadaddress', 1, '1', 'pobox', 'Po Box', 1, 2, '', 100, 2, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 65, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 16, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 66, 'salutation', 'vtiger_contactdetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, '', 100, 1, 4, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 67, 'firstname', 'vtiger_contactdetails', 1, '55', 'firstname', 'First Name', 1, 0, '', 100, 2, 4, 1, 'V~O', 2, 1, 'BAS', 1, NULL, 1),
(4, 68, 'contact_no', 'vtiger_contactdetails', 1, '4', 'contact_no', 'Contact Id', 1, 0, '', 100, 3, 4, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(4, 69, 'phone', 'vtiger_contactdetails', 1, '11', 'phone', 'Office Phone', 1, 2, '', 100, 5, 4, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 1),
(4, 70, 'lastname', 'vtiger_contactdetails', 1, '255', 'lastname', 'Last Name', 1, 0, '', 100, 4, 4, 1, 'V~M', 0, 2, 'BAS', 1, NULL, 1),
(4, 71, 'mobile', 'vtiger_contactdetails', 1, '11', 'mobile', 'Mobile', 1, 2, '', 100, 7, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 72, 'accountid', 'vtiger_contactdetails', 1, '51', 'account_id', 'Account Name', 1, 0, '', 100, 6, 4, 1, 'I~O', 2, 3, 'BAS', 1, NULL, 1),
(4, 73, 'homephone', 'vtiger_contactsubdetails', 1, '11', 'homephone', 'Home Phone', 1, 1, '', 100, 9, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 74, 'leadsource', 'vtiger_contactsubdetails', 1, '15', 'leadsource', 'Lead Source', 1, 1, '', 100, 8, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 75, 'otherphone', 'vtiger_contactsubdetails', 1, '11', 'otherphone', 'Other Phone', 1, 1, '', 100, 11, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 76, 'title', 'vtiger_contactdetails', 1, '1', 'title', 'Title', 1, 1, '', 100, 10, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(4, 77, 'fax', 'vtiger_contactdetails', 1, '11', 'fax', 'Fax', 1, 1, '', 100, 13, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 78, 'department', 'vtiger_contactdetails', 1, '1', 'department', 'Department', 1, 2, '', 100, 12, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 79, 'birthday', 'vtiger_contactsubdetails', 1, '5', 'birthday', 'Birthdate', 1, 1, '', 100, 16, 4, 1, 'D~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 80, 'email', 'vtiger_contactdetails', 1, '13', 'email', 'Email', 1, 2, '', 100, 15, 4, 1, 'E~O', 2, 5, 'BAS', 1, NULL, 1),
(4, 81, 'reportsto', 'vtiger_contactdetails', 1, '57', 'contact_id', 'Reports To', 1, 1, '', 100, 18, 4, 1, 'V~O', 1, NULL, 'ADV', 2, NULL, 0),
(4, 82, 'assistant', 'vtiger_contactsubdetails', 1, '1', 'assistant', 'Assistant', 1, 1, '', 100, 17, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 83, 'secondaryemail', 'vtiger_contactdetails', 1, '13', 'secondaryemail', 'Secondary Email', 1, 1, '', 100, 20, 4, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 84, 'assistantphone', 'vtiger_contactsubdetails', 1, '11', 'assistantphone', 'Assistant Phone', 1, 1, '', 100, 19, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 85, 'donotcall', 'vtiger_contactdetails', 1, '56', 'donotcall', 'Do Not Call', 1, 1, '', 100, 22, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 86, 'emailoptout', 'vtiger_contactdetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 1, '', 100, 21, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 87, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 24, 4, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1),
(4, 88, 'reference', 'vtiger_contactdetails', 1, '56', 'reference', 'Reference', 1, 1, '', 10, 23, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 89, 'notify_owner', 'vtiger_contactdetails', 1, '56', 'notify_owner', 'Notify Owner', 1, 1, '', 10, 26, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 90, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 25, 4, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(4, 91, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 27, 4, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(4, 92, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 28, 4, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(4, 93, 'portal', 'vtiger_customerdetails', 1, '56', 'portal', 'Portal User', 1, 1, '', 100, 1, 6, 1, 'C~O', 1, NULL, 'ADV', 2, NULL, 0),
(4, 94, 'support_start_date', 'vtiger_customerdetails', 1, '5', 'support_start_date', 'Support Start Date', 1, 1, '', 100, 2, 6, 1, 'D~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 95, 'support_end_date', 'vtiger_customerdetails', 1, '5', 'support_end_date', 'Support End Date', 1, 1, '', 100, 3, 6, 1, 'D~O~OTH~GE~support_start_date~Support Start Date', 1, NULL, 'ADV', 1, NULL, 0),
(4, 96, 'mailingstreet', 'vtiger_contactaddress', 1, '21', 'mailingstreet', 'Mailing Street', 1, 1, '', 100, 1, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 97, 'otherstreet', 'vtiger_contactaddress', 1, '21', 'otherstreet', 'Other Street', 1, 1, '', 100, 2, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 98, 'mailingcity', 'vtiger_contactaddress', 1, '1', 'mailingcity', 'Mailing City', 1, 1, '', 100, 5, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(4, 99, 'othercity', 'vtiger_contactaddress', 1, '1', 'othercity', 'Other City', 1, 1, '', 100, 6, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 100, 'mailingstate', 'vtiger_contactaddress', 1, '1', 'mailingstate', 'Mailing State', 1, 1, '', 100, 7, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 101, 'otherstate', 'vtiger_contactaddress', 1, '1', 'otherstate', 'Other State', 1, 1, '', 100, 8, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 102, 'mailingzip', 'vtiger_contactaddress', 1, '1', 'mailingzip', 'Mailing Zip', 1, 1, '', 100, 9, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 103, 'otherzip', 'vtiger_contactaddress', 1, '1', 'otherzip', 'Other Zip', 1, 1, '', 100, 10, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 104, 'mailingcountry', 'vtiger_contactaddress', 1, '1', 'mailingcountry', 'Mailing Country', 1, 1, '', 100, 11, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(4, 105, 'othercountry', 'vtiger_contactaddress', 1, '1', 'othercountry', 'Other Country', 1, 1, '', 100, 12, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 106, 'mailingpobox', 'vtiger_contactaddress', 1, '1', 'mailingpobox', 'Mailing Po Box', 1, 1, '', 100, 3, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 107, 'otherpobox', 'vtiger_contactaddress', 1, '1', 'otherpobox', 'Other Po Box', 1, 1, '', 100, 4, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 108, 'imagename', 'vtiger_contactdetails', 1, '69', 'imagename', 'Contact Image', 1, 1, '', 100, 1, 73, 1, 'V~O', 1, NULL, 'ADV', 2, NULL, 0),
(4, 109, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 1, '', 100, 1, 8, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 110, 'potentialname', 'vtiger_potential', 1, '2', 'potentialname', 'Potential Name', 1, 0, '', 100, 1, 1, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(2, 111, 'potential_no', 'vtiger_potential', 1, '4', 'potential_no', 'Potential No', 1, 0, '', 100, 2, 1, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(2, 112, 'amount', 'vtiger_potential', 1, '71', 'amount', 'Amount', 1, 2, '', 100, 5, 1, 1, 'N~O', 2, 5, 'BAS', 1, NULL, 1),
(2, 113, 'related_to', 'vtiger_potential', 1, '10', 'related_to', 'Related To', 1, 0, '', 100, 3, 1, 1, 'V~O', 0, 2, 'BAS', 1, NULL, 1),
(2, 114, 'closingdate', 'vtiger_potential', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, '', 100, 8, 1, 1, 'D~M', 2, 3, 'BAS', 1, NULL, 1),
(2, 115, 'potentialtype', 'vtiger_potential', 1, '15', 'opportunity_type', 'Type', 1, 2, '', 100, 7, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 116, 'nextstep', 'vtiger_potential', 1, '1', 'nextstep', 'Next Step', 1, 2, '', 100, 10, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 117, 'leadsource', 'vtiger_potential', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 9, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 118, 'sales_stage', 'vtiger_potential', 1, '15', 'sales_stage', 'Sales Stage', 1, 2, '', 100, 12, 1, 1, 'V~M', 2, 4, 'BAS', 1, NULL, 1),
(2, 119, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 11, 1, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1),
(2, 120, 'probability', 'vtiger_potential', 1, '9', 'probability', 'Probability', 1, 2, '', 100, 14, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 121, 'campaignid', 'vtiger_potential', 1, '58', 'campaignid', 'Campaign Source', 1, 2, '', 100, 13, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 122, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 16, 1, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(2, 123, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 1, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(2, 124, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 1, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(2, 125, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 3, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 126, 'campaignname', 'vtiger_campaign', 1, '2', 'campaignname', 'Campaign Name', 1, 0, '', 100, 1, 74, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(26, 127, 'campaign_no', 'vtiger_campaign', 1, '4', 'campaign_no', 'Campaign No', 1, 0, '', 100, 2, 74, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(26, 128, 'campaigntype', 'vtiger_campaign', 1, '15', 'campaigntype', 'Campaign Type', 1, 2, '', 100, 5, 74, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1),
(26, 129, 'product_id', 'vtiger_campaign', 1, '59', 'product_id', 'Product', 1, 2, '', 100, 6, 74, 1, 'I~O', 2, 5, 'BAS', 1, NULL, 0),
(26, 130, 'campaignstatus', 'vtiger_campaign', 1, '15', 'campaignstatus', 'Campaign Status', 1, 2, '', 100, 4, 74, 1, 'V~O', 2, 6, 'BAS', 1, NULL, 1),
(26, 131, 'closingdate', 'vtiger_campaign', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, '', 100, 8, 74, 1, 'D~M', 2, 2, 'BAS', 1, NULL, 1),
(26, 132, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 3, 74, 1, 'V~M', 0, 7, 'BAS', 1, NULL, 1),
(26, 133, 'numsent', 'vtiger_campaign', 1, '9', 'numsent', 'Num Sent', 1, 2, '', 100, 12, 74, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 134, 'sponsor', 'vtiger_campaign', 1, '1', 'sponsor', 'Sponsor', 1, 2, '', 100, 9, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 135, 'targetaudience', 'vtiger_campaign', 1, '1', 'targetaudience', 'Target Audience', 1, 2, '', 100, 7, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 136, 'targetsize', 'vtiger_campaign', 1, '1', 'targetsize', 'TargetSize', 1, 2, '', 100, 10, 74, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 137, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 11, 74, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(26, 138, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 13, 74, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(26, 139, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 74, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(26, 140, 'expectedresponse', 'vtiger_campaign', 1, '15', 'expectedresponse', 'Expected Response', 1, 2, '', 100, 3, 76, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 0),
(26, 141, 'expectedrevenue', 'vtiger_campaign', 1, '71', 'expectedrevenue', 'Expected Revenue', 1, 2, '', 100, 4, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 1),
(26, 142, 'budgetcost', 'vtiger_campaign', 1, '71', 'budgetcost', 'Budget Cost', 1, 2, '', 100, 1, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 143, 'actualcost', 'vtiger_campaign', 1, '71', 'actualcost', 'Actual Cost', 1, 2, '', 100, 2, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 144, 'expectedresponsecount', 'vtiger_campaign', 1, '1', 'expectedresponsecount', 'Expected Response Count', 1, 2, '', 100, 7, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 145, 'expectedsalescount', 'vtiger_campaign', 1, '1', 'expectedsalescount', 'Expected Sales Count', 1, 2, '', 100, 5, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 146, 'expectedroi', 'vtiger_campaign', 1, '71', 'expectedroi', 'Expected ROI', 1, 2, '', 100, 9, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 147, 'actualresponsecount', 'vtiger_campaign', 1, '1', 'actualresponsecount', 'Actual Response Count', 1, 2, '', 100, 8, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 148, 'actualsalescount', 'vtiger_campaign', 1, '1', 'actualsalescount', 'Actual Sales Count', 1, 2, '', 100, 6, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 149, 'actualroi', 'vtiger_campaign', 1, '71', 'actualroi', 'Actual ROI', 1, 2, '', 100, 10, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 150, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 81, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 151, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(6, 152, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(7, 153, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(26, 154, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(13, 155, 'ticket_no', 'vtiger_troubletickets', 1, '4', 'ticket_no', 'Ticket No', 1, 0, '', 100, 14, 25, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(13, 156, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 5, 25, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1),
(13, 157, 'parent_id', 'vtiger_troubletickets', 1, '10', 'parent_id', 'Related To', 1, 0, '', 100, 2, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1),
(13, 158, 'priority', 'vtiger_troubletickets', 1, '15', 'ticketpriorities', 'Priority', 1, 2, '', 100, 7, 25, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1),
(13, 159, 'product_id', 'vtiger_troubletickets', 1, '59', 'product_id', 'Product Name', 1, 2, '', 100, 6, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(13, 160, 'severity', 'vtiger_troubletickets', 1, '15', 'ticketseverities', 'Severity', 1, 2, '', 100, 9, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(13, 161, 'status', 'vtiger_troubletickets', 1, '15', 'ticketstatus', 'Status', 1, 2, '', 100, 8, 25, 1, 'V~M', 1, 2, 'BAS', 1, NULL, 1),
(13, 162, 'category', 'vtiger_troubletickets', 1, '15', 'ticketcategories', 'Category', 1, 2, '', 100, 11, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(13, 163, 'update_log', 'vtiger_troubletickets', 1, '19', 'update_log', 'Update History', 1, 0, '', 100, 12, 25, 3, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(13, 164, 'hours', 'vtiger_troubletickets', 1, '1', 'hours', 'Hours', 1, 2, '', 100, 10, 25, 1, 'N~O', 1, NULL, 'BAS', 1, 'This gives the estimated hours for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.', 0),
(13, 165, 'days', 'vtiger_troubletickets', 1, '1', 'days', 'Days', 1, 2, '', 100, 11, 25, 1, 'N~O', 1, NULL, 'BAS', 1, 'This gives the estimated days for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.', 0),
(13, 166, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 10, 25, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(13, 167, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 13, 25, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(13, 168, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 25, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(13, 169, 'title', 'vtiger_troubletickets', 1, '22', 'ticket_title', 'Title', 1, 0, '', 100, 1, 25, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(13, 170, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 28, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 1),
(13, 171, 'solution', 'vtiger_troubletickets', 1, '19', 'solution', 'Solution', 1, 0, '', 100, 1, 29, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(13, 172, 'comments', 'vtiger_ticketcomments', 1, '19', 'comments', 'Add Comment', 1, 1, '', 100, 1, 30, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 173, 'productname', 'vtiger_products', 1, '2', 'productname', 'Product Name', 1, 0, '', 100, 1, 31, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(14, 174, 'product_no', 'vtiger_products', 1, '4', 'product_no', 'Product No', 1, 0, '', 100, 2, 31, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 175, 'productcode', 'vtiger_products', 1, '1', 'productcode', 'Part Number', 1, 1, '', 100, 4, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(14, 176, 'discontinued', 'vtiger_products', 1, '56', 'discontinued', 'Product Active', 1, 2, '', 100, 3, 31, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 0),
(14, 177, 'manufacturer', 'vtiger_products', 1, '15', 'manufacturer', 'Manufacturer', 1, 2, '', 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 178, 'productcategory', 'vtiger_products', 1, '15', 'productcategory', 'Product Category', 1, 1, '', 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 179, 'sales_start_date', 'vtiger_products', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 1, '', 100, 5, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 180, 'sales_end_date', 'vtiger_products', 1, '5', 'sales_end_date', 'Sales End Date', 1, 1, '', 100, 8, 31, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, NULL, 'BAS', 1, NULL, 0),
(14, 181, 'start_date', 'vtiger_products', 1, '5', 'start_date', 'Support Start Date', 1, 1, '', 100, 7, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 182, 'expiry_date', 'vtiger_products', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 1, '', 100, 10, 31, 1, 'D~O~OTH~GE~start_date~Start Date', 1, NULL, 'BAS', 1, NULL, 0),
(14, 183, 'website', 'vtiger_products', 1, '17', 'website', 'Website', 1, 1, '', 100, 14, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 184, 'vendor_id', 'vtiger_products', 1, '75', 'vendor_id', 'Vendor Name', 1, 1, '', 100, 13, 31, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 185, 'mfr_part_no', 'vtiger_products', 1, '1', 'mfr_part_no', 'Mfr PartNo', 1, 1, '', 100, 16, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 186, 'vendor_part_no', 'vtiger_products', 1, '1', 'vendor_part_no', 'Vendor PartNo', 1, 1, '', 100, 15, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 187, 'serialno', 'vtiger_products', 1, '1', 'serial_no', 'Serial No', 1, 1, '', 100, 18, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 188, 'productsheet', 'vtiger_products', 1, '1', 'productsheet', 'Product Sheet', 1, 1, '', 100, 17, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 189, 'glacct', 'vtiger_products', 1, '15', 'glacct', 'GL Account', 1, 1, '', 100, 20, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 190, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 19, 31, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 191, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 21, 31, 2, 'DT~O', 1, NULL, 'BAS', 2, NULL, 0),
(14, 192, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 31, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 193, 'unit_price', 'vtiger_products', 1, '72', 'unit_price', 'Unit Price', 1, 2, '', 100, 1, 32, 1, 'N~O', 2, 3, 'BAS', 0, NULL, 1),
(14, 194, 'commissionrate', 'vtiger_products', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, '', 100, 2, 32, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 1),
(14, 195, 'taxclass', 'vtiger_products', 1, '83', 'taxclass', 'Tax Class', 1, 1, '', 100, 4, 32, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 196, 'usageunit', 'vtiger_products', 1, '15', 'usageunit', 'Usage Unit', 1, 2, '', 100, 1, 33, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(14, 197, 'qty_per_unit', 'vtiger_products', 1, '1', 'qty_per_unit', 'Qty/Unit', 1, 2, '', 100, 2, 33, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 1),
(14, 198, 'qtyinstock', 'vtiger_products', 1, '1', 'qtyinstock', 'Qty In Stock', 1, 2, '', 100, 3, 33, 1, 'NN~O', 0, 4, 'ADV', 1, NULL, 0),
(14, 199, 'reorderlevel', 'vtiger_products', 1, '1', 'reorderlevel', 'Reorder Level', 1, 1, '', 100, 4, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0),
(14, 200, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Handler', 1, 0, '', 100, 5, 33, 1, 'V~M', 0, 5, 'BAS', 1, NULL, 0),
(14, 201, 'qtyindemand', 'vtiger_products', 1, '1', 'qtyindemand', 'Qty In Demand', 1, 1, '', 100, 6, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0),
(14, 202, 'imagename', 'vtiger_products', 1, '69', 'imagename', 'Product Image', 1, 2, '', 100, 1, 35, 1, 'V~O', 3, NULL, 'ADV', 0, NULL, 0),
(14, 203, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 36, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(8, 204, 'title', 'vtiger_notes', 1, '2', 'notes_title', 'Title', 1, 0, '', 100, 1, 17, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(8, 205, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 17, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(8, 206, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 17, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1),
(8, 207, 'filename', 'vtiger_notes', 1, '28', 'filename', 'File Name', 1, 2, '', 100, 3, 18, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(8, 208, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 4, 17, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 1),
(8, 209, 'notecontent', 'vtiger_notes', 1, '19', 'notecontent', 'Note', 1, 1, '', 100, 1, 84, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(8, 210, 'filetype', 'vtiger_notes', 1, '1', 'filetype', 'File Type', 1, 2, '', 100, 5, 18, 2, 'V~O', 3, 0, 'BAS', 0, NULL, 0),
(8, 211, 'filesize', 'vtiger_notes', 1, '1', 'filesize', 'File Size', 1, 2, '', 100, 4, 18, 2, 'I~O', 3, 0, 'BAS', 0, NULL, 0),
(8, 212, 'filelocationtype', 'vtiger_notes', 1, '27', 'filelocationtype', 'Download Type', 1, 0, '', 100, 1, 18, 1, 'V~O', 3, 0, 'BAS', 0, NULL, 0),
(8, 213, 'fileversion', 'vtiger_notes', 1, '1', 'fileversion', 'Version', 1, 2, '', 100, 6, 18, 1, 'V~O', 1, 0, 'BAS', 1, NULL, 0),
(8, 214, 'filestatus', 'vtiger_notes', 1, '56', 'filestatus', 'Active', 1, 2, '1', 100, 2, 18, 1, 'V~O', 1, 0, 'BAS', 1, NULL, 0),
(8, 215, 'filedownloadcount', 'vtiger_notes', 1, '1', 'filedownloadcount', 'Download Count', 1, 2, '', 100, 7, 18, 2, 'I~O', 3, 0, 'BAS', 0, NULL, 0),
(8, 216, 'folderid', 'vtiger_notes', 1, '26', 'folderid', 'Folder Name', 1, 2, '', 100, 2, 17, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 1),
(8, 217, 'note_no', 'vtiger_notes', 1, '4', 'note_no', 'Document No', 1, 0, '', 100, 3, 17, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(8, 218, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 17, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 219, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Date & Time Sent', 1, 0, '', 100, 1, 21, 1, 'DT~M~time_start~Time Start', 1, NULL, 'BAS', 1, NULL, 0),
(10, 220, 'semodule', 'vtiger_activity', 1, '2', 'parent_type', 'Sales Enity Module', 1, 0, '', 100, 2, 21, 3, '', 1, NULL, 'BAS', 1, NULL, 0),
(10, 221, 'activitytype', 'vtiger_activity', 1, '2', 'activitytype', 'Activtiy Type', 1, 0, '', 100, 3, 21, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 222, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 5, 21, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(10, 223, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 23, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(10, 224, 'name', 'vtiger_attachments', 1, '61', 'filename', 'Attachment', 1, 0, '', 100, 2, 23, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 225, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 24, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 226, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 9, 23, 1, 'T~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 227, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 10, 22, 1, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 228, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 11, 21, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 229, 'access_count', 'vtiger_email_track', 1, '25', 'access_count', 'Access Count', 1, 0, '0', 100, 6, 21, 3, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(10, 230, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 21, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(9, 231, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 19, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(9, 232, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 19, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1),
(9, 233, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, '', 100, 3, 19, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL, 1),
(9, 234, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 4, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 235, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, '', 100, 4, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 236, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'Due Date', 1, 0, '', 100, 5, 19, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 1, NULL, 'BAS', 1, NULL, 1),
(9, 237, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, '', 100, 7, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 238, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, '', 100, 8, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 239, 'status', 'vtiger_activity', 1, '15', 'taskstatus', 'Status', 1, 0, '', 100, 8, 19, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 0),
(9, 240, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, '', 100, 9, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 241, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, '', 100, 10, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 242, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, '', 100, 11, 19, 1, 'C~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 243, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 19, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(9, 244, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 19, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(9, 245, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, '', 100, 16, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 246, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, '', 100, 17, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 247, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 20, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 248, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, '', 100, 17, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 249, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, '', 100, 18, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 250, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, '', 100, 19, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 251, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, '', 100, 1, 19, 3, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 252, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, '', 100, 6, 19, 3, 'O~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 253, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, '', 100, 20, 19, 3, 'C~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 254, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 19, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(16, 255, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 39, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(16, 256, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 39, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1),
(16, 257, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, '', 100, 3, 39, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL, 1),
(16, 258, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 4, 39, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1),
(16, 259, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'End Date', 1, 0, '', 100, 5, 39, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 0, 5, 'BAS', 1, NULL, 1),
(16, 260, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, '', 100, 5, 39, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1),
(16, 261, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, '', 100, 6, 117, 1, 'O~O', 1, NULL, 'BAS', 1, NULL, 1),
(16, 262, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, '', 100, 7, 39, 3, 'I~M', 1, NULL, 'BAS', 1, NULL, 0),
(16, 263, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, '', 100, 8, 39, 3, 'O~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 264, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, '', 100, 9, 119, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1),
(16, 265, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, '', 100, 10, 39, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 0),
(16, 266, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, '', 100, 11, 39, 1, 'C~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 267, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, '', 100, 12, 39, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1),
(16, 268, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, '', 100, 13, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 269, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 39, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(16, 270, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 39, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(16, 271, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, '', 100, 16, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 272, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, '', 100, 17, 39, 3, 'C~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 273, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, '', 100, 18, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 274, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 39, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(16, 275, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 41, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 276, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, '', 100, 1, 40, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 277, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, '', 100, 1, 119, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(15, 278, 'product_id', 'vtiger_faq', 1, '59', 'product_id', 'Product Name', 1, 2, '', 100, 1, 37, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 1),
(15, 279, 'faq_no', 'vtiger_faq', 1, '4', 'faq_no', 'Faq No', 1, 0, '', 100, 2, 37, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(15, 280, 'category', 'vtiger_faq', 1, '15', 'faqcategories', 'Category', 1, 2, '', 100, 4, 37, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1),
(15, 281, 'status', 'vtiger_faq', 1, '15', 'faqstatus', 'Status', 1, 2, '', 100, 3, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(15, 282, 'question', 'vtiger_faq', 1, '20', 'question', 'Question', 1, 2, '', 100, 7, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(15, 283, 'answer', 'vtiger_faq', 1, '20', 'faq_answer', 'Answer', 1, 2, '', 100, 8, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(15, 284, 'comments', 'vtiger_faqcomments', 1, '19', 'comments', 'Add Comment', 1, 1, '', 100, 1, 38, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(15, 285, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 37, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1),
(15, 286, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 37, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1),
(15, 287, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 37, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 288, 'vendorname', 'vtiger_vendor', 1, '2', 'vendorname', 'Vendor Name', 1, 0, '', 100, 1, 42, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(18, 289, 'vendor_no', 'vtiger_vendor', 1, '4', 'vendor_no', 'Vendor No', 1, 0, '', 100, 2, 42, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 290, 'phone', 'vtiger_vendor', 1, '1', 'phone', 'Phone', 1, 2, '', 100, 4, 42, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 1),
(18, 291, 'email', 'vtiger_vendor', 1, '13', 'email', 'Email', 1, 2, '', 100, 3, 42, 1, 'E~O', 2, 3, 'BAS', 1, NULL, 1),
(18, 292, 'website', 'vtiger_vendor', 1, '17', 'website', 'Website', 1, 2, '', 100, 6, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(18, 293, 'glacct', 'vtiger_vendor', 1, '15', 'glacct', 'GL Account', 1, 2, '', 100, 5, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(18, 294, 'category', 'vtiger_vendor', 1, '1', 'category', 'Category', 1, 2, '', 100, 8, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(18, 295, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 7, 42, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 296, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 9, 42, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 297, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 42, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 298, 'street', 'vtiger_vendor', 1, '21', 'street', 'Street', 1, 2, '', 100, 1, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 299, 'pobox', 'vtiger_vendor', 1, '1', 'pobox', 'Po Box', 1, 2, '', 100, 2, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 300, 'city', 'vtiger_vendor', 1, '1', 'city', 'City', 1, 2, '', 100, 3, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 301, 'state', 'vtiger_vendor', 1, '1', 'state', 'State', 1, 2, '', 100, 4, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 302, 'postalcode', 'vtiger_vendor', 1, '1', 'postalcode', 'Postal Code', 1, 2, '', 100, 5, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 303, 'country', 'vtiger_vendor', 1, '1', 'country', 'Country', 1, 2, '', 100, 6, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 304, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 45, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(19, 305, 'bookname', 'vtiger_pricebook', 1, '2', 'bookname', 'Price Book Name', 1, 0, '', 100, 1, 46, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(19, 306, 'pricebook_no', 'vtiger_pricebook', 1, '4', 'pricebook_no', 'PriceBook No', 1, 0, '', 100, 3, 46, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(19, 307, 'active', 'vtiger_pricebook', 1, '56', 'active', 'Active', 1, 2, '1', 100, 2, 46, 1, 'C~O', 2, 2, 'BAS', 1, NULL, 1),
(19, 308, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 4, 46, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(19, 309, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 5, 46, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(19, 310, 'currency_id', 'vtiger_pricebook', 1, '117', 'currency_id', 'Currency', 1, 0, '', 100, 5, 46, 1, 'I~M', 0, 3, 'BAS', 0, NULL, 0),
(19, 311, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 46, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(19, 312, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 48, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(20, 313, 'quote_no', 'vtiger_quotes', 1, '4', 'quote_no', 'Quote No', 1, 0, '', 100, 3, 49, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(20, 314, 'subject', 'vtiger_quotes', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 49, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 1),
(20, 315, 'potentialid', 'vtiger_quotes', 1, '76', 'potential_id', 'Potential Name', 1, 2, '', 100, 2, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 1),
(20, 316, 'quotestage', 'vtiger_quotes', 1, '15', 'quotestage', 'Quote Stage', 1, 2, '', 100, 4, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(20, 317, 'validtill', 'vtiger_quotes', 1, '5', 'validtill', 'Valid Till', 1, 2, '', 100, 5, 49, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 318, 'contactid', 'vtiger_quotes', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 319, 'carrier', 'vtiger_quotes', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 8, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 320, 'subtotal', 'vtiger_quotes', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 9, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 321, 'shipping', 'vtiger_quotes', 1, '1', 'shipping', 'Shipping', 1, 2, '', 100, 10, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 322, 'inventorymanager', 'vtiger_quotes', 1, '77', 'assigned_user_id1', 'Inventory Manager', 1, 2, '', 100, 11, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 323, 'adjustment', 'vtiger_quotes', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 20, 49, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 324, 'total', 'vtiger_quotes', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1),
(20, 325, 'taxtype', 'vtiger_quotes', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 14, 49, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 326, 'discount_percent', 'vtiger_quotes', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 327, 'discount_amount', 'vtiger_quotes', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 328, 's_h_amount', 'vtiger_quotes', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 329, 'accountid', 'vtiger_quotes', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 16, 49, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 1),
(20, 330, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 17, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(20, 331, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 18, 49, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(20, 332, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 19, 49, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(20, 333, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 49, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(20, 334, 'currency_id', 'vtiger_quotes', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 20, 49, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 335, 'conversion_rate', 'vtiger_quotes', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 21, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 336, 'bill_street', 'vtiger_quotesbillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(20, 337, 'ship_street', 'vtiger_quotesshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(20, 338, 'bill_city', 'vtiger_quotesbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 339, 'ship_city', 'vtiger_quotesshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 340, 'bill_state', 'vtiger_quotesbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 341, 'ship_state', 'vtiger_quotesshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 342, 'bill_code', 'vtiger_quotesbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 343, 'ship_code', 'vtiger_quotesshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 344, 'bill_country', 'vtiger_quotesbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 345, 'ship_country', 'vtiger_quotesshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 346, 'bill_pobox', 'vtiger_quotesbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 347, 'ship_pobox', 'vtiger_quotesshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 348, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 54, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`) VALUES
(20, 349, 'terms_conditions', 'vtiger_quotes', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 53, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(21, 350, 'purchaseorder_no', 'vtiger_purchaseorder', 1, '4', 'purchaseorder_no', 'PurchaseOrder No', 1, 0, '', 100, 2, 55, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(21, 351, 'subject', 'vtiger_purchaseorder', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(21, 352, 'vendorid', 'vtiger_purchaseorder', 1, '81', 'vendor_id', 'Vendor Name', 1, 0, '', 100, 3, 55, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 1),
(21, 353, 'requisition_no', 'vtiger_purchaseorder', 1, '1', 'requisition_no', 'Requisition No', 1, 2, '', 100, 4, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 354, 'tracking_no', 'vtiger_purchaseorder', 1, '1', 'tracking_no', 'Tracking Number', 1, 2, '', 100, 5, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1),
(21, 355, 'contactid', 'vtiger_purchaseorder', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 55, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 356, 'duedate', 'vtiger_purchaseorder', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 7, 55, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 357, 'carrier', 'vtiger_purchaseorder', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 8, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 358, 'adjustment', 'vtiger_purchaseorder', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 10, 55, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 359, 'salescommission', 'vtiger_purchaseorder', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 100, 11, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 360, 'exciseduty', 'vtiger_purchaseorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 12, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 361, 'total', 'vtiger_purchaseorder', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 13, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1),
(21, 362, 'subtotal', 'vtiger_purchaseorder', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 363, 'taxtype', 'vtiger_purchaseorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 14, 55, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 364, 'discount_percent', 'vtiger_purchaseorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 365, 'discount_amount', 'vtiger_purchaseorder', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 0, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 366, 's_h_amount', 'vtiger_purchaseorder', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 367, 'postatus', 'vtiger_purchaseorder', 1, '15', 'postatus', 'Status', 1, 2, '', 100, 15, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(21, 368, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 16, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(21, 369, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 55, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(21, 370, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 55, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(21, 371, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 55, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(21, 372, 'currency_id', 'vtiger_purchaseorder', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 19, 55, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 373, 'conversion_rate', 'vtiger_purchaseorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 20, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 374, 'bill_street', 'vtiger_pobillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 57, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(21, 375, 'ship_street', 'vtiger_poshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 57, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(21, 376, 'bill_city', 'vtiger_pobillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 377, 'ship_city', 'vtiger_poshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 378, 'bill_state', 'vtiger_pobillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 379, 'ship_state', 'vtiger_poshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 380, 'bill_code', 'vtiger_pobillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 381, 'ship_code', 'vtiger_poshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 382, 'bill_country', 'vtiger_pobillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 383, 'ship_country', 'vtiger_poshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 384, 'bill_pobox', 'vtiger_pobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 385, 'ship_pobox', 'vtiger_poshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 386, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 60, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(21, 387, 'terms_conditions', 'vtiger_purchaseorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 59, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(22, 388, 'salesorder_no', 'vtiger_salesorder', 1, '4', 'salesorder_no', 'SalesOrder No', 1, 0, '', 100, 4, 61, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(22, 389, 'subject', 'vtiger_salesorder', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(22, 390, 'potentialid', 'vtiger_salesorder', 1, '76', 'potential_id', 'Potential Name', 1, 2, '', 100, 2, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 391, 'customerno', 'vtiger_salesorder', 1, '1', 'customerno', 'Customer No', 1, 2, '', 100, 3, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 392, 'quoteid', 'vtiger_salesorder', 1, '78', 'quote_id', 'Quote Name', 1, 2, '', 100, 5, 61, 1, 'I~O', 3, NULL, 'BAS', 0, NULL, 1),
(22, 393, 'purchaseorder', 'vtiger_salesorder', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, '', 100, 5, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 394, 'contactid', 'vtiger_salesorder', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 395, 'duedate', 'vtiger_salesorder', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 8, 61, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 396, 'carrier', 'vtiger_salesorder', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 9, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 397, 'pending', 'vtiger_salesorder', 1, '1', 'pending', 'Pending', 1, 2, '', 100, 10, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 398, 'sostatus', 'vtiger_salesorder', 1, '15', 'sostatus', 'Status', 1, 2, '', 100, 11, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(22, 399, 'adjustment', 'vtiger_salesorder', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 12, 61, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 400, 'salescommission', 'vtiger_salesorder', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 401, 'exciseduty', 'vtiger_salesorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 402, 'total', 'vtiger_salesorder', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 14, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1),
(22, 403, 'subtotal', 'vtiger_salesorder', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 404, 'taxtype', 'vtiger_salesorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 15, 61, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 405, 'discount_percent', 'vtiger_salesorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 406, 'discount_amount', 'vtiger_salesorder', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 0, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 407, 's_h_amount', 'vtiger_salesorder', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 408, 'accountid', 'vtiger_salesorder', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 16, 61, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 1),
(22, 409, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 17, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(22, 410, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 18, 61, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 411, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 19, 61, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 412, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 61, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 413, 'currency_id', 'vtiger_salesorder', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 20, 61, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 414, 'conversion_rate', 'vtiger_salesorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 21, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 415, 'bill_street', 'vtiger_sobillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 63, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(22, 416, 'ship_street', 'vtiger_soshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 63, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(22, 417, 'bill_city', 'vtiger_sobillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 418, 'ship_city', 'vtiger_soshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 419, 'bill_state', 'vtiger_sobillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 420, 'ship_state', 'vtiger_soshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 421, 'bill_code', 'vtiger_sobillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 422, 'ship_code', 'vtiger_soshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 423, 'bill_country', 'vtiger_sobillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 424, 'ship_country', 'vtiger_soshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 425, 'bill_pobox', 'vtiger_sobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 426, 'ship_pobox', 'vtiger_soshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 427, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 66, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(22, 428, 'terms_conditions', 'vtiger_salesorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 65, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(22, 429, 'enable_recurring', 'vtiger_salesorder', 1, '56', 'enable_recurring', 'Enable Recurring', 1, 0, '', 100, 1, 85, 1, 'C~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 430, 'recurring_frequency', 'vtiger_invoice_recurring_info', 1, '16', 'recurring_frequency', 'Frequency', 1, 0, '', 100, 2, 85, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 431, 'start_period', 'vtiger_invoice_recurring_info', 1, '5', 'start_period', 'Start Period', 1, 0, '', 100, 3, 85, 1, 'D~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 432, 'end_period', 'vtiger_invoice_recurring_info', 1, '5', 'end_period', 'End Period', 1, 0, '', 100, 4, 85, 1, 'D~O~OTH~G~start_period~Start Period', 3, NULL, 'BAS', 0, NULL, 0),
(22, 433, 'payment_duration', 'vtiger_invoice_recurring_info', 1, '16', 'payment_duration', 'Payment Duration', 1, 0, '', 100, 5, 85, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 434, 'invoice_status', 'vtiger_invoice_recurring_info', 1, '15', 'invoicestatus', 'Invoice Status', 1, 0, '', 100, 6, 85, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0),
(23, 435, 'subject', 'vtiger_invoice', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(23, 436, 'salesorderid', 'vtiger_invoice', 1, '80', 'salesorder_id', 'Sales Order', 1, 2, '', 100, 2, 67, 1, 'I~O', 3, NULL, 'BAS', 0, NULL, 1),
(23, 437, 'customerno', 'vtiger_invoice', 1, '1', 'customerno', 'Customer No', 1, 2, '', 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 438, 'contactid', 'vtiger_invoice', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 4, 67, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 439, 'invoicedate', 'vtiger_invoice', 1, '5', 'invoicedate', 'Invoice Date', 1, 2, '', 100, 5, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 440, 'duedate', 'vtiger_invoice', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 6, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 441, 'purchaseorder', 'vtiger_invoice', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, '', 100, 8, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 442, 'adjustment', 'vtiger_invoice', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 9, 67, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 443, 'salescommission', 'vtiger_invoice', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 10, 13, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 444, 'exciseduty', 'vtiger_invoice', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 11, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 445, 'subtotal', 'vtiger_invoice', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 12, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 446, 'total', 'vtiger_invoice', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1),
(23, 447, 'taxtype', 'vtiger_invoice', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 13, 67, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 448, 'discount_percent', 'vtiger_invoice', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 449, 'discount_amount', 'vtiger_invoice', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 2, '', 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 450, 's_h_amount', 'vtiger_invoice', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 451, 'accountid', 'vtiger_invoice', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 14, 67, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 0),
(23, 452, 'invoicestatus', 'vtiger_invoice', 1, '15', 'invoicestatus', 'Status', 1, 2, '', 100, 15, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1),
(23, 453, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 16, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(23, 454, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 67, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(23, 455, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 67, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(23, 456, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 67, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(23, 457, 'currency_id', 'vtiger_invoice', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 19, 67, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 458, 'conversion_rate', 'vtiger_invoice', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 20, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 459, 'bill_street', 'vtiger_invoicebillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(23, 460, 'ship_street', 'vtiger_invoiceshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(23, 461, 'bill_city', 'vtiger_invoicebillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 462, 'ship_city', 'vtiger_invoiceshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 463, 'bill_state', 'vtiger_invoicebillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 464, 'ship_state', 'vtiger_invoiceshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 465, 'bill_code', 'vtiger_invoicebillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 466, 'ship_code', 'vtiger_invoiceshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 467, 'bill_country', 'vtiger_invoicebillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 468, 'ship_country', 'vtiger_invoiceshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 469, 'bill_pobox', 'vtiger_invoicebillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 470, 'ship_pobox', 'vtiger_invoiceshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 471, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 72, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(23, 472, 'terms_conditions', 'vtiger_invoice', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 71, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(23, 473, 'invoice_no', 'vtiger_invoice', 1, '4', 'invoice_no', 'Invoice No', 1, 0, '', 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(29, 474, 'user_name', 'vtiger_users', 1, '106', 'user_name', 'User Name', 1, 0, '', 11, 1, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 475, 'is_admin', 'vtiger_users', 1, '156', 'is_admin', 'Admin', 1, 0, '', 3, 7, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 476, 'user_password', 'vtiger_users', 1, '99', 'user_password', 'Password', 1, 0, '', 30, 5, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 477, 'confirm_password', 'vtiger_users', 1, '99', 'confirm_password', 'Confirm Password', 1, 0, '', 30, 6, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 478, 'first_name', 'vtiger_users', 1, '1', 'first_name', 'First Name', 1, 0, '', 30, 3, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 479, 'last_name', 'vtiger_users', 1, '2', 'last_name', 'Last Name', 1, 0, '', 30, 4, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 480, 'roleid', 'vtiger_user2role', 1, '98', 'roleid', 'Role', 1, 0, '', 200, 8, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 481, 'email1', 'vtiger_users', 1, '104', 'email1', 'Email', 1, 0, '', 100, 2, 77, 1, 'E~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 482, 'status', 'vtiger_users', 1, '115', 'status', 'Status', 1, 0, 'Active', 100, 10, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 483, 'activity_view', 'vtiger_users', 1, '16', 'activity_view', 'Default Activity View', 1, 0, '', 100, 6, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 484, 'lead_view', 'vtiger_users', 1, '16', 'lead_view', 'Default Lead View', 1, 0, '', 100, 9, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 485, 'hour_format', 'vtiger_users', 1, '16', 'hour_format', 'Calendar Hour Format', 1, 0, '12', 100, 4, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 486, 'end_hour', 'vtiger_users', 1, '116', 'end_hour', 'Day ends at', 1, 0, '', 100, 11, 77, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 487, 'start_hour', 'vtiger_users', 1, '16', 'start_hour', 'Day starts at', 1, 0, '', 100, 2, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 488, 'title', 'vtiger_users', 1, '1', 'title', 'Title', 1, 0, '', 50, 1, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 489, 'phone_work', 'vtiger_users', 1, '11', 'phone_work', 'Office Phone', 1, 0, '', 50, 5, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 490, 'department', 'vtiger_users', 1, '1', 'department', 'Department', 1, 0, '', 50, 3, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 491, 'phone_mobile', 'vtiger_users', 1, '11', 'phone_mobile', 'Mobile', 1, 0, '', 50, 7, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 492, 'reports_to_id', 'vtiger_users', 1, '101', 'reports_to_id', 'Reports To', 1, 0, '', 50, 8, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 493, 'phone_other', 'vtiger_users', 1, '11', 'phone_other', 'Other Phone', 1, 0, '', 50, 11, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 494, 'email2', 'vtiger_users', 1, '13', 'email2', 'Other Email', 1, 0, '', 100, 4, 79, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 495, 'phone_fax', 'vtiger_users', 1, '11', 'phone_fax', 'Fax', 1, 0, '', 50, 2, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 496, 'secondaryemail', 'vtiger_users', 1, '13', 'secondaryemail', 'Secondary Email', 1, 0, '', 100, 6, 79, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 497, 'phone_home', 'vtiger_users', 1, '11', 'phone_home', 'Home Phone', 1, 0, '', 50, 9, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 498, 'date_format', 'vtiger_users', 1, '16', 'date_format', 'Date Format', 1, 0, '', 30, 3, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 499, 'signature', 'vtiger_users', 1, '21', 'signature', 'Signature', 1, 0, '', 250, 13, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 500, 'description', 'vtiger_users', 1, '21', 'description', 'Documents', 1, 0, '', 250, 14, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 501, 'address_street', 'vtiger_users', 1, '21', 'address_street', 'Street Address', 1, 0, '', 250, 1, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 502, 'address_city', 'vtiger_users', 1, '1', 'address_city', 'City', 1, 0, '', 100, 3, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 503, 'address_state', 'vtiger_users', 1, '1', 'address_state', 'State', 1, 0, '', 100, 5, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 504, 'address_postalcode', 'vtiger_users', 1, '1', 'address_postalcode', 'Postal Code', 1, 0, '', 100, 4, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 505, 'address_country', 'vtiger_users', 1, '1', 'address_country', 'Country', 1, 0, '', 100, 2, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 506, 'accesskey', 'vtiger_users', 1, '3', 'accesskey', 'Webservice Access Key', 1, 0, '', 100, 2, 83, 2, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 507, 'time_zone', 'vtiger_users', 1, '16', 'time_zone', 'Time Zone', 1, 0, '', 200, 5, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 508, 'currency_id', 'vtiger_users', 1, '117', 'currency_id', 'Currency', 1, 0, '', 100, 1, 78, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 509, 'currency_grouping_pattern', 'vtiger_users', 1, '16', 'currency_grouping_pattern', 'Digit Grouping Pattern', 1, 0, '', 100, 2, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Digit Grouping Pattern</b> <br/><br/>This pattern specifies the format in which the currency separator will be placed.', 0),
(29, 510, 'currency_decimal_separator', 'vtiger_users', 1, '16', 'currency_decimal_separator', 'Decimal Separator', 1, 0, '', 2, 3, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Decimal Separator</b> <br/><br/>Decimal separator specifies the separator to be used to separate the fractional values from the whole number part. <br/><b>Eg:</b> <br/>. => 123.45 <br/>, => 123,45 <br/>'' => 123''45 <br/>  => 123 45 <br/>$ => 123$45 <br/>', 0),
(29, 511, 'currency_grouping_separator', 'vtiger_users', 1, '16', 'currency_grouping_separator', 'Digit Grouping Separator', 1, 0, '', 2, 4, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Grouping Separator</b> <br/><br/>Grouping separator specifies the separator to be used to group the whole number part into hundreds, thousands etc. <br/><b>Eg:</b> <br/>. => 123.456.789 <br/>, => 123,456,789 <br/>'' => 123''456''789 <br/>  => 123 456 789 <br/>$ => 123$456$789 <br/>', 0),
(29, 512, 'currency_symbol_placement', 'vtiger_users', 1, '16', 'currency_symbol_placement', 'Symbol Placement', 1, 0, '', 20, 5, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Symbol Placement</b> <br/><br/>Symbol Placement allows you to configure the position of the currency symbol with respect to the currency value.<br/><b>Eg:</b> <br/>$1.0 => $123,456,789.50 <br/>1.0$ => 123,456,789.50$ <br/>', 0),
(29, 513, 'imagename', 'vtiger_users', 1, '105', 'imagename', 'User Image', 1, 0, '', 250, 10, 82, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 514, 'internal_mailer', 'vtiger_users', 1, '56', 'internal_mailer', 'INTERNAL_MAIL_COMPOSER', 1, 0, '', 50, 15, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 515, 'theme', 'vtiger_users', 1, '31', 'theme', 'Theme', 1, 0, 'softed', 100, 16, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 516, 'language', 'vtiger_users', 1, '32', 'language', 'Language', 1, 0, '', 100, 17, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 517, 'reminder_interval', 'vtiger_users', 1, '16', 'reminder_interval', 'Reminder Interval', 1, 0, '', 100, 11, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 518, 'from_email', 'vtiger_emaildetails', 1, '12', 'from_email', 'From', 1, 2, '', 100, 1, 21, 3, 'V~M', 3, NULL, 'BAS', 0, NULL, 0),
(10, 519, 'to_email', 'vtiger_emaildetails', 1, '8', 'saved_toid', 'To', 1, 2, '', 100, 2, 21, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0),
(10, 520, 'cc_email', 'vtiger_emaildetails', 1, '8', 'ccmail', 'CC', 1, 2, '', 1000, 3, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 521, 'bcc_email', 'vtiger_emaildetails', 1, '8', 'bccmail', 'BCC', 1, 2, '', 1000, 4, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 522, 'idlists', 'vtiger_emaildetails', 1, '357', 'parent_id', 'Parent ID', 1, 2, '', 1000, 5, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 523, 'email_flag', 'vtiger_emaildetails', 1, '16', 'email_flag', 'Email Flag', 1, 2, '', 1000, 6, 21, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(31, 524, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 88, 1, 'V~M', 2, 2, 'BAS', 1, '', 1),
(31, 525, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 88, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0),
(31, 526, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 88, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0),
(31, 527, 'start_date', 'vtiger_servicecontracts', 1, '5', 'start_date', 'Start Date', 1, 2, '', 100, 7, 88, 1, 'D~O', 2, 4, 'BAS', 1, '', 0),
(31, 528, 'end_date', 'vtiger_servicecontracts', 1, '5', 'end_date', 'End Date', 1, 2, '', 100, 11, 88, 2, 'D~O', 3, 0, 'BAS', 0, '', 0),
(31, 529, 'sc_related_to', 'vtiger_servicecontracts', 1, '10', 'sc_related_to', 'Related to', 1, 2, '', 100, 3, 88, 1, 'V~O', 2, 6, 'BAS', 1, '', 0),
(31, 530, 'tracking_unit', 'vtiger_servicecontracts', 1, '15', 'tracking_unit', 'Tracking Unit', 1, 2, '', 100, 6, 88, 1, 'V~O', 2, 7, 'BAS', 1, '', 0),
(31, 531, 'total_units', 'vtiger_servicecontracts', 1, '7', 'total_units', 'Total Units', 1, 2, '', 100, 8, 88, 1, 'V~O', 2, 8, 'BAS', 1, '', 1),
(31, 532, 'used_units', 'vtiger_servicecontracts', 1, '7', 'used_units', 'Used Units', 1, 2, '', 100, 10, 88, 1, 'V~O', 2, 9, 'BAS', 1, '', 1),
(31, 533, 'subject', 'vtiger_servicecontracts', 1, '1', 'subject', 'Subject', 1, 0, '', 100, 1, 88, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(31, 534, 'due_date', 'vtiger_servicecontracts', 1, '23', 'due_date', 'Due date', 1, 2, '', 100, 9, 88, 1, 'D~O', 2, 5, 'BAS', 1, '', 0),
(31, 535, 'planned_duration', 'vtiger_servicecontracts', 1, '1', 'planned_duration', 'Planned Duration', 1, 2, '', 100, 13, 88, 2, 'V~O', 3, 0, 'BAS', 0, '', 0),
(31, 536, 'actual_duration', 'vtiger_servicecontracts', 1, '1', 'actual_duration', 'Actual Duration', 1, 2, '', 100, 15, 88, 2, 'V~O', 3, 0, 'BAS', 0, '', 0),
(31, 537, 'contract_status', 'vtiger_servicecontracts', 1, '15', 'contract_status', 'Status', 1, 2, '', 100, 12, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(31, 538, 'priority', 'vtiger_servicecontracts', 1, '15', 'contract_priority', 'Priority', 1, 2, '', 100, 14, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(31, 539, 'contract_type', 'vtiger_servicecontracts', 1, '15', 'contract_type', 'Type', 1, 2, '', 100, 5, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(31, 540, 'progress', 'vtiger_servicecontracts', 1, '9', 'progress', 'Progress', 1, 2, '', 100, 16, 88, 2, 'N~O~2~2', 3, 3, 'BAS', 0, '', 0),
(31, 541, 'contract_no', 'vtiger_servicecontracts', 1, '4', 'contract_no', 'Contract No', 1, 0, '', 100, 2, 88, 1, 'V~O', 3, 0, 'BAS', 0, '', 1),
(31, 542, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 88, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(36, 543, 'direction', 'vtiger_pbxmanager', 1, '1', 'direction', 'Direction', 1, 2, '', 100, 1, 90, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(36, 544, 'callstatus', 'vtiger_pbxmanager', 1, '1', 'callstatus', 'Call Status', 1, 2, '', 100, 2, 90, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(36, 545, 'starttime', 'vtiger_pbxmanager', 1, '70', 'starttime', 'Start Time', 1, 2, '', 100, 7, 90, 1, 'DT~O', 1, NULL, 'BAS', 1, '', 1),
(36, 546, 'endtime', 'vtiger_pbxmanager', 1, '70', 'endtime', 'End Time', 1, 2, '', 100, 8, 90, 1, 'DT~O', 1, NULL, 'BAS', 1, '', 0),
(36, 547, 'totalduration', 'vtiger_pbxmanager', 1, '7', 'totalduration', 'Total Duration', 1, 2, '', 100, 10, 90, 1, 'I~O', 1, NULL, 'BAS', 1, '', 0),
(36, 548, 'billduration', 'vtiger_pbxmanager', 1, '7', 'billduration', 'Bill Duration', 1, 2, '', 100, 11, 90, 1, 'I~O', 1, NULL, 'BAS', 1, '', 0),
(36, 549, 'recordingurl', 'vtiger_pbxmanager', 1, '17', 'recordingurl', 'Recording URL', 1, 2, '', 100, 9, 90, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(36, 550, 'sourceuuid', 'vtiger_pbxmanager', 1, '1', 'sourceuuid', 'Source UUID', 1, 2, '', 100, 12, 90, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(36, 551, 'gateway', 'vtiger_pbxmanager', 1, '1', 'gateway', 'Gateway', 1, 2, '', 100, 13, 90, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(36, 552, 'customer', 'vtiger_pbxmanager', 1, '10', 'customer', 'Customer', 1, 2, '', 100, 3, 90, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(36, 553, 'user', 'vtiger_pbxmanager', 1, '52', 'user', 'User', 1, 2, '', 100, 4, 90, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(36, 554, 'customernumber', 'vtiger_pbxmanager', 1, '11', 'customernumber', 'Customer Number', 1, 2, '', 100, 5, 90, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(36, 555, 'customertype', 'vtiger_pbxmanager', 1, '1', 'customertype', 'Customer Type', 1, 2, '', 100, 6, 90, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(36, 556, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 14, 90, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(36, 557, 'createdtime', 'vtiger_crmentity', 1, '70', 'CreatedTime', 'Created Time', 1, 2, '', 100, 15, 90, 2, 'DT~O', 1, NULL, 'BAS', 1, '', 0),
(36, 558, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'ModifiedTime', 'Modified Time', 1, 2, '', 100, 16, 90, 2, 'DT~O', 1, NULL, 'BAS', 1, '', 0),
(29, 559, 'phone_crm_extension', 'vtiger_users', 1, '11', 'phone_crm_extension', 'CRM Phone Extension', 1, 2, '', 100, 18, 79, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(37, 560, 'servicename', 'vtiger_service', 1, '2', 'servicename', 'Service Name', 1, 0, '', 100, 1, 91, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(37, 561, 'service_no', 'vtiger_service', 1, '4', 'service_no', 'Service No', 1, 0, '', 100, 2, 91, 1, 'V~O', 3, 0, 'BAS', 0, '', 1),
(37, 562, 'discontinued', 'vtiger_service', 1, '56', 'discontinued', 'Service Active', 1, 2, '', 100, 4, 91, 1, 'V~O', 2, 3, 'BAS', 1, '', 0),
(37, 563, 'sales_start_date', 'vtiger_service', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 2, '', 100, 9, 91, 1, 'D~O', 1, NULL, 'BAS', 1, '', 0),
(37, 564, 'sales_end_date', 'vtiger_service', 1, '5', 'sales_end_date', 'Sales End Date', 1, 2, '', 100, 10, 91, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, NULL, 'BAS', 1, '', 0),
(37, 565, 'start_date', 'vtiger_service', 1, '5', 'start_date', 'Support Start Date', 1, 2, '', 100, 11, 91, 1, 'D~O', 1, NULL, 'BAS', 1, '', 0),
(37, 566, 'expiry_date', 'vtiger_service', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 2, '', 100, 12, 91, 1, 'D~O~OTH~GE~start_date~Start Date', 1, NULL, 'BAS', 1, '', 0),
(37, 567, 'website', 'vtiger_service', 1, '17', 'website', 'Website', 1, 2, '', 100, 6, 91, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(37, 568, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 13, 91, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0),
(37, 569, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 14, 91, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0),
(37, 570, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 91, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(37, 571, 'service_usageunit', 'vtiger_service', 1, '15', 'service_usageunit', 'Usage Unit', 1, 2, '', 100, 3, 91, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(37, 572, 'qty_per_unit', 'vtiger_service', 1, '1', 'qty_per_unit', 'No of Units', 1, 2, '', 100, 5, 91, 1, 'N~O', 1, NULL, 'BAS', 1, '', 1),
(37, 573, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Owner', 1, 0, '', 100, 8, 91, 1, 'I~O', 1, NULL, 'BAS', 1, '', 0),
(37, 574, 'servicecategory', 'vtiger_service', 1, '15', 'servicecategory', 'Service Category', 1, 2, '', 100, 7, 91, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(37, 575, 'unit_price', 'vtiger_service', 1, '72', 'unit_price', 'Price', 1, 2, '', 100, 1, 92, 1, 'N~O', 2, 2, 'BAS', 0, '', 1),
(37, 576, 'taxclass', 'vtiger_service', 1, '83', 'taxclass', 'Tax Class', 1, 2, '', 100, 4, 92, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(37, 577, 'commissionrate', 'vtiger_service', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, '', 100, 2, 92, 1, 'N~O', 1, NULL, 'BAS', 1, '', 1),
(37, 578, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 94, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(39, 579, 'asset_no', 'vtiger_assets', 1, '4', 'asset_no', 'Asset No', 1, 0, '', 100, 1, 95, 1, 'V~O', 3, 0, 'BAS', 0, '\n                    ', 1),
(39, 580, 'product', 'vtiger_assets', 1, '10', 'product', 'Product Name', 1, 2, '', 100, 2, 95, 1, 'V~M', 0, 3, 'BAS', 1, '\n                    ', 1),
(39, 581, 'serialnumber', 'vtiger_assets', 1, '2', 'serialnumber', 'Serial Number', 1, 2, '', 100, 4, 95, 1, 'V~M', 0, 5, 'BAS', 1, '\n                    ', 0),
(39, 582, 'datesold', 'vtiger_assets', 1, '5', 'datesold', 'Date Sold', 1, 2, '', 100, 9, 95, 1, 'D~M~OTH~GE~datesold~Date Sold', 0, 0, 'BAS', 1, '\n                    ', 0),
(39, 583, 'dateinservice', 'vtiger_assets', 1, '5', 'dateinservice', 'Date in Service', 1, 2, '', 100, 5, 95, 1, 'D~M~OTH~GE~dateinservice~Date in Service', 0, 4, 'BAS', 1, '\n                    ', 0),
(39, 584, 'assetstatus', 'vtiger_assets', 1, '15', 'assetstatus', 'Status', 1, 2, '', 100, 7, 95, 1, 'V~M', 0, 0, 'BAS', 1, '\n                    ', 0),
(39, 585, 'tagnumber', 'vtiger_assets', 1, '2', 'tagnumber', 'Tag Number', 1, 2, '', 100, 8, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(39, 586, 'invoiceid', 'vtiger_assets', 1, '10', 'invoiceid', 'Invoice Name', 1, 1, '', 100, 9, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(39, 587, 'shippingmethod', 'vtiger_assets', 1, '2', 'shippingmethod', 'Shipping Method', 1, 1, '', 100, 10, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(39, 588, 'shippingtrackingnumber', 'vtiger_assets', 1, '2', 'shippingtrackingnumber', 'Shipping Tracking Number', 1, 1, '', 100, 11, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(39, 589, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 6, 95, 1, 'V~M', 0, 2, 'BAS', 1, '\n                    ', 0),
(39, 590, 'assetname', 'vtiger_assets', 1, '1', 'assetname', 'Asset Name', 1, 0, '', 100, 3, 95, 1, 'V~M', 0, 6, 'BAS', 1, '\n                    ', 1),
(39, 591, 'account', 'vtiger_assets', 1, '10', 'account', 'Customer Name', 1, 2, '', 100, 10, 95, 1, 'V~M', 0, 0, 'BAS', 1, '\n                    ', 1),
(39, 592, 'contact', 'vtiger_assets', 1, '10', 'contact', 'Contact Name', 1, 1, '', 100, 14, 95, 1, 'V~O', 2, 0, 'BAS', 1, '\n                    ', 0),
(39, 593, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 11, 95, 2, 'DT~O', 3, 0, 'BAS', 0, '\n                    ', 0),
(39, 594, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 12, 95, 2, 'DT~O', 3, 0, 'BAS', 0, '\n                    ', 0),
(39, 595, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 95, 3, 'V~O', 3, 0, 'BAS', 0, '\n                    ', 0),
(39, 596, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Notes', 1, 2, '', 100, 1, 97, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(42, 597, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 98, 1, 'V~M', 1, NULL, 'BAS', 1, '', 1),
(42, 598, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 98, 2, 'DT~O', 1, NULL, 'BAS', 0, '', 0),
(42, 599, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 98, 2, 'DT~O', 1, NULL, 'BAS', 0, '', 0),
(42, 600, 'message', 'vtiger_smsnotifier', 1, '21', 'message', 'message', 1, 0, '', 100, 1, 98, 1, 'V~M', 1, NULL, 'BAS', 1, '', 1),
(42, 601, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 98, 3, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(43, 602, 'commentcontent', 'vtiger_modcomments', 1, '19', 'commentcontent', 'Comment', 1, 0, '', 100, 4, 101, 1, 'V~M', 0, 4, 'BAS', 2, '', 1),
(43, 603, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 1, 102, 1, 'V~M', 0, 1, 'BAS', 2, '', 1),
(43, 604, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 102, 2, 'DT~O', 0, 2, 'BAS', 0, '', 0),
(43, 605, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 102, 2, 'DT~O', 0, 3, 'BAS', 0, '', 0),
(43, 606, 'related_to', 'vtiger_modcomments', 1, '10', 'related_to', 'Related To', 1, 2, '', 100, 2, 102, 1, 'V~M', 2, 5, 'BAS', 2, '', 0),
(43, 607, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'creator', 'Creator', 1, 2, '', 100, 4, 102, 2, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(43, 608, 'parent_comments', 'vtiger_modcomments', 1, '10', 'parent_comments', 'Related To Comments', 1, 2, '', 100, 7, 102, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(44, 609, 'projectmilestonename', 'vtiger_projectmilestone', 1, '2', 'projectmilestonename', 'Project Milestone Name', 1, 2, '', 100, 1, 104, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(44, 610, 'projectmilestonedate', 'vtiger_projectmilestone', 1, '5', 'projectmilestonedate', 'Milestone Date', 1, 2, '', 100, 5, 104, 1, 'D~O', 0, 3, 'BAS', 1, '', 1),
(44, 611, 'projectid', 'vtiger_projectmilestone', 1, '10', 'projectid', 'Related to', 1, 0, '', 100, 4, 104, 1, 'V~M', 0, 4, 'BAS', 1, '', 0),
(44, 612, 'projectmilestonetype', 'vtiger_projectmilestone', 1, '15', 'projectmilestonetype', 'Type', 1, 2, '', 100, 7, 104, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(44, 613, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 6, 104, 1, 'V~M', 0, 2, 'BAS', 1, '', 0),
(44, 614, 'projectmilestone_no', 'vtiger_projectmilestone', 2, '4', 'projectmilestone_no', 'Project Milestone No', 1, 0, '', 100, 2, 104, 1, 'V~O', 3, 4, 'BAS', 0, '', 0),
(44, 615, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 1, 105, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(44, 616, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 2, 105, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(44, 617, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 3, 105, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(44, 618, 'description', 'vtiger_crmentity', 1, '19', 'description', 'description', 1, 2, '', 100, 1, 106, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 619, 'projecttaskname', 'vtiger_projecttask', 1, '2', 'projecttaskname', 'Project Task Name', 1, 2, '', 100, 1, 107, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(45, 620, 'projecttasktype', 'vtiger_projecttask', 1, '15', 'projecttasktype', 'Type', 1, 2, '', 100, 4, 107, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(45, 621, 'projecttaskpriority', 'vtiger_projecttask', 1, '15', 'projecttaskpriority', 'Priority', 1, 2, '', 100, 3, 107, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 622, 'projectid', 'vtiger_projecttask', 1, '10', 'projectid', 'Related to', 1, 0, '', 100, 6, 107, 1, 'V~M', 0, 5, 'BAS', 1, '', 0),
(45, 623, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 7, 107, 1, 'V~M', 0, 2, 'BAS', 1, '', 1),
(45, 624, 'projecttasknumber', 'vtiger_projecttask', 1, '7', 'projecttasknumber', 'Project Task Number', 1, 2, '', 100, 5, 107, 1, 'I~O', 1, NULL, 'BAS', 1, '', 0),
(45, 625, 'projecttask_no', 'vtiger_projecttask', 2, '4', 'projecttask_no', 'Project Task No', 1, 0, '', 100, 2, 107, 1, 'V~O', 3, 4, 'BAS', 0, '', 0),
(45, 626, 'projecttaskprogress', 'vtiger_projecttask', 1, '15', 'projecttaskprogress', 'Progress', 1, 2, '', 100, 1, 108, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(45, 627, 'projecttaskhours', 'vtiger_projecttask', 1, '7', 'projecttaskhours', 'Worked Hours', 1, 2, '', 100, 2, 108, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 628, 'startdate', 'vtiger_projecttask', 1, '5', 'startdate', 'Start Date', 1, 2, '', 100, 3, 108, 1, 'D~O', 0, 3, 'BAS', 1, '', 1),
(45, 629, 'enddate', 'vtiger_projecttask', 1, '5', 'enddate', 'End Date', 1, 2, '', 100, 4, 108, 1, 'D~O~OTH~GE~startdate~Start Date', 1, NULL, 'BAS', 1, '', 1),
(45, 630, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 5, 108, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(45, 631, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 6, 108, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(45, 632, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 108, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(45, 633, 'description', 'vtiger_crmentity', 1, '19', 'description', 'description', 1, 2, '', 100, 1, 109, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(46, 634, 'projectname', 'vtiger_project', 1, '2', 'projectname', 'Project Name', 1, 2, '', 100, 1, 110, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(46, 635, 'startdate', 'vtiger_project', 1, '23', 'startdate', 'Start Date', 1, 2, '', 100, 3, 110, 1, 'D~O', 0, 3, 'BAS', 1, '', 1),
(46, 636, 'targetenddate', 'vtiger_project', 1, '23', 'targetenddate', 'Target End Date', 1, 2, '', 100, 5, 110, 1, 'D~O~OTH~GE~startdate~Start Date', 0, 4, 'BAS', 1, '', 1),
(46, 637, 'actualenddate', 'vtiger_project', 1, '23', 'actualenddate', 'Actual End Date', 1, 2, '', 100, 6, 110, 1, 'D~O~OTH~GE~startdate~Start Date', 1, NULL, 'BAS', 1, '', 0),
(46, 638, 'projectstatus', 'vtiger_project', 1, '15', 'projectstatus', 'Status', 1, 2, '', 100, 7, 110, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(46, 639, 'projecttype', 'vtiger_project', 1, '15', 'projecttype', 'Type', 1, 2, '', 100, 8, 110, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(46, 640, 'linktoaccountscontacts', 'vtiger_project', 1, '10', 'linktoaccountscontacts', 'Related to', 1, 2, '', 100, 9, 110, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(46, 641, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 110, 1, 'V~M', 0, 2, 'BAS', 1, '', 1),
(46, 642, 'project_no', 'vtiger_project', 2, '4', 'project_no', 'Project No', 1, 0, '', 100, 2, 110, 1, 'V~O', 3, 0, 'BAS', 0, '', 0),
(46, 643, 'targetbudget', 'vtiger_project', 1, '7', 'targetbudget', 'Target Budget', 1, 2, '', 100, 1, 111, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(46, 644, 'projecturl', 'vtiger_project', 1, '17', 'projecturl', 'Project Url', 1, 2, '', 100, 2, 111, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(46, 645, 'projectpriority', 'vtiger_project', 1, '15', 'projectpriority', 'Priority', 1, 2, '', 100, 3, 111, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(46, 646, 'progress', 'vtiger_project', 1, '15', 'progress', 'Progress', 1, 2, '', 100, 4, 111, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(46, 647, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 5, 111, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(46, 648, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 6, 111, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(46, 649, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 111, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(46, 650, 'description', 'vtiger_crmentity', 1, '19', 'description', 'description', 1, 2, '', 100, 1, 112, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(2, 651, 'forecast_amount', 'vtiger_potential', 1, '71', 'forecast_amount', 'Forecast Amount', 1, 2, '', 100, 18, 1, 1, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(29, 652, 'no_of_currency_decimals', 'vtiger_users', 1, '16', 'no_of_currency_decimals', 'Number Of Currency Decimals', 1, 2, '2', 100, 6, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Number of Decimal places</b> <br/><br/>Number of decimal places specifies how many number of decimals will be shown after decimal separator.<br/><b>Eg:</b> 123.00', 0),
(23, 653, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 113, 5, 'V~M', 1, NULL, 'BAS', 0, '', 0),
(23, 654, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 113, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(23, 655, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 113, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(23, 656, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 657, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Discount', 0, 2, '', 100, 5, 113, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(23, 658, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 659, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'Tax1', 0, 2, '', 100, 7, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 660, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Tax2', 0, 2, '', 100, 8, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 661, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Tax3', 0, 2, '', 100, 9, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 662, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 114, 5, 'V~M', 1, NULL, 'BAS', 0, '', 0),
(22, 663, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 114, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(22, 664, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 114, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(22, 665, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 666, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Discount', 0, 2, '', 100, 5, 114, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(22, 667, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 668, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'Tax1', 0, 2, '', 100, 7, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 669, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Tax2', 0, 2, '', 100, 8, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 670, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Tax3', 0, 2, '', 100, 9, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 671, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 115, 5, 'V~M', 1, NULL, 'BAS', 0, '', 0),
(21, 672, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 115, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(21, 673, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 115, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(21, 674, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 675, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Discount', 0, 2, '', 100, 5, 115, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(21, 676, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 677, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'Tax1', 0, 2, '', 100, 7, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 678, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Tax2', 0, 2, '', 100, 8, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 679, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Tax3', 0, 2, '', 100, 9, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 680, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 116, 5, 'V~M', 1, NULL, 'BAS', 0, '', 0);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`) VALUES
(20, 681, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 116, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(20, 682, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 116, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(20, 683, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 684, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Discount', 0, 2, '', 100, 5, 116, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(20, 685, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 686, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'Tax1', 0, 2, '', 100, 7, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 687, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Tax2', 0, 2, '', 100, 8, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 688, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Tax3', 0, 2, '', 100, 9, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(29, 689, 'truncate_trailing_zeros', 'vtiger_users', 1, '56', 'truncate_trailing_zeros', 'Truncate Trailing Zeros', 1, 2, '0', 100, 7, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b> Truncate Trailing Zeros </b> <br/><br/>It truncated trailing 0s in any of Currency, Decimal and Percentage Field types<br/><br/><b>Ex:</b><br/>If value is 89.00000 then <br/>decimal and Percentage fields were shows 89<br/>currency field type - shows 89.00<br/>', 0),
(45, 690, 'projecttaskstatus', 'vtiger_projecttask', 1, '15', 'projecttaskstatus', 'Status', 1, 2, '', 100, 8, 107, 1, 'V~O', 0, 6, 'BAS', 1, '', 0),
(43, 691, 'customer', 'vtiger_modcomments', 1, '10', 'customer', 'Customer', 1, 2, '', 100, 5, 101, 3, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 692, 'dayoftheweek', 'vtiger_users', 1, '16', 'dayoftheweek', 'Starting Day of the week', 1, 2, 'Monday', 100, 1, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 693, 'callduration', 'vtiger_users', 1, '16', 'callduration', 'Default Call Duration', 1, 2, '5', 100, 7, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 694, 'othereventduration', 'vtiger_users', 1, '16', 'othereventduration', 'Other Event Duration', 1, 2, '5', 100, 8, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(23, 695, 'pre_tax_total', 'vtiger_invoice', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 67, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(22, 696, 'pre_tax_total', 'vtiger_salesorder', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 61, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(21, 697, 'pre_tax_total', 'vtiger_purchaseorder', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 55, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(20, 698, 'pre_tax_total', 'vtiger_quotes', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 49, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(29, 699, 'calendarsharedtype', 'vtiger_users', 1, '16', 'calendarsharedtype', 'Calendar Shared Type', 1, 2, 'Public', 100, 12, 118, 3, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(6, 700, 'isconvertedfromlead', 'vtiger_account', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, '', 100, 24, 9, 2, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(4, 701, 'isconvertedfromlead', 'vtiger_contactdetails', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 29, 4, 2, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(2, 702, 'isconvertedfromlead', 'vtiger_potential', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 19, 1, 2, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(29, 703, 'default_record_view', 'vtiger_users', 1, '16', 'default_record_view', 'Default Record View', 1, 2, 'Summary', 100, 19, 79, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(23, 704, 'received', 'vtiger_invoice', 1, '72', 'received', 'Received', 1, 2, '0', 100, 24, 67, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(23, 705, 'balance', 'vtiger_invoice', 1, '72', 'balance', 'Balance', 1, 2, '0', 100, 25, 67, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(21, 706, 'paid', 'vtiger_purchaseorder', 1, '72', 'paid', 'Paid', 1, 2, '0', 100, 24, 55, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(21, 707, 'balance', 'vtiger_purchaseorder', 1, '72', 'balance', 'Balance', 1, 2, '0', 100, 25, 55, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(18, 708, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 13, 42, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(7, 709, 'emailoptout', 'vtiger_leaddetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 2, '', 100, 24, 13, 1, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(43, 710, 'userid', 'vtiger_modcomments', 1, '10', 'userid', 'UserId', 1, 2, '', 100, 6, 101, 3, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(43, 711, 'reasontoedit', 'vtiger_modcomments', 1, '19', 'reasontoedit', 'ReasonToEdit', 1, 2, '', 100, 7, 101, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(23, 712, 's_h_percent', 'vtiger_invoice', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 113, 5, 'N~O', 0, 1, 'BAS', 0, '', 0),
(20, 713, 's_h_percent', 'vtiger_quotes', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 116, 5, 'N~O', 0, 1, 'BAS', 0, '', 0),
(21, 714, 's_h_percent', 'vtiger_purchaseorder', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 115, 5, 'N~O', 0, 1, 'BAS', 0, '', 0),
(22, 715, 's_h_percent', 'vtiger_salesorder', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 114, 5, 'N~O', 0, 1, 'BAS', 0, '', 0),
(29, 716, 'leftpanelhide', 'vtiger_users', 1, '56', 'leftpanelhide', 'Left Panel Hide', 1, 2, '0', 100, 20, 79, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(2, 717, 'contact_id', 'vtiger_potential', 1, '10', 'contact_id', 'Contact Name', 1, 2, '', 100, 4, 1, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(13, 718, 'contact_id', 'vtiger_troubletickets', 1, '10', 'contact_id', 'Contact Name', 1, 2, '', 100, 3, 25, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(29, 719, 'rowheight', 'vtiger_users', 1, '16', 'rowheight', 'Row Height', 1, 2, 'medium', 100, 21, 79, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(13, 720, 'from_portal', 'vtiger_ticketcf', 1, '56', 'from_portal', 'From Portal', 1, 0, '', 100, 18, 25, 3, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(29, 721, 'defaulteventstatus', 'vtiger_users', 1, '15', 'defaulteventstatus', 'Default Event Status', 1, 2, '', 100, 9, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 722, 'defaultactivitytype', 'vtiger_users', 1, '15', 'defaultactivitytype', 'Default Activity Type', 1, 2, '', 100, 10, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(39, 724, 'cf_723', 'vtiger_assetscf', 2, '16', 'cf_723', 'asset type', 1, 2, '', 100, 1, 120, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(50, 725, 'assets', 'vtiger_maintenance', 1, '2', 'assets', 'Assets', 1, 2, '', 100, 1, 121, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(50, 726, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 2, 121, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(50, 727, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 3, 121, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(50, 728, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 4, 121, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(51, 729, 'assets', 'vtiger_valuation', 1, '2', 'assets', 'Assets', 1, 2, '', 100, 1, 123, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(51, 730, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 2, 123, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(51, 731, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 3, 123, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(51, 732, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 4, 123, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(39, 734, 'cf_733', 'vtiger_assetscf', 2, '1', 'cf_733', 'Room Number', 1, 2, '', 100, 17, 95, 1, 'V~O~LE~50', 1, NULL, 'BAS', 1, '', 0),
(50, 740, 'cf_739', 'vtiger_maintenancecf', 2, '1', 'cf_739', 'User', 1, 2, '', 100, 6, 121, 1, 'V~O~LE~50', 1, NULL, 'BAS', 1, '', 0),
(50, 742, 'cf_741', 'vtiger_maintenancecf', 2, '16', 'cf_741', 'Designation', 1, 2, '', 100, 7, 121, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(50, 744, 'cf_743', 'vtiger_maintenancecf', 2, '71', 'cf_743', 'Material Cost', 1, 2, '', 100, 1, 125, 1, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(50, 746, 'cf_745', 'vtiger_maintenancecf', 2, '71', 'cf_745', 'Company Cost', 1, 2, '', 100, 2, 125, 1, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(39, 750, 'cf_749', 'vtiger_assetscf', 2, '16', 'cf_749', 'MAINTENANCE STATUS', 1, 2, '', 100, 2, 120, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(51, 754, 'cf_753', 'vtiger_valuationcf', 2, '1', 'cf_753', 'Address', 1, 2, '', 100, 6, 123, 1, 'V~O~LE~50', 1, NULL, 'BAS', 1, '', 0),
(51, 758, 'cf_757', 'vtiger_valuationcf', 2, '16', 'cf_757', 'Type of Building', 1, 2, '', 100, 6, 126, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(51, 760, 'cf_759', 'vtiger_valuationcf', 2, '5', 'cf_759', 'Year of Construction', 1, 2, '', 100, 5, 126, 1, 'D~O', 1, NULL, 'BAS', 1, '', 0),
(51, 762, 'cf_761', 'vtiger_valuationcf', 2, '1', 'cf_761', 'Name Of Surveryor', 1, 2, '', 100, 8, 123, 1, 'V~O~LE~50', 1, NULL, 'BAS', 1, '', 0),
(51, 766, 'cf_765', 'vtiger_valuationcf', 2, '16', 'cf_765', 'Budget', 1, 2, '', 100, 2, 126, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(51, 768, 'cf_767', 'vtiger_valuationcf', 2, '5', 'cf_767', 'Valuation Date', 1, 2, '', 100, 7, 123, 1, 'D~O', 1, NULL, 'BAS', 1, '', 0),
(51, 770, 'cf_769', 'vtiger_valuationcf', 2, '7', 'cf_769', 'Gross Floor Area (Square meter)', 1, 2, '', 100, 3, 126, 1, 'NN~O', 1, NULL, 'BAS', 1, '', 0),
(51, 772, 'cf_771', 'vtiger_valuationcf', 2, '7', 'cf_771', 'Volume (Cubic Meter)', 1, 2, '', 100, 4, 126, 1, 'NN~O', 1, NULL, 'BAS', 1, '', 0),
(50, 774, 'cf_773', 'vtiger_maintenancecf', 2, '5', 'cf_773', 'Date', 1, 2, '', 100, 8, 121, 1, 'D~O', 1, NULL, 'BAS', 1, '', 0),
(50, 780, 'cf_779', 'vtiger_maintenancecf', 2, '21', 'cf_779', 'Description', 1, 2, '', 100, 1, 122, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(51, 782, 'cf_781', 'vtiger_valuationcf', 2, '21', 'cf_781', 'Description', 1, 2, '', 100, 7, 126, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(50, 784, 'cf_783', 'vtiger_maintenancecf', 2, '16', 'cf_783', 'Related to ', 1, 2, '', 100, 2, 122, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(39, 788, 'cf_787', 'vtiger_assetscf', 2, '16', 'cf_787', 'Zone', 1, 2, '', 100, 18, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(51, 790, 'cf_789', 'vtiger_valuationcf', 2, '16', 'cf_789', 'FILTERS', 1, 2, '', 100, 1, 124, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(51, 792, 'cf_791', 'vtiger_valuationcf', 2, '16', 'cf_791', 'Zone', 1, 2, '', 100, 9, 123, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(50, 794, 'cf_793', 'vtiger_maintenancecf', 2, '7', 'cf_793', 'Other cost', 1, 2, '', 100, 3, 125, 1, 'NN~O', 1, NULL, 'BAS', 1, '', 0),
(50, 796, 'cf_795', 'vtiger_maintenancecf', 2, '16', 'cf_795', 'Zone', 1, 2, '', 100, 12, 121, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(50, 798, 'cf_797', 'vtiger_maintenancecf', 2, '1', 'cf_797', 'Name', 1, 2, '', 100, 13, 121, 1, 'V~O~LE~50', 1, NULL, 'BAS', 1, '', 0),
(50, 800, 'cf_799', 'vtiger_maintenancecf', 2, '1', 'cf_799', 'Asset Number', 1, 2, '', 100, 14, 121, 1, 'V~O~LE~50', 1, NULL, 'BAS', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_fieldmodulerel`
--

CREATE TABLE IF NOT EXISTS `vtiger_fieldmodulerel` (
  `fieldid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relmodule` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_fieldmodulerel`
--

INSERT INTO `vtiger_fieldmodulerel` (`fieldid`, `module`, `relmodule`, `status`, `sequence`) VALUES
(113, 'Potentials', 'Accounts', NULL, 0),
(529, 'ServiceContracts', 'Contacts', NULL, NULL),
(529, 'ServiceContracts', 'Accounts', NULL, NULL),
(552, 'PBXManager', 'Leads', NULL, NULL),
(552, 'PBXManager', 'Contacts', NULL, NULL),
(552, 'PBXManager', 'Accounts', NULL, NULL),
(580, 'Assets', 'Products', NULL, NULL),
(586, 'Assets', 'Invoice', NULL, NULL),
(591, 'Assets', 'Accounts', NULL, NULL),
(592, 'Assets', 'Contacts', NULL, NULL),
(606, 'ModComments', 'Leads', NULL, NULL),
(606, 'ModComments', 'Contacts', NULL, NULL),
(606, 'ModComments', 'Accounts', NULL, NULL),
(608, 'ModComments', 'ModComments', NULL, NULL),
(606, 'ModComments', 'Potentials', NULL, NULL),
(611, 'ProjectMilestone', 'Project', NULL, NULL),
(622, 'ProjectTask', 'Project', NULL, NULL),
(606, 'ModComments', 'ProjectTask', NULL, NULL),
(640, 'Project', 'Accounts', NULL, NULL),
(640, 'Project', 'Contacts', NULL, NULL),
(606, 'ModComments', 'Project', NULL, NULL),
(653, 'Invoice', 'Products', NULL, NULL),
(653, 'Invoice', 'Services', NULL, NULL),
(662, 'SalesOrder', 'Products', NULL, NULL),
(662, 'SalesOrder', 'Services', NULL, NULL),
(671, 'PurchaseOrder', 'Products', NULL, NULL),
(671, 'PurchaseOrder', 'Services', NULL, NULL),
(680, 'Quotes', 'Products', NULL, NULL),
(680, 'Quotes', 'Services', NULL, NULL),
(606, 'ModComments', 'HelpDesk', NULL, NULL),
(606, 'ModComments', 'Faq', NULL, NULL),
(691, 'ModComments', 'Contacts', NULL, NULL),
(717, 'Potentials', 'Contacts', NULL, NULL),
(157, 'HelpDesk', 'Accounts', NULL, NULL),
(718, 'HelpDesk', 'Contacts', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_field_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_field_seq`
--

INSERT INTO `vtiger_field_seq` (`id`) VALUES
(800);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetagged_objects`
--

CREATE TABLE IF NOT EXISTS `vtiger_freetagged_objects` (
  `tag_id` int(20) NOT NULL DEFAULT '0',
  `tagger_id` int(20) NOT NULL DEFAULT '0',
  `object_id` int(20) NOT NULL DEFAULT '0',
  `tagged_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `module` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`,`tagger_id`,`object_id`),
  KEY `freetagged_objects_tag_id_tagger_id_object_id_idx` (`tag_id`,`tagger_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetags`
--

CREATE TABLE IF NOT EXISTS `vtiger_freetags` (
  `id` int(19) NOT NULL,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `raw_tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetags_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_freetags_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_freetags_seq`
--

INSERT INTO `vtiger_freetags_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_glacct`
--

CREATE TABLE IF NOT EXISTS `vtiger_glacct` (
  `glacctid` int(19) NOT NULL AUTO_INCREMENT,
  `glacct` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`glacctid`),
  UNIQUE KEY `glacct_glacct_idx` (`glacct`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vtiger_glacct`
--

INSERT INTO `vtiger_glacct` (`glacctid`, `glacct`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(9, '308-Sales-Books', 1, 59, 8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_glacct_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_glacct_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_glacct_seq`
--

INSERT INTO `vtiger_glacct_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_sync`
--

CREATE TABLE IF NOT EXISTS `vtiger_google_sync` (
  `googlemodule` varchar(50) DEFAULT NULL,
  `user` int(10) DEFAULT NULL,
  `synctime` datetime DEFAULT NULL,
  `lastsynctime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2grouprel`
--

CREATE TABLE IF NOT EXISTS `vtiger_group2grouprel` (
  `groupid` int(19) NOT NULL,
  `containsgroupid` int(19) NOT NULL,
  PRIMARY KEY (`groupid`,`containsgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_group2role` (
  `groupid` int(19) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY (`groupid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_group2role`
--

INSERT INTO `vtiger_group2role` (`groupid`, `roleid`) VALUES
(7, 'H2'),
(8, 'H2'),
(9, 'H2');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2rs`
--

CREATE TABLE IF NOT EXISTS `vtiger_group2rs` (
  `groupid` int(19) NOT NULL,
  `roleandsubid` varchar(255) NOT NULL,
  PRIMARY KEY (`groupid`,`roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_group2rs`
--

INSERT INTO `vtiger_group2rs` (`groupid`, `roleandsubid`) VALUES
(6, 'H2');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_groups`
--

CREATE TABLE IF NOT EXISTS `vtiger_groups` (
  `groupid` int(19) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`groupid`),
  UNIQUE KEY `groups_groupname_idx` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_groups`
--

INSERT INTO `vtiger_groups` (`groupid`, `groupname`, `description`) VALUES
(6, 'UDSM Staff', 'Group Related to All University Staff'),
(7, 'CoICT Staff', 'Group Related to CoICT Staff'),
(8, 'Teaching Staff', 'Group Related to Teaching CoICT Staff'),
(9, 'Non Teaching Saff', 'Group Related to CoICT Non Teaching Staff'),
(10, 'Others ', 'Group Related to users outside the University');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homedashbd`
--

CREATE TABLE IF NOT EXISTS `vtiger_homedashbd` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `dashbdname` varchar(100) DEFAULT NULL,
  `dashbdtype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homedefault`
--

CREATE TABLE IF NOT EXISTS `vtiger_homedefault` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `hometype` varchar(30) NOT NULL,
  `maxentries` int(19) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_homedefault`
--

INSERT INTO `vtiger_homedefault` (`stuffid`, `hometype`, `maxentries`, `setype`) VALUES
(1, 'ALVT', 5, 'Accounts'),
(2, 'HDB', 5, 'Dashboard'),
(3, 'PLVT', 5, 'Potentials'),
(4, 'QLTQ', 5, 'Quotes'),
(5, 'CVLVT', 5, 'NULL'),
(6, 'HLT', 5, 'HelpDesk'),
(7, 'UA', 5, 'Calendar'),
(8, 'GRT', 5, 'NULL'),
(9, 'OLTSO', 5, 'SalesOrder'),
(10, 'ILTI', 5, 'Invoice'),
(11, 'MNL', 5, 'Leads'),
(12, 'OLTPO', 5, 'PurchaseOrder'),
(13, 'PA', 5, 'Calendar'),
(14, 'LTFAQ', 5, 'Faq'),
(16, 'ALVT', 5, 'Accounts'),
(17, 'HDB', 5, 'Dashboard'),
(18, 'PLVT', 5, 'Potentials'),
(19, 'QLTQ', 5, 'Quotes'),
(20, 'CVLVT', 5, 'NULL'),
(21, 'HLT', 5, 'HelpDesk'),
(22, 'UA', 5, 'Calendar'),
(23, 'GRT', 5, 'NULL'),
(24, 'OLTSO', 5, 'SalesOrder'),
(25, 'ILTI', 5, 'Invoice'),
(26, 'MNL', 5, 'Leads'),
(27, 'OLTPO', 5, 'PurchaseOrder'),
(28, 'PA', 5, 'Calendar'),
(29, 'LTFAQ', 5, 'Faq'),
(31, 'ALVT', 5, 'Accounts'),
(32, 'HDB', 5, 'Dashboard'),
(33, 'PLVT', 5, 'Potentials'),
(34, 'QLTQ', 5, 'Quotes'),
(35, 'CVLVT', 5, 'NULL'),
(36, 'HLT', 5, 'HelpDesk'),
(37, 'UA', 5, 'Calendar'),
(38, 'GRT', 5, 'NULL'),
(39, 'OLTSO', 5, 'SalesOrder'),
(40, 'ILTI', 5, 'Invoice'),
(41, 'MNL', 5, 'Leads'),
(42, 'OLTPO', 5, 'PurchaseOrder'),
(43, 'PA', 5, 'Calendar'),
(44, 'LTFAQ', 5, 'Faq'),
(46, 'ALVT', 5, 'Accounts'),
(47, 'HDB', 5, 'Dashboard'),
(48, 'PLVT', 5, 'Potentials'),
(49, 'QLTQ', 5, 'Quotes'),
(50, 'CVLVT', 5, 'NULL'),
(51, 'HLT', 5, 'HelpDesk'),
(52, 'UA', 5, 'Calendar'),
(53, 'GRT', 5, 'NULL'),
(54, 'OLTSO', 5, 'SalesOrder'),
(55, 'ILTI', 5, 'Invoice'),
(56, 'MNL', 5, 'Leads'),
(57, 'OLTPO', 5, 'PurchaseOrder'),
(58, 'PA', 5, 'Calendar'),
(59, 'LTFAQ', 5, 'Faq'),
(61, 'ALVT', 5, 'Accounts'),
(62, 'HDB', 5, 'Dashboard'),
(63, 'PLVT', 5, 'Potentials'),
(64, 'QLTQ', 5, 'Quotes'),
(65, 'CVLVT', 5, 'NULL'),
(66, 'HLT', 5, 'HelpDesk'),
(67, 'UA', 5, 'Calendar'),
(68, 'GRT', 5, 'NULL'),
(69, 'OLTSO', 5, 'SalesOrder'),
(70, 'ILTI', 5, 'Invoice'),
(71, 'MNL', 5, 'Leads'),
(72, 'OLTPO', 5, 'PurchaseOrder'),
(73, 'PA', 5, 'Calendar'),
(74, 'LTFAQ', 5, 'Faq');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homemodule`
--

CREATE TABLE IF NOT EXISTS `vtiger_homemodule` (
  `stuffid` int(19) NOT NULL,
  `modulename` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL,
  `customviewid` int(19) NOT NULL,
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homemoduleflds`
--

CREATE TABLE IF NOT EXISTS `vtiger_homemoduleflds` (
  `stuffid` int(19) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homereportchart`
--

CREATE TABLE IF NOT EXISTS `vtiger_homereportchart` (
  `stuffid` int(11) NOT NULL,
  `reportid` int(19) DEFAULT NULL,
  `reportcharttype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homerss`
--

CREATE TABLE IF NOT EXISTS `vtiger_homerss` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homestuff`
--

CREATE TABLE IF NOT EXISTS `vtiger_homestuff` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `stuffsequence` int(19) NOT NULL DEFAULT '0',
  `stufftype` varchar(100) DEFAULT NULL,
  `userid` int(19) NOT NULL,
  `visible` int(10) NOT NULL DEFAULT '0',
  `stufftitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_homestuff`
--

INSERT INTO `vtiger_homestuff` (`stuffid`, `stuffsequence`, `stufftype`, `userid`, `visible`, `stufftitle`) VALUES
(16, 1, 'Default', 5, 1, 'Top Accounts'),
(17, 2, 'Default', 5, 1, 'Home Page Dashboard'),
(18, 3, 'Default', 5, 1, 'Top Potentials'),
(19, 4, 'Default', 5, 1, 'Top Quotes'),
(20, 5, 'Default', 5, 1, 'Key Metrics'),
(21, 6, 'Default', 5, 1, 'Top Trouble Tickets'),
(22, 7, 'Default', 5, 1, 'Upcoming Activities'),
(23, 8, 'Default', 5, 1, 'My Group Allocation'),
(24, 9, 'Default', 5, 1, 'Top Sales Orders'),
(25, 10, 'Default', 5, 1, 'Top Invoices'),
(26, 11, 'Default', 5, 1, 'My New Leads'),
(27, 12, 'Default', 5, 1, 'Top Purchase Orders'),
(28, 13, 'Default', 5, 1, 'Pending Activities'),
(29, 14, 'Default', 5, 1, 'My Recent FAQs'),
(30, 15, 'Tag Cloud', 5, 0, 'Tag Cloud'),
(31, 1, 'Default', 11, 1, 'Top Accounts'),
(32, 2, 'Default', 11, 1, 'Home Page Dashboard'),
(33, 3, 'Default', 11, 1, 'Top Potentials'),
(34, 4, 'Default', 11, 1, 'Top Quotes'),
(35, 5, 'Default', 11, 1, 'Key Metrics'),
(36, 6, 'Default', 11, 1, 'Top Trouble Tickets'),
(37, 7, 'Default', 11, 1, 'Upcoming Activities'),
(38, 8, 'Default', 11, 1, 'My Group Allocation'),
(39, 9, 'Default', 11, 1, 'Top Sales Orders'),
(40, 10, 'Default', 11, 1, 'Top Invoices'),
(41, 11, 'Default', 11, 1, 'My New Leads'),
(42, 12, 'Default', 11, 1, 'Top Purchase Orders'),
(43, 13, 'Default', 11, 1, 'Pending Activities'),
(44, 14, 'Default', 11, 1, 'My Recent FAQs'),
(45, 15, 'Tag Cloud', 11, 0, 'Tag Cloud'),
(46, 1, 'Default', 12, 1, 'Top Accounts'),
(47, 2, 'Default', 12, 1, 'Home Page Dashboard'),
(48, 3, 'Default', 12, 1, 'Top Potentials'),
(49, 4, 'Default', 12, 1, 'Top Quotes'),
(50, 5, 'Default', 12, 1, 'Key Metrics'),
(51, 6, 'Default', 12, 1, 'Top Trouble Tickets'),
(52, 7, 'Default', 12, 1, 'Upcoming Activities'),
(53, 8, 'Default', 12, 1, 'My Group Allocation'),
(54, 9, 'Default', 12, 1, 'Top Sales Orders'),
(55, 10, 'Default', 12, 1, 'Top Invoices'),
(56, 11, 'Default', 12, 1, 'My New Leads'),
(57, 12, 'Default', 12, 1, 'Top Purchase Orders'),
(58, 13, 'Default', 12, 1, 'Pending Activities'),
(59, 14, 'Default', 12, 1, 'My Recent FAQs'),
(60, 15, 'Tag Cloud', 12, 0, 'Tag Cloud'),
(61, 1, 'Default', 13, 1, 'Top Accounts'),
(62, 2, 'Default', 13, 1, 'Home Page Dashboard'),
(63, 3, 'Default', 13, 0, 'Top Potentials'),
(64, 4, 'Default', 13, 1, 'Top Quotes'),
(65, 5, 'Default', 13, 0, 'Key Metrics'),
(66, 6, 'Default', 13, 1, 'Top Trouble Tickets'),
(67, 7, 'Default', 13, 0, 'Upcoming Activities'),
(68, 8, 'Default', 13, 1, 'My Group Allocation'),
(69, 9, 'Default', 13, 1, 'Top Sales Orders'),
(70, 10, 'Default', 13, 1, 'Top Invoices'),
(71, 11, 'Default', 13, 1, 'My New Leads'),
(72, 12, 'Default', 13, 1, 'Top Purchase Orders'),
(73, 13, 'Default', 13, 1, 'Pending Activities'),
(74, 14, 'Default', 13, 1, 'My Recent FAQs'),
(75, 15, 'Tag Cloud', 13, 0, 'Tag Cloud');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homestuff_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_homestuff_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_homestuff_seq`
--

INSERT INTO `vtiger_homestuff_seq` (`id`) VALUES
(75);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_home_layout`
--

CREATE TABLE IF NOT EXISTS `vtiger_home_layout` (
  `userid` int(19) NOT NULL,
  `layout` int(19) NOT NULL DEFAULT '4',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_hour_format`
--

CREATE TABLE IF NOT EXISTS `vtiger_hour_format` (
  `hour_formatid` int(11) NOT NULL AUTO_INCREMENT,
  `hour_format` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`hour_formatid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_hour_format`
--

INSERT INTO `vtiger_hour_format` (`hour_formatid`, `hour_format`, `sortorderid`, `presence`) VALUES
(1, '12', 1, 1),
(2, '24', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_hour_format_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_hour_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_hour_format_seq`
--

INSERT INTO `vtiger_hour_format_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_locks`
--

CREATE TABLE IF NOT EXISTS `vtiger_import_locks` (
  `vtiger_import_lock_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `importid` int(11) NOT NULL,
  `locked_since` datetime DEFAULT NULL,
  PRIMARY KEY (`vtiger_import_lock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_maps`
--

CREATE TABLE IF NOT EXISTS `vtiger_import_maps` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `module` varchar(36) NOT NULL,
  `content` longblob,
  `has_header` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `is_published` varchar(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `import_maps_assigned_user_id_module_name_deleted_idx` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_queue`
--

CREATE TABLE IF NOT EXISTS `vtiger_import_queue` (
  `importid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `field_mapping` text,
  `default_values` text,
  `merge_type` int(11) DEFAULT NULL,
  `merge_fields` text,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`importid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_industry`
--

CREATE TABLE IF NOT EXISTS `vtiger_industry` (
  `industryid` int(19) NOT NULL AUTO_INCREMENT,
  `industry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`industryid`),
  UNIQUE KEY `industry_industry_idx` (`industry`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `vtiger_industry`
--

INSERT INTO `vtiger_industry` (`industryid`, `industry`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Apparel', 1, 61, 1),
(3, 'Banking', 1, 62, 2),
(4, 'Biotechnology', 1, 63, 3),
(5, 'Chemicals', 1, 64, 4),
(6, 'Communications', 1, 65, 5),
(7, 'Construction', 1, 66, 6),
(8, 'Consulting', 1, 67, 7),
(9, 'Education', 1, 68, 8),
(10, 'Electronics', 1, 69, 9),
(11, 'Energy', 1, 70, 10),
(12, 'Engineering', 1, 71, 11),
(13, 'Entertainment', 1, 72, 12),
(14, 'Environmental', 1, 73, 13),
(15, 'Finance', 1, 74, 14),
(16, 'Food & Beverage', 1, 75, 15),
(17, 'Government', 1, 76, 16),
(18, 'Healthcare', 1, 77, 17),
(19, 'Hospitality', 1, 78, 18),
(20, 'Insurance', 1, 79, 19),
(21, 'Machinery', 1, 80, 20),
(22, 'Manufacturing', 1, 81, 21),
(23, 'Media', 1, 82, 22),
(24, 'Not For Profit', 1, 83, 23),
(25, 'Recreation', 1, 84, 24),
(26, 'Retail', 1, 85, 25),
(27, 'Shipping', 1, 86, 26),
(28, 'Technology', 1, 87, 27),
(29, 'Telecommunications', 1, 88, 28),
(30, 'Transportation', 1, 89, 29),
(31, 'Utilities', 1, 90, 30),
(32, 'Other', 1, 91, 31);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_industry_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_industry_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_industry_seq`
--

INSERT INTO `vtiger_industry_seq` (`id`) VALUES
(32);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorynotification`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorynotification` (
  `notificationid` int(19) NOT NULL AUTO_INCREMENT,
  `notificationname` varchar(200) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text,
  `label` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`notificationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_inventorynotification`
--

INSERT INTO `vtiger_inventorynotification` (`notificationid`, `notificationname`, `notificationsubject`, `notificationbody`, `label`, `status`) VALUES
(1, 'InvoiceNotification', '{PRODUCTNAME} Stock Level is Low', 'Dear {HANDLER},\n\nThe current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}. Kindly procure required number of units as the stock level is below reorder level {REORDERLEVELVALUE}.\n\nPlease treat this information as Urgent as the invoice is already sent  to the customer.\n\nSeverity: Critical\n\nThanks,\n{CURRENTUSER} ', 'InvoiceNotificationDescription', NULL),
(2, 'QuoteNotification', 'Quote given for {PRODUCTNAME}', 'Dear {HANDLER},\n\nQuote is generated for {QUOTEQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nSeverity: Minor\n\nThanks,\n{CURRENTUSER} ', 'QuoteNotificationDescription', NULL),
(3, 'SalesOrderNotification', 'Sales Order generated for {PRODUCTNAME}', 'Dear {HANDLER},\n\nSalesOrder is generated for {SOQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nPlease treat this information  with priority as the sales order is already generated.\n\nSeverity: Major\n\nThanks,\n{CURRENTUSER} ', 'SalesOrderNotificationDescription', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorynotification_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorynotification_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventorynotification_seq`
--

INSERT INTO `vtiger_inventorynotification_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryproductrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventoryproductrel` (
  `id` int(19) DEFAULT NULL,
  `productid` int(19) DEFAULT NULL,
  `sequence_no` int(4) DEFAULT NULL,
  `quantity` decimal(25,3) DEFAULT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `discount_percent` decimal(7,3) DEFAULT NULL,
  `discount_amount` decimal(27,8) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `description` text,
  `incrementondel` int(11) NOT NULL DEFAULT '0',
  `lineitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax1` decimal(7,3) DEFAULT NULL,
  `tax2` decimal(7,3) DEFAULT NULL,
  `tax3` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`lineitem_id`),
  KEY `inventoryproductrel_id_idx` (`id`),
  KEY `inventoryproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryproductrel_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventoryproductrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventoryproductrel_seq`
--

INSERT INTO `vtiger_inventoryproductrel_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryshippingrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventoryshippingrel` (
  `id` int(19) DEFAULT NULL,
  `shtax1` decimal(7,3) DEFAULT NULL,
  `shtax2` decimal(7,3) DEFAULT NULL,
  `shtax3` decimal(7,3) DEFAULT NULL,
  KEY `inventoryishippingrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorysubproductrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorysubproductrel` (
  `id` int(19) NOT NULL,
  `sequence_no` int(10) NOT NULL,
  `productid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorytaxinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorytaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`taxid`),
  KEY `inventorytaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventorytaxinfo`
--

INSERT INTO `vtiger_inventorytaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`) VALUES
(1, 'tax1', 'VAT', 4.500, 0),
(2, 'tax2', 'Sales', 10.000, 0),
(3, 'tax3', 'Service', 12.500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorytaxinfo_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorytaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventorytaxinfo_seq`
--

INSERT INTO `vtiger_inventorytaxinfo_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventory_tandc`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventory_tandc` (
  `id` int(19) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tandc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventory_tandc`
--

INSERT INTO `vtiger_inventory_tandc` (`id`, `type`, `tandc`) VALUES
(1, 'Inventory', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventory_tandc_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventory_tandc_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventory_tandc_seq`
--

INSERT INTO `vtiger_inventory_tandc_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invitees`
--

CREATE TABLE IF NOT EXISTS `vtiger_invitees` (
  `activityid` int(19) NOT NULL,
  `inviteeid` int(19) NOT NULL,
  PRIMARY KEY (`activityid`,`inviteeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_invitees`
--

INSERT INTO `vtiger_invitees` (`activityid`, `inviteeid`) VALUES
(57, 11),
(57, 12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoice`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoice` (
  `invoiceid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `salesorderid` int(19) DEFAULT NULL,
  `customerno` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `invoicedate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `invoiceterms` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `received` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoiceid`),
  KEY `invoice_purchaseorderid_idx` (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicebillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicebillads` (
  `invoicebilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`invoicebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicecf`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicecf` (
  `invoiceid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoiceshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoiceshipads` (
  `invoiceshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`invoiceshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicestatus` (
  `invoicestatusid` int(19) NOT NULL AUTO_INCREMENT,
  `invoicestatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoicestatusid`),
  UNIQUE KEY `invoicestatus_invoiestatus_idx` (`invoicestatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vtiger_invoicestatus`
--

INSERT INTO `vtiger_invoicestatus` (`invoicestatusid`, `invoicestatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'AutoCreated', 0, 92, 0),
(2, 'Created', 0, 93, 1),
(3, 'Approved', 0, 94, 2),
(4, 'Sent', 0, 95, 3),
(5, 'Credit Invoice', 0, 96, 4),
(6, 'Paid', 0, 97, 5),
(7, 'Cancel', 1, 288, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatushistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicestatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `invoicestatushistory_invoiceid_idx` (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicestatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_invoicestatus_seq`
--

INSERT INTO `vtiger_invoicestatus_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoice_recurring_info`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoice_recurring_info` (
  `salesorderid` int(11) NOT NULL DEFAULT '0',
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `start_period` date DEFAULT NULL,
  `end_period` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `invoice_status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_language`
--

CREATE TABLE IF NOT EXISTS `vtiger_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `isdefault` int(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `vtiger_language`
--

INSERT INTO `vtiger_language` (`id`, `name`, `prefix`, `label`, `lastupdated`, `sequence`, `isdefault`, `active`) VALUES
(1, 'English', 'en_us', 'US English', '2016-05-14 15:49:10', NULL, 1, 1),
(2, 'Swedish', 'sv_se', 'Swedish', '2016-05-14 15:57:42', NULL, 0, 1),
(3, 'Hungarian', 'hu_hu', 'HU Magyar', '2016-05-14 15:54:46', NULL, 0, 1),
(4, 'Russian', 'ru_ru', 'Russian', '2016-05-14 15:54:46', NULL, 0, 1),
(5, 'Brazilian', 'pt_br', 'PT Brasil', '2016-05-14 15:56:00', NULL, 0, 1),
(6, 'Deutsch', 'de_de', 'DE Deutsch', '2016-05-14 15:54:47', NULL, 0, 1),
(7, 'Turkce', 'tr_tr', 'Turkce Dil Paketi', '2016-05-14 15:55:00', NULL, 0, 1),
(8, 'Dutch', 'nl_nl', 'NL-Dutch', '2016-05-14 15:55:01', NULL, 0, 1),
(9, 'Italian', 'it_it', 'IT Italian', '2016-05-14 15:55:13', NULL, 0, 1),
(10, 'Pack de langue français', 'fr_fr', 'Pack de langue français', '2016-05-14 15:56:00', NULL, 0, 1),
(11, 'Arabic', 'ar_ae', 'Arabic', '2016-05-14 15:57:42', NULL, 0, 1),
(12, 'Romana', 'ro_ro', 'Romana', '2016-05-14 15:56:00', NULL, 0, 1),
(13, 'Mexican Spanish', 'es_mx', 'ES Mexico', '2016-05-14 15:55:52', NULL, 0, 1),
(14, 'J?zyk Polski', 'pl_pl', 'J?zyk Polski', '2016-05-14 15:56:00', NULL, 0, 1),
(15, 'Spanish', 'es_es', 'ES Spanish', '2016-05-14 15:55:53', NULL, 0, 1),
(16, 'British English', 'en_gb', 'British English', '2016-05-14 15:55:53', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_language_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_language_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_language_seq`
--

INSERT INTO `vtiger_language_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadaddress`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadaddress` (
  `leadaddressid` int(19) NOT NULL DEFAULT '0',
  `city` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `lane` varchar(250) DEFAULT NULL,
  `leadaddresstype` varchar(30) DEFAULT 'Billing',
  PRIMARY KEY (`leadaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leaddetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_leaddetails` (
  `leadid` int(19) NOT NULL,
  `lead_no` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `interest` varchar(50) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `lastname` varchar(80) NOT NULL,
  `company` varchar(100) NOT NULL,
  `annualrevenue` decimal(25,8) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `campaign` varchar(30) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `leadstatus` varchar(50) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `converted` int(1) DEFAULT '0',
  `designation` varchar(50) DEFAULT 'SalesMan',
  `licencekeystatus` varchar(50) DEFAULT NULL,
  `space` varchar(250) DEFAULT NULL,
  `comments` text,
  `priority` varchar(50) DEFAULT NULL,
  `demorequest` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `productversion` varchar(20) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `maildate` date DEFAULT NULL,
  `nextstepdate` date DEFAULT NULL,
  `fundingsituation` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `transferdate` date DEFAULT NULL,
  `revenuetype` varchar(50) DEFAULT NULL,
  `noofemployees` int(50) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `assignleadchk` int(1) DEFAULT '0',
  `emailoptout` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`leadid`),
  KEY `leaddetails_converted_leadstatus_idx` (`converted`,`leadstatus`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadscf` (
  `leadid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leadid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsource`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadsource` (
  `leadsourceid` int(19) NOT NULL AUTO_INCREMENT,
  `leadsource` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`leadsourceid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `vtiger_leadsource`
--

INSERT INTO `vtiger_leadsource` (`leadsourceid`, `leadsource`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Cold Call', 1, 99, 1),
(3, 'Existing Customer', 1, 100, 2),
(4, 'Self Generated', 1, 101, 3),
(5, 'Employee', 1, 102, 4),
(6, 'Partner', 1, 103, 5),
(7, 'Public Relations', 1, 104, 6),
(8, 'Direct Mail', 1, 105, 7),
(9, 'Conference', 1, 106, 8),
(10, 'Trade Show', 1, 107, 9),
(11, 'Web Site', 1, 108, 10),
(12, 'Word of mouth', 1, 109, 11),
(13, 'Other', 1, 110, 12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsource_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadsource_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_leadsource_seq`
--

INSERT INTO `vtiger_leadsource_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstage`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadstage` (
  `leadstageid` int(19) NOT NULL AUTO_INCREMENT,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`leadstageid`),
  UNIQUE KEY `leadstage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadstatus` (
  `leadstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `leadstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`leadstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vtiger_leadstatus`
--

INSERT INTO `vtiger_leadstatus` (`leadstatusid`, `leadstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Attempted to Contact', 1, 112, 1),
(3, 'Cold', 1, 113, 2),
(4, 'Contact in Future', 1, 114, 3),
(5, 'Contacted', 1, 115, 4),
(6, 'Hot', 1, 116, 5),
(7, 'Junk Lead', 1, 117, 6),
(8, 'Lost Lead', 1, 118, 7),
(9, 'Not Contacted', 1, 119, 8),
(10, 'Pre Qualified', 1, 120, 9),
(11, 'Qualified', 1, 121, 10),
(12, 'Warm', 1, 122, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_leadstatus_seq`
--

INSERT INTO `vtiger_leadstatus_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsubdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadsubdetails` (
  `leadsubscriptionid` int(19) NOT NULL DEFAULT '0',
  `website` varchar(255) DEFAULT NULL,
  `callornot` int(1) DEFAULT '0',
  `readornot` int(1) DEFAULT '0',
  `empct` int(10) DEFAULT '0',
  PRIMARY KEY (`leadsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_lead_view`
--

CREATE TABLE IF NOT EXISTS `vtiger_lead_view` (
  `lead_viewid` int(19) NOT NULL AUTO_INCREMENT,
  `lead_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lead_viewid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_lead_view`
--

INSERT INTO `vtiger_lead_view` (`lead_viewid`, `lead_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'Last 2 Days', 1, 1),
(3, 'Last Week', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_lead_view_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_lead_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_lead_view_seq`
--

INSERT INTO `vtiger_lead_view_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_links`
--

CREATE TABLE IF NOT EXISTS `vtiger_links` (
  `linkid` int(11) NOT NULL,
  `tabid` int(11) DEFAULT NULL,
  `linktype` varchar(50) DEFAULT NULL,
  `linklabel` varchar(50) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `linkicon` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `handler_path` varchar(128) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`linkid`),
  KEY `link_tabidtype_idx` (`tabid`,`linktype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_links`
--

INSERT INTO `vtiger_links` (`linkid`, `tabid`, `linktype`, `linklabel`, `linkurl`, `linkicon`, `sequence`, `handler_path`, `handler_class`, `handler`) VALUES
(1, 6, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(2, 6, 'DETAILVIEWBASIC', 'LBL_SHOW_ACCOUNT_HIERARCHY', 'index.php?module=Accounts&action=AccountHierarchy&accountid=$RECORD$', '', 0, NULL, NULL, NULL),
(3, 7, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(4, 4, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(6, 4, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL),
(7, 7, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL),
(8, 6, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL),
(9, 4, 'LISTVIEWSIDEBARWIDGET', 'Google Contacts', 'module=Google&view=List&sourcemodule=Contacts', '', 0, NULL, NULL, NULL),
(10, 9, 'LISTVIEWSIDEBARWIDGET', 'Google Calendar', 'module=Google&view=List&sourcemodule=Calendar', '', 0, NULL, NULL, NULL),
(11, 42, 'DETAILVIEWBASIC', 'LBL_CHECK_STATUS', 'javascript:SMSNotifier.checkstatus($RECORD$)', 'themes/images/reload.gif', 0, NULL, NULL, NULL),
(13, 42, 'HEADERSCRIPT', 'SMSNotifierCommonJS', 'modules/SMSNotifier/SMSNotifierCommon.js', '', 0, NULL, NULL, NULL),
(14, 7, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, ''$MODULE$'');', '', 0, NULL, NULL, NULL),
(15, 7, 'DETAILVIEWBASIC', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(''$MODULE$'', ''$RECORD$'');', '', 0, NULL, NULL, NULL),
(16, 4, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, ''$MODULE$'');', '', 0, NULL, NULL, NULL),
(17, 4, 'DETAILVIEWBASIC', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(''$MODULE$'', ''$RECORD$'');', '', 0, NULL, NULL, NULL),
(18, 6, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, ''$MODULE$'');', '', 0, NULL, NULL, NULL),
(19, 6, 'DETAILVIEWBASIC', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(''$MODULE$'', ''$RECORD$'');', '', 0, NULL, NULL, NULL),
(20, 43, 'HEADERSCRIPT', 'ModCommentsCommonHeaderScript', 'modules/ModComments/ModCommentsCommon.js', '', 0, NULL, NULL, NULL),
(21, 7, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(22, 4, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(23, 6, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(24, 2, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(30, 45, 'DETAILVIEWBASIC', 'Add Note', 'index.php?module=Documents&action=EditView&return_module=ProjectTask&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', '', 0, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(31, 45, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(32, 46, 'DETAILVIEWBASIC', 'Add Project Task', 'index.php?module=ProjectTask&action=EditView&projectid=$RECORD$&return_module=Project&return_action=DetailView&return_id=$RECORD$', '', 0, 'modules/ProjectTask/ProjectTask.php', 'ProjectTask', 'isLinkPermitted'),
(33, 46, 'DETAILVIEWBASIC', 'Add Note', 'index.php?module=Documents&action=EditView&return_module=Project&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', '', 1, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(34, 46, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(35, 2, 'DASHBOARDWIDGET', 'History', 'index.php?module=Potentials&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(36, 2, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Potentials&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(37, 2, 'DASHBOARDWIDGET', 'Funnel', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage', '', 3, NULL, NULL, NULL),
(38, 2, 'DASHBOARDWIDGET', 'Potentials by Stage', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson', '', 4, NULL, NULL, NULL),
(39, 2, 'DASHBOARDWIDGET', 'Pipelined Amount', 'index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson', '', 5, NULL, NULL, NULL),
(40, 2, 'DASHBOARDWIDGET', 'Total Revenue', 'index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson', '', 6, NULL, NULL, NULL),
(41, 2, 'DASHBOARDWIDGET', 'Top Potentials', 'index.php?module=Potentials&view=ShowWidget&name=TopPotentials', '', 7, NULL, NULL, NULL),
(42, 2, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Potentials&view=ShowWidget&name=OverdueActivities', '', 9, NULL, NULL, NULL),
(43, 6, 'DASHBOARDWIDGET', 'History', 'index.php?module=Accounts&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(44, 6, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Accounts&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(45, 6, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Accounts&view=ShowWidget&name=OverdueActivities', '', 3, NULL, NULL, NULL),
(46, 4, 'DASHBOARDWIDGET', 'History', 'index.php?module=Contacts&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(47, 4, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Contacts&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(48, 4, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Contacts&view=ShowWidget&name=OverdueActivities', '', 3, NULL, NULL, NULL),
(49, 7, 'DASHBOARDWIDGET', 'History', 'index.php?module=Leads&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(50, 7, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Leads&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(51, 7, 'DASHBOARDWIDGET', 'Leads by Status', 'index.php?module=Leads&view=ShowWidget&name=LeadsByStatus', '', 4, NULL, NULL, NULL),
(52, 7, 'DASHBOARDWIDGET', 'Leads by Source', 'index.php?module=Leads&view=ShowWidget&name=LeadsBySource', '', 5, NULL, NULL, NULL),
(53, 7, 'DASHBOARDWIDGET', 'Leads by Industry', 'index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry', '', 6, NULL, NULL, NULL),
(54, 7, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Leads&view=ShowWidget&name=OverdueActivities', '', 7, NULL, NULL, NULL),
(55, 13, 'DASHBOARDWIDGET', 'Tickets by Status', 'index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus', '', 1, NULL, NULL, NULL),
(56, 13, 'DASHBOARDWIDGET', 'Open Tickets', 'index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets', '', 2, NULL, NULL, NULL),
(57, 3, 'DASHBOARDWIDGET', 'History', 'index.php?module=Home&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(58, 3, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Home&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(59, 3, 'DASHBOARDWIDGET', 'Funnel', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage', '', 3, NULL, NULL, NULL),
(60, 3, 'DASHBOARDWIDGET', 'Potentials by Stage', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson', '', 4, NULL, NULL, NULL),
(61, 3, 'DASHBOARDWIDGET', 'Pipelined Amount', 'index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson', '', 5, NULL, NULL, NULL),
(62, 3, 'DASHBOARDWIDGET', 'Total Revenue', 'index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson', '', 6, NULL, NULL, NULL),
(63, 3, 'DASHBOARDWIDGET', 'Top Potentials', 'index.php?module=Potentials&view=ShowWidget&name=TopPotentials', '', 7, NULL, NULL, NULL),
(64, 3, 'DASHBOARDWIDGET', 'Leads by Status', 'index.php?module=Leads&view=ShowWidget&name=LeadsByStatus', '', 10, NULL, NULL, NULL),
(65, 3, 'DASHBOARDWIDGET', 'Leads by Source', 'index.php?module=Leads&view=ShowWidget&name=LeadsBySource', '', 11, NULL, NULL, NULL),
(66, 3, 'DASHBOARDWIDGET', 'Leads by Industry', 'index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry', '', 12, NULL, NULL, NULL),
(67, 3, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Home&view=ShowWidget&name=OverdueActivities', '', 13, NULL, NULL, NULL),
(68, 3, 'DASHBOARDWIDGET', 'Tickets by Status', 'index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus', '', 13, NULL, NULL, NULL),
(69, 3, 'DASHBOARDWIDGET', 'Open Tickets', 'index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets', '', 14, NULL, NULL, NULL),
(70, 13, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(71, 15, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(72, 2, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(73, 4, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(74, 6, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(75, 7, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(76, 8, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(77, 9, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(78, 10, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(79, 13, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(80, 14, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(81, 15, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(82, 16, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(83, 18, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(84, 19, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(85, 20, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(86, 21, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(87, 22, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(88, 23, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(89, 26, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(90, 28, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(91, 31, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(92, 36, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(93, 37, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(94, 39, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(95, 42, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(96, 43, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(97, 44, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(98, 45, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(99, 46, 'DETAILVIEWBASIC', 'View History', 'javascript:ModTrackerCommon.showhistory(''$RECORD$'')', '', 0, 'modules/ModTracker/ModTracker.php', 'ModTracker', 'isViewPermitted'),
(100, 3, 'DASHBOARDWIDGET', 'Key Metrics', 'index.php?module=Home&view=ShowWidget&name=KeyMetrics', '', 0, NULL, NULL, NULL),
(101, 3, 'DASHBOARDWIDGET', 'Mini List', 'index.php?module=Home&view=ShowWidget&name=MiniList', '', 0, NULL, NULL, NULL),
(102, 3, 'DASHBOARDWIDGET', 'Tag Cloud', 'index.php?module=Home&view=ShowWidget&name=TagCloud', '', 0, NULL, NULL, NULL),
(103, 2, 'DASHBOARDWIDGET', 'Funnel Amount', 'index.php?module=Potentials&view=ShowWidget&name=FunnelAmount', '', 10, NULL, NULL, NULL),
(104, 3, 'DASHBOARDWIDGET', 'Funnel Amount', 'index.php?module=Potentials&view=ShowWidget&name=FunnelAmount', '', 10, NULL, NULL, NULL),
(105, 3, 'DASHBOARDWIDGET', 'Notebook', 'index.php?module=Home&view=ShowWidget&name=Notebook', '', 0, NULL, NULL, NULL),
(106, 49, 'HEADERSCRIPT', 'ExtensionStoreCommonHeaderScript', 'modules/ExtensionStore/ExtensionStore.js', '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_links_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_links_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_links_seq`
--

INSERT INTO `vtiger_links_seq` (`id`) VALUES
(106);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_loginhistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_loginhistory` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_ip` varchar(25) NOT NULL,
  `logout_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `vtiger_loginhistory`
--

INSERT INTO `vtiger_loginhistory` (`login_id`, `user_name`, `user_ip`, `logout_time`, `login_time`, `status`) VALUES
(1, 'admin', '127.0.0.1', '2016-05-15 07:58:41', '2016-05-15 07:52:51', 'Signed off'),
(2, 'admin', '127.0.0.1', '0000-00-00 00:00:00', '2016-05-15 07:58:50', 'Signed in'),
(3, 'admin', '127.0.0.1', '2016-05-15 10:54:55', '2016-05-15 10:45:04', 'Signed off'),
(4, 'admin', '127.0.0.1', '2016-05-20 03:58:25', '2016-05-20 03:57:06', 'Signed off'),
(5, 'admin', '127.0.0.1', '0000-00-00 00:00:00', '2016-05-20 04:36:25', 'Signed in'),
(6, 'admin', '127.0.0.1', '2016-05-20 15:47:02', '2016-05-20 15:30:48', 'Signed off'),
(7, 'admin', '127.0.0.1', '2016-05-20 15:53:10', '2016-05-20 15:47:08', 'Signed off'),
(8, 'admin', '127.0.0.1', '2016-05-20 16:01:36', '2016-05-20 15:58:52', 'Signed off'),
(9, 'admin', '127.0.0.1', '2016-05-22 06:29:23', '2016-05-22 06:28:44', 'Signed off'),
(10, 'admin', '127.0.0.1', '2016-05-22 06:35:10', '2016-05-22 06:29:45', 'Signed off'),
(11, 'shio', '127.0.0.1', '2016-05-22 06:35:39', '2016-05-22 06:35:19', 'Signed off'),
(12, 'admin', '127.0.0.1', '2016-05-22 07:29:55', '2016-05-22 06:58:49', 'Signed off'),
(13, 'admin', '127.0.0.1', '0000-00-00 00:00:00', '2016-05-22 07:36:54', 'Signed in'),
(14, 'admin', '127.0.0.1', '2016-05-22 08:53:18', '2016-05-22 08:53:18', 'Signed off'),
(15, 'admin', '127.0.0.1', '2016-05-22 08:53:49', '2016-05-22 08:53:30', 'Signed off'),
(16, 'admin', '127.0.0.1', '2016-05-22 08:54:38', '2016-05-22 08:54:34', 'Signed off'),
(17, 'admin', '127.0.0.1', '2016-05-22 09:06:37', '2016-05-22 08:54:49', 'Signed off'),
(18, 'shio', '127.0.0.1', '2016-05-22 09:07:00', '2016-05-22 09:06:45', 'Signed off'),
(19, 'shio', '127.0.0.1', '2016-06-24 05:10:59', '2016-05-22 09:28:31', 'Signed off'),
(20, 'admin', '127.0.0.1', '2016-05-22 09:56:16', '2016-05-22 09:45:27', 'Signed off'),
(21, 'shio', '127.0.0.1', '2016-06-24 05:12:56', '2016-06-24 05:11:57', 'Signed off'),
(22, 'shio', '127.0.0.1', '2016-06-24 11:38:07', '2016-06-24 10:54:39', 'Signed off'),
(23, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-24 11:40:49', 'Signed in'),
(24, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-25 10:53:49', 'Signed in'),
(25, 'shio', '127.0.0.1', '2016-06-26 13:02:27', '2016-06-26 08:41:07', 'Signed off'),
(26, 'User1', '127.0.0.1', '2016-06-26 13:38:33', '2016-06-26 13:02:57', 'Signed off'),
(27, 'shio', '127.0.0.1', '2016-06-26 13:57:32', '2016-06-26 13:38:39', 'Signed off'),
(28, 'User1', '127.0.0.1', '2016-06-26 13:57:56', '2016-06-26 13:57:36', 'Signed off'),
(29, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-26 13:58:05', 'Signed in'),
(30, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-26 15:15:25', 'Signed in'),
(31, 'shio', '127.0.0.1', '2016-06-26 16:55:51', '2016-06-26 16:30:50', 'Signed off'),
(32, 'User1', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-26 16:56:08', 'Signed in'),
(33, 'User1', '127.0.0.1', '2016-06-26 18:27:52', '2016-06-26 17:32:11', 'Signed off'),
(34, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-26 18:27:58', 'Signed in'),
(35, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-27 03:38:51', 'Signed in'),
(36, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-27 05:47:41', 'Signed in'),
(37, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-27 15:05:50', 'Signed in'),
(38, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-27 19:30:16', 'Signed in'),
(39, 'shio', '127.0.0.1', '2016-06-28 05:27:38', '2016-06-28 05:22:21', 'Signed off'),
(40, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-06-28 05:27:46', 'Signed in'),
(41, 'shio', '127.0.0.1', '2016-07-05 06:42:31', '2016-06-29 09:07:04', 'Signed off'),
(42, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-01 08:17:11', 'Signed in'),
(43, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-01 08:22:46', 'Signed in'),
(44, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-01 08:29:41', 'Signed in'),
(45, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-01 08:31:24', 'Signed in'),
(46, 'shio', '::1', '2016-07-01 08:36:01', '2016-07-01 08:32:13', 'Signed off'),
(47, 'shio', '::1', '2016-07-01 08:47:52', '2016-07-01 08:42:55', 'Signed off'),
(48, 'shio', '::1', '2016-07-01 09:01:23', '2016-07-01 08:58:00', 'Signed off'),
(49, 'shio', '::1', '2016-07-01 09:27:32', '2016-07-01 09:26:38', 'Signed off'),
(50, 'shio', '::1', '2016-07-01 09:59:27', '2016-07-01 09:41:23', 'Signed off'),
(51, 'shio', '::1', '2016-07-01 10:48:37', '2016-07-01 10:25:33', 'Signed off'),
(52, 'shio', '::1', '2016-07-01 11:09:19', '2016-07-01 11:03:28', 'Signed off'),
(53, 'shio', '::1', '2016-07-01 11:20:40', '2016-07-01 11:20:36', 'Signed off'),
(54, 'shio', '::1', '2016-07-01 11:26:11', '2016-07-01 11:23:26', 'Signed off'),
(55, 'shio', '::1', '2016-07-01 11:33:09', '2016-07-01 11:26:19', 'Signed off'),
(56, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-01 11:34:22', 'Signed in'),
(57, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-01 11:54:43', 'Signed in'),
(58, 'shio', '::1', '2016-07-03 17:27:12', '2016-07-03 17:12:43', 'Signed off'),
(59, 'shio', '::1', '2016-07-03 17:29:16', '2016-07-03 17:27:25', 'Signed off'),
(60, 'shio', '::1', '2016-07-03 17:35:55', '2016-07-03 17:29:18', 'Signed off'),
(61, 'shio', '::1', '2016-07-03 17:42:20', '2016-07-03 17:36:00', 'Signed off'),
(62, 'shio', '::1', '2016-07-03 17:45:46', '2016-07-03 17:42:22', 'Signed off'),
(63, 'shio', '::1', '2016-07-03 18:05:08', '2016-07-03 17:47:23', 'Signed off'),
(64, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-03 18:05:10', 'Signed in'),
(65, 'shio', '::1', '2016-07-04 03:59:47', '2016-07-04 03:36:05', 'Signed off'),
(66, 'shio', '::1', '2016-07-04 04:00:58', '2016-07-04 04:00:32', 'Signed off'),
(67, 'shio', '::1', '2016-07-04 04:01:56', '2016-07-04 04:01:23', 'Signed off'),
(68, 'user2', '::1', '2016-07-04 04:04:14', '2016-07-04 04:02:16', 'Signed off'),
(69, 'shio', '::1', '2016-07-04 04:46:03', '2016-07-04 04:04:20', 'Signed off'),
(70, 'user2', '::1', '2016-07-04 04:47:22', '2016-07-04 04:46:10', 'Signed off'),
(71, 'shio', '::1', '2016-07-04 04:49:20', '2016-07-04 04:47:26', 'Signed off'),
(72, 'user2', '::1', '2016-07-04 04:52:44', '2016-07-04 04:49:25', 'Signed off'),
(73, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-04 04:52:49', 'Signed in'),
(74, 'shio', '::1', '0000-00-00 00:00:00', '2016-07-05 05:16:24', 'Signed in'),
(75, 'shio', '127.0.0.1', '2016-07-05 06:58:12', '2016-07-05 06:42:33', 'Signed off'),
(76, 'shio', '127.0.0.1', '2016-07-05 07:12:52', '2016-07-05 06:58:23', 'Signed off'),
(77, 'shio', '127.0.0.1', '2016-07-05 07:15:41', '2016-07-05 07:12:53', 'Signed off'),
(78, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-05 07:15:46', 'Signed in'),
(79, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-05 07:16:30', 'Signed in'),
(80, 'shio', '127.0.0.1', '2016-07-05 11:16:01', '2016-07-05 10:59:25', 'Signed off'),
(81, 'shio', '127.0.0.1', '2016-07-05 11:18:16', '2016-07-05 11:17:11', 'Signed off'),
(82, 'shio', '127.0.0.1', '2016-07-05 11:20:35', '2016-07-05 11:20:30', 'Signed off'),
(83, 'shio', '127.0.0.1', '2016-07-05 11:42:42', '2016-07-05 11:20:37', 'Signed off'),
(84, 'shio', '127.0.0.1', '2016-07-05 12:02:56', '2016-07-05 12:02:07', 'Signed off'),
(85, 'shio', '127.0.0.1', '2016-07-05 12:36:42', '2016-07-05 12:27:19', 'Signed off'),
(86, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-06 04:18:08', 'Signed in'),
(87, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-06 04:35:46', 'Signed in'),
(88, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-06 04:44:58', 'Signed in'),
(89, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-06 05:44:43', 'Signed in'),
(90, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-06 13:50:17', 'Signed in'),
(91, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-07 06:46:13', 'Signed in'),
(92, 'shio', '127.0.0.1', '2016-07-07 07:31:55', '2016-07-07 06:46:17', 'Signed off'),
(93, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-07 07:31:57', 'Signed in'),
(94, 'shio', '127.0.0.1', '2016-07-07 11:45:24', '2016-07-07 11:11:21', 'Signed off'),
(95, 'shio', '127.0.0.1', '2016-07-09 07:30:46', '2016-07-09 04:14:02', 'Signed off'),
(96, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-09 07:30:48', 'Signed in'),
(97, 'shio', '127.0.0.1', '0000-00-00 00:00:00', '2016-07-10 17:00:56', 'Signed in'),
(98, 'shio', '127.0.0.1', '2016-07-11 09:39:45', '2016-07-11 09:18:26', 'Signed off');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailattachments`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailmanager_mailattachments` (
  `userid` int(11) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  `attachid` int(19) NOT NULL,
  `path` varchar(200) NOT NULL,
  `cid` varchar(50) DEFAULT NULL,
  KEY `userid_muid_idx` (`userid`,`muid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailrecord`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailmanager_mailrecord` (
  `userid` int(11) DEFAULT NULL,
  `mfrom` varchar(255) DEFAULT NULL,
  `mto` varchar(255) DEFAULT NULL,
  `mcc` varchar(500) DEFAULT NULL,
  `mbcc` varchar(500) DEFAULT NULL,
  `mdate` varchar(20) DEFAULT NULL,
  `msubject` varchar(500) DEFAULT NULL,
  `mbody` text,
  `mcharset` varchar(10) DEFAULT NULL,
  `misbodyhtml` int(1) DEFAULT NULL,
  `mplainmessage` int(1) DEFAULT NULL,
  `mhtmlmessage` int(1) DEFAULT NULL,
  `muniqueid` varchar(500) DEFAULT NULL,
  `mbodyparsed` int(1) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  KEY `userid_lastsavedtime_idx` (`userid`,`lastsavedtime`),
  KEY `userid_muid_idx` (`userid`,`muid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailmanager_mailrel` (
  `mailuid` varchar(999) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  `emailid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner` (
  `scannerid` int(11) NOT NULL AUTO_INCREMENT,
  `scannername` varchar(30) DEFAULT NULL,
  `server` varchar(100) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ssltype` varchar(10) DEFAULT NULL,
  `sslmethod` varchar(30) DEFAULT NULL,
  `connecturl` varchar(255) DEFAULT NULL,
  `searchfor` varchar(10) DEFAULT NULL,
  `markas` varchar(10) DEFAULT NULL,
  `isvalid` int(1) DEFAULT NULL,
  `time_zone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`scannerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_mailscanner`
--

INSERT INTO `vtiger_mailscanner` (`scannerid`, `scannername`, `server`, `protocol`, `username`, `password`, `ssltype`, `sslmethod`, `connecturl`, `searchfor`, `markas`, `isvalid`, `time_zone`) VALUES
(1, 'scanner', 'imap.gmail.com', 'imap4', 'elipokeamosses@gmail.com', 'z87Oz8_Oz8_Pzs7Ozs_Pzs_Ozs_Pzs_Oz87Ozs_Oz8_Pzs7Oz87Pzs_Ozs_Pzs7Pz87Pz8_Pz8_Pzs7Pz87Pz8_Ozs7Oz8_Oz87Oz8_Oz87Pzs7Oz87Pz8_Ozs7Pzs_Oz87Oz8_Ozs8.', 'ssl', 'novalidate-cert', NULL, 'ALL', 'SEEN', 1, '+3:00');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_actions`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_actions` (
  `actionid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `actiontype` varchar(10) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `lookup` varchar(30) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`actionid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_mailscanner_actions`
--

INSERT INTO `vtiger_mailscanner_actions` (`actionid`, `scannerid`, `actiontype`, `module`, `lookup`, `sequence`) VALUES
(1, 1, 'CREATE', 'HelpDesk', 'FROM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_folders`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_folders` (
  `folderid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `foldername` varchar(255) DEFAULT NULL,
  `lastscan` varchar(30) DEFAULT NULL,
  `rescan` int(1) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL,
  PRIMARY KEY (`folderid`),
  KEY `folderid_idx` (`folderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_mailscanner_folders`
--

INSERT INTO `vtiger_mailscanner_folders` (`folderid`, `scannerid`, `foldername`, `lastscan`, `rescan`, `enabled`) VALUES
(1, 1, '[Gmail]/All Mail', '03-Jul-2016', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_ids`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_ids` (
  `scannerid` int(11) DEFAULT NULL,
  `messageid` varchar(512) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  KEY `scanner_message_ids_idx` (`scannerid`,`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_mailscanner_ids`
--

INSERT INTO `vtiger_mailscanner_ids` (`scannerid`, `messageid`, `crmid`) VALUES
(1, '<a9895c4fa8f2d07b6e5412800eaa4a9a@localhost>', NULL),
(1, '<4ce91e3fa9ad5f62aeb97be761bceee8@localhost>', NULL),
(1, '<h0h8gvVTDLVdqcWjdwwOxQ@notifications.google.com>', NULL),
(1, '<f90169d102f185eaeeb2ec97925ec57b@localhost>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_ruleactions`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_ruleactions` (
  `ruleid` int(11) DEFAULT NULL,
  `actionid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_mailscanner_ruleactions`
--

INSERT INTO `vtiger_mailscanner_ruleactions` (`ruleid`, `actionid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_rules`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_rules` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `fromaddress` varchar(255) DEFAULT NULL,
  `toaddress` varchar(255) DEFAULT NULL,
  `subjectop` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bodyop` varchar(20) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `matchusing` varchar(5) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `assigned_to` int(10) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_mailscanner_rules`
--

INSERT INTO `vtiger_mailscanner_rules` (`ruleid`, `scannerid`, `fromaddress`, `toaddress`, `subjectop`, `subject`, `bodyop`, `body`, `matchusing`, `sequence`, `assigned_to`, `cc`, `bcc`) VALUES
(1, 1, '', '', '', '', '', '', 'AND', 1, 5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mail_accounts`
--

CREATE TABLE IF NOT EXISTS `vtiger_mail_accounts` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `mail_protocol` varchar(20) DEFAULT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(250) NOT NULL,
  `mail_servername` varchar(50) DEFAULT NULL,
  `box_refresh` int(10) DEFAULT NULL,
  `mails_per_page` int(10) DEFAULT NULL,
  `ssltype` varchar(50) DEFAULT NULL,
  `sslmeth` varchar(50) DEFAULT NULL,
  `int_mailer` int(1) DEFAULT '0',
  `status` varchar(10) DEFAULT NULL,
  `set_default` int(2) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_maintenance`
--

CREATE TABLE IF NOT EXISTS `vtiger_maintenance` (
  `maintenanceid` int(11) DEFAULT NULL,
  `assets` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_maintenance`
--

INSERT INTO `vtiger_maintenance` (`maintenanceid`, `assets`) VALUES
(50, 'Building'),
(51, 'Component'),
(55, 'Building');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_maintenancecf`
--

CREATE TABLE IF NOT EXISTS `vtiger_maintenancecf` (
  `maintenanceid` int(11) NOT NULL,
  `cf_739` varchar(50) DEFAULT '',
  `cf_741` varchar(255) DEFAULT '',
  `cf_743` decimal(26,8) DEFAULT NULL,
  `cf_745` decimal(26,8) DEFAULT NULL,
  `cf_773` date DEFAULT NULL,
  `cf_779` text,
  `cf_783` varchar(255) DEFAULT '',
  `cf_793` decimal(53,2) DEFAULT NULL,
  `cf_795` varchar(255) DEFAULT '',
  `cf_797` varchar(50) DEFAULT '',
  `cf_799` varchar(50) DEFAULT '',
  PRIMARY KEY (`maintenanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_maintenancecf`
--

INSERT INTO `vtiger_maintenancecf` (`maintenanceid`, `cf_739`, `cf_741`, `cf_743`, `cf_745`, `cf_773`, `cf_779`, `cf_783`, `cf_793`, `cf_795`, `cf_797`, `cf_799`) VALUES
(50, 'CSE', 'Class', 45000000.00000000, 9000000000.00000000, '2016-07-08', 'To repair all tables inside the class', 'Buildings', 0.00, '', '', ''),
(51, 'CSE', '', 200000.00000000, 0.00000000, '2016-07-15', 'Replace four components', 'Components', NULL, '', '', ''),
(55, 'CoICT', 'Class', 56000000.00000000, 345000000.00000000, '2016-07-30', 'other cost were paid for the administration', 'Buildings', 4000600.00, 'MJKN Campus', 'Science Theater', 'SA');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_manufacturer`
--

CREATE TABLE IF NOT EXISTS `vtiger_manufacturer` (
  `manufacturerid` int(19) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`manufacturerid`),
  UNIQUE KEY `manufacturer_manufacturer_idx` (`manufacturer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_manufacturer`
--

INSERT INTO `vtiger_manufacturer` (`manufacturerid`, `manufacturer`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'AltvetPet Inc.', 1, 124, 1),
(3, 'LexPon Inc.', 1, 125, 2),
(4, 'MetBeat Corp', 1, 126, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_manufacturer_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_manufacturer_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_manufacturer_seq`
--

INSERT INTO `vtiger_manufacturer_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mobile_alerts`
--

CREATE TABLE IF NOT EXISTS `vtiger_mobile_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handler_path` varchar(500) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vtiger_mobile_alerts`
--

INSERT INTO `vtiger_mobile_alerts` (`id`, `handler_path`, `handler_class`, `sequence`, `deleted`) VALUES
(1, 'modules/Mobile/api/ws/models/alerts/IdleTicketsOfMine.php', 'Mobile_WS_AlertModel_IdleTicketsOfMine', NULL, 0),
(2, 'modules/Mobile/api/ws/models/alerts/NewTicketOfMine.php', 'Mobile_WS_AlertModel_NewTicketOfMine', NULL, 0),
(3, 'modules/Mobile/api/ws/models/alerts/PendingTicketsOfMine.php', 'Mobile_WS_AlertModel_PendingTicketsOfMine', NULL, 0),
(4, 'modules/Mobile/api/ws/models/alerts/PotentialsDueIn5Days.php', 'Mobile_WS_AlertModel_PotentialsDueIn5Days', NULL, 0),
(5, 'modules/Mobile/api/ws/models/alerts/EventsOfMineToday.php', 'Mobile_WS_AlertModel_EventsOfMineToday', NULL, 0),
(6, 'modules/Mobile/api/ws/models/alerts/ProjectTasksOfMine.php', 'Mobile_WS_AlertModel_ProjectTasksOfMine', NULL, 0),
(7, 'modules/Mobile/api/ws/models/alerts/Projects.php', 'Mobile_WS_AlertModel_Projects', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modcomments`
--

CREATE TABLE IF NOT EXISTS `vtiger_modcomments` (
  `modcommentsid` int(11) DEFAULT NULL,
  `commentcontent` text,
  `related_to` int(19) DEFAULT NULL,
  `parent_comments` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `reasontoedit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modcommentscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_modcommentscf` (
  `modcommentsid` int(11) NOT NULL,
  PRIMARY KEY (`modcommentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modentity_num`
--

CREATE TABLE IF NOT EXISTS `vtiger_modentity_num` (
  `num_id` int(19) NOT NULL,
  `semodule` varchar(50) NOT NULL,
  `prefix` varchar(50) NOT NULL DEFAULT '',
  `start_id` varchar(50) NOT NULL,
  `cur_id` varchar(50) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`num_id`),
  UNIQUE KEY `num_idx` (`num_id`),
  KEY `semodule_active_idx` (`semodule`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_modentity_num`
--

INSERT INTO `vtiger_modentity_num` (`num_id`, `semodule`, `prefix`, `start_id`, `cur_id`, `active`) VALUES
(1, 'Leads', 'LEA', '1', '1', '1'),
(2, 'Accounts', 'ACC', '1', '3', '1'),
(3, 'Campaigns', 'CAM', '1', '1', '1'),
(4, 'Contacts', 'CON', '1', '4', '1'),
(5, 'Potentials', 'POT', '1', '1', '1'),
(6, 'HelpDesk', 'TT', '1', '1', '1'),
(7, 'Quotes', 'QUO', '1', '1', '1'),
(8, 'SalesOrder', 'SO', '1', '1', '1'),
(9, 'PurchaseOrder', 'PO', '1', '1', '1'),
(10, 'Invoice', 'INV', '1', '1', '1'),
(11, 'Products', 'PRO', '1', '10', '1'),
(12, 'Vendors', 'VEN', '1', '1', '1'),
(13, 'PriceBooks', 'PB', '1', '1', '1'),
(14, 'Faq', 'FAQ', '1', '2', '1'),
(15, 'Documents', 'DOC', '1', '2', '1'),
(16, 'ServiceContracts', 'SERCON', '1', '2', '1'),
(17, 'Services', 'SER', '1', '1', '1'),
(18, 'Assets', 'ASSET', '1', '7', '1'),
(19, 'ProjectMilestone', 'PM', '1', '1', '1'),
(20, 'ProjectTask', 'PT', '1', '1', '1'),
(21, 'Project', 'PROJ', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modentity_num_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_modentity_num_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_modentity_num_seq`
--

INSERT INTO `vtiger_modentity_num_seq` (`id`) VALUES
(21);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_basic`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_basic` (
  `id` int(20) NOT NULL,
  `crmid` int(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `whodid` int(20) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `crmidx` (`crmid`),
  KEY `idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_basic`
--

INSERT INTO `vtiger_modtracker_basic` (`id`, `crmid`, `module`, `whodid`, `changedon`, `status`) VALUES
(1, 2, 'Products', 5, '2016-06-26 11:48:08', 2),
(2, 3, 'Products', 5, '2016-06-26 11:48:46', 2),
(3, 4, 'Products', 5, '2016-06-26 11:49:08', 2),
(4, 5, 'Products', 5, '2016-06-26 11:49:47', 2),
(5, 6, 'Products', 5, '2016-06-26 11:50:11', 2),
(6, 7, 'Products', 5, '2016-06-26 11:50:31', 2),
(7, 8, 'Products', 5, '2016-06-26 11:51:00', 2),
(8, 9, 'Products', 5, '2016-06-26 11:51:18', 2),
(9, 10, 'Products', 5, '2016-06-26 11:51:49', 2),
(10, 11, 'Accounts', 5, '2016-06-26 11:58:28', 2),
(11, 12, 'Assets', 5, '2016-06-26 11:59:00', 2),
(12, 13, 'Accounts', 5, '2016-06-26 12:08:39', 2),
(13, 14, 'Assets', 5, '2016-06-26 12:08:43', 2),
(14, 14, 'Assets', 5, '2016-06-26 12:09:06', 0),
(15, 15, 'Assets', 5, '2016-06-26 12:16:52', 2),
(16, 16, 'Assets', 5, '2016-06-26 12:20:53', 2),
(17, 17, 'Assets', 5, '2016-06-26 12:57:10', 2),
(18, 18, 'Events', 5, '2016-06-26 13:27:14', 2),
(19, 19, 'Documents', 5, '2016-06-26 16:56:21', 2),
(20, 21, 'Contacts', 5, '2016-06-26 18:17:52', 2),
(21, 22, 'SMSNotifier', 5, '2016-06-26 18:18:17', 2),
(22, 22, 'SMSNotifier', 5, '2016-06-26 18:18:17', 4),
(23, 22, 'SMSNotifier', 5, '2016-06-26 18:18:18', 4),
(24, 21, 'Contacts', 5, '2016-06-26 18:20:36', 0),
(25, 23, 'SMSNotifier', 5, '2016-06-26 18:20:53', 2),
(26, 23, 'SMSNotifier', 5, '2016-06-26 18:20:53', 4),
(27, 23, 'SMSNotifier', 5, '2016-06-26 18:20:54', 4),
(28, 24, 'SMSNotifier', 5, '2016-06-27 09:18:24', 2),
(29, 24, 'SMSNotifier', 5, '2016-06-27 09:18:25', 4),
(30, 24, 'SMSNotifier', 5, '2016-06-27 09:18:25', 4),
(31, 25, 'SMSNotifier', 5, '2016-06-27 09:20:02', 2),
(32, 25, 'SMSNotifier', 5, '2016-06-27 09:20:03', 4),
(33, 25, 'SMSNotifier', 5, '2016-06-27 09:20:03', 4),
(34, 26, 'SMSNotifier', 5, '2016-06-27 18:34:51', 2),
(35, 26, 'SMSNotifier', 5, '2016-06-27 18:34:52', 4),
(36, 26, 'SMSNotifier', 5, '2016-06-27 18:34:52', 4),
(37, 27, 'ServiceContracts', 5, '2016-06-27 18:37:47', 2),
(38, 22, 'SMSNotifier', 5, '2016-06-27 18:44:26', 1),
(39, 26, 'SMSNotifier', 5, '2016-06-27 18:44:26', 1),
(40, 25, 'SMSNotifier', 5, '2016-06-27 18:44:26', 1),
(41, 24, 'SMSNotifier', 5, '2016-06-27 18:44:26', 1),
(42, 23, 'SMSNotifier', 5, '2016-06-27 18:44:26', 1),
(43, 28, 'SMSNotifier', 5, '2016-06-27 18:44:38', 2),
(44, 28, 'SMSNotifier', 5, '2016-06-27 18:44:39', 4),
(45, 28, 'SMSNotifier', 5, '2016-06-27 18:44:39', 4),
(46, 28, 'SMSNotifier', 5, '2016-06-27 18:45:09', 1),
(47, 29, 'SMSNotifier', 5, '2016-06-27 19:19:34', 2),
(48, 29, 'SMSNotifier', 5, '2016-06-27 19:19:35', 4),
(49, 29, 'SMSNotifier', 5, '2016-06-27 19:19:35', 4),
(50, 30, 'Contacts', 5, '2016-06-27 19:22:16', 2),
(51, 31, 'SMSNotifier', 5, '2016-06-27 19:22:43', 2),
(52, 31, 'SMSNotifier', 5, '2016-06-27 19:22:43', 4),
(53, 31, 'SMSNotifier', 5, '2016-06-27 19:22:44', 4),
(54, 32, 'SMSNotifier', 5, '2016-07-01 11:45:14', 2),
(55, 32, 'SMSNotifier', 5, '2016-07-01 11:45:14', 4),
(56, 32, 'SMSNotifier', 5, '2016-07-01 11:45:14', 4),
(57, 33, 'Contacts', 5, '2016-07-01 14:29:44', 2),
(58, 21, 'Contacts', 5, '2016-07-04 06:58:59', 0),
(59, 34, 'Emails', 12, '2016-07-04 07:02:45', 2),
(60, 35, 'Emails', 12, '2016-07-04 07:50:07', 2),
(61, 36, 'Emails', 12, '2016-07-04 07:50:30', 2),
(62, 37, 'SMSNotifier', 12, '2016-07-04 07:51:49', 2),
(63, 37, 'SMSNotifier', 12, '2016-07-04 07:51:49', 4),
(64, 37, 'SMSNotifier', 12, '2016-07-04 07:51:49', 4),
(65, 38, 'Emails', 5, '2016-07-04 07:53:38', 2),
(66, 39, 'SMSNotifier', 5, '2016-07-04 07:55:50', 2),
(67, 39, 'SMSNotifier', 5, '2016-07-04 07:55:50', 4),
(68, 39, 'SMSNotifier', 5, '2016-07-04 07:55:50', 4),
(69, 40, 'SMSNotifier', 5, '2016-07-04 07:56:59', 2),
(70, 40, 'SMSNotifier', 5, '2016-07-04 07:57:00', 4),
(71, 40, 'SMSNotifier', 5, '2016-07-04 07:57:00', 4),
(72, 41, 'Emails', 5, '2016-07-04 07:57:49', 2),
(73, 42, 'Emails', 5, '2016-07-04 08:21:24', 2),
(74, 43, 'Emails', 5, '2016-07-04 08:25:21', 2),
(75, 44, 'Emails', 5, '2016-07-04 08:27:15', 2),
(76, 45, 'Emails', 5, '2016-07-05 09:45:06', 2),
(77, 33, 'Contacts', 5, '2016-07-05 09:46:33', 0),
(78, 46, 'SMSNotifier', 5, '2016-07-05 09:47:06', 2),
(79, 46, 'SMSNotifier', 5, '2016-07-05 09:47:06', 4),
(80, 46, 'SMSNotifier', 5, '2016-07-05 09:47:07', 4),
(81, 47, 'SMSNotifier', 5, '2016-07-05 09:49:21', 2),
(82, 47, 'SMSNotifier', 5, '2016-07-05 09:49:22', 4),
(83, 47, 'SMSNotifier', 5, '2016-07-05 09:49:22', 4),
(84, 47, 'SMSNotifier', 5, '2016-07-05 09:49:23', 4),
(85, 47, 'SMSNotifier', 5, '2016-07-05 09:49:23', 4),
(86, 21, 'Contacts', 5, '2016-07-05 09:49:57', 0),
(87, 21, 'Contacts', 5, '2016-07-05 09:50:23', 0),
(88, 48, 'SMSNotifier', 5, '2016-07-05 09:51:01', 2),
(89, 48, 'SMSNotifier', 5, '2016-07-05 09:51:01', 4),
(90, 48, 'SMSNotifier', 5, '2016-07-05 09:51:02', 4),
(91, 48, 'SMSNotifier', 5, '2016-07-05 09:51:02', 4),
(92, 48, 'SMSNotifier', 5, '2016-07-05 09:51:02', 4),
(93, 33, 'Contacts', 5, '2016-07-05 09:52:47', 0),
(94, 21, 'Contacts', 5, '2016-07-05 09:53:07', 0),
(95, 49, 'SMSNotifier', 5, '2016-07-05 09:53:22', 2),
(96, 49, 'SMSNotifier', 5, '2016-07-05 09:53:23', 4),
(97, 49, 'SMSNotifier', 5, '2016-07-05 09:53:23', 4),
(98, 49, 'SMSNotifier', 5, '2016-07-05 09:53:23', 4),
(99, 49, 'SMSNotifier', 5, '2016-07-05 09:53:24', 4),
(100, 14, 'Assets', 5, '2016-07-05 11:52:03', 0),
(101, 14, 'Assets', 5, '2016-07-05 11:55:21', 0),
(102, 53, 'Assets', 5, '2016-07-05 12:01:56', 2),
(103, 56, 'Faq', 5, '2016-07-07 10:10:10', 2),
(104, 57, 'Events', 5, '2016-07-07 10:15:24', 2),
(105, 57, 'Events', 5, '2016-07-07 10:17:24', 0),
(106, 21, 'Contacts', 5, '2016-07-10 20:02:00', 0),
(107, 58, 'Emails', 5, '2016-07-10 20:03:00', 2),
(108, 10, 'Products', 5, '2016-07-11 12:32:38', 0),
(109, 9, 'Products', 5, '2016-07-11 12:33:25', 0),
(110, 8, 'Products', 5, '2016-07-11 12:33:42', 0),
(111, 7, 'Products', 5, '2016-07-11 12:34:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_basic_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_basic_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_modtracker_basic_seq`
--

INSERT INTO `vtiger_modtracker_basic_seq` (`id`) VALUES
(111);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_detail`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_detail` (
  `id` int(11) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  `prevalue` text,
  `postvalue` text,
  KEY `idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_detail`
--

INSERT INTO `vtiger_modtracker_detail` (`id`, `fieldname`, `prevalue`, `postvalue`) VALUES
(1, 'productname', NULL, 'Building'),
(1, 'product_no', NULL, 'PRO1'),
(1, 'discontinued', NULL, '1'),
(1, 'createdtime', NULL, '2016-06-26 11:48:08'),
(1, 'modifiedby', NULL, '5'),
(1, 'unit_price', NULL, '0.00000000'),
(1, 'commissionrate', NULL, '0.000'),
(1, 'qty_per_unit', NULL, '0.00'),
(1, 'qtyinstock', NULL, '0.000'),
(1, 'assigned_user_id', NULL, '5'),
(1, 'record_id', NULL, '2'),
(1, 'record_module', NULL, 'Products'),
(2, 'productname', NULL, 'Components'),
(2, 'product_no', NULL, 'PRO2'),
(2, 'discontinued', NULL, '1'),
(2, 'createdtime', NULL, '2016-06-26 11:48:46'),
(2, 'modifiedby', NULL, '5'),
(2, 'unit_price', NULL, '0.00000000'),
(2, 'commissionrate', NULL, '0.000'),
(2, 'qty_per_unit', NULL, '0.00'),
(2, 'qtyinstock', NULL, '0.000'),
(2, 'assigned_user_id', NULL, '5'),
(2, 'record_id', NULL, '3'),
(2, 'record_module', NULL, 'Products'),
(3, 'productname', NULL, 'Fixtures'),
(3, 'product_no', NULL, 'PRO3'),
(3, 'discontinued', NULL, '1'),
(3, 'createdtime', NULL, '2016-06-26 11:49:08'),
(3, 'modifiedby', NULL, '5'),
(3, 'unit_price', NULL, '0.00000000'),
(3, 'commissionrate', NULL, '0.000'),
(3, 'qty_per_unit', NULL, '0.00'),
(3, 'qtyinstock', NULL, '0.000'),
(3, 'assigned_user_id', NULL, '5'),
(3, 'record_id', NULL, '4'),
(3, 'record_module', NULL, 'Products'),
(4, 'productname', NULL, 'Furniture'),
(4, 'product_no', NULL, 'PRO4'),
(4, 'discontinued', NULL, '1'),
(4, 'createdtime', NULL, '2016-06-26 11:49:47'),
(4, 'modifiedby', NULL, '5'),
(4, 'unit_price', NULL, '0.00000000'),
(4, 'commissionrate', NULL, '0.000'),
(4, 'qty_per_unit', NULL, '0.00'),
(4, 'qtyinstock', NULL, '0.000'),
(4, 'assigned_user_id', NULL, '5'),
(4, 'record_id', NULL, '5'),
(4, 'record_module', NULL, 'Products'),
(5, 'productname', NULL, 'Laboratory Equipment'),
(5, 'product_no', NULL, 'PRO5'),
(5, 'discontinued', NULL, '1'),
(5, 'createdtime', NULL, '2016-06-26 11:50:11'),
(5, 'modifiedby', NULL, '5'),
(5, 'unit_price', NULL, '0.00000000'),
(5, 'commissionrate', NULL, '0.000'),
(5, 'qty_per_unit', NULL, '0.00'),
(5, 'qtyinstock', NULL, '0.000'),
(5, 'assigned_user_id', NULL, '5'),
(5, 'record_id', NULL, '6'),
(5, 'record_module', NULL, 'Products'),
(6, 'productname', NULL, 'Machinery'),
(6, 'product_no', NULL, 'PRO6'),
(6, 'discontinued', NULL, '1'),
(6, 'createdtime', NULL, '2016-06-26 11:50:31'),
(6, 'modifiedby', NULL, '5'),
(6, 'unit_price', NULL, '0.00000000'),
(6, 'commissionrate', NULL, '0.000'),
(6, 'qty_per_unit', NULL, '0.00'),
(6, 'qtyinstock', NULL, '0.000'),
(6, 'assigned_user_id', NULL, '5'),
(6, 'record_id', NULL, '7'),
(6, 'record_module', NULL, 'Products'),
(7, 'productname', NULL, 'Office Equipment'),
(7, 'product_no', NULL, 'PRO7'),
(7, 'discontinued', NULL, '1'),
(7, 'createdtime', NULL, '2016-06-26 11:51:00'),
(7, 'modifiedby', NULL, '5'),
(7, 'unit_price', NULL, '0.00000000'),
(7, 'commissionrate', NULL, '0.000'),
(7, 'qty_per_unit', NULL, '0.00'),
(7, 'qtyinstock', NULL, '0.000'),
(7, 'assigned_user_id', NULL, '5'),
(7, 'record_id', NULL, '8'),
(7, 'record_module', NULL, 'Products'),
(8, 'productname', NULL, 'Software'),
(8, 'product_no', NULL, 'PRO8'),
(8, 'discontinued', NULL, '1'),
(8, 'createdtime', NULL, '2016-06-26 11:51:18'),
(8, 'modifiedby', NULL, '5'),
(8, 'unit_price', NULL, '0.00000000'),
(8, 'commissionrate', NULL, '0.000'),
(8, 'qty_per_unit', NULL, '0.00'),
(8, 'qtyinstock', NULL, '0.000'),
(8, 'assigned_user_id', NULL, '5'),
(8, 'record_id', NULL, '9'),
(8, 'record_module', NULL, 'Products'),
(9, 'productname', NULL, 'Vehicle'),
(9, 'product_no', NULL, 'PRO9'),
(9, 'discontinued', NULL, '1'),
(9, 'createdtime', NULL, '2016-06-26 11:51:49'),
(9, 'modifiedby', NULL, '5'),
(9, 'unit_price', NULL, '0.00000000'),
(9, 'commissionrate', NULL, '0.000'),
(9, 'qty_per_unit', NULL, '0.00'),
(9, 'qtyinstock', NULL, '0.000'),
(9, 'assigned_user_id', NULL, '5'),
(9, 'record_id', NULL, '10'),
(9, 'record_module', NULL, 'Products'),
(10, 'accountname', NULL, 'UCC'),
(10, 'account_no', NULL, 'ACC1'),
(10, 'annual_revenue', NULL, '0.00000000'),
(10, 'assigned_user_id', NULL, '5'),
(10, 'createdtime', NULL, '2016-06-26 11:58:28'),
(10, 'modifiedby', NULL, '5'),
(10, 'record_id', NULL, '11'),
(10, 'record_module', NULL, 'Accounts'),
(11, 'asset_no', NULL, 'ASSET1'),
(11, 'product', NULL, '5'),
(11, 'serialnumber', NULL, 'FUR01'),
(11, 'datesold', NULL, '2016-06-19'),
(11, 'dateinservice', NULL, '2016-07-27'),
(11, 'assetstatus', NULL, 'In Service'),
(11, 'tagnumber', NULL, '34ER'),
(11, 'assigned_user_id', NULL, '5'),
(11, 'assetname', NULL, 'Table'),
(11, 'account', NULL, '11'),
(11, 'createdtime', NULL, '2016-06-26 11:59:00'),
(11, 'modifiedby', NULL, '5'),
(11, 'cf_723', NULL, 'Furnitures'),
(11, 'record_id', NULL, '12'),
(11, 'record_module', NULL, 'Assets'),
(12, 'accountname', NULL, 'CoICT'),
(12, 'account_no', NULL, 'ACC2'),
(12, 'annual_revenue', NULL, '0.00000000'),
(12, 'assigned_user_id', NULL, '5'),
(12, 'createdtime', NULL, '2016-06-26 12:08:39'),
(12, 'modifiedby', NULL, '5'),
(12, 'record_id', NULL, '13'),
(12, 'record_module', NULL, 'Accounts'),
(13, 'asset_no', NULL, 'ASSET2'),
(13, 'product', NULL, '2'),
(13, 'serialnumber', NULL, 'BLOCK A'),
(13, 'datesold', NULL, '2016-06-30'),
(13, 'dateinservice', NULL, '2016-06-26'),
(13, 'assetstatus', NULL, 'In Service'),
(13, 'tagnumber', NULL, '12'),
(13, 'assigned_user_id', NULL, '5'),
(13, 'assetname', NULL, 'Administration Block'),
(13, 'account', NULL, '13'),
(13, 'createdtime', NULL, '2016-06-26 12:08:43'),
(13, 'modifiedby', NULL, '5'),
(13, 'record_id', NULL, '14'),
(13, 'record_module', NULL, 'Assets'),
(14, 'cf_723', '', 'Buildings'),
(15, 'asset_no', NULL, 'ASSET3'),
(15, 'product', NULL, '3'),
(15, 'serialnumber', NULL, 'TA342'),
(15, 'datesold', NULL, '2016-07-10'),
(15, 'dateinservice', NULL, '2016-06-30'),
(15, 'assetstatus', NULL, 'In Service'),
(15, 'tagnumber', NULL, '123'),
(15, 'assigned_user_id', NULL, '5'),
(15, 'assetname', NULL, 'Integrated circuit'),
(15, 'account', NULL, '13'),
(15, 'createdtime', NULL, '2016-06-26 12:16:52'),
(15, 'modifiedby', NULL, '5'),
(15, 'cf_723', NULL, 'Components'),
(15, 'record_id', NULL, '15'),
(15, 'record_module', NULL, 'Assets'),
(16, 'asset_no', NULL, 'ASSET4'),
(16, 'product', NULL, '4'),
(16, 'serialnumber', NULL, '345'),
(16, 'datesold', NULL, '2016-09-13'),
(16, 'dateinservice', NULL, '2016-06-26'),
(16, 'assetstatus', NULL, 'Out-of-service'),
(16, 'tagnumber', NULL, '87'),
(16, 'assigned_user_id', NULL, '5'),
(16, 'assetname', NULL, 'Pipes'),
(16, 'account', NULL, '13'),
(16, 'createdtime', NULL, '2016-06-26 12:20:53'),
(16, 'modifiedby', NULL, '5'),
(16, 'cf_723', NULL, 'Fixtures'),
(16, 'record_id', NULL, '16'),
(16, 'record_module', NULL, 'Assets'),
(17, 'asset_no', NULL, 'ASSET5'),
(17, 'product', NULL, '5'),
(17, 'serialnumber', NULL, 'FUR04'),
(17, 'datesold', NULL, '2016-09-15'),
(17, 'dateinservice', NULL, '2016-07-20'),
(17, 'assetstatus', NULL, 'Schedulled'),
(17, 'tagnumber', NULL, '564'),
(17, 'assigned_user_id', NULL, '5'),
(17, 'assetname', NULL, 'Chair'),
(17, 'account', NULL, '13'),
(17, 'createdtime', NULL, '2016-06-26 12:57:10'),
(17, 'modifiedby', NULL, '5'),
(17, 'cf_723', NULL, 'Furnitures'),
(17, 'record_id', NULL, '17'),
(17, 'record_module', NULL, 'Assets'),
(18, 'subject', NULL, 'Meeting'),
(18, 'assigned_user_id', NULL, '5'),
(18, 'date_start', NULL, '2016-06-30'),
(18, 'time_start', NULL, '14:30:00'),
(18, 'time_end', NULL, '15:30:00'),
(18, 'due_date', NULL, '2016-07-21'),
(18, 'eventstatus', NULL, 'Planned'),
(18, 'sendnotification', NULL, '1'),
(18, 'createdtime', NULL, '2016-06-26 13:27:14'),
(18, 'activitytype', NULL, 'Mobile Call'),
(18, 'visibility', NULL, 'Public'),
(18, 'duration_hours', NULL, '505'),
(18, 'recurringtype', NULL, '--None--'),
(18, 'modifiedby', NULL, '5'),
(18, 'record_id', NULL, '18'),
(18, 'record_module', NULL, 'Events'),
(19, 'notes_title', NULL, 'Recorded Buildings'),
(19, 'createdtime', NULL, '2016-06-26 16:56:21'),
(19, 'filename', NULL, 'Building.xls'),
(19, 'assigned_user_id', NULL, '11'),
(19, 'filetype', NULL, 'application/vnd.ms-excel'),
(19, 'filesize', NULL, '4608'),
(19, 'filelocationtype', NULL, 'I'),
(19, 'fileversion', NULL, '1'),
(19, 'filestatus', NULL, '1'),
(19, 'folderid', NULL, '2'),
(19, 'note_no', NULL, 'DOC1'),
(19, 'modifiedby', NULL, '5'),
(19, 'record_id', NULL, '19'),
(19, 'record_module', NULL, 'Documents'),
(20, 'salutationtype', NULL, 'Mr.'),
(20, 'firstname', NULL, 'Mosses'),
(20, 'contact_no', NULL, 'CON1'),
(20, 'lastname', NULL, 'mosses'),
(20, 'mobile', NULL, '0789025030'),
(20, 'account_id', NULL, '13'),
(20, 'assigned_user_id', NULL, '5'),
(20, 'createdtime', NULL, '2016-06-26 18:17:52'),
(20, 'modifiedby', NULL, '5'),
(20, 'support_start_date', NULL, '2016-06-26'),
(20, 'support_end_date', NULL, '2017-06-26'),
(20, 'record_id', NULL, '21'),
(20, 'record_module', NULL, 'Contacts'),
(21, 'assigned_user_id', NULL, '5'),
(21, 'createdtime', NULL, '2016-06-26 18:18:17'),
(21, 'message', NULL, 'hfdhdd'),
(21, 'modifiedby', NULL, '5'),
(21, 'record_id', NULL, '22'),
(21, 'record_module', NULL, 'SMSNotifier'),
(24, 'mobile', '0789025030', '0766989150'),
(25, 'assigned_user_id', NULL, '5'),
(25, 'createdtime', NULL, '2016-06-26 18:20:53'),
(25, 'message', NULL, 'kl'),
(25, 'modifiedby', NULL, '5'),
(25, 'record_id', NULL, '23'),
(25, 'record_module', NULL, 'SMSNotifier'),
(28, 'assigned_user_id', NULL, '5'),
(28, 'createdtime', NULL, '2016-06-27 09:18:24'),
(28, 'message', NULL, 'free'),
(28, 'modifiedby', NULL, '5'),
(28, 'record_id', NULL, '24'),
(28, 'record_module', NULL, 'SMSNotifier'),
(31, 'assigned_user_id', NULL, '5'),
(31, 'createdtime', NULL, '2016-06-27 09:20:02'),
(31, 'message', NULL, 'julio'),
(31, 'modifiedby', NULL, '5'),
(31, 'record_id', NULL, '25'),
(31, 'record_module', NULL, 'SMSNotifier'),
(34, 'assigned_user_id', NULL, '5'),
(34, 'createdtime', NULL, '2016-06-27 18:34:51'),
(34, 'message', NULL, 'fr'),
(34, 'modifiedby', NULL, '5'),
(34, 'record_id', NULL, '26'),
(34, 'record_module', NULL, 'SMSNotifier'),
(37, 'assigned_user_id', NULL, '5'),
(37, 'createdtime', NULL, '2016-06-27 18:37:47'),
(37, 'start_date', NULL, '2016-06-29'),
(37, 'sc_related_to', NULL, '11'),
(37, 'total_units', NULL, '34.00'),
(37, 'used_units', NULL, '12.00'),
(37, 'subject', NULL, 'Network Facility Repair'),
(37, 'due_date', NULL, '2016-07-10'),
(37, 'planned_duration', NULL, '12'),
(37, 'contract_status', NULL, 'In Planning'),
(37, 'contract_priority', NULL, 'Normal'),
(37, 'contract_type', NULL, 'Services'),
(37, 'progress', NULL, '35.29'),
(37, 'contract_no', NULL, 'SERCON1'),
(37, 'modifiedby', NULL, '5'),
(37, 'record_id', NULL, '27'),
(37, 'record_module', NULL, 'ServiceContracts'),
(43, 'assigned_user_id', NULL, '5'),
(43, 'createdtime', NULL, '2016-06-27 18:44:38'),
(43, 'message', NULL, 'bh'),
(43, 'modifiedby', NULL, '5'),
(43, 'record_id', NULL, '28'),
(43, 'record_module', NULL, 'SMSNotifier'),
(47, 'assigned_user_id', NULL, '5'),
(47, 'createdtime', NULL, '2016-06-27 19:19:34'),
(47, 'message', NULL, 'by you'),
(47, 'modifiedby', NULL, '5'),
(47, 'record_id', NULL, '29'),
(47, 'record_module', NULL, 'SMSNotifier'),
(50, 'salutationtype', NULL, 'Mr.'),
(50, 'firstname', NULL, 'Xhio'),
(50, 'contact_no', NULL, 'CON2'),
(50, 'phone', NULL, '+22123'),
(50, 'lastname', NULL, 'Elipokea'),
(50, 'mobile', NULL, '+255789025030'),
(50, 'account_id', NULL, '13'),
(50, 'department', NULL, 'CSE'),
(50, 'email', NULL, 'elipokeamosses@gmail.com'),
(50, 'assigned_user_id', NULL, '5'),
(50, 'createdtime', NULL, '2016-06-27 19:22:16'),
(50, 'modifiedby', NULL, '5'),
(50, 'record_id', NULL, '30'),
(50, 'record_module', NULL, 'Contacts'),
(51, 'assigned_user_id', NULL, '5'),
(51, 'createdtime', NULL, '2016-06-27 19:22:43'),
(51, 'message', NULL, 'hi'),
(51, 'modifiedby', NULL, '5'),
(51, 'record_id', NULL, '31'),
(51, 'record_module', NULL, 'SMSNotifier'),
(54, 'assigned_user_id', NULL, '5'),
(54, 'createdtime', NULL, '2016-07-01 11:45:14'),
(54, 'message', NULL, 'hi'),
(54, 'modifiedby', NULL, '5'),
(54, 'record_id', NULL, '32'),
(54, 'record_module', NULL, 'SMSNotifier'),
(57, 'firstname', NULL, 'Hudson'),
(57, 'contact_no', NULL, 'CON3'),
(57, 'lastname', NULL, 'Gwambe'),
(57, 'assigned_user_id', NULL, '6'),
(57, 'createdtime', NULL, '2016-07-01 14:29:44'),
(57, 'modifiedby', NULL, '5'),
(57, 'record_id', NULL, '33'),
(57, 'record_module', NULL, 'Contacts'),
(58, 'email', '', 'hudsonguambe@gmail.com'),
(59, 'date_start', NULL, '2016-07-04'),
(59, 'activitytype', NULL, 'Emails'),
(59, 'assigned_user_id', NULL, '12'),
(59, 'subject', NULL, 'hi'),
(59, 'description', NULL, 'check my list'),
(59, 'time_start', NULL, '07:02'),
(59, 'createdtime', NULL, '2016-07-04 07:02:45'),
(59, 'modifiedby', NULL, '12'),
(59, 'from_email', NULL, 'user2@user2.com'),
(59, 'saved_toid', NULL, '[&quot;elipokeamosses@gmail.com&quot;]'),
(59, 'ccmail', NULL, '[&quot;&quot;]'),
(59, 'bccmail', NULL, '[&quot;&quot;]'),
(59, 'parent_id', NULL, '30@1|'),
(59, 'email_flag', NULL, 'SENT'),
(59, 'record_id', NULL, '34'),
(59, 'record_module', NULL, 'Emails'),
(60, 'date_start', NULL, '2016-07-04'),
(60, 'activitytype', NULL, 'Emails'),
(60, 'assigned_user_id', NULL, '12'),
(60, 'subject', NULL, 'Testing'),
(60, 'description', NULL, 'testinggggg'),
(60, 'time_start', NULL, '07:50'),
(60, 'createdtime', NULL, '2016-07-04 07:50:07'),
(60, 'modifiedby', NULL, '12'),
(60, 'from_email', NULL, 'hudsongwambe@hotmail.com'),
(60, 'saved_toid', NULL, '[&quot;elipokeamosses@gmail.com&quot;]'),
(60, 'ccmail', NULL, '[&quot;&quot;]'),
(60, 'bccmail', NULL, '[&quot;&quot;]'),
(60, 'parent_id', NULL, '30@1|'),
(60, 'email_flag', NULL, 'SENT'),
(60, 'record_id', NULL, '35'),
(60, 'record_module', NULL, 'Emails'),
(61, 'date_start', NULL, '2016-07-04'),
(61, 'activitytype', NULL, 'Emails'),
(61, 'assigned_user_id', NULL, '12'),
(61, 'subject', NULL, 'Testing'),
(61, 'description', NULL, 'testinggggg'),
(61, 'time_start', NULL, '07:50'),
(61, 'createdtime', NULL, '2016-07-04 07:50:30'),
(61, 'modifiedby', NULL, '12'),
(61, 'from_email', NULL, 'hudsongwambe@hotmail.com'),
(61, 'saved_toid', NULL, '[&quot;elipokeamosses@gmail.com&quot;]'),
(61, 'ccmail', NULL, '[&quot;&quot;]'),
(61, 'bccmail', NULL, '[&quot;&quot;]'),
(61, 'parent_id', NULL, '30@1|'),
(61, 'email_flag', NULL, 'SENT'),
(61, 'record_id', NULL, '36'),
(61, 'record_module', NULL, 'Emails'),
(62, 'assigned_user_id', NULL, '12'),
(62, 'createdtime', NULL, '2016-07-04 07:51:49'),
(62, 'message', NULL, 'hi'),
(62, 'modifiedby', NULL, '12'),
(62, 'record_id', NULL, '37'),
(62, 'record_module', NULL, 'SMSNotifier'),
(65, 'date_start', NULL, '2016-07-04'),
(65, 'activitytype', NULL, 'Emails'),
(65, 'assigned_user_id', NULL, '5'),
(65, 'subject', NULL, 'hi'),
(65, 'description', NULL, 'testing'),
(65, 'time_start', NULL, '07:53'),
(65, 'createdtime', NULL, '2016-07-04 07:53:38'),
(65, 'modifiedby', NULL, '5'),
(65, 'from_email', NULL, 'doreenpreseino2004@gmail.com'),
(65, 'saved_toid', NULL, '[&quot;hudsonguambe@gmail.com&quot;]'),
(65, 'ccmail', NULL, '[&quot;&quot;]'),
(65, 'bccmail', NULL, '[&quot;&quot;]'),
(65, 'parent_id', NULL, '21@1|'),
(65, 'email_flag', NULL, 'SENT'),
(65, 'record_id', NULL, '38'),
(65, 'record_module', NULL, 'Emails'),
(66, 'assigned_user_id', NULL, '5'),
(66, 'createdtime', NULL, '2016-07-04 07:55:50'),
(66, 'message', NULL, 'cf'),
(66, 'modifiedby', NULL, '5'),
(66, 'record_id', NULL, '39'),
(66, 'record_module', NULL, 'SMSNotifier'),
(69, 'assigned_user_id', NULL, '5'),
(69, 'createdtime', NULL, '2016-07-04 07:56:59'),
(69, 'message', NULL, 'vgh'),
(69, 'modifiedby', NULL, '5'),
(69, 'record_id', NULL, '40'),
(69, 'record_module', NULL, 'SMSNotifier'),
(72, 'date_start', NULL, '2016-07-04'),
(72, 'activitytype', NULL, 'Emails'),
(72, 'assigned_user_id', NULL, '5'),
(72, 'subject', NULL, 'hey'),
(72, 'description', NULL, 'chec that'),
(72, 'time_start', NULL, '07:57'),
(72, 'createdtime', NULL, '2016-07-04 07:57:49'),
(72, 'modifiedby', NULL, '5'),
(72, 'from_email', NULL, 'doreenpreseino2004@gmail.com'),
(72, 'saved_toid', NULL, '[&quot;hudsonguambe@gmail.com&quot;]'),
(72, 'ccmail', NULL, '[&quot;&quot;]'),
(72, 'bccmail', NULL, '[&quot;&quot;]'),
(72, 'parent_id', NULL, '21@1|'),
(72, 'email_flag', NULL, 'SENT'),
(72, 'record_id', NULL, '41'),
(72, 'record_module', NULL, 'Emails'),
(73, 'date_start', NULL, '2016-07-04'),
(73, 'activitytype', NULL, 'Emails'),
(73, 'assigned_user_id', NULL, '5'),
(73, 'subject', NULL, 'hi'),
(73, 'description', NULL, 'hello'),
(73, 'time_start', NULL, '08:21'),
(73, 'createdtime', NULL, '2016-07-04 08:21:24'),
(73, 'modifiedby', NULL, '5'),
(73, 'from_email', NULL, 'doreenpreseino2004@gmail.com'),
(73, 'saved_toid', NULL, '[&quot;hudsonguambe@gmail.com&quot;]'),
(73, 'ccmail', NULL, '[&quot;&quot;]'),
(73, 'bccmail', NULL, '[&quot;&quot;]'),
(73, 'parent_id', NULL, '21@1|'),
(73, 'email_flag', NULL, 'SENT'),
(73, 'record_id', NULL, '42'),
(73, 'record_module', NULL, 'Emails'),
(74, 'date_start', NULL, '2016-07-04'),
(74, 'activitytype', NULL, 'Emails'),
(74, 'assigned_user_id', NULL, '5'),
(74, 'subject', NULL, 'now'),
(74, 'description', NULL, 'is it working ?'),
(74, 'time_start', NULL, '08:25'),
(74, 'createdtime', NULL, '2016-07-04 08:25:21'),
(74, 'modifiedby', NULL, '5'),
(74, 'from_email', NULL, 'doreenpreseino2004@gmail.com'),
(74, 'saved_toid', NULL, '[&quot;hudsonguambe@gmail.com&quot;]'),
(74, 'ccmail', NULL, '[&quot;&quot;]'),
(74, 'bccmail', NULL, '[&quot;&quot;]'),
(74, 'parent_id', NULL, '21@1|'),
(74, 'email_flag', NULL, 'SENT'),
(74, 'record_id', NULL, '43'),
(74, 'record_module', NULL, 'Emails'),
(75, 'date_start', NULL, '2016-07-04'),
(75, 'activitytype', NULL, 'Emails'),
(75, 'assigned_user_id', NULL, '5'),
(75, 'subject', NULL, 'hi'),
(75, 'description', NULL, 'xxxzxz'),
(75, 'time_start', NULL, '08:27'),
(75, 'createdtime', NULL, '2016-07-04 08:27:15'),
(75, 'modifiedby', NULL, '5'),
(75, 'from_email', NULL, 'doreenpreseino2004@gmail.com'),
(75, 'saved_toid', NULL, '[&quot;hudsonguambe@gmail.com&quot;]'),
(75, 'ccmail', NULL, '[&quot;&quot;]'),
(75, 'bccmail', NULL, '[&quot;&quot;]'),
(75, 'parent_id', NULL, '21@1|'),
(75, 'email_flag', NULL, 'SENT'),
(75, 'record_id', NULL, '44'),
(75, 'record_module', NULL, 'Emails'),
(76, 'date_start', NULL, '2016-07-05'),
(76, 'activitytype', NULL, 'Emails'),
(76, 'assigned_user_id', NULL, '5'),
(76, 'subject', NULL, 'brother'),
(76, 'description', NULL, 'we are almost there'),
(76, 'time_start', NULL, '09:45'),
(76, 'createdtime', NULL, '2016-07-05 09:45:06'),
(76, 'modifiedby', NULL, '5'),
(76, 'from_email', NULL, 'doreenpreseino2004@gmail.com'),
(76, 'saved_toid', NULL, '[&quot;hudsonguambe@gmail.com&quot;]'),
(76, 'ccmail', NULL, '[&quot;&quot;]'),
(76, 'bccmail', NULL, '[&quot;&quot;]'),
(76, 'parent_id', NULL, '21@1|'),
(76, 'email_flag', NULL, 'SENT'),
(76, 'record_id', NULL, '45'),
(76, 'record_module', NULL, 'Emails'),
(77, 'phone', '', '9684384'),
(77, 'mobile', '', '0688188349'),
(77, 'department', '', 'CSE'),
(77, 'email', '', 'hudsonguambe@gmail.com'),
(78, 'assigned_user_id', NULL, '5'),
(78, 'createdtime', NULL, '2016-07-05 09:47:06'),
(78, 'message', NULL, 'gkdaj'),
(78, 'modifiedby', NULL, '5'),
(78, 'record_id', NULL, '46'),
(78, 'record_module', NULL, 'SMSNotifier'),
(81, 'assigned_user_id', NULL, '5'),
(81, 'createdtime', NULL, '2016-07-05 09:49:21'),
(81, 'message', NULL, 'hd'),
(81, 'modifiedby', NULL, '5'),
(81, 'record_id', NULL, '47'),
(81, 'record_module', NULL, 'SMSNotifier'),
(86, 'mobile', '0766989150', '0789025030'),
(87, 'department', '', 'CSE'),
(88, 'assigned_user_id', NULL, '5'),
(88, 'createdtime', NULL, '2016-07-05 09:51:01'),
(88, 'message', NULL, 'fr'),
(88, 'modifiedby', NULL, '5'),
(88, 'record_id', NULL, '48'),
(88, 'record_module', NULL, 'SMSNotifier'),
(93, 'mobile', '0688188349', '+255688188349'),
(94, 'mobile', '0789025030', '+255789025030'),
(95, 'assigned_user_id', NULL, '5'),
(95, 'createdtime', NULL, '2016-07-05 09:53:22'),
(95, 'message', NULL, 'ty'),
(95, 'modifiedby', NULL, '5'),
(95, 'record_id', NULL, '49'),
(95, 'record_module', NULL, 'SMSNotifier'),
(100, 'cf_749', '', 'Corrective Maintenance'),
(101, 'cf_787', '', 'Kijitonyama Campus'),
(102, 'asset_no', NULL, 'ASSET6'),
(102, 'product', NULL, '2'),
(102, 'serialnumber', NULL, 'BLOCK C'),
(102, 'datesold', NULL, '2016-07-21'),
(102, 'dateinservice', NULL, '2016-07-23'),
(102, 'assetstatus', NULL, 'Out-of-service'),
(102, 'assigned_user_id', NULL, '5'),
(102, 'assetname', NULL, 'Building'),
(102, 'account', NULL, '11'),
(102, 'createdtime', NULL, '2016-07-05 12:01:56'),
(102, 'modifiedby', NULL, '5'),
(102, 'cf_723', NULL, 'Buildings'),
(102, 'cf_733', NULL, '5'),
(102, 'cf_749', NULL, 'Periodic Maintenance'),
(102, 'cf_787', NULL, 'Kijitonyama Campus'),
(102, 'record_id', NULL, '53'),
(102, 'record_module', NULL, 'Assets'),
(103, 'product_id', NULL, '9'),
(103, 'faq_no', NULL, 'FAQ1'),
(103, 'faqcategories', NULL, 'General'),
(103, 'faqstatus', NULL, 'Published'),
(103, 'question', NULL, 'how to update your check if you are connected to the system'),
(103, 'faq_answer', NULL, 'Navigate to left ....'),
(103, 'createdtime', NULL, '2016-07-07 10:10:10'),
(103, 'modifiedby', NULL, '5'),
(103, 'record_id', NULL, '56'),
(103, 'record_module', NULL, 'Faq'),
(104, 'subject', NULL, 'Meeting'),
(104, 'assigned_user_id', NULL, '5'),
(104, 'date_start', NULL, '2016-07-07'),
(104, 'time_start', NULL, '10:17:00'),
(104, 'time_end', NULL, '10:22:00'),
(104, 'due_date', NULL, '2016-07-09'),
(104, 'eventstatus', NULL, 'Planned'),
(104, 'sendnotification', NULL, '1'),
(104, 'createdtime', NULL, '2016-07-07 10:15:24'),
(104, 'activitytype', NULL, 'Meeting'),
(104, 'visibility', NULL, 'Public'),
(104, 'duration_hours', NULL, '48'),
(104, 'duration_minutes', NULL, '5'),
(104, 'reminder_time', NULL, '1'),
(104, 'recurringtype', NULL, '--None--'),
(104, 'modifiedby', NULL, '5'),
(104, 'record_id', NULL, '57'),
(104, 'record_module', NULL, 'Events'),
(105, 'due_date', '2016-07-09', '2016-07-07'),
(105, 'duration_hours', '48', '0'),
(106, 'email', 'hudsonguambe@gmail.com', 'inocentvicent@gmail.com'),
(107, 'date_start', NULL, '2016-07-10'),
(107, 'activitytype', NULL, 'Emails'),
(107, 'assigned_user_id', NULL, '5'),
(107, 'subject', NULL, 'salam'),
(107, 'description', NULL, 'hi'),
(107, 'time_start', NULL, '20:03'),
(107, 'createdtime', NULL, '2016-07-10 20:03:00'),
(107, 'modifiedby', NULL, '5'),
(107, 'from_email', NULL, 'elipokeamosses@gmail.com'),
(107, 'saved_toid', NULL, '[&quot;inocentvicent@gmail.com&quot;]'),
(107, 'ccmail', NULL, '[&quot;&quot;]'),
(107, 'bccmail', NULL, '[&quot;&quot;]'),
(107, 'parent_id', NULL, '21@1|'),
(107, 'email_flag', NULL, 'SENT'),
(107, 'record_id', NULL, '58'),
(107, 'record_module', NULL, 'Emails'),
(108, 'unit_price', '0.00000000', '5600000.00000000'),
(109, 'unit_price', '0.00000000', '5465000.00000000'),
(110, 'unit_price', '0.00000000', '5609000.00000000'),
(111, 'unit_price', '0.00000000', '2300000.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_relations`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_relations` (
  `id` int(19) NOT NULL,
  `targetmodule` varchar(100) NOT NULL,
  `targetid` int(19) NOT NULL,
  `changedon` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_relations`
--

INSERT INTO `vtiger_modtracker_relations` (`id`, `targetmodule`, `targetid`, `changedon`) VALUES
(22, 'SMSNotifier', 21, '2016-06-26 18:18:17'),
(23, 'SMSNotifier', 21, '2016-06-26 18:18:18'),
(26, 'SMSNotifier', 21, '2016-06-26 18:20:53'),
(27, 'SMSNotifier', 21, '2016-06-26 18:20:54'),
(29, 'SMSNotifier', 21, '2016-06-27 09:18:25'),
(30, 'SMSNotifier', 21, '2016-06-27 09:18:25'),
(32, 'SMSNotifier', 21, '2016-06-27 09:20:03'),
(33, 'SMSNotifier', 21, '2016-06-27 09:20:03'),
(35, 'SMSNotifier', 21, '2016-06-27 18:34:52'),
(36, 'SMSNotifier', 21, '2016-06-27 18:34:52'),
(44, 'SMSNotifier', 21, '2016-06-27 18:44:39'),
(45, 'SMSNotifier', 21, '2016-06-27 18:44:39'),
(48, 'SMSNotifier', 21, '2016-06-27 19:19:35'),
(49, 'SMSNotifier', 21, '2016-06-27 19:19:35'),
(52, 'SMSNotifier', 30, '2016-06-27 19:22:43'),
(53, 'SMSNotifier', 30, '2016-06-27 19:22:44'),
(55, 'SMSNotifier', 21, '2016-07-01 11:45:14'),
(56, 'SMSNotifier', 21, '2016-07-01 11:45:14'),
(63, 'SMSNotifier', 30, '2016-07-04 07:51:49'),
(64, 'SMSNotifier', 30, '2016-07-04 07:51:49'),
(67, 'SMSNotifier', 21, '2016-07-04 07:55:50'),
(68, 'SMSNotifier', 21, '2016-07-04 07:55:50'),
(70, 'SMSNotifier', 30, '2016-07-04 07:57:00'),
(71, 'SMSNotifier', 30, '2016-07-04 07:57:00'),
(79, 'SMSNotifier', 33, '2016-07-05 09:47:06'),
(80, 'SMSNotifier', 33, '2016-07-05 09:47:07'),
(82, 'SMSNotifier', 21, '2016-07-05 09:49:22'),
(83, 'SMSNotifier', 33, '2016-07-05 09:49:22'),
(84, 'SMSNotifier', 21, '2016-07-05 09:49:23'),
(85, 'SMSNotifier', 33, '2016-07-05 09:49:23'),
(89, 'SMSNotifier', 21, '2016-07-05 09:51:01'),
(90, 'SMSNotifier', 33, '2016-07-05 09:51:02'),
(91, 'SMSNotifier', 21, '2016-07-05 09:51:02'),
(92, 'SMSNotifier', 33, '2016-07-05 09:51:02'),
(96, 'SMSNotifier', 21, '2016-07-05 09:53:23'),
(97, 'SMSNotifier', 33, '2016-07-05 09:53:23'),
(98, 'SMSNotifier', 21, '2016-07-05 09:53:23'),
(99, 'SMSNotifier', 33, '2016-07-05 09:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_tabs`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_tabs` (
  `tabid` int(11) NOT NULL,
  `visible` int(11) DEFAULT '0',
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_tabs`
--

INSERT INTO `vtiger_modtracker_tabs` (`tabid`, `visible`) VALUES
(2, 1),
(4, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(26, 1),
(28, 1),
(31, 1),
(36, 1),
(37, 1),
(39, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_module_dashboard_widgets`
--

CREATE TABLE IF NOT EXISTS `vtiger_module_dashboard_widgets` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `linkid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `filterid` int(19) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` text,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notebook_contents`
--

CREATE TABLE IF NOT EXISTS `vtiger_notebook_contents` (
  `userid` int(19) NOT NULL,
  `notebookid` int(19) NOT NULL,
  `contents` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notes`
--

CREATE TABLE IF NOT EXISTS `vtiger_notes` (
  `notesid` int(19) NOT NULL DEFAULT '0',
  `note_no` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `notecontent` text,
  `folderid` int(19) NOT NULL DEFAULT '1',
  `filetype` varchar(50) DEFAULT NULL,
  `filelocationtype` varchar(5) DEFAULT NULL,
  `filedownloadcount` int(19) DEFAULT NULL,
  `filestatus` int(19) DEFAULT NULL,
  `filesize` int(19) NOT NULL DEFAULT '0',
  `fileversion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`notesid`),
  KEY `notes_title_idx` (`title`),
  KEY `notes_notesid_idx` (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_notes`
--

INSERT INTO `vtiger_notes` (`notesid`, `note_no`, `title`, `filename`, `notecontent`, `folderid`, `filetype`, `filelocationtype`, `filedownloadcount`, `filestatus`, `filesize`, `fileversion`) VALUES
(19, 'DOC1', 'Recorded Buildings', 'Building.xls', NULL, 2, 'application/vnd.ms-excel', 'I', 2, 1, 4608, '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notescf`
--

CREATE TABLE IF NOT EXISTS `vtiger_notescf` (
  `notesid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_notescf`
--

INSERT INTO `vtiger_notescf` (`notesid`) VALUES
(19);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notificationscheduler`
--

CREATE TABLE IF NOT EXISTS `vtiger_notificationscheduler` (
  `schedulednotificationid` int(19) NOT NULL AUTO_INCREMENT,
  `schedulednotificationname` varchar(200) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`schedulednotificationid`),
  UNIQUE KEY `notificationscheduler_schedulednotificationname_idx` (`schedulednotificationname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vtiger_notificationscheduler`
--

INSERT INTO `vtiger_notificationscheduler` (`schedulednotificationid`, `schedulednotificationname`, `active`, `notificationsubject`, `notificationbody`, `label`, `type`) VALUES
(1, 'LBL_TASK_NOTIFICATION_DESCRITPION', 1, 'Task Delay Notification', 'Tasks delayed beyond 24 hrs ', 'LBL_TASK_NOTIFICATION', NULL),
(2, 'LBL_BIG_DEAL_DESCRIPTION', 1, 'Big Deal notification', 'Success! A big deal has been won! ', 'LBL_BIG_DEAL', NULL),
(3, 'LBL_TICKETS_DESCRIPTION', 1, 'Pending Tickets notification', 'Ticket pending please ', 'LBL_PENDING_TICKETS', NULL),
(4, 'LBL_MANY_TICKETS_DESCRIPTION', 1, 'Too many tickets Notification', 'Too many tickets pending against this entity ', 'LBL_MANY_TICKETS', NULL),
(5, 'LBL_START_DESCRIPTION', 1, 'Support Start Notification', '10', 'LBL_START_NOTIFICATION', 'select'),
(6, 'LBL_SUPPORT_DESCRIPTION', 1, 'Support ending please', '11', 'LBL_SUPPORT_NOTICIATION', 'select'),
(7, 'LBL_SUPPORT_DESCRIPTION_MONTH', 1, 'Support ending please', '12', 'LBL_SUPPORT_NOTICIATION_MONTH', 'select'),
(8, 'LBL_ACTIVITY_REMINDER_DESCRIPTION', 1, 'Activity Reminder Notification', 'This is a reminder notification for the Activity', 'LBL_ACTIVITY_NOTIFICATION', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notificationscheduler_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_notificationscheduler_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_notificationscheduler_seq`
--

INSERT INTO `vtiger_notificationscheduler_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_no_of_currency_decimals`
--

CREATE TABLE IF NOT EXISTS `vtiger_no_of_currency_decimals` (
  `no_of_currency_decimalsid` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_currency_decimals` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`no_of_currency_decimalsid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_no_of_currency_decimals`
--

INSERT INTO `vtiger_no_of_currency_decimals` (`no_of_currency_decimalsid`, `no_of_currency_decimals`, `sortorderid`, `presence`) VALUES
(2, '2', 2, 1),
(3, '3', 3, 1),
(4, '4', 4, 1),
(5, '5', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_no_of_currency_decimals_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_no_of_currency_decimals_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_no_of_currency_decimals_seq`
--

INSERT INTO `vtiger_no_of_currency_decimals_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunitystage`
--

CREATE TABLE IF NOT EXISTS `vtiger_opportunitystage` (
  `potstageid` int(19) NOT NULL AUTO_INCREMENT,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  `probability` decimal(3,2) DEFAULT '0.00',
  PRIMARY KEY (`potstageid`),
  UNIQUE KEY `opportunitystage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunity_type`
--

CREATE TABLE IF NOT EXISTS `vtiger_opportunity_type` (
  `opptypeid` int(19) NOT NULL AUTO_INCREMENT,
  `opportunity_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`opptypeid`),
  UNIQUE KEY `opportunity_type_opportunity_type_idx` (`opportunity_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_opportunity_type`
--

INSERT INTO `vtiger_opportunity_type` (`opptypeid`, `opportunity_type`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Existing Business', 1, 128, 1),
(3, 'New Business', 1, 129, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunity_type_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_opportunity_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_opportunity_type_seq`
--

INSERT INTO `vtiger_opportunity_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_organizationdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_organizationdetails` (
  `organization_id` int(11) NOT NULL,
  `organizationname` varchar(60) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logoname` varchar(50) DEFAULT NULL,
  `logo` text,
  `vatid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_organizationdetails`
--

INSERT INTO `vtiger_organizationdetails` (`organization_id`, `organizationname`, `address`, `city`, `state`, `country`, `code`, `phone`, `fax`, `website`, `logoname`, `logo`, `vatid`) VALUES
(1, 'udsm pmms', 'Kijitonyama', 'Dar es Salaam', '', 'Tanzania', '255', '+91 9243602352', '+91 9243602352', 'www.udsm.ac.tz', 'coict2.png', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_organizationdetails_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_organizationdetails_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_organizationdetails_seq`
--

INSERT INTO `vtiger_organizationdetails_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_org_share_action2tab`
--

CREATE TABLE IF NOT EXISTS `vtiger_org_share_action2tab` (
  `share_action_id` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  PRIMARY KEY (`share_action_id`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_org_share_action2tab`
--

INSERT INTO `vtiger_org_share_action2tab` (`share_action_id`, `tabid`) VALUES
(0, 2),
(0, 4),
(0, 6),
(0, 7),
(0, 8),
(0, 9),
(0, 10),
(0, 13),
(0, 14),
(0, 16),
(0, 18),
(0, 20),
(0, 21),
(0, 22),
(0, 23),
(0, 26),
(0, 31),
(0, 36),
(0, 37),
(0, 39),
(0, 42),
(0, 43),
(0, 44),
(0, 45),
(0, 46),
(0, 50),
(0, 51),
(1, 2),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 13),
(1, 14),
(1, 16),
(1, 18),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 26),
(1, 31),
(1, 36),
(1, 37),
(1, 39),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 50),
(1, 51),
(2, 2),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 13),
(2, 14),
(2, 16),
(2, 18),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 26),
(2, 31),
(2, 36),
(2, 37),
(2, 39),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 50),
(2, 51),
(3, 2),
(3, 4),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 13),
(3, 14),
(3, 16),
(3, 18),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 26),
(3, 31),
(3, 36),
(3, 37),
(3, 39),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
(3, 46),
(3, 50),
(3, 51);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_org_share_action_mapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_org_share_action_mapping` (
  `share_action_id` int(19) NOT NULL,
  `share_action_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`share_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_org_share_action_mapping`
--

INSERT INTO `vtiger_org_share_action_mapping` (`share_action_id`, `share_action_name`) VALUES
(0, 'Public: Read Only'),
(1, 'Public: Read, Create/Edit'),
(2, 'Public: Read, Create/Edit, Delete'),
(3, 'Private'),
(4, 'Hide Details'),
(5, 'Hide Details and Add Events'),
(6, 'Show Details'),
(7, 'Show Details and Add Events');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_othereventduration`
--

CREATE TABLE IF NOT EXISTS `vtiger_othereventduration` (
  `othereventdurationid` int(11) NOT NULL AUTO_INCREMENT,
  `othereventduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`othereventdurationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_othereventduration`
--

INSERT INTO `vtiger_othereventduration` (`othereventdurationid`, `othereventduration`, `sortorderid`, `presence`) VALUES
(1, '5', 1, 1),
(2, '10', 2, 1),
(3, '30', 3, 1),
(4, '60', 4, 1),
(5, '120', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_othereventduration_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_othereventduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_othereventduration_seq`
--

INSERT INTO `vtiger_othereventduration_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_parenttab`
--

CREATE TABLE IF NOT EXISTS `vtiger_parenttab` (
  `parenttabid` int(19) NOT NULL,
  `parenttab_label` varchar(100) NOT NULL,
  `sequence` int(10) NOT NULL,
  `visible` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`parenttabid`),
  KEY `parenttab_parenttabid_parenttabl_label_visible_idx` (`parenttabid`,`parenttab_label`,`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_parenttab`
--

INSERT INTO `vtiger_parenttab` (`parenttabid`, `parenttab_label`, `sequence`, `visible`) VALUES
(1, 'My Home Page', 1, 0),
(2, 'Marketing', 2, 0),
(3, 'Sales', 3, 0),
(4, 'Support', 4, 0),
(5, 'Analytics', 5, 0),
(6, 'Inventory', 6, 0),
(7, 'Tools', 7, 0),
(8, 'Settings', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_parenttabrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_parenttabrel` (
  `parenttabid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sequence` int(3) NOT NULL,
  KEY `parenttabrel_tabid_parenttabid_idx` (`tabid`,`parenttabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_parenttabrel`
--

INSERT INTO `vtiger_parenttabrel` (`parenttabid`, `tabid`, `sequence`) VALUES
(1, 9, 2),
(1, 28, 4),
(1, 3, 1),
(3, 7, 1),
(3, 6, 2),
(3, 4, 3),
(3, 2, 4),
(3, 20, 5),
(3, 22, 6),
(3, 23, 7),
(3, 19, 8),
(3, 8, 9),
(4, 13, 1),
(4, 15, 2),
(4, 6, 3),
(4, 4, 4),
(4, 8, 5),
(5, 1, 2),
(5, 25, 1),
(6, 14, 1),
(6, 18, 2),
(6, 19, 3),
(6, 21, 4),
(6, 22, 5),
(6, 20, 6),
(6, 23, 7),
(7, 24, 1),
(7, 27, 2),
(7, 8, 3),
(2, 26, 1),
(2, 6, 2),
(2, 4, 3),
(2, 28, 4),
(4, 28, 7),
(2, 7, 5),
(2, 9, 6),
(4, 9, 8),
(2, 8, 8),
(3, 9, 11),
(4, 31, 9),
(4, 31, 10),
(7, 33, 4),
(7, 33, 5),
(7, 36, 6),
(7, 36, 7),
(6, 37, 8),
(6, 37, 9),
(6, 39, 10),
(6, 39, 11),
(7, 42, 8),
(7, 42, 9),
(7, 43, 10),
(7, 43, 11),
(4, 44, 11),
(4, 44, 12),
(4, 45, 13),
(4, 45, 14),
(4, 46, 15),
(4, 46, 16),
(7, 47, 12),
(7, 47, 13),
(7, 48, 14),
(7, 48, 15),
(8, 49, 1),
(8, 49, 2),
(7, 50, 16),
(7, 51, 17);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_payment_duration`
--

CREATE TABLE IF NOT EXISTS `vtiger_payment_duration` (
  `payment_duration_id` int(11) DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_payment_duration`
--

INSERT INTO `vtiger_payment_duration` (`payment_duration_id`, `payment_duration`, `sortorderid`, `presence`) VALUES
(1, 'Net 30 days', 0, 1),
(2, 'Net 45 days', 1, 1),
(3, 'Net 60 days', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_payment_duration_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_payment_duration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_payment_duration_seq`
--

INSERT INTO `vtiger_payment_duration_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager`
--

CREATE TABLE IF NOT EXISTS `vtiger_pbxmanager` (
  `pbxmanagerid` int(20) NOT NULL AUTO_INCREMENT,
  `direction` varchar(10) DEFAULT NULL,
  `callstatus` varchar(20) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `totalduration` int(11) DEFAULT NULL,
  `billduration` int(11) DEFAULT NULL,
  `recordingurl` varchar(200) DEFAULT NULL,
  `sourceuuid` varchar(100) DEFAULT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `customernumber` varchar(100) DEFAULT NULL,
  `customertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pbxmanagerid`),
  KEY `index_sourceuuid` (`sourceuuid`),
  KEY `index_pbxmanager_id` (`pbxmanagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanagercf`
--

CREATE TABLE IF NOT EXISTS `vtiger_pbxmanagercf` (
  `pbxmanagerid` int(11) NOT NULL,
  PRIMARY KEY (`pbxmanagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager_gateway`
--

CREATE TABLE IF NOT EXISTS `vtiger_pbxmanager_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway` varchar(20) DEFAULT NULL,
  `parameters` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager_phonelookup`
--

CREATE TABLE IF NOT EXISTS `vtiger_pbxmanager_phonelookup` (
  `crmid` int(20) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL,
  `fnumber` varchar(100) DEFAULT NULL,
  `rnumber` varchar(100) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  UNIQUE KEY `unique_key` (`crmid`,`setype`,`fieldname`),
  KEY `index_phone_number` (`fnumber`,`rnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist`
--

CREATE TABLE IF NOT EXISTS `vtiger_picklist` (
  `picklistid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`picklistid`),
  UNIQUE KEY `picklist_name_idx` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `vtiger_picklist`
--

INSERT INTO `vtiger_picklist` (`picklistid`, `name`) VALUES
(1, 'accounttype'),
(2, 'activitytype'),
(37, 'assetstatus'),
(3, 'campaignstatus'),
(4, 'campaigntype'),
(5, 'carrier'),
(33, 'contract_priority'),
(32, 'contract_status'),
(34, 'contract_type'),
(48, 'defaultactivitytype'),
(47, 'defaulteventstatus'),
(6, 'eventstatus'),
(7, 'expectedresponse'),
(8, 'faqcategories'),
(9, 'faqstatus'),
(10, 'glacct'),
(11, 'industry'),
(12, 'invoicestatus'),
(13, 'leadsource'),
(14, 'leadstatus'),
(15, 'manufacturer'),
(16, 'opportunity_type'),
(17, 'postatus'),
(18, 'productcategory'),
(45, 'progress'),
(38, 'projectmilestonetype'),
(44, 'projectpriority'),
(42, 'projectstatus'),
(40, 'projecttaskpriority'),
(41, 'projecttaskprogress'),
(46, 'projecttaskstatus'),
(39, 'projecttasktype'),
(43, 'projecttype'),
(19, 'quotestage'),
(20, 'rating'),
(21, 'sales_stage'),
(22, 'salutationtype'),
(36, 'servicecategory'),
(35, 'service_usageunit'),
(23, 'sostatus'),
(24, 'taskpriority'),
(25, 'taskstatus'),
(26, 'ticketcategories'),
(27, 'ticketpriorities'),
(28, 'ticketseverities'),
(29, 'ticketstatus'),
(31, 'tracking_unit'),
(30, 'usageunit');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklistvalues_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_picklistvalues_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_picklistvalues_seq`
--

INSERT INTO `vtiger_picklistvalues_seq` (`id`) VALUES
(309);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_dependency`
--

CREATE TABLE IF NOT EXISTS `vtiger_picklist_dependency` (
  `id` int(11) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sourcefield` varchar(255) DEFAULT NULL,
  `targetfield` varchar(255) DEFAULT NULL,
  `sourcevalue` varchar(100) DEFAULT NULL,
  `targetvalues` text,
  `criteria` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_picklist_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_picklist_seq`
--

INSERT INTO `vtiger_picklist_seq` (`id`) VALUES
(48);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pobillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_pobillads` (
  `pobilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portal`
--

CREATE TABLE IF NOT EXISTS `vtiger_portal` (
  `portalid` int(19) NOT NULL,
  `portalname` varchar(200) NOT NULL,
  `portalurl` varchar(255) NOT NULL,
  `sequence` int(3) NOT NULL,
  `setdefault` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`portalid`),
  KEY `portal_portalname_idx` (`portalname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portalinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_portalinfo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(30) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_poshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_poshipads` (
  `poshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`poshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_postatus` (
  `postatusid` int(19) NOT NULL AUTO_INCREMENT,
  `postatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`postatusid`),
  UNIQUE KEY `postatus_postatus_idx` (`postatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_postatus`
--

INSERT INTO `vtiger_postatus` (`postatusid`, `postatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Created', 0, 130, 0),
(2, 'Approved', 0, 131, 1),
(3, 'Delivered', 0, 132, 2),
(4, 'Cancelled', 0, 133, 3),
(5, 'Received Shipment', 0, 134, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatushistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_postatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `purchaseorderid` int(19) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `postatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `postatushistory_purchaseorderid_idx` (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_postatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_postatus_seq`
--

INSERT INTO `vtiger_postatus_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potential`
--

CREATE TABLE IF NOT EXISTS `vtiger_potential` (
  `potentialid` int(19) NOT NULL DEFAULT '0',
  `potential_no` varchar(100) NOT NULL,
  `related_to` int(19) DEFAULT NULL,
  `potentialname` varchar(120) NOT NULL,
  `amount` decimal(25,8) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `closingdate` date DEFAULT NULL,
  `typeofrevenue` varchar(50) DEFAULT NULL,
  `nextstep` varchar(100) DEFAULT NULL,
  `private` int(1) DEFAULT '0',
  `probability` decimal(7,3) DEFAULT '0.000',
  `campaignid` int(19) DEFAULT NULL,
  `sales_stage` varchar(200) DEFAULT NULL,
  `potentialtype` varchar(200) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `productid` int(50) DEFAULT NULL,
  `productversion` varchar(50) DEFAULT NULL,
  `quotationref` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `runtimefee` int(19) DEFAULT '0',
  `followupdate` date DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `description` text,
  `forecastcategory` int(19) DEFAULT '0',
  `outcomeanalysis` int(19) DEFAULT '0',
  `forecast_amount` decimal(25,8) DEFAULT NULL,
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  `contact_id` int(19) DEFAULT NULL,
  PRIMARY KEY (`potentialid`),
  KEY `potential_relatedto_idx` (`related_to`),
  KEY `potentail_sales_stage_idx` (`sales_stage`),
  KEY `potentail_sales_stage_amount_idx` (`amount`,`sales_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potentialscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_potentialscf` (
  `potentialid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potstagehistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_potstagehistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `potentialid` int(19) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `stage` varchar(100) DEFAULT NULL,
  `probability` decimal(7,3) DEFAULT NULL,
  `expectedrevenue` decimal(10,0) DEFAULT NULL,
  `closedate` date DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `potstagehistory_potentialid_idx` (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebook`
--

CREATE TABLE IF NOT EXISTS `vtiger_pricebook` (
  `pricebookid` int(19) NOT NULL DEFAULT '0',
  `pricebook_no` varchar(100) NOT NULL,
  `bookname` varchar(100) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebookcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_pricebookcf` (
  `pricebookid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebookproductrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_pricebookproductrel` (
  `pricebookid` int(19) NOT NULL,
  `productid` int(19) NOT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `usedcurrency` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pricebookid`,`productid`),
  KEY `pricebookproductrel_pricebookid_idx` (`pricebookid`),
  KEY `pricebookproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_priority`
--

CREATE TABLE IF NOT EXISTS `vtiger_priority` (
  `priorityid` int(19) NOT NULL AUTO_INCREMENT,
  `priority` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`priorityid`),
  UNIQUE KEY `priority_priority_idx` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcategory`
--

CREATE TABLE IF NOT EXISTS `vtiger_productcategory` (
  `productcategoryid` int(19) NOT NULL AUTO_INCREMENT,
  `productcategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`productcategoryid`),
  UNIQUE KEY `productcategory_productcategory_idx` (`productcategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_productcategory`
--

INSERT INTO `vtiger_productcategory` (`productcategoryid`, `productcategory`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Hardware', 1, 136, 1),
(3, 'Software', 1, 137, 2),
(4, 'CRM Applications', 1, 138, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcategory_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_productcategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_productcategory_seq`
--

INSERT INTO `vtiger_productcategory_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_productcf` (
  `productid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_productcf`
--

INSERT INTO `vtiger_productcf` (`productid`) VALUES
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcurrencyrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_productcurrencyrel` (
  `productid` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `converted_price` decimal(28,8) DEFAULT NULL,
  `actual_price` decimal(28,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_productcurrencyrel`
--

INSERT INTO `vtiger_productcurrencyrel` (`productid`, `currencyid`, `converted_price`, `actual_price`) VALUES
(2, 1, 0.00000000, 0.00000000),
(3, 1, 0.00000000, 0.00000000),
(4, 1, 0.00000000, 0.00000000),
(5, 1, 0.00000000, 0.00000000),
(6, 1, 0.00000000, 0.00000000),
(10, 1, 5600000.00000000, 5600000.00000000),
(9, 1, 5465000.00000000, 5465000.00000000),
(8, 1, 5609000.00000000, 5609000.00000000),
(7, 1, 2300000.00000000, 2300000.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_products`
--

CREATE TABLE IF NOT EXISTS `vtiger_products` (
  `productid` int(11) NOT NULL,
  `product_no` varchar(100) NOT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `productcode` varchar(40) DEFAULT NULL,
  `productcategory` varchar(200) DEFAULT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT '0.00',
  `unit_price` decimal(25,8) DEFAULT NULL,
  `weight` decimal(11,3) DEFAULT NULL,
  `pack_size` int(11) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cost_factor` int(11) DEFAULT NULL,
  `commissionrate` decimal(7,3) DEFAULT NULL,
  `commissionmethod` varchar(50) DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT '0',
  `usageunit` varchar(200) DEFAULT NULL,
  `reorderlevel` int(11) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `mfr_part_no` varchar(200) DEFAULT NULL,
  `vendor_part_no` varchar(200) DEFAULT NULL,
  `serialno` varchar(200) DEFAULT NULL,
  `qtyinstock` decimal(25,3) DEFAULT NULL,
  `productsheet` varchar(200) DEFAULT NULL,
  `qtyindemand` int(11) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `imagename` text,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_products`
--

INSERT INTO `vtiger_products` (`productid`, `product_no`, `productname`, `productcode`, `productcategory`, `manufacturer`, `qty_per_unit`, `unit_price`, `weight`, `pack_size`, `sales_start_date`, `sales_end_date`, `start_date`, `expiry_date`, `cost_factor`, `commissionrate`, `commissionmethod`, `discontinued`, `usageunit`, `reorderlevel`, `website`, `taxclass`, `mfr_part_no`, `vendor_part_no`, `serialno`, `qtyinstock`, `productsheet`, `qtyindemand`, `glacct`, `vendor_id`, `imagename`, `currency_id`) VALUES
(2, 'PRO1', 'Building', '', '', '', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1),
(3, 'PRO2', 'Components', '', '', '', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1),
(4, 'PRO3', 'Fixtures', '', '', '', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1),
(5, 'PRO4', 'Furniture', '', '', '', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1),
(6, 'PRO5', 'Laboratory Equipment', '', '', '', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1),
(7, 'PRO6', 'Machinery', '', '', '', 0.00, 2300000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1),
(8, 'PRO7', 'Office Equipment', '', '', '', 0.00, 5609000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1),
(9, 'PRO8', 'Software', '', '', '', 0.00, 5465000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1),
(10, 'PRO9', 'Vehicle', '', '', '', 0.00, 5600000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, 1, '', 0, '', '', '', '', '', 0.000, '', 0, '', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_producttaxrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_producttaxrel` (
  `productid` int(11) NOT NULL,
  `taxid` int(3) NOT NULL,
  `taxpercentage` decimal(7,3) DEFAULT NULL,
  KEY `producttaxrel_productid_idx` (`productid`),
  KEY `producttaxrel_taxid_idx` (`taxid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile` (
  `profileid` int(10) NOT NULL AUTO_INCREMENT,
  `profilename` varchar(50) NOT NULL,
  `description` text,
  `directly_related_to_role` int(1) DEFAULT '0',
  PRIMARY KEY (`profileid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vtiger_profile`
--

INSERT INTO `vtiger_profile` (`profileid`, `profilename`, `description`, `directly_related_to_role`) VALUES
(1, 'Administrator', 'Admin Profile', 0),
(3, 'Support Profile', 'Profile Related to Support', 0),
(4, 'Guest Profile', 'Guest Profile for Test Users', 0),
(5, 'UDSM Staff+Profile', NULL, 1),
(6, 'CoICT Staff+Profile', NULL, 1),
(7, 'Teaching Staff+Profile', NULL, 1),
(8, 'Non Teaching Staff+Profile', NULL, 1),
(9, 'Others+Profile', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2field`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2field` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`fieldid`),
  KEY `profile2field_profileid_tabid_fieldname_idx` (`profileid`,`tabid`),
  KEY `profile2field_tabid_profileid_idx` (`tabid`,`profileid`),
  KEY `profile2field_visible_profileid_idx` (`visible`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2field`
--

INSERT INTO `vtiger_profile2field` (`profileid`, `tabid`, `fieldid`, `visible`, `readonly`) VALUES
(1, 6, 1, 0, 0),
(1, 6, 2, 0, 0),
(1, 6, 3, 0, 0),
(1, 6, 4, 0, 0),
(1, 6, 5, 0, 0),
(1, 6, 6, 0, 0),
(1, 6, 7, 0, 0),
(1, 6, 8, 0, 0),
(1, 6, 9, 0, 0),
(1, 6, 10, 0, 0),
(1, 6, 11, 0, 0),
(1, 6, 12, 0, 0),
(1, 6, 13, 0, 0),
(1, 6, 14, 0, 0),
(1, 6, 15, 0, 0),
(1, 6, 16, 0, 0),
(1, 6, 17, 0, 0),
(1, 6, 18, 0, 0),
(1, 6, 19, 0, 0),
(1, 6, 20, 0, 0),
(1, 6, 21, 0, 0),
(1, 6, 22, 0, 0),
(1, 6, 23, 0, 0),
(1, 6, 24, 0, 0),
(1, 6, 25, 0, 0),
(1, 6, 26, 0, 0),
(1, 6, 27, 0, 0),
(1, 6, 28, 0, 0),
(1, 6, 29, 0, 0),
(1, 6, 30, 0, 0),
(1, 6, 31, 0, 0),
(1, 6, 32, 0, 0),
(1, 6, 33, 0, 0),
(1, 6, 34, 0, 0),
(1, 6, 35, 0, 0),
(1, 6, 36, 0, 0),
(1, 7, 37, 0, 0),
(1, 7, 38, 0, 0),
(1, 7, 39, 0, 0),
(1, 7, 40, 0, 0),
(1, 7, 41, 0, 0),
(1, 7, 42, 0, 0),
(1, 7, 43, 0, 0),
(1, 7, 44, 0, 0),
(1, 7, 45, 0, 0),
(1, 7, 46, 0, 0),
(1, 7, 47, 0, 0),
(1, 7, 48, 0, 0),
(1, 7, 49, 0, 0),
(1, 7, 50, 0, 0),
(1, 7, 51, 0, 0),
(1, 7, 52, 0, 0),
(1, 7, 53, 0, 0),
(1, 7, 54, 0, 0),
(1, 7, 55, 0, 0),
(1, 7, 56, 0, 0),
(1, 7, 57, 0, 0),
(1, 7, 58, 0, 0),
(1, 7, 59, 0, 0),
(1, 7, 60, 0, 0),
(1, 7, 61, 0, 0),
(1, 7, 62, 0, 0),
(1, 7, 63, 0, 0),
(1, 7, 64, 0, 0),
(1, 7, 65, 0, 0),
(1, 4, 66, 0, 0),
(1, 4, 67, 0, 0),
(1, 4, 68, 0, 0),
(1, 4, 69, 0, 0),
(1, 4, 70, 0, 0),
(1, 4, 71, 0, 0),
(1, 4, 72, 0, 0),
(1, 4, 73, 0, 0),
(1, 4, 74, 0, 0),
(1, 4, 75, 0, 0),
(1, 4, 76, 0, 0),
(1, 4, 77, 0, 0),
(1, 4, 78, 0, 0),
(1, 4, 79, 0, 0),
(1, 4, 80, 0, 0),
(1, 4, 81, 0, 0),
(1, 4, 82, 0, 0),
(1, 4, 83, 0, 0),
(1, 4, 84, 0, 0),
(1, 4, 85, 0, 0),
(1, 4, 86, 0, 0),
(1, 4, 87, 0, 0),
(1, 4, 88, 0, 0),
(1, 4, 89, 0, 0),
(1, 4, 90, 0, 0),
(1, 4, 91, 0, 0),
(1, 4, 92, 0, 0),
(1, 4, 93, 0, 0),
(1, 4, 94, 0, 0),
(1, 4, 95, 0, 0),
(1, 4, 96, 0, 0),
(1, 4, 97, 0, 0),
(1, 4, 98, 0, 0),
(1, 4, 99, 0, 0),
(1, 4, 100, 0, 0),
(1, 4, 101, 0, 0),
(1, 4, 102, 0, 0),
(1, 4, 103, 0, 0),
(1, 4, 104, 0, 0),
(1, 4, 105, 0, 0),
(1, 4, 106, 0, 0),
(1, 4, 107, 0, 0),
(1, 4, 108, 0, 0),
(1, 4, 109, 0, 0),
(1, 2, 110, 0, 0),
(1, 2, 111, 0, 0),
(1, 2, 112, 0, 0),
(1, 2, 113, 0, 0),
(1, 2, 114, 0, 0),
(1, 2, 115, 0, 0),
(1, 2, 116, 0, 0),
(1, 2, 117, 0, 0),
(1, 2, 118, 0, 0),
(1, 2, 119, 0, 0),
(1, 2, 120, 0, 0),
(1, 2, 121, 0, 0),
(1, 2, 122, 0, 0),
(1, 2, 123, 0, 0),
(1, 2, 124, 0, 0),
(1, 2, 125, 0, 0),
(1, 26, 126, 0, 0),
(1, 26, 127, 0, 0),
(1, 26, 128, 0, 0),
(1, 26, 129, 0, 0),
(1, 26, 130, 0, 0),
(1, 26, 131, 0, 0),
(1, 26, 132, 0, 0),
(1, 26, 133, 0, 0),
(1, 26, 134, 0, 0),
(1, 26, 135, 0, 0),
(1, 26, 136, 0, 0),
(1, 26, 137, 0, 0),
(1, 26, 138, 0, 0),
(1, 26, 139, 0, 0),
(1, 26, 140, 0, 0),
(1, 26, 141, 0, 0),
(1, 26, 142, 0, 0),
(1, 26, 143, 0, 0),
(1, 26, 144, 0, 0),
(1, 26, 145, 0, 0),
(1, 26, 146, 0, 0),
(1, 26, 147, 0, 0),
(1, 26, 148, 0, 0),
(1, 26, 149, 0, 0),
(1, 26, 150, 0, 0),
(1, 4, 151, 0, 0),
(1, 6, 152, 0, 0),
(1, 7, 153, 0, 0),
(1, 26, 154, 0, 0),
(1, 13, 155, 0, 0),
(1, 13, 156, 0, 0),
(1, 13, 157, 0, 0),
(1, 13, 158, 0, 0),
(1, 13, 159, 0, 0),
(1, 13, 160, 0, 0),
(1, 13, 161, 0, 0),
(1, 13, 162, 0, 0),
(1, 13, 163, 0, 0),
(1, 13, 164, 0, 0),
(1, 13, 165, 0, 0),
(1, 13, 166, 0, 0),
(1, 13, 167, 0, 0),
(1, 13, 168, 0, 0),
(1, 13, 169, 0, 0),
(1, 13, 170, 0, 0),
(1, 13, 171, 0, 0),
(1, 13, 172, 0, 0),
(1, 14, 173, 0, 0),
(1, 14, 174, 0, 0),
(1, 14, 175, 0, 0),
(1, 14, 176, 0, 0),
(1, 14, 177, 0, 0),
(1, 14, 178, 0, 0),
(1, 14, 179, 0, 0),
(1, 14, 180, 0, 0),
(1, 14, 181, 0, 0),
(1, 14, 182, 0, 0),
(1, 14, 183, 0, 0),
(1, 14, 184, 0, 0),
(1, 14, 185, 0, 0),
(1, 14, 186, 0, 0),
(1, 14, 187, 0, 0),
(1, 14, 188, 0, 0),
(1, 14, 189, 0, 0),
(1, 14, 190, 0, 0),
(1, 14, 191, 0, 0),
(1, 14, 192, 0, 0),
(1, 14, 193, 0, 0),
(1, 14, 194, 0, 0),
(1, 14, 195, 0, 0),
(1, 14, 196, 0, 0),
(1, 14, 197, 0, 0),
(1, 14, 198, 0, 0),
(1, 14, 199, 0, 0),
(1, 14, 200, 0, 0),
(1, 14, 201, 0, 0),
(1, 14, 202, 0, 0),
(1, 14, 203, 0, 0),
(1, 8, 204, 0, 0),
(1, 8, 205, 0, 0),
(1, 8, 206, 0, 0),
(1, 8, 207, 0, 0),
(1, 8, 208, 0, 0),
(1, 8, 209, 0, 0),
(1, 8, 210, 0, 0),
(1, 8, 211, 0, 0),
(1, 8, 212, 0, 0),
(1, 8, 213, 0, 0),
(1, 8, 214, 0, 0),
(1, 8, 215, 0, 0),
(1, 8, 216, 0, 0),
(1, 8, 217, 0, 0),
(1, 8, 218, 0, 0),
(1, 10, 219, 0, 0),
(1, 10, 220, 0, 0),
(1, 10, 221, 0, 0),
(1, 10, 222, 0, 0),
(1, 10, 223, 0, 0),
(1, 10, 224, 0, 0),
(1, 10, 225, 0, 0),
(1, 10, 226, 0, 0),
(1, 10, 227, 0, 0),
(1, 10, 228, 0, 0),
(1, 10, 229, 0, 0),
(1, 10, 230, 0, 0),
(1, 9, 231, 0, 0),
(1, 9, 232, 0, 0),
(1, 9, 233, 0, 0),
(1, 9, 234, 0, 0),
(1, 9, 235, 0, 0),
(1, 9, 236, 0, 0),
(1, 9, 237, 0, 0),
(1, 9, 238, 0, 0),
(1, 9, 239, 0, 0),
(1, 9, 240, 0, 0),
(1, 9, 241, 0, 0),
(1, 9, 242, 0, 0),
(1, 9, 243, 0, 0),
(1, 9, 244, 0, 0),
(1, 9, 245, 0, 0),
(1, 9, 246, 0, 0),
(1, 9, 247, 0, 0),
(1, 9, 248, 0, 0),
(1, 9, 249, 0, 0),
(1, 9, 250, 0, 0),
(1, 9, 251, 0, 0),
(1, 9, 252, 0, 0),
(1, 9, 253, 0, 0),
(1, 9, 254, 0, 0),
(1, 16, 255, 0, 0),
(1, 16, 256, 0, 0),
(1, 16, 257, 0, 0),
(1, 16, 258, 0, 0),
(1, 16, 259, 0, 0),
(1, 16, 260, 0, 0),
(1, 16, 261, 0, 0),
(1, 16, 262, 0, 0),
(1, 16, 263, 0, 0),
(1, 16, 264, 0, 0),
(1, 16, 265, 0, 0),
(1, 16, 266, 0, 0),
(1, 16, 267, 0, 0),
(1, 16, 268, 0, 0),
(1, 16, 269, 0, 0),
(1, 16, 270, 0, 0),
(1, 16, 271, 0, 0),
(1, 16, 272, 0, 0),
(1, 16, 273, 0, 0),
(1, 16, 274, 0, 0),
(1, 16, 275, 0, 0),
(1, 16, 276, 0, 0),
(1, 16, 277, 0, 0),
(1, 15, 278, 0, 0),
(1, 15, 279, 0, 0),
(1, 15, 280, 0, 0),
(1, 15, 281, 0, 0),
(1, 15, 282, 0, 0),
(1, 15, 283, 0, 0),
(1, 15, 284, 0, 0),
(1, 15, 285, 0, 0),
(1, 15, 286, 0, 0),
(1, 15, 287, 0, 0),
(1, 18, 288, 0, 0),
(1, 18, 289, 0, 0),
(1, 18, 290, 0, 0),
(1, 18, 291, 0, 0),
(1, 18, 292, 0, 0),
(1, 18, 293, 0, 0),
(1, 18, 294, 0, 0),
(1, 18, 295, 0, 0),
(1, 18, 296, 0, 0),
(1, 18, 297, 0, 0),
(1, 18, 298, 0, 0),
(1, 18, 299, 0, 0),
(1, 18, 300, 0, 0),
(1, 18, 301, 0, 0),
(1, 18, 302, 0, 0),
(1, 18, 303, 0, 0),
(1, 18, 304, 0, 0),
(1, 19, 305, 0, 0),
(1, 19, 306, 0, 0),
(1, 19, 307, 0, 0),
(1, 19, 308, 0, 0),
(1, 19, 309, 0, 0),
(1, 19, 310, 0, 0),
(1, 19, 311, 0, 0),
(1, 19, 312, 0, 0),
(1, 20, 313, 0, 0),
(1, 20, 314, 0, 0),
(1, 20, 315, 0, 0),
(1, 20, 316, 0, 0),
(1, 20, 317, 0, 0),
(1, 20, 318, 0, 0),
(1, 20, 319, 0, 0),
(1, 20, 320, 0, 0),
(1, 20, 321, 0, 0),
(1, 20, 322, 0, 0),
(1, 20, 323, 0, 0),
(1, 20, 324, 0, 0),
(1, 20, 325, 0, 0),
(1, 20, 326, 0, 0),
(1, 20, 327, 0, 0),
(1, 20, 328, 0, 0),
(1, 20, 329, 0, 0),
(1, 20, 330, 0, 0),
(1, 20, 331, 0, 0),
(1, 20, 332, 0, 0),
(1, 20, 333, 0, 0),
(1, 20, 334, 0, 0),
(1, 20, 335, 0, 0),
(1, 20, 336, 0, 0),
(1, 20, 337, 0, 0),
(1, 20, 338, 0, 0),
(1, 20, 339, 0, 0),
(1, 20, 340, 0, 0),
(1, 20, 341, 0, 0),
(1, 20, 342, 0, 0),
(1, 20, 343, 0, 0),
(1, 20, 344, 0, 0),
(1, 20, 345, 0, 0),
(1, 20, 346, 0, 0),
(1, 20, 347, 0, 0),
(1, 20, 348, 0, 0),
(1, 20, 349, 0, 0),
(1, 21, 350, 0, 0),
(1, 21, 351, 0, 0),
(1, 21, 352, 0, 0),
(1, 21, 353, 0, 0),
(1, 21, 354, 0, 0),
(1, 21, 355, 0, 0),
(1, 21, 356, 0, 0),
(1, 21, 357, 0, 0),
(1, 21, 358, 0, 0),
(1, 21, 359, 0, 0),
(1, 21, 360, 0, 0),
(1, 21, 361, 0, 0),
(1, 21, 362, 0, 0),
(1, 21, 363, 0, 0),
(1, 21, 364, 0, 0),
(1, 21, 365, 0, 0),
(1, 21, 366, 0, 0),
(1, 21, 367, 0, 0),
(1, 21, 368, 0, 0),
(1, 21, 369, 0, 0),
(1, 21, 370, 0, 0),
(1, 21, 371, 0, 0),
(1, 21, 372, 0, 0),
(1, 21, 373, 0, 0),
(1, 21, 374, 0, 0),
(1, 21, 375, 0, 0),
(1, 21, 376, 0, 0),
(1, 21, 377, 0, 0),
(1, 21, 378, 0, 0),
(1, 21, 379, 0, 0),
(1, 21, 380, 0, 0),
(1, 21, 381, 0, 0),
(1, 21, 382, 0, 0),
(1, 21, 383, 0, 0),
(1, 21, 384, 0, 0),
(1, 21, 385, 0, 0),
(1, 21, 386, 0, 0),
(1, 21, 387, 0, 0),
(1, 22, 388, 0, 0),
(1, 22, 389, 0, 0),
(1, 22, 390, 0, 0),
(1, 22, 391, 0, 0),
(1, 22, 392, 0, 0),
(1, 22, 393, 0, 0),
(1, 22, 394, 0, 0),
(1, 22, 395, 0, 0),
(1, 22, 396, 0, 0),
(1, 22, 397, 0, 0),
(1, 22, 398, 0, 0),
(1, 22, 399, 0, 0),
(1, 22, 400, 0, 0),
(1, 22, 401, 0, 0),
(1, 22, 402, 0, 0),
(1, 22, 403, 0, 0),
(1, 22, 404, 0, 0),
(1, 22, 405, 0, 0),
(1, 22, 406, 0, 0),
(1, 22, 407, 0, 0),
(1, 22, 408, 0, 0),
(1, 22, 409, 0, 0),
(1, 22, 410, 0, 0),
(1, 22, 411, 0, 0),
(1, 22, 412, 0, 0),
(1, 22, 413, 0, 0),
(1, 22, 414, 0, 0),
(1, 22, 415, 0, 0),
(1, 22, 416, 0, 0),
(1, 22, 417, 0, 0),
(1, 22, 418, 0, 0),
(1, 22, 419, 0, 0),
(1, 22, 420, 0, 0),
(1, 22, 421, 0, 0),
(1, 22, 422, 0, 0),
(1, 22, 423, 0, 0),
(1, 22, 424, 0, 0),
(1, 22, 425, 0, 0),
(1, 22, 426, 0, 0),
(1, 22, 427, 0, 0),
(1, 22, 428, 0, 0),
(1, 22, 429, 0, 0),
(1, 22, 430, 0, 0),
(1, 22, 431, 0, 0),
(1, 22, 432, 0, 0),
(1, 22, 433, 0, 0),
(1, 22, 434, 0, 0),
(1, 23, 435, 0, 0),
(1, 23, 436, 0, 0),
(1, 23, 437, 0, 0),
(1, 23, 438, 0, 0),
(1, 23, 439, 0, 0),
(1, 23, 440, 0, 0),
(1, 23, 441, 0, 0),
(1, 23, 442, 0, 0),
(1, 23, 443, 0, 0),
(1, 23, 444, 0, 0),
(1, 23, 445, 0, 0),
(1, 23, 446, 0, 0),
(1, 23, 447, 0, 0),
(1, 23, 448, 0, 0),
(1, 23, 449, 0, 0),
(1, 23, 450, 0, 0),
(1, 23, 451, 0, 0),
(1, 23, 452, 0, 0),
(1, 23, 453, 0, 0),
(1, 23, 454, 0, 0),
(1, 23, 455, 0, 0),
(1, 23, 456, 0, 0),
(1, 23, 457, 0, 0),
(1, 23, 458, 0, 0),
(1, 23, 459, 0, 0),
(1, 23, 460, 0, 0),
(1, 23, 461, 0, 0),
(1, 23, 462, 0, 0),
(1, 23, 463, 0, 0),
(1, 23, 464, 0, 0),
(1, 23, 465, 0, 0),
(1, 23, 466, 0, 0),
(1, 23, 467, 0, 0),
(1, 23, 468, 0, 0),
(1, 23, 469, 0, 0),
(1, 23, 470, 0, 0),
(1, 23, 471, 0, 0),
(1, 23, 472, 0, 0),
(1, 23, 473, 0, 0),
(1, 29, 474, 0, 0),
(1, 29, 478, 0, 0),
(1, 29, 479, 0, 0),
(1, 29, 481, 0, 0),
(1, 29, 488, 0, 0),
(1, 29, 489, 0, 0),
(1, 29, 490, 0, 0),
(1, 29, 491, 0, 0),
(1, 29, 493, 0, 0),
(1, 29, 494, 0, 0),
(1, 29, 495, 0, 0),
(1, 29, 496, 0, 0),
(1, 29, 497, 0, 0),
(1, 29, 502, 0, 0),
(1, 29, 503, 0, 0),
(1, 29, 504, 0, 0),
(1, 29, 505, 0, 0),
(1, 29, 513, 0, 0),
(1, 10, 518, 0, 0),
(1, 10, 519, 0, 0),
(1, 10, 520, 0, 0),
(1, 10, 521, 0, 0),
(1, 10, 522, 0, 0),
(1, 10, 523, 0, 0),
(1, 31, 524, 0, 0),
(1, 31, 525, 0, 0),
(1, 31, 526, 0, 0),
(1, 31, 527, 0, 0),
(1, 31, 528, 0, 0),
(1, 31, 529, 0, 0),
(1, 31, 530, 0, 0),
(1, 31, 531, 0, 0),
(1, 31, 532, 0, 0),
(1, 31, 533, 0, 0),
(1, 31, 534, 0, 0),
(1, 31, 535, 0, 0),
(1, 31, 536, 0, 0),
(1, 31, 537, 0, 0),
(1, 31, 538, 0, 0),
(1, 31, 539, 0, 0),
(1, 31, 540, 0, 0),
(1, 31, 541, 0, 0),
(1, 31, 542, 0, 0),
(1, 36, 543, 0, 0),
(1, 36, 544, 0, 0),
(1, 36, 545, 0, 0),
(1, 36, 546, 0, 0),
(1, 36, 547, 0, 0),
(1, 36, 548, 0, 0),
(1, 36, 549, 0, 0),
(1, 36, 550, 0, 0),
(1, 36, 551, 0, 0),
(1, 36, 552, 0, 0),
(1, 36, 553, 0, 0),
(1, 36, 554, 0, 0),
(1, 36, 555, 0, 0),
(1, 36, 556, 0, 0),
(1, 36, 557, 0, 0),
(1, 36, 558, 0, 0),
(1, 29, 559, 0, 0),
(1, 37, 560, 0, 0),
(1, 37, 561, 0, 0),
(1, 37, 562, 0, 0),
(1, 37, 563, 0, 0),
(1, 37, 564, 0, 0),
(1, 37, 565, 0, 0),
(1, 37, 566, 0, 0),
(1, 37, 567, 0, 0),
(1, 37, 568, 0, 0),
(1, 37, 569, 0, 0),
(1, 37, 570, 0, 0),
(1, 37, 571, 0, 0),
(1, 37, 572, 0, 0),
(1, 37, 573, 0, 0),
(1, 37, 574, 0, 0),
(1, 37, 575, 0, 0),
(1, 37, 576, 0, 0),
(1, 37, 577, 0, 0),
(1, 37, 578, 0, 0),
(1, 39, 579, 0, 0),
(1, 39, 580, 0, 0),
(1, 39, 581, 0, 0),
(1, 39, 582, 0, 0),
(1, 39, 583, 0, 0),
(1, 39, 584, 0, 0),
(1, 39, 585, 0, 0),
(1, 39, 586, 0, 0),
(1, 39, 587, 0, 0),
(1, 39, 588, 0, 0),
(1, 39, 589, 0, 0),
(1, 39, 590, 0, 0),
(1, 39, 591, 0, 0),
(1, 39, 592, 0, 0),
(1, 39, 593, 0, 0),
(1, 39, 594, 0, 0),
(1, 39, 595, 0, 0),
(1, 39, 596, 0, 0),
(1, 42, 597, 0, 0),
(1, 42, 598, 0, 0),
(1, 42, 599, 0, 0),
(1, 42, 600, 0, 0),
(1, 42, 601, 0, 0),
(1, 43, 602, 0, 0),
(1, 43, 603, 0, 0),
(1, 43, 604, 0, 0),
(1, 43, 605, 0, 0),
(1, 43, 606, 0, 0),
(1, 43, 607, 0, 0),
(1, 43, 608, 0, 0),
(1, 44, 609, 0, 0),
(1, 44, 610, 0, 0),
(1, 44, 611, 0, 0),
(1, 44, 612, 0, 0),
(1, 44, 613, 0, 0),
(1, 44, 614, 0, 0),
(1, 44, 615, 0, 0),
(1, 44, 616, 0, 0),
(1, 44, 617, 0, 0),
(1, 44, 618, 0, 0),
(1, 45, 619, 0, 0),
(1, 45, 620, 0, 0),
(1, 45, 621, 0, 0),
(1, 45, 622, 0, 0),
(1, 45, 623, 0, 0),
(1, 45, 624, 0, 0),
(1, 45, 625, 0, 0),
(1, 45, 626, 0, 0),
(1, 45, 627, 0, 0),
(1, 45, 628, 0, 0),
(1, 45, 629, 0, 0),
(1, 45, 630, 0, 0),
(1, 45, 631, 0, 0),
(1, 45, 632, 0, 0),
(1, 45, 633, 0, 0),
(1, 46, 634, 0, 0),
(1, 46, 635, 0, 0),
(1, 46, 636, 0, 0),
(1, 46, 637, 0, 0),
(1, 46, 638, 0, 0),
(1, 46, 639, 0, 0),
(1, 46, 640, 0, 0),
(1, 46, 641, 0, 0),
(1, 46, 642, 0, 0),
(1, 46, 643, 0, 0),
(1, 46, 644, 0, 0),
(1, 46, 645, 0, 0),
(1, 46, 646, 0, 0),
(1, 46, 647, 0, 0),
(1, 46, 648, 0, 0),
(1, 46, 649, 0, 0),
(1, 46, 650, 0, 0),
(1, 2, 651, 0, 0),
(1, 29, 652, 0, 0),
(1, 23, 653, 0, 0),
(1, 23, 654, 0, 0),
(1, 23, 655, 0, 0),
(1, 23, 656, 0, 0),
(1, 23, 657, 0, 0),
(1, 23, 658, 0, 0),
(1, 23, 659, 0, 0),
(1, 23, 660, 0, 0),
(1, 23, 661, 0, 0),
(1, 22, 662, 0, 0),
(1, 22, 663, 0, 0),
(1, 22, 664, 0, 0),
(1, 22, 665, 0, 0),
(1, 22, 666, 0, 0),
(1, 22, 667, 0, 0),
(1, 22, 668, 0, 0),
(1, 22, 669, 0, 0),
(1, 22, 670, 0, 0),
(1, 21, 671, 0, 0),
(1, 21, 672, 0, 0),
(1, 21, 673, 0, 0),
(1, 21, 674, 0, 0),
(1, 21, 675, 0, 0),
(1, 21, 676, 0, 0),
(1, 21, 677, 0, 0),
(1, 21, 678, 0, 0),
(1, 21, 679, 0, 0),
(1, 20, 680, 0, 0),
(1, 20, 681, 0, 0),
(1, 20, 682, 0, 0),
(1, 20, 683, 0, 0),
(1, 20, 684, 0, 0),
(1, 20, 685, 0, 0),
(1, 20, 686, 0, 0),
(1, 20, 687, 0, 0),
(1, 20, 688, 0, 0),
(1, 29, 689, 0, 0),
(1, 45, 690, 0, 0),
(1, 43, 691, 0, 0),
(1, 29, 692, 0, 0),
(1, 29, 693, 0, 0),
(1, 29, 694, 0, 0),
(1, 23, 695, 0, 0),
(1, 22, 696, 0, 0),
(1, 21, 697, 0, 0),
(1, 20, 698, 0, 0),
(1, 29, 699, 0, 0),
(1, 6, 700, 0, 0),
(1, 4, 701, 0, 0),
(1, 2, 702, 0, 0),
(1, 29, 703, 0, 0),
(1, 23, 704, 0, 0),
(1, 23, 705, 0, 0),
(1, 21, 706, 0, 0),
(1, 21, 707, 0, 0),
(1, 18, 708, 0, 0),
(1, 7, 709, 0, 0),
(1, 43, 710, 0, 0),
(1, 43, 711, 0, 0),
(1, 23, 712, 0, 0),
(1, 20, 713, 0, 0),
(1, 21, 714, 0, 0),
(1, 22, 715, 0, 0),
(1, 29, 716, 0, 0),
(1, 2, 717, 0, 0),
(1, 13, 718, 0, 0),
(1, 29, 719, 0, 0),
(1, 13, 720, 0, 0),
(1, 29, 721, 0, 0),
(1, 29, 722, 0, 0),
(1, 39, 724, 0, 0),
(1, 50, 725, 0, 0),
(1, 50, 726, 0, 0),
(1, 50, 727, 0, 0),
(1, 50, 728, 0, 0),
(1, 51, 729, 0, 0),
(1, 51, 730, 0, 0),
(1, 51, 731, 0, 0),
(1, 51, 732, 0, 0),
(1, 39, 734, 0, 0),
(1, 50, 740, 0, 0),
(1, 50, 742, 0, 0),
(1, 50, 744, 0, 0),
(1, 50, 746, 0, 0),
(1, 39, 750, 0, 0),
(1, 51, 754, 0, 0),
(1, 51, 758, 0, 0),
(1, 51, 760, 0, 0),
(1, 51, 762, 0, 0),
(1, 51, 766, 0, 0),
(1, 51, 768, 0, 0),
(1, 51, 770, 0, 0),
(1, 51, 772, 0, 0),
(1, 50, 774, 0, 0),
(1, 50, 780, 0, 0),
(1, 51, 782, 0, 0),
(1, 50, 784, 0, 0),
(1, 39, 788, 0, 0),
(1, 51, 790, 0, 0),
(1, 51, 792, 0, 0),
(1, 50, 794, 0, 0),
(1, 50, 796, 0, 0),
(1, 50, 798, 0, 0),
(1, 50, 800, 0, 0),
(3, 6, 1, 0, 0),
(3, 6, 2, 0, 0),
(3, 6, 3, 0, 0),
(3, 6, 4, 0, 0),
(3, 6, 5, 0, 0),
(3, 6, 6, 0, 0),
(3, 6, 7, 0, 0),
(3, 6, 8, 0, 0),
(3, 6, 9, 0, 0),
(3, 6, 10, 0, 0),
(3, 6, 11, 0, 0),
(3, 6, 12, 0, 0),
(3, 6, 13, 0, 0),
(3, 6, 14, 0, 0),
(3, 6, 15, 0, 0),
(3, 6, 16, 0, 0),
(3, 6, 17, 0, 0),
(3, 6, 18, 0, 0),
(3, 6, 19, 0, 0),
(3, 6, 20, 0, 0),
(3, 6, 21, 0, 0),
(3, 6, 22, 0, 0),
(3, 6, 23, 0, 0),
(3, 6, 24, 0, 0),
(3, 6, 25, 0, 0),
(3, 6, 26, 0, 0),
(3, 6, 27, 0, 0),
(3, 6, 28, 0, 0),
(3, 6, 29, 0, 0),
(3, 6, 30, 0, 0),
(3, 6, 31, 0, 0),
(3, 6, 32, 0, 0),
(3, 6, 33, 0, 0),
(3, 6, 34, 0, 0),
(3, 6, 35, 0, 0),
(3, 6, 36, 0, 0),
(3, 7, 37, 0, 0),
(3, 7, 38, 0, 0),
(3, 7, 39, 0, 0),
(3, 7, 40, 0, 0),
(3, 7, 41, 0, 0),
(3, 7, 42, 0, 0),
(3, 7, 43, 0, 0),
(3, 7, 44, 0, 0),
(3, 7, 45, 0, 0),
(3, 7, 46, 0, 0),
(3, 7, 47, 0, 0),
(3, 7, 48, 0, 0),
(3, 7, 49, 0, 0),
(3, 7, 50, 0, 0),
(3, 7, 51, 0, 0),
(3, 7, 52, 0, 0),
(3, 7, 53, 0, 0),
(3, 7, 54, 0, 0),
(3, 7, 55, 0, 0),
(3, 7, 56, 0, 0),
(3, 7, 57, 0, 0),
(3, 7, 58, 0, 0),
(3, 7, 59, 0, 0),
(3, 7, 60, 0, 0),
(3, 7, 61, 0, 0),
(3, 7, 62, 0, 0),
(3, 7, 63, 0, 0),
(3, 7, 64, 0, 0),
(3, 7, 65, 0, 0),
(3, 4, 66, 0, 0),
(3, 4, 67, 0, 0),
(3, 4, 68, 0, 0),
(3, 4, 69, 0, 0),
(3, 4, 70, 0, 0),
(3, 4, 71, 0, 0),
(3, 4, 72, 0, 0),
(3, 4, 73, 0, 0),
(3, 4, 74, 0, 0),
(3, 4, 75, 0, 0),
(3, 4, 76, 0, 0),
(3, 4, 77, 0, 0),
(3, 4, 78, 0, 0),
(3, 4, 79, 0, 0),
(3, 4, 80, 0, 0),
(3, 4, 81, 0, 0),
(3, 4, 82, 0, 0),
(3, 4, 83, 0, 0),
(3, 4, 84, 0, 0),
(3, 4, 85, 0, 0),
(3, 4, 86, 0, 0),
(3, 4, 87, 0, 0),
(3, 4, 88, 0, 0),
(3, 4, 89, 0, 0),
(3, 4, 90, 0, 0),
(3, 4, 91, 0, 0),
(3, 4, 92, 0, 0),
(3, 4, 93, 0, 0),
(3, 4, 94, 0, 0),
(3, 4, 95, 0, 0),
(3, 4, 96, 0, 0),
(3, 4, 97, 0, 0),
(3, 4, 98, 0, 0),
(3, 4, 99, 0, 0),
(3, 4, 100, 0, 0),
(3, 4, 101, 0, 0),
(3, 4, 102, 0, 0),
(3, 4, 103, 0, 0),
(3, 4, 104, 0, 0),
(3, 4, 105, 0, 0),
(3, 4, 106, 0, 0),
(3, 4, 107, 0, 0),
(3, 4, 108, 0, 0),
(3, 4, 109, 0, 0),
(3, 2, 110, 0, 0),
(3, 2, 111, 0, 0),
(3, 2, 112, 0, 0),
(3, 2, 113, 0, 0),
(3, 2, 114, 0, 0),
(3, 2, 115, 0, 0),
(3, 2, 116, 0, 0),
(3, 2, 117, 0, 0),
(3, 2, 118, 0, 0),
(3, 2, 119, 0, 0),
(3, 2, 120, 0, 0),
(3, 2, 121, 0, 0),
(3, 2, 122, 0, 0),
(3, 2, 123, 0, 0),
(3, 2, 124, 0, 0),
(3, 2, 125, 0, 0),
(3, 26, 126, 0, 0),
(3, 26, 127, 0, 0),
(3, 26, 128, 0, 0),
(3, 26, 129, 0, 0),
(3, 26, 130, 0, 0),
(3, 26, 131, 0, 0),
(3, 26, 132, 0, 0),
(3, 26, 133, 0, 0),
(3, 26, 134, 0, 0),
(3, 26, 135, 0, 0),
(3, 26, 136, 0, 0),
(3, 26, 137, 0, 0),
(3, 26, 138, 0, 0),
(3, 26, 139, 0, 0),
(3, 26, 140, 0, 0),
(3, 26, 141, 0, 0),
(3, 26, 142, 0, 0),
(3, 26, 143, 0, 0),
(3, 26, 144, 0, 0),
(3, 26, 145, 0, 0),
(3, 26, 146, 0, 0),
(3, 26, 147, 0, 0),
(3, 26, 148, 0, 0),
(3, 26, 149, 0, 0),
(3, 26, 150, 0, 0),
(3, 4, 151, 0, 0),
(3, 6, 152, 0, 0),
(3, 7, 153, 0, 0),
(3, 26, 154, 0, 0),
(3, 13, 155, 0, 0),
(3, 13, 156, 0, 0),
(3, 13, 157, 0, 0),
(3, 13, 158, 0, 0),
(3, 13, 159, 0, 0),
(3, 13, 160, 0, 0),
(3, 13, 161, 0, 0),
(3, 13, 162, 0, 0),
(3, 13, 163, 0, 0),
(3, 13, 164, 0, 0),
(3, 13, 165, 0, 0),
(3, 13, 166, 0, 0),
(3, 13, 167, 0, 0),
(3, 13, 168, 0, 0),
(3, 13, 169, 0, 0),
(3, 13, 170, 0, 0),
(3, 13, 171, 0, 0),
(3, 13, 172, 0, 0),
(3, 14, 173, 0, 0),
(3, 14, 174, 0, 0),
(3, 14, 175, 0, 0),
(3, 14, 176, 0, 0),
(3, 14, 177, 0, 0),
(3, 14, 178, 0, 0),
(3, 14, 179, 0, 0),
(3, 14, 180, 0, 0),
(3, 14, 181, 0, 0),
(3, 14, 182, 0, 0),
(3, 14, 183, 0, 0),
(3, 14, 184, 0, 0),
(3, 14, 185, 0, 0),
(3, 14, 186, 0, 0),
(3, 14, 187, 0, 0),
(3, 14, 188, 0, 0),
(3, 14, 189, 0, 0),
(3, 14, 190, 0, 0),
(3, 14, 191, 0, 0),
(3, 14, 192, 0, 0),
(3, 14, 193, 0, 0),
(3, 14, 194, 0, 0),
(3, 14, 195, 0, 0),
(3, 14, 196, 0, 0),
(3, 14, 197, 0, 0),
(3, 14, 198, 0, 0),
(3, 14, 199, 0, 0),
(3, 14, 200, 0, 0),
(3, 14, 201, 0, 0),
(3, 14, 202, 0, 0),
(3, 14, 203, 0, 0),
(3, 8, 204, 0, 0),
(3, 8, 205, 0, 0),
(3, 8, 206, 0, 0),
(3, 8, 207, 0, 0),
(3, 8, 208, 0, 0),
(3, 8, 209, 0, 0),
(3, 8, 210, 0, 0),
(3, 8, 211, 0, 0),
(3, 8, 212, 0, 0),
(3, 8, 213, 0, 0),
(3, 8, 214, 0, 0),
(3, 8, 215, 0, 0),
(3, 8, 216, 0, 0),
(3, 8, 217, 0, 0),
(3, 8, 218, 0, 0),
(3, 10, 219, 0, 0),
(3, 10, 220, 0, 0),
(3, 10, 221, 0, 0),
(3, 10, 222, 0, 0),
(3, 10, 223, 0, 0),
(3, 10, 224, 0, 0),
(3, 10, 225, 0, 0),
(3, 10, 226, 0, 0),
(3, 10, 227, 0, 0),
(3, 10, 228, 0, 0),
(3, 10, 229, 0, 0),
(3, 10, 230, 0, 0),
(3, 9, 231, 0, 0),
(3, 9, 232, 0, 0),
(3, 9, 233, 0, 0),
(3, 9, 234, 0, 0),
(3, 9, 235, 0, 0),
(3, 9, 236, 0, 0),
(3, 9, 237, 0, 0),
(3, 9, 238, 0, 0),
(3, 9, 239, 0, 0),
(3, 9, 240, 0, 0),
(3, 9, 241, 0, 0),
(3, 9, 242, 0, 0),
(3, 9, 243, 0, 0),
(3, 9, 244, 0, 0),
(3, 9, 245, 0, 0),
(3, 9, 246, 0, 0),
(3, 9, 247, 0, 0),
(3, 9, 248, 0, 0),
(3, 9, 249, 0, 0),
(3, 9, 250, 0, 0),
(3, 9, 251, 0, 0),
(3, 9, 252, 0, 0),
(3, 9, 253, 0, 0),
(3, 9, 254, 0, 0),
(3, 16, 255, 0, 0),
(3, 16, 256, 0, 0),
(3, 16, 257, 0, 0),
(3, 16, 258, 0, 0),
(3, 16, 259, 0, 0),
(3, 16, 260, 0, 0),
(3, 16, 261, 0, 0),
(3, 16, 262, 0, 0),
(3, 16, 263, 0, 0),
(3, 16, 264, 0, 0),
(3, 16, 265, 0, 0),
(3, 16, 266, 0, 0),
(3, 16, 267, 0, 0),
(3, 16, 268, 0, 0),
(3, 16, 269, 0, 0),
(3, 16, 270, 0, 0),
(3, 16, 271, 0, 0),
(3, 16, 272, 0, 0),
(3, 16, 273, 0, 0),
(3, 16, 274, 0, 0),
(3, 16, 275, 0, 0),
(3, 16, 276, 0, 0),
(3, 16, 277, 0, 0),
(3, 15, 278, 0, 0),
(3, 15, 279, 0, 0),
(3, 15, 280, 0, 0),
(3, 15, 281, 0, 0),
(3, 15, 282, 0, 0),
(3, 15, 283, 0, 0),
(3, 15, 284, 0, 0),
(3, 15, 285, 0, 0),
(3, 15, 286, 0, 0),
(3, 15, 287, 0, 0),
(3, 18, 288, 0, 0),
(3, 18, 289, 0, 0),
(3, 18, 290, 0, 0),
(3, 18, 291, 0, 0),
(3, 18, 292, 0, 0),
(3, 18, 293, 0, 0),
(3, 18, 294, 0, 0),
(3, 18, 295, 0, 0),
(3, 18, 296, 0, 0),
(3, 18, 297, 0, 0),
(3, 18, 298, 0, 0),
(3, 18, 299, 0, 0),
(3, 18, 300, 0, 0),
(3, 18, 301, 0, 0),
(3, 18, 302, 0, 0),
(3, 18, 303, 0, 0),
(3, 18, 304, 0, 0),
(3, 19, 305, 0, 0),
(3, 19, 306, 0, 0),
(3, 19, 307, 0, 0),
(3, 19, 308, 0, 0),
(3, 19, 309, 0, 0),
(3, 19, 310, 0, 0),
(3, 19, 311, 0, 0),
(3, 19, 312, 0, 0),
(3, 20, 313, 0, 0),
(3, 20, 314, 0, 0),
(3, 20, 315, 0, 0),
(3, 20, 316, 0, 0),
(3, 20, 317, 0, 0),
(3, 20, 318, 0, 0),
(3, 20, 319, 0, 0),
(3, 20, 320, 0, 0),
(3, 20, 321, 0, 0),
(3, 20, 322, 0, 0),
(3, 20, 323, 0, 0),
(3, 20, 324, 0, 0),
(3, 20, 325, 0, 0),
(3, 20, 326, 0, 0),
(3, 20, 327, 0, 0),
(3, 20, 328, 0, 0),
(3, 20, 329, 0, 0),
(3, 20, 330, 0, 0),
(3, 20, 331, 0, 0),
(3, 20, 332, 0, 0),
(3, 20, 333, 0, 0),
(3, 20, 334, 0, 0),
(3, 20, 335, 0, 0),
(3, 20, 336, 0, 0),
(3, 20, 337, 0, 0),
(3, 20, 338, 0, 0),
(3, 20, 339, 0, 0),
(3, 20, 340, 0, 0),
(3, 20, 341, 0, 0),
(3, 20, 342, 0, 0),
(3, 20, 343, 0, 0),
(3, 20, 344, 0, 0),
(3, 20, 345, 0, 0),
(3, 20, 346, 0, 0),
(3, 20, 347, 0, 0),
(3, 20, 348, 0, 0),
(3, 20, 349, 0, 0),
(3, 21, 350, 0, 0),
(3, 21, 351, 0, 0),
(3, 21, 352, 0, 0),
(3, 21, 353, 0, 0),
(3, 21, 354, 0, 0),
(3, 21, 355, 0, 0),
(3, 21, 356, 0, 0),
(3, 21, 357, 0, 0),
(3, 21, 358, 0, 0),
(3, 21, 359, 0, 0),
(3, 21, 360, 0, 0),
(3, 21, 361, 0, 0),
(3, 21, 362, 0, 0),
(3, 21, 363, 0, 0),
(3, 21, 364, 0, 0),
(3, 21, 365, 0, 0),
(3, 21, 366, 0, 0),
(3, 21, 367, 0, 0),
(3, 21, 368, 0, 0),
(3, 21, 369, 0, 0),
(3, 21, 370, 0, 0),
(3, 21, 371, 0, 0),
(3, 21, 372, 0, 0),
(3, 21, 373, 0, 0),
(3, 21, 374, 0, 0),
(3, 21, 375, 0, 0),
(3, 21, 376, 0, 0),
(3, 21, 377, 0, 0),
(3, 21, 378, 0, 0),
(3, 21, 379, 0, 0),
(3, 21, 380, 0, 0),
(3, 21, 381, 0, 0),
(3, 21, 382, 0, 0),
(3, 21, 383, 0, 0),
(3, 21, 384, 0, 0),
(3, 21, 385, 0, 0),
(3, 21, 386, 0, 0),
(3, 21, 387, 0, 0),
(3, 22, 388, 0, 0),
(3, 22, 389, 0, 0),
(3, 22, 390, 0, 0),
(3, 22, 391, 0, 0),
(3, 22, 392, 0, 0),
(3, 22, 393, 0, 0),
(3, 22, 394, 0, 0),
(3, 22, 395, 0, 0),
(3, 22, 396, 0, 0),
(3, 22, 397, 0, 0),
(3, 22, 398, 0, 0),
(3, 22, 399, 0, 0),
(3, 22, 400, 0, 0),
(3, 22, 401, 0, 0),
(3, 22, 402, 0, 0),
(3, 22, 403, 0, 0),
(3, 22, 404, 0, 0),
(3, 22, 405, 0, 0),
(3, 22, 406, 0, 0),
(3, 22, 407, 0, 0),
(3, 22, 408, 0, 0),
(3, 22, 409, 0, 0),
(3, 22, 410, 0, 0),
(3, 22, 411, 0, 0),
(3, 22, 412, 0, 0),
(3, 22, 413, 0, 0),
(3, 22, 414, 0, 0),
(3, 22, 415, 0, 0),
(3, 22, 416, 0, 0),
(3, 22, 417, 0, 0),
(3, 22, 418, 0, 0),
(3, 22, 419, 0, 0),
(3, 22, 420, 0, 0),
(3, 22, 421, 0, 0),
(3, 22, 422, 0, 0),
(3, 22, 423, 0, 0),
(3, 22, 424, 0, 0),
(3, 22, 425, 0, 0),
(3, 22, 426, 0, 0),
(3, 22, 427, 0, 0),
(3, 22, 428, 0, 0),
(3, 22, 429, 0, 0),
(3, 22, 430, 0, 0),
(3, 22, 431, 0, 0),
(3, 22, 432, 0, 0),
(3, 22, 433, 0, 0),
(3, 22, 434, 0, 0),
(3, 23, 435, 0, 0),
(3, 23, 436, 0, 0),
(3, 23, 437, 0, 0),
(3, 23, 438, 0, 0),
(3, 23, 439, 0, 0),
(3, 23, 440, 0, 0),
(3, 23, 441, 0, 0),
(3, 23, 442, 0, 0),
(3, 23, 443, 0, 0),
(3, 23, 444, 0, 0),
(3, 23, 445, 0, 0),
(3, 23, 446, 0, 0),
(3, 23, 447, 0, 0),
(3, 23, 448, 0, 0),
(3, 23, 449, 0, 0),
(3, 23, 450, 0, 0),
(3, 23, 451, 0, 0),
(3, 23, 452, 0, 0),
(3, 23, 453, 0, 0),
(3, 23, 454, 0, 0),
(3, 23, 455, 0, 0),
(3, 23, 456, 0, 0),
(3, 23, 457, 0, 0),
(3, 23, 458, 0, 0),
(3, 23, 459, 0, 0),
(3, 23, 460, 0, 0),
(3, 23, 461, 0, 0),
(3, 23, 462, 0, 0),
(3, 23, 463, 0, 0),
(3, 23, 464, 0, 0),
(3, 23, 465, 0, 0),
(3, 23, 466, 0, 0),
(3, 23, 467, 0, 0),
(3, 23, 468, 0, 0),
(3, 23, 469, 0, 0),
(3, 23, 470, 0, 0),
(3, 23, 471, 0, 0),
(3, 23, 472, 0, 0),
(3, 23, 473, 0, 0),
(3, 29, 474, 0, 0),
(3, 29, 478, 0, 0),
(3, 29, 479, 0, 0),
(3, 29, 481, 0, 0),
(3, 29, 488, 0, 0),
(3, 29, 489, 0, 0),
(3, 29, 490, 0, 0),
(3, 29, 491, 0, 0),
(3, 29, 493, 0, 0),
(3, 29, 494, 0, 0),
(3, 29, 495, 0, 0),
(3, 29, 496, 0, 0),
(3, 29, 497, 0, 0),
(3, 29, 502, 0, 0),
(3, 29, 503, 0, 0),
(3, 29, 504, 0, 0),
(3, 29, 505, 0, 0),
(3, 29, 513, 0, 0),
(3, 10, 518, 0, 0),
(3, 10, 519, 0, 0),
(3, 10, 520, 0, 0),
(3, 10, 521, 0, 0),
(3, 10, 522, 0, 0),
(3, 10, 523, 0, 0),
(3, 31, 524, 0, 0),
(3, 31, 525, 0, 0),
(3, 31, 526, 0, 0),
(3, 31, 527, 0, 0),
(3, 31, 528, 0, 0),
(3, 31, 529, 0, 0),
(3, 31, 530, 0, 0),
(3, 31, 531, 0, 0),
(3, 31, 532, 0, 0),
(3, 31, 533, 0, 0),
(3, 31, 534, 0, 0),
(3, 31, 535, 0, 0),
(3, 31, 536, 0, 0),
(3, 31, 537, 0, 0),
(3, 31, 538, 0, 0),
(3, 31, 539, 0, 0),
(3, 31, 540, 0, 0),
(3, 31, 541, 0, 0),
(3, 31, 542, 0, 0),
(3, 36, 543, 0, 0),
(3, 36, 544, 0, 0),
(3, 36, 545, 0, 0),
(3, 36, 546, 0, 0),
(3, 36, 547, 0, 0),
(3, 36, 548, 0, 0),
(3, 36, 549, 0, 0),
(3, 36, 550, 0, 0),
(3, 36, 551, 0, 0),
(3, 36, 552, 0, 0),
(3, 36, 553, 0, 0),
(3, 36, 554, 0, 0),
(3, 36, 555, 0, 0),
(3, 36, 556, 0, 0),
(3, 36, 557, 0, 0),
(3, 36, 558, 0, 0),
(3, 29, 559, 0, 0),
(3, 37, 560, 0, 0),
(3, 37, 561, 0, 0),
(3, 37, 562, 0, 0),
(3, 37, 563, 0, 0),
(3, 37, 564, 0, 0),
(3, 37, 565, 0, 0),
(3, 37, 566, 0, 0),
(3, 37, 567, 0, 0),
(3, 37, 568, 0, 0),
(3, 37, 569, 0, 0),
(3, 37, 570, 0, 0),
(3, 37, 571, 0, 0),
(3, 37, 572, 0, 0),
(3, 37, 573, 0, 0),
(3, 37, 574, 0, 0),
(3, 37, 575, 0, 0),
(3, 37, 576, 0, 0),
(3, 37, 577, 0, 0),
(3, 37, 578, 0, 0),
(3, 39, 579, 0, 0),
(3, 39, 580, 0, 0),
(3, 39, 581, 0, 0),
(3, 39, 582, 0, 0),
(3, 39, 583, 0, 0),
(3, 39, 584, 0, 0),
(3, 39, 585, 0, 0),
(3, 39, 586, 0, 0),
(3, 39, 587, 0, 0),
(3, 39, 588, 0, 0),
(3, 39, 589, 0, 0),
(3, 39, 590, 0, 0),
(3, 39, 591, 0, 0),
(3, 39, 592, 0, 0),
(3, 39, 593, 0, 0),
(3, 39, 594, 0, 0),
(3, 39, 595, 0, 0),
(3, 39, 596, 0, 0),
(3, 42, 597, 0, 0),
(3, 42, 598, 0, 0),
(3, 42, 599, 0, 0),
(3, 42, 600, 0, 0),
(3, 42, 601, 0, 0),
(3, 43, 602, 0, 0),
(3, 43, 603, 0, 0),
(3, 43, 604, 0, 0),
(3, 43, 605, 0, 0),
(3, 43, 606, 0, 0),
(3, 43, 607, 0, 0),
(3, 43, 608, 0, 0),
(3, 44, 609, 0, 0),
(3, 44, 610, 0, 0),
(3, 44, 611, 0, 0),
(3, 44, 612, 0, 0),
(3, 44, 613, 0, 0),
(3, 44, 614, 0, 0),
(3, 44, 615, 0, 0),
(3, 44, 616, 0, 0),
(3, 44, 617, 0, 0),
(3, 44, 618, 0, 0),
(3, 45, 619, 0, 0),
(3, 45, 620, 0, 0),
(3, 45, 621, 0, 0),
(3, 45, 622, 0, 0),
(3, 45, 623, 0, 0),
(3, 45, 624, 0, 0),
(3, 45, 625, 0, 0),
(3, 45, 626, 0, 0),
(3, 45, 627, 0, 0),
(3, 45, 628, 0, 0),
(3, 45, 629, 0, 0),
(3, 45, 630, 0, 0),
(3, 45, 631, 0, 0),
(3, 45, 632, 0, 0),
(3, 45, 633, 0, 0),
(3, 46, 634, 0, 0),
(3, 46, 635, 0, 0),
(3, 46, 636, 0, 0),
(3, 46, 637, 0, 0),
(3, 46, 638, 0, 0),
(3, 46, 639, 0, 0),
(3, 46, 640, 0, 0),
(3, 46, 641, 0, 0),
(3, 46, 642, 0, 0),
(3, 46, 643, 0, 0),
(3, 46, 644, 0, 0),
(3, 46, 645, 0, 0),
(3, 46, 646, 0, 0),
(3, 46, 647, 0, 0),
(3, 46, 648, 0, 0),
(3, 46, 649, 0, 0),
(3, 46, 650, 0, 0),
(3, 2, 651, 0, 0),
(3, 29, 652, 0, 0),
(3, 23, 653, 0, 0),
(3, 23, 654, 0, 0),
(3, 23, 655, 0, 0),
(3, 23, 656, 0, 0),
(3, 23, 657, 0, 0),
(3, 23, 658, 0, 0),
(3, 23, 659, 0, 0),
(3, 23, 660, 0, 0),
(3, 23, 661, 0, 0),
(3, 22, 662, 0, 0),
(3, 22, 663, 0, 0),
(3, 22, 664, 0, 0),
(3, 22, 665, 0, 0),
(3, 22, 666, 0, 0),
(3, 22, 667, 0, 0),
(3, 22, 668, 0, 0),
(3, 22, 669, 0, 0),
(3, 22, 670, 0, 0),
(3, 21, 671, 0, 0),
(3, 21, 672, 0, 0),
(3, 21, 673, 0, 0),
(3, 21, 674, 0, 0),
(3, 21, 675, 0, 0),
(3, 21, 676, 0, 0),
(3, 21, 677, 0, 0),
(3, 21, 678, 0, 0),
(3, 21, 679, 0, 0),
(3, 20, 680, 0, 0),
(3, 20, 681, 0, 0),
(3, 20, 682, 0, 0),
(3, 20, 683, 0, 0),
(3, 20, 684, 0, 0),
(3, 20, 685, 0, 0),
(3, 20, 686, 0, 0),
(3, 20, 687, 0, 0),
(3, 20, 688, 0, 0),
(3, 29, 689, 0, 0),
(3, 45, 690, 0, 0),
(3, 43, 691, 0, 0),
(3, 29, 692, 0, 0),
(3, 29, 693, 0, 0),
(3, 29, 694, 0, 0),
(3, 23, 695, 0, 0),
(3, 22, 696, 0, 0),
(3, 21, 697, 0, 0),
(3, 20, 698, 0, 0),
(3, 29, 699, 0, 0),
(3, 6, 700, 0, 0),
(3, 4, 701, 0, 0),
(3, 2, 702, 0, 0),
(3, 29, 703, 0, 0),
(3, 23, 704, 0, 0),
(3, 23, 705, 0, 0),
(3, 21, 706, 0, 0),
(3, 21, 707, 0, 0),
(3, 18, 708, 0, 0),
(3, 7, 709, 0, 0),
(3, 43, 710, 0, 0),
(3, 43, 711, 0, 0),
(3, 23, 712, 0, 0),
(3, 20, 713, 0, 0),
(3, 21, 714, 0, 0),
(3, 22, 715, 0, 0),
(3, 29, 716, 0, 0),
(3, 2, 717, 0, 0),
(3, 13, 718, 0, 0),
(3, 29, 719, 0, 0),
(3, 13, 720, 0, 0),
(3, 29, 721, 0, 0),
(3, 29, 722, 0, 0),
(3, 39, 724, 0, 0),
(3, 50, 725, 0, 0),
(3, 50, 726, 0, 0),
(3, 50, 727, 0, 0),
(3, 50, 728, 0, 0),
(3, 51, 729, 0, 0),
(3, 51, 730, 0, 0),
(3, 51, 731, 0, 0),
(3, 51, 732, 0, 0),
(3, 39, 734, 0, 0),
(3, 50, 740, 0, 0),
(3, 50, 742, 0, 0),
(3, 50, 744, 0, 0),
(3, 50, 746, 0, 0),
(3, 39, 750, 0, 0),
(3, 51, 754, 0, 0),
(3, 51, 758, 0, 0),
(3, 51, 760, 0, 0),
(3, 51, 762, 0, 0),
(3, 51, 766, 0, 0),
(3, 51, 768, 0, 0),
(3, 51, 770, 0, 0),
(3, 51, 772, 0, 0),
(3, 50, 774, 0, 0),
(3, 50, 780, 0, 0),
(3, 51, 782, 0, 0),
(3, 50, 784, 0, 0),
(3, 39, 788, 0, 0),
(3, 51, 790, 0, 0),
(3, 51, 792, 0, 0),
(3, 50, 794, 0, 0),
(3, 50, 796, 0, 0),
(3, 50, 798, 0, 0),
(3, 50, 800, 0, 0),
(4, 6, 1, 0, 0),
(4, 6, 2, 0, 0),
(4, 6, 3, 0, 0),
(4, 6, 4, 0, 0),
(4, 6, 5, 0, 0),
(4, 6, 6, 0, 0),
(4, 6, 7, 0, 0),
(4, 6, 8, 0, 0),
(4, 6, 9, 0, 0),
(4, 6, 10, 0, 0),
(4, 6, 11, 0, 0),
(4, 6, 12, 0, 0),
(4, 6, 13, 0, 0),
(4, 6, 14, 0, 0),
(4, 6, 15, 0, 0),
(4, 6, 16, 0, 0),
(4, 6, 17, 0, 0),
(4, 6, 18, 0, 0),
(4, 6, 19, 0, 0),
(4, 6, 20, 0, 0),
(4, 6, 21, 0, 0),
(4, 6, 22, 0, 0),
(4, 6, 23, 0, 0),
(4, 6, 24, 0, 0),
(4, 6, 25, 0, 0),
(4, 6, 26, 0, 0),
(4, 6, 27, 0, 0),
(4, 6, 28, 0, 0),
(4, 6, 29, 0, 0),
(4, 6, 30, 0, 0),
(4, 6, 31, 0, 0),
(4, 6, 32, 0, 0),
(4, 6, 33, 0, 0),
(4, 6, 34, 0, 0),
(4, 6, 35, 0, 0),
(4, 6, 36, 0, 0),
(4, 7, 37, 0, 0),
(4, 7, 38, 0, 0),
(4, 7, 39, 0, 0),
(4, 7, 40, 0, 0),
(4, 7, 41, 0, 0),
(4, 7, 42, 0, 0),
(4, 7, 43, 0, 0),
(4, 7, 44, 0, 0),
(4, 7, 45, 0, 0),
(4, 7, 46, 0, 0),
(4, 7, 47, 0, 0),
(4, 7, 48, 0, 0),
(4, 7, 49, 0, 0),
(4, 7, 50, 0, 0),
(4, 7, 51, 0, 0),
(4, 7, 52, 0, 0),
(4, 7, 53, 0, 0),
(4, 7, 54, 0, 0),
(4, 7, 55, 0, 0),
(4, 7, 56, 0, 0),
(4, 7, 57, 0, 0),
(4, 7, 58, 0, 0),
(4, 7, 59, 0, 0),
(4, 7, 60, 0, 0),
(4, 7, 61, 0, 0),
(4, 7, 62, 0, 0),
(4, 7, 63, 0, 0),
(4, 7, 64, 0, 0),
(4, 7, 65, 0, 0),
(4, 4, 66, 0, 0),
(4, 4, 67, 0, 0),
(4, 4, 68, 0, 0),
(4, 4, 69, 0, 0),
(4, 4, 70, 0, 0),
(4, 4, 71, 0, 0),
(4, 4, 72, 0, 0),
(4, 4, 73, 0, 0),
(4, 4, 74, 0, 0),
(4, 4, 75, 0, 0),
(4, 4, 76, 0, 0),
(4, 4, 77, 0, 0),
(4, 4, 78, 0, 0),
(4, 4, 79, 0, 0),
(4, 4, 80, 0, 0),
(4, 4, 81, 0, 0),
(4, 4, 82, 0, 0),
(4, 4, 83, 0, 0),
(4, 4, 84, 0, 0),
(4, 4, 85, 0, 0),
(4, 4, 86, 0, 0),
(4, 4, 87, 0, 0),
(4, 4, 88, 0, 0),
(4, 4, 89, 0, 0),
(4, 4, 90, 0, 0),
(4, 4, 91, 0, 0),
(4, 4, 92, 0, 0),
(4, 4, 93, 0, 0),
(4, 4, 94, 0, 0),
(4, 4, 95, 0, 0),
(4, 4, 96, 0, 0),
(4, 4, 97, 0, 0),
(4, 4, 98, 0, 0),
(4, 4, 99, 0, 0),
(4, 4, 100, 0, 0),
(4, 4, 101, 0, 0),
(4, 4, 102, 0, 0),
(4, 4, 103, 0, 0),
(4, 4, 104, 0, 0),
(4, 4, 105, 0, 0),
(4, 4, 106, 0, 0),
(4, 4, 107, 0, 0),
(4, 4, 108, 0, 0),
(4, 4, 109, 0, 0),
(4, 2, 110, 0, 0),
(4, 2, 111, 0, 0),
(4, 2, 112, 0, 0),
(4, 2, 113, 0, 0),
(4, 2, 114, 0, 0),
(4, 2, 115, 0, 0),
(4, 2, 116, 0, 0),
(4, 2, 117, 0, 0),
(4, 2, 118, 0, 0),
(4, 2, 119, 0, 0),
(4, 2, 120, 0, 0),
(4, 2, 121, 0, 0),
(4, 2, 122, 0, 0),
(4, 2, 123, 0, 0),
(4, 2, 124, 0, 0),
(4, 2, 125, 0, 0),
(4, 26, 126, 0, 0),
(4, 26, 127, 0, 0),
(4, 26, 128, 0, 0),
(4, 26, 129, 0, 0),
(4, 26, 130, 0, 0),
(4, 26, 131, 0, 0),
(4, 26, 132, 0, 0),
(4, 26, 133, 0, 0),
(4, 26, 134, 0, 0),
(4, 26, 135, 0, 0),
(4, 26, 136, 0, 0),
(4, 26, 137, 0, 0),
(4, 26, 138, 0, 0),
(4, 26, 139, 0, 0),
(4, 26, 140, 0, 0),
(4, 26, 141, 0, 0),
(4, 26, 142, 0, 0),
(4, 26, 143, 0, 0),
(4, 26, 144, 0, 0),
(4, 26, 145, 0, 0),
(4, 26, 146, 0, 0),
(4, 26, 147, 0, 0),
(4, 26, 148, 0, 0),
(4, 26, 149, 0, 0),
(4, 26, 150, 0, 0),
(4, 4, 151, 0, 0),
(4, 6, 152, 0, 0),
(4, 7, 153, 0, 0),
(4, 26, 154, 0, 0),
(4, 13, 155, 0, 0),
(4, 13, 156, 0, 0),
(4, 13, 157, 0, 0),
(4, 13, 158, 0, 0),
(4, 13, 159, 0, 0),
(4, 13, 160, 0, 0),
(4, 13, 161, 0, 0),
(4, 13, 162, 0, 0),
(4, 13, 163, 0, 0),
(4, 13, 164, 0, 0),
(4, 13, 165, 0, 0),
(4, 13, 166, 0, 0),
(4, 13, 167, 0, 0),
(4, 13, 168, 0, 0),
(4, 13, 169, 0, 0),
(4, 13, 170, 0, 0),
(4, 13, 171, 0, 0),
(4, 13, 172, 0, 0),
(4, 14, 173, 0, 0),
(4, 14, 174, 0, 0),
(4, 14, 175, 0, 0),
(4, 14, 176, 0, 0),
(4, 14, 177, 0, 0),
(4, 14, 178, 0, 0),
(4, 14, 179, 0, 0),
(4, 14, 180, 0, 0),
(4, 14, 181, 0, 0),
(4, 14, 182, 0, 0),
(4, 14, 183, 0, 0),
(4, 14, 184, 0, 0),
(4, 14, 185, 0, 0),
(4, 14, 186, 0, 0),
(4, 14, 187, 0, 0),
(4, 14, 188, 0, 0),
(4, 14, 189, 0, 0),
(4, 14, 190, 0, 0),
(4, 14, 191, 0, 0),
(4, 14, 192, 0, 0),
(4, 14, 193, 0, 0),
(4, 14, 194, 0, 0),
(4, 14, 195, 0, 0),
(4, 14, 196, 0, 0),
(4, 14, 197, 0, 0),
(4, 14, 198, 0, 0),
(4, 14, 199, 0, 0),
(4, 14, 200, 0, 0),
(4, 14, 201, 0, 0),
(4, 14, 202, 0, 0),
(4, 14, 203, 0, 0),
(4, 8, 204, 0, 0),
(4, 8, 205, 0, 0),
(4, 8, 206, 0, 0),
(4, 8, 207, 0, 0),
(4, 8, 208, 0, 0),
(4, 8, 209, 0, 0),
(4, 8, 210, 0, 0),
(4, 8, 211, 0, 0),
(4, 8, 212, 0, 0),
(4, 8, 213, 0, 0),
(4, 8, 214, 0, 0),
(4, 8, 215, 0, 0),
(4, 8, 216, 0, 0),
(4, 8, 217, 0, 0),
(4, 8, 218, 0, 0),
(4, 10, 219, 0, 0),
(4, 10, 220, 0, 0),
(4, 10, 221, 0, 0),
(4, 10, 222, 0, 0),
(4, 10, 223, 0, 0),
(4, 10, 224, 0, 0),
(4, 10, 225, 0, 0),
(4, 10, 226, 0, 0),
(4, 10, 227, 0, 0),
(4, 10, 228, 0, 0),
(4, 10, 229, 0, 0),
(4, 10, 230, 0, 0),
(4, 9, 231, 0, 0),
(4, 9, 232, 0, 0),
(4, 9, 233, 0, 0),
(4, 9, 234, 0, 0),
(4, 9, 235, 0, 0),
(4, 9, 236, 0, 0),
(4, 9, 237, 0, 0),
(4, 9, 238, 0, 0),
(4, 9, 239, 0, 0),
(4, 9, 240, 0, 0),
(4, 9, 241, 0, 0),
(4, 9, 242, 0, 0),
(4, 9, 243, 0, 0),
(4, 9, 244, 0, 0),
(4, 9, 245, 0, 0),
(4, 9, 246, 0, 0),
(4, 9, 247, 0, 0),
(4, 9, 248, 0, 0),
(4, 9, 249, 0, 0),
(4, 9, 250, 0, 0),
(4, 9, 251, 0, 0),
(4, 9, 252, 0, 0),
(4, 9, 253, 0, 0),
(4, 9, 254, 0, 0),
(4, 16, 255, 0, 0),
(4, 16, 256, 0, 0),
(4, 16, 257, 0, 0),
(4, 16, 258, 0, 0),
(4, 16, 259, 0, 0),
(4, 16, 260, 0, 0),
(4, 16, 261, 0, 0),
(4, 16, 262, 0, 0),
(4, 16, 263, 0, 0),
(4, 16, 264, 0, 0),
(4, 16, 265, 0, 0),
(4, 16, 266, 0, 0),
(4, 16, 267, 0, 0),
(4, 16, 268, 0, 0),
(4, 16, 269, 0, 0),
(4, 16, 270, 0, 0),
(4, 16, 271, 0, 0),
(4, 16, 272, 0, 0),
(4, 16, 273, 0, 0),
(4, 16, 274, 0, 0),
(4, 16, 275, 0, 0),
(4, 16, 276, 0, 0),
(4, 16, 277, 0, 0),
(4, 15, 278, 0, 0),
(4, 15, 279, 0, 0),
(4, 15, 280, 0, 0),
(4, 15, 281, 0, 0),
(4, 15, 282, 0, 0),
(4, 15, 283, 0, 0),
(4, 15, 284, 0, 0),
(4, 15, 285, 0, 0),
(4, 15, 286, 0, 0),
(4, 15, 287, 0, 0),
(4, 18, 288, 0, 0),
(4, 18, 289, 0, 0),
(4, 18, 290, 0, 0),
(4, 18, 291, 0, 0),
(4, 18, 292, 0, 0),
(4, 18, 293, 0, 0),
(4, 18, 294, 0, 0),
(4, 18, 295, 0, 0),
(4, 18, 296, 0, 0),
(4, 18, 297, 0, 0),
(4, 18, 298, 0, 0),
(4, 18, 299, 0, 0),
(4, 18, 300, 0, 0),
(4, 18, 301, 0, 0),
(4, 18, 302, 0, 0),
(4, 18, 303, 0, 0),
(4, 18, 304, 0, 0),
(4, 19, 305, 0, 0),
(4, 19, 306, 0, 0),
(4, 19, 307, 0, 0),
(4, 19, 308, 0, 0),
(4, 19, 309, 0, 0),
(4, 19, 310, 0, 0),
(4, 19, 311, 0, 0),
(4, 19, 312, 0, 0),
(4, 20, 313, 0, 0),
(4, 20, 314, 0, 0),
(4, 20, 315, 0, 0),
(4, 20, 316, 0, 0),
(4, 20, 317, 0, 0),
(4, 20, 318, 0, 0),
(4, 20, 319, 0, 0),
(4, 20, 320, 0, 0),
(4, 20, 321, 0, 0),
(4, 20, 322, 0, 0),
(4, 20, 323, 0, 0),
(4, 20, 324, 0, 0),
(4, 20, 325, 0, 0),
(4, 20, 326, 0, 0),
(4, 20, 327, 0, 0),
(4, 20, 328, 0, 0),
(4, 20, 329, 0, 0),
(4, 20, 330, 0, 0),
(4, 20, 331, 0, 0),
(4, 20, 332, 0, 0),
(4, 20, 333, 0, 0),
(4, 20, 334, 0, 0),
(4, 20, 335, 0, 0),
(4, 20, 336, 0, 0),
(4, 20, 337, 0, 0),
(4, 20, 338, 0, 0),
(4, 20, 339, 0, 0),
(4, 20, 340, 0, 0),
(4, 20, 341, 0, 0),
(4, 20, 342, 0, 0),
(4, 20, 343, 0, 0),
(4, 20, 344, 0, 0),
(4, 20, 345, 0, 0),
(4, 20, 346, 0, 0),
(4, 20, 347, 0, 0),
(4, 20, 348, 0, 0),
(4, 20, 349, 0, 0),
(4, 21, 350, 0, 0),
(4, 21, 351, 0, 0),
(4, 21, 352, 0, 0),
(4, 21, 353, 0, 0),
(4, 21, 354, 0, 0),
(4, 21, 355, 0, 0),
(4, 21, 356, 0, 0),
(4, 21, 357, 0, 0),
(4, 21, 358, 0, 0),
(4, 21, 359, 0, 0),
(4, 21, 360, 0, 0),
(4, 21, 361, 0, 0),
(4, 21, 362, 0, 0),
(4, 21, 363, 0, 0),
(4, 21, 364, 0, 0),
(4, 21, 365, 0, 0),
(4, 21, 366, 0, 0),
(4, 21, 367, 0, 0),
(4, 21, 368, 0, 0),
(4, 21, 369, 0, 0),
(4, 21, 370, 0, 0),
(4, 21, 371, 0, 0),
(4, 21, 372, 0, 0),
(4, 21, 373, 0, 0),
(4, 21, 374, 0, 0),
(4, 21, 375, 0, 0),
(4, 21, 376, 0, 0),
(4, 21, 377, 0, 0),
(4, 21, 378, 0, 0),
(4, 21, 379, 0, 0),
(4, 21, 380, 0, 0),
(4, 21, 381, 0, 0),
(4, 21, 382, 0, 0),
(4, 21, 383, 0, 0),
(4, 21, 384, 0, 0),
(4, 21, 385, 0, 0),
(4, 21, 386, 0, 0),
(4, 21, 387, 0, 0),
(4, 22, 388, 0, 0),
(4, 22, 389, 0, 0),
(4, 22, 390, 0, 0),
(4, 22, 391, 0, 0),
(4, 22, 392, 0, 0),
(4, 22, 393, 0, 0),
(4, 22, 394, 0, 0),
(4, 22, 395, 0, 0),
(4, 22, 396, 0, 0),
(4, 22, 397, 0, 0),
(4, 22, 398, 0, 0),
(4, 22, 399, 0, 0),
(4, 22, 400, 0, 0),
(4, 22, 401, 0, 0),
(4, 22, 402, 0, 0),
(4, 22, 403, 0, 0),
(4, 22, 404, 0, 0),
(4, 22, 405, 0, 0),
(4, 22, 406, 0, 0),
(4, 22, 407, 0, 0),
(4, 22, 408, 0, 0),
(4, 22, 409, 0, 0),
(4, 22, 410, 0, 0),
(4, 22, 411, 0, 0),
(4, 22, 412, 0, 0),
(4, 22, 413, 0, 0),
(4, 22, 414, 0, 0),
(4, 22, 415, 0, 0),
(4, 22, 416, 0, 0),
(4, 22, 417, 0, 0),
(4, 22, 418, 0, 0),
(4, 22, 419, 0, 0),
(4, 22, 420, 0, 0),
(4, 22, 421, 0, 0),
(4, 22, 422, 0, 0),
(4, 22, 423, 0, 0),
(4, 22, 424, 0, 0),
(4, 22, 425, 0, 0),
(4, 22, 426, 0, 0),
(4, 22, 427, 0, 0),
(4, 22, 428, 0, 0),
(4, 22, 429, 0, 0),
(4, 22, 430, 0, 0),
(4, 22, 431, 0, 0),
(4, 22, 432, 0, 0),
(4, 22, 433, 0, 0),
(4, 22, 434, 0, 0),
(4, 23, 435, 0, 0),
(4, 23, 436, 0, 0),
(4, 23, 437, 0, 0),
(4, 23, 438, 0, 0),
(4, 23, 439, 0, 0),
(4, 23, 440, 0, 0),
(4, 23, 441, 0, 0),
(4, 23, 442, 0, 0),
(4, 23, 443, 0, 0),
(4, 23, 444, 0, 0),
(4, 23, 445, 0, 0),
(4, 23, 446, 0, 0),
(4, 23, 447, 0, 0),
(4, 23, 448, 0, 0),
(4, 23, 449, 0, 0),
(4, 23, 450, 0, 0),
(4, 23, 451, 0, 0),
(4, 23, 452, 0, 0),
(4, 23, 453, 0, 0),
(4, 23, 454, 0, 0),
(4, 23, 455, 0, 0),
(4, 23, 456, 0, 0),
(4, 23, 457, 0, 0),
(4, 23, 458, 0, 0),
(4, 23, 459, 0, 0),
(4, 23, 460, 0, 0),
(4, 23, 461, 0, 0),
(4, 23, 462, 0, 0),
(4, 23, 463, 0, 0),
(4, 23, 464, 0, 0),
(4, 23, 465, 0, 0),
(4, 23, 466, 0, 0),
(4, 23, 467, 0, 0),
(4, 23, 468, 0, 0),
(4, 23, 469, 0, 0),
(4, 23, 470, 0, 0),
(4, 23, 471, 0, 0),
(4, 23, 472, 0, 0),
(4, 23, 473, 0, 0),
(4, 29, 474, 0, 0),
(4, 29, 478, 0, 0),
(4, 29, 479, 0, 0),
(4, 29, 481, 0, 0),
(4, 29, 488, 0, 0),
(4, 29, 489, 0, 0),
(4, 29, 490, 0, 0),
(4, 29, 491, 0, 0),
(4, 29, 493, 0, 0),
(4, 29, 494, 0, 0),
(4, 29, 495, 0, 0),
(4, 29, 496, 0, 0),
(4, 29, 497, 0, 0),
(4, 29, 502, 0, 0),
(4, 29, 503, 0, 0),
(4, 29, 504, 0, 0),
(4, 29, 505, 0, 0),
(4, 29, 513, 0, 0),
(4, 10, 518, 0, 0),
(4, 10, 519, 0, 0),
(4, 10, 520, 0, 0),
(4, 10, 521, 0, 0),
(4, 10, 522, 0, 0),
(4, 10, 523, 0, 0),
(4, 31, 524, 0, 0),
(4, 31, 525, 0, 0),
(4, 31, 526, 0, 0),
(4, 31, 527, 0, 0),
(4, 31, 528, 0, 0),
(4, 31, 529, 0, 0),
(4, 31, 530, 0, 0),
(4, 31, 531, 0, 0),
(4, 31, 532, 0, 0),
(4, 31, 533, 0, 0),
(4, 31, 534, 0, 0),
(4, 31, 535, 0, 0),
(4, 31, 536, 0, 0),
(4, 31, 537, 0, 0),
(4, 31, 538, 0, 0),
(4, 31, 539, 0, 0),
(4, 31, 540, 0, 0),
(4, 31, 541, 0, 0),
(4, 31, 542, 0, 0),
(4, 36, 543, 0, 0),
(4, 36, 544, 0, 0),
(4, 36, 545, 0, 0),
(4, 36, 546, 0, 0),
(4, 36, 547, 0, 0),
(4, 36, 548, 0, 0),
(4, 36, 549, 0, 0),
(4, 36, 550, 0, 0),
(4, 36, 551, 0, 0),
(4, 36, 552, 0, 0),
(4, 36, 553, 0, 0),
(4, 36, 554, 0, 0),
(4, 36, 555, 0, 0),
(4, 36, 556, 0, 0),
(4, 36, 557, 0, 0),
(4, 36, 558, 0, 0),
(4, 29, 559, 0, 0),
(4, 37, 560, 0, 0),
(4, 37, 561, 0, 0),
(4, 37, 562, 0, 0),
(4, 37, 563, 0, 0),
(4, 37, 564, 0, 0),
(4, 37, 565, 0, 0),
(4, 37, 566, 0, 0),
(4, 37, 567, 0, 0),
(4, 37, 568, 0, 0),
(4, 37, 569, 0, 0),
(4, 37, 570, 0, 0),
(4, 37, 571, 0, 0),
(4, 37, 572, 0, 0),
(4, 37, 573, 0, 0),
(4, 37, 574, 0, 0),
(4, 37, 575, 0, 0),
(4, 37, 576, 0, 0),
(4, 37, 577, 0, 0),
(4, 37, 578, 0, 0),
(4, 39, 579, 0, 0),
(4, 39, 580, 0, 0),
(4, 39, 581, 0, 0),
(4, 39, 582, 0, 0),
(4, 39, 583, 0, 0),
(4, 39, 584, 0, 0),
(4, 39, 585, 0, 0),
(4, 39, 586, 0, 0),
(4, 39, 587, 0, 0),
(4, 39, 588, 0, 0),
(4, 39, 589, 0, 0),
(4, 39, 590, 0, 0),
(4, 39, 591, 0, 0),
(4, 39, 592, 0, 0),
(4, 39, 593, 0, 0),
(4, 39, 594, 0, 0),
(4, 39, 595, 0, 0),
(4, 39, 596, 0, 0),
(4, 42, 597, 0, 0),
(4, 42, 598, 0, 0),
(4, 42, 599, 0, 0),
(4, 42, 600, 0, 0),
(4, 42, 601, 0, 0),
(4, 43, 602, 0, 0),
(4, 43, 603, 0, 0),
(4, 43, 604, 0, 0),
(4, 43, 605, 0, 0),
(4, 43, 606, 0, 0),
(4, 43, 607, 0, 0),
(4, 43, 608, 0, 0),
(4, 44, 609, 0, 0),
(4, 44, 610, 0, 0),
(4, 44, 611, 0, 0),
(4, 44, 612, 0, 0),
(4, 44, 613, 0, 0),
(4, 44, 614, 0, 0),
(4, 44, 615, 0, 0),
(4, 44, 616, 0, 0),
(4, 44, 617, 0, 0),
(4, 44, 618, 0, 0),
(4, 45, 619, 0, 0),
(4, 45, 620, 0, 0),
(4, 45, 621, 0, 0),
(4, 45, 622, 0, 0),
(4, 45, 623, 0, 0),
(4, 45, 624, 0, 0),
(4, 45, 625, 0, 0),
(4, 45, 626, 0, 0),
(4, 45, 627, 0, 0),
(4, 45, 628, 0, 0),
(4, 45, 629, 0, 0),
(4, 45, 630, 0, 0),
(4, 45, 631, 0, 0),
(4, 45, 632, 0, 0),
(4, 45, 633, 0, 0),
(4, 46, 634, 0, 0),
(4, 46, 635, 0, 0),
(4, 46, 636, 0, 0),
(4, 46, 637, 0, 0),
(4, 46, 638, 0, 0),
(4, 46, 639, 0, 0),
(4, 46, 640, 0, 0),
(4, 46, 641, 0, 0),
(4, 46, 642, 0, 0),
(4, 46, 643, 0, 0),
(4, 46, 644, 0, 0),
(4, 46, 645, 0, 0),
(4, 46, 646, 0, 0),
(4, 46, 647, 0, 0),
(4, 46, 648, 0, 0),
(4, 46, 649, 0, 0),
(4, 46, 650, 0, 0),
(4, 2, 651, 0, 0),
(4, 29, 652, 0, 0),
(4, 23, 653, 0, 0),
(4, 23, 654, 0, 0),
(4, 23, 655, 0, 0),
(4, 23, 656, 0, 0),
(4, 23, 657, 0, 0),
(4, 23, 658, 0, 0),
(4, 23, 659, 0, 0),
(4, 23, 660, 0, 0),
(4, 23, 661, 0, 0),
(4, 22, 662, 0, 0),
(4, 22, 663, 0, 0),
(4, 22, 664, 0, 0),
(4, 22, 665, 0, 0),
(4, 22, 666, 0, 0),
(4, 22, 667, 0, 0),
(4, 22, 668, 0, 0),
(4, 22, 669, 0, 0),
(4, 22, 670, 0, 0),
(4, 21, 671, 0, 0),
(4, 21, 672, 0, 0),
(4, 21, 673, 0, 0),
(4, 21, 674, 0, 0),
(4, 21, 675, 0, 0),
(4, 21, 676, 0, 0),
(4, 21, 677, 0, 0),
(4, 21, 678, 0, 0),
(4, 21, 679, 0, 0),
(4, 20, 680, 0, 0),
(4, 20, 681, 0, 0),
(4, 20, 682, 0, 0),
(4, 20, 683, 0, 0),
(4, 20, 684, 0, 0),
(4, 20, 685, 0, 0),
(4, 20, 686, 0, 0),
(4, 20, 687, 0, 0),
(4, 20, 688, 0, 0),
(4, 29, 689, 0, 0),
(4, 45, 690, 0, 0),
(4, 43, 691, 0, 0),
(4, 29, 692, 0, 0),
(4, 29, 693, 0, 0),
(4, 29, 694, 0, 0),
(4, 23, 695, 0, 0),
(4, 22, 696, 0, 0),
(4, 21, 697, 0, 0),
(4, 20, 698, 0, 0),
(4, 29, 699, 0, 0),
(4, 6, 700, 0, 0),
(4, 4, 701, 0, 0),
(4, 2, 702, 0, 0),
(4, 29, 703, 0, 0),
(4, 23, 704, 0, 0),
(4, 23, 705, 0, 0),
(4, 21, 706, 0, 0),
(4, 21, 707, 0, 0),
(4, 18, 708, 0, 0),
(4, 7, 709, 0, 0),
(4, 43, 710, 0, 0),
(4, 43, 711, 0, 0),
(4, 23, 712, 0, 0),
(4, 20, 713, 0, 0),
(4, 21, 714, 0, 0),
(4, 22, 715, 0, 0),
(4, 29, 716, 0, 0),
(4, 2, 717, 0, 0),
(4, 13, 718, 0, 0),
(4, 29, 719, 0, 0),
(4, 13, 720, 0, 0),
(4, 29, 721, 0, 0),
(4, 29, 722, 0, 0),
(4, 39, 724, 0, 0),
(4, 50, 725, 0, 0),
(4, 50, 726, 0, 0),
(4, 50, 727, 0, 0),
(4, 50, 728, 0, 0),
(4, 51, 729, 0, 0),
(4, 51, 730, 0, 0),
(4, 51, 731, 0, 0),
(4, 51, 732, 0, 0),
(4, 39, 734, 0, 0),
(4, 50, 740, 0, 0),
(4, 50, 742, 0, 0),
(4, 50, 744, 0, 0),
(4, 50, 746, 0, 0),
(4, 39, 750, 0, 0),
(4, 51, 754, 0, 0),
(4, 51, 758, 0, 0),
(4, 51, 760, 0, 0),
(4, 51, 762, 0, 0),
(4, 51, 766, 0, 0),
(4, 51, 768, 0, 0),
(4, 51, 770, 0, 0),
(4, 51, 772, 0, 0),
(4, 50, 774, 0, 0),
(4, 50, 780, 0, 0),
(4, 51, 782, 0, 0),
(4, 50, 784, 0, 0),
(4, 39, 788, 0, 0),
(4, 51, 790, 0, 0),
(4, 51, 792, 0, 0),
(4, 50, 794, 0, 0),
(4, 50, 796, 0, 0),
(4, 50, 798, 0, 0),
(4, 50, 800, 0, 0),
(5, 6, 1, 0, 0),
(5, 6, 2, 0, 0),
(5, 6, 3, 0, 0),
(5, 6, 5, 0, 0),
(5, 6, 7, 0, 0),
(5, 6, 9, 0, 0),
(5, 6, 11, 0, 0),
(5, 6, 14, 0, 0),
(5, 6, 16, 0, 0),
(5, 6, 19, 0, 0),
(5, 6, 20, 0, 0),
(5, 6, 21, 0, 1),
(5, 6, 22, 0, 1),
(5, 6, 23, 0, 0),
(5, 6, 36, 0, 0),
(5, 4, 66, 0, 0),
(5, 4, 67, 0, 0),
(5, 4, 68, 0, 0),
(5, 4, 69, 0, 0),
(5, 4, 70, 0, 0),
(5, 4, 71, 0, 0),
(5, 4, 72, 0, 0),
(5, 4, 73, 0, 0),
(5, 4, 74, 0, 0),
(5, 4, 75, 0, 0),
(5, 4, 76, 0, 0),
(5, 4, 77, 0, 0),
(5, 4, 78, 0, 0),
(5, 4, 79, 0, 0),
(5, 4, 80, 0, 0),
(5, 4, 81, 0, 0),
(5, 4, 82, 0, 0),
(5, 4, 83, 0, 0),
(5, 4, 84, 0, 0),
(5, 4, 85, 0, 0),
(5, 4, 86, 0, 0),
(5, 4, 87, 0, 0),
(5, 4, 88, 0, 0),
(5, 4, 89, 0, 0),
(5, 4, 90, 0, 1),
(5, 4, 91, 0, 1),
(5, 4, 92, 0, 0),
(5, 4, 93, 0, 0),
(5, 4, 94, 0, 0),
(5, 4, 95, 0, 0),
(5, 4, 108, 0, 0),
(5, 13, 155, 0, 0),
(5, 13, 156, 0, 0),
(5, 13, 157, 0, 0),
(5, 13, 158, 0, 0),
(5, 13, 159, 0, 0),
(5, 13, 160, 0, 0),
(5, 13, 161, 0, 0),
(5, 13, 162, 0, 0),
(5, 13, 163, 0, 0),
(5, 13, 164, 0, 0),
(5, 13, 165, 0, 0),
(5, 13, 166, 0, 1),
(5, 13, 167, 0, 1),
(5, 13, 168, 0, 0),
(5, 13, 169, 0, 0),
(5, 13, 170, 0, 0),
(5, 13, 171, 0, 0),
(5, 14, 173, 0, 0),
(5, 14, 174, 0, 0),
(5, 14, 176, 0, 0),
(5, 14, 177, 0, 0),
(5, 14, 190, 0, 1),
(5, 14, 191, 0, 1),
(5, 14, 192, 0, 0),
(5, 14, 193, 0, 0),
(5, 14, 194, 0, 0),
(5, 14, 196, 0, 0),
(5, 14, 197, 0, 0),
(5, 14, 198, 0, 0),
(5, 14, 200, 0, 0),
(5, 14, 202, 0, 0),
(5, 14, 203, 0, 0),
(5, 8, 204, 0, 0),
(5, 8, 205, 0, 1),
(5, 8, 206, 0, 1),
(5, 8, 207, 0, 0),
(5, 8, 208, 0, 0),
(5, 8, 210, 0, 1),
(5, 8, 211, 0, 1),
(5, 8, 212, 0, 0),
(5, 8, 213, 0, 0),
(5, 8, 214, 0, 0),
(5, 8, 215, 0, 1),
(5, 8, 216, 0, 0),
(5, 8, 217, 0, 0),
(5, 8, 218, 0, 0),
(5, 10, 219, 0, 0),
(5, 10, 220, 0, 0),
(5, 10, 221, 0, 0),
(5, 10, 222, 0, 0),
(5, 10, 223, 0, 0),
(5, 10, 224, 0, 0),
(5, 10, 225, 0, 0),
(5, 10, 226, 0, 0),
(5, 10, 227, 0, 0),
(5, 10, 228, 0, 1),
(5, 10, 229, 0, 0),
(5, 10, 230, 0, 0),
(5, 9, 231, 0, 0),
(5, 9, 232, 0, 0),
(5, 9, 233, 0, 0),
(5, 9, 234, 0, 0),
(5, 9, 235, 0, 0),
(5, 9, 236, 0, 0),
(5, 9, 237, 0, 0),
(5, 9, 238, 0, 0),
(5, 9, 239, 0, 0),
(5, 9, 240, 0, 0),
(5, 9, 241, 0, 0),
(5, 9, 242, 0, 0),
(5, 9, 243, 0, 1),
(5, 9, 244, 0, 1),
(5, 9, 245, 0, 0),
(5, 9, 246, 0, 0),
(5, 9, 247, 0, 0),
(5, 9, 248, 0, 0),
(5, 9, 249, 0, 0),
(5, 9, 250, 0, 0),
(5, 9, 251, 0, 0),
(5, 9, 252, 0, 0),
(5, 9, 253, 0, 0),
(5, 9, 254, 0, 0),
(5, 16, 255, 0, 0),
(5, 16, 256, 0, 0),
(5, 16, 257, 0, 0),
(5, 16, 258, 0, 0),
(5, 16, 259, 0, 0),
(5, 16, 260, 0, 0),
(5, 16, 261, 0, 0),
(5, 16, 262, 0, 0),
(5, 16, 263, 0, 0),
(5, 16, 264, 0, 0),
(5, 16, 265, 0, 0),
(5, 16, 266, 0, 0),
(5, 16, 267, 0, 0),
(5, 16, 268, 0, 0),
(5, 16, 269, 0, 1),
(5, 16, 270, 0, 1),
(5, 16, 271, 0, 0),
(5, 16, 272, 0, 0),
(5, 16, 273, 0, 0),
(5, 16, 274, 0, 0),
(5, 16, 275, 0, 0),
(5, 16, 276, 0, 0),
(5, 16, 277, 0, 0),
(5, 15, 278, 0, 0),
(5, 15, 279, 0, 0),
(5, 15, 280, 0, 0),
(5, 15, 281, 0, 0),
(5, 15, 282, 0, 0),
(5, 15, 283, 0, 0),
(5, 15, 285, 0, 1),
(5, 15, 286, 0, 1),
(5, 15, 287, 0, 0),
(5, 29, 474, 0, 0),
(5, 29, 478, 0, 0),
(5, 29, 479, 0, 0),
(5, 29, 481, 0, 0),
(5, 29, 488, 0, 0),
(5, 29, 489, 0, 0),
(5, 29, 490, 0, 0),
(5, 29, 491, 0, 0),
(5, 29, 493, 0, 0),
(5, 29, 494, 0, 0),
(5, 29, 495, 0, 0),
(5, 29, 496, 0, 0),
(5, 29, 497, 0, 0),
(5, 29, 502, 0, 0),
(5, 29, 503, 0, 0),
(5, 29, 504, 0, 0),
(5, 29, 505, 0, 0),
(5, 10, 518, 0, 0),
(5, 10, 519, 0, 0),
(5, 10, 520, 0, 0),
(5, 10, 521, 0, 0),
(5, 10, 522, 0, 0),
(5, 10, 523, 0, 0),
(5, 31, 524, 0, 0),
(5, 31, 525, 0, 1),
(5, 31, 526, 0, 1),
(5, 31, 527, 0, 0),
(5, 31, 528, 0, 1),
(5, 31, 529, 0, 0),
(5, 31, 530, 0, 0),
(5, 31, 531, 0, 0),
(5, 31, 532, 0, 0),
(5, 31, 533, 0, 0),
(5, 31, 534, 0, 0),
(5, 31, 535, 0, 1),
(5, 31, 536, 0, 1),
(5, 31, 537, 0, 0),
(5, 31, 538, 0, 0),
(5, 31, 539, 0, 0),
(5, 31, 540, 0, 1),
(5, 31, 541, 0, 0),
(5, 31, 542, 0, 0),
(5, 29, 559, 0, 0),
(5, 39, 579, 0, 0),
(5, 39, 580, 0, 0),
(5, 39, 581, 0, 0),
(5, 39, 582, 0, 0),
(5, 39, 583, 0, 0),
(5, 39, 584, 0, 0),
(5, 39, 585, 0, 0),
(5, 39, 589, 0, 0),
(5, 39, 590, 0, 0),
(5, 39, 591, 0, 0),
(5, 39, 593, 0, 1),
(5, 39, 594, 0, 1),
(5, 39, 595, 0, 0),
(5, 39, 596, 0, 0),
(5, 42, 597, 0, 0),
(5, 42, 598, 0, 1),
(5, 42, 599, 0, 1),
(5, 42, 600, 0, 0),
(5, 42, 601, 0, 0),
(5, 43, 602, 0, 0),
(5, 43, 603, 0, 0),
(5, 43, 604, 0, 1),
(5, 43, 605, 0, 1),
(5, 43, 606, 0, 0),
(5, 43, 607, 0, 1),
(5, 43, 608, 0, 0),
(5, 43, 691, 0, 0),
(5, 6, 700, 0, 1),
(5, 4, 701, 0, 1),
(5, 43, 710, 0, 0),
(5, 43, 711, 0, 0),
(5, 13, 718, 0, 0),
(5, 13, 720, 0, 0),
(5, 39, 724, 0, 0),
(5, 50, 725, 0, 0),
(5, 50, 726, 0, 0),
(5, 50, 727, 0, 1),
(5, 50, 728, 0, 1),
(5, 51, 729, 0, 0),
(5, 51, 730, 0, 0),
(5, 51, 731, 0, 0),
(5, 51, 732, 0, 0),
(5, 39, 734, 0, 0),
(5, 50, 740, 0, 0),
(5, 50, 742, 0, 0),
(5, 50, 744, 0, 0),
(5, 50, 746, 0, 0),
(5, 39, 750, 0, 0),
(5, 51, 754, 0, 0),
(5, 51, 758, 0, 0),
(5, 51, 760, 0, 0),
(5, 51, 762, 0, 0),
(5, 51, 766, 0, 0),
(5, 51, 768, 0, 0),
(5, 51, 770, 0, 0),
(5, 51, 772, 0, 0),
(5, 50, 774, 0, 0),
(5, 50, 780, 0, 0),
(5, 51, 782, 0, 0),
(5, 50, 784, 0, 0),
(5, 39, 788, 0, 0),
(5, 51, 790, 0, 0),
(5, 51, 792, 0, 0),
(5, 50, 794, 0, 0),
(5, 50, 796, 0, 0),
(5, 50, 798, 0, 0),
(5, 50, 800, 0, 0),
(6, 6, 1, 0, 0),
(6, 6, 2, 0, 0),
(6, 6, 3, 0, 0),
(6, 6, 5, 0, 0),
(6, 6, 7, 0, 0),
(6, 6, 9, 0, 0),
(6, 6, 11, 0, 0),
(6, 6, 14, 0, 0),
(6, 6, 16, 0, 0),
(6, 6, 19, 0, 0),
(6, 6, 20, 0, 0),
(6, 6, 21, 0, 1),
(6, 6, 22, 0, 1),
(6, 6, 23, 0, 0),
(6, 6, 36, 0, 0),
(6, 4, 66, 0, 0),
(6, 4, 67, 0, 0),
(6, 4, 68, 0, 0),
(6, 4, 69, 0, 0),
(6, 4, 70, 0, 0),
(6, 4, 71, 0, 0),
(6, 4, 72, 0, 0),
(6, 4, 73, 0, 0),
(6, 4, 74, 0, 0),
(6, 4, 75, 0, 0),
(6, 4, 76, 0, 0),
(6, 4, 77, 0, 0),
(6, 4, 78, 0, 0),
(6, 4, 79, 0, 0),
(6, 4, 80, 0, 0),
(6, 4, 81, 0, 0),
(6, 4, 82, 0, 0),
(6, 4, 83, 0, 0),
(6, 4, 84, 0, 0),
(6, 4, 85, 0, 0),
(6, 4, 86, 0, 0),
(6, 4, 87, 0, 0),
(6, 4, 88, 0, 0),
(6, 4, 89, 0, 0),
(6, 4, 90, 0, 1),
(6, 4, 91, 0, 1),
(6, 4, 92, 0, 0),
(6, 4, 93, 0, 0),
(6, 4, 94, 0, 0),
(6, 4, 95, 0, 0),
(6, 4, 108, 0, 0),
(6, 13, 155, 0, 0),
(6, 13, 156, 0, 0),
(6, 13, 157, 0, 0),
(6, 13, 158, 0, 0),
(6, 13, 159, 0, 0),
(6, 13, 160, 0, 0),
(6, 13, 161, 0, 0),
(6, 13, 162, 0, 0),
(6, 13, 163, 0, 0),
(6, 13, 164, 0, 0),
(6, 13, 165, 0, 0),
(6, 13, 166, 0, 1),
(6, 13, 167, 0, 1),
(6, 13, 168, 0, 0),
(6, 13, 169, 0, 0),
(6, 13, 170, 0, 0),
(6, 13, 171, 0, 0),
(6, 14, 173, 0, 0),
(6, 14, 174, 0, 0),
(6, 14, 176, 0, 0),
(6, 14, 177, 0, 0),
(6, 14, 190, 0, 1),
(6, 14, 191, 0, 1),
(6, 14, 192, 0, 0),
(6, 14, 193, 0, 0),
(6, 14, 194, 0, 0),
(6, 14, 196, 0, 0),
(6, 14, 197, 0, 0),
(6, 14, 198, 0, 0),
(6, 14, 200, 0, 0),
(6, 14, 202, 0, 0),
(6, 14, 203, 0, 0),
(6, 8, 204, 0, 0),
(6, 8, 205, 0, 1),
(6, 8, 206, 0, 1),
(6, 8, 207, 0, 0),
(6, 8, 208, 0, 0),
(6, 8, 210, 0, 1),
(6, 8, 211, 0, 1),
(6, 8, 212, 0, 0),
(6, 8, 213, 0, 0),
(6, 8, 214, 0, 0),
(6, 8, 215, 0, 1),
(6, 8, 216, 0, 0),
(6, 8, 217, 0, 0),
(6, 8, 218, 0, 0),
(6, 10, 219, 0, 0),
(6, 10, 220, 0, 0),
(6, 10, 221, 0, 0),
(6, 10, 222, 0, 0),
(6, 10, 223, 0, 0),
(6, 10, 224, 0, 0),
(6, 10, 225, 0, 0),
(6, 10, 226, 0, 0),
(6, 10, 227, 0, 0),
(6, 10, 228, 0, 1),
(6, 10, 229, 0, 0),
(6, 10, 230, 0, 0),
(6, 9, 231, 0, 0),
(6, 9, 232, 0, 0),
(6, 9, 233, 0, 0),
(6, 9, 234, 0, 0),
(6, 9, 235, 0, 0),
(6, 9, 236, 0, 0),
(6, 9, 237, 0, 0),
(6, 9, 238, 0, 0),
(6, 9, 239, 0, 0),
(6, 9, 240, 0, 0),
(6, 9, 241, 0, 0),
(6, 9, 242, 0, 0),
(6, 9, 243, 0, 1),
(6, 9, 244, 0, 1),
(6, 9, 245, 0, 0),
(6, 9, 246, 0, 0),
(6, 9, 247, 0, 0),
(6, 9, 248, 0, 0),
(6, 9, 249, 0, 0),
(6, 9, 250, 0, 0),
(6, 9, 251, 0, 0),
(6, 9, 252, 0, 0),
(6, 9, 253, 0, 0),
(6, 9, 254, 0, 0),
(6, 16, 255, 0, 0),
(6, 16, 256, 0, 0),
(6, 16, 257, 0, 0),
(6, 16, 258, 0, 0),
(6, 16, 259, 0, 0),
(6, 16, 260, 0, 0),
(6, 16, 261, 0, 0),
(6, 16, 262, 0, 0),
(6, 16, 263, 0, 0),
(6, 16, 264, 0, 0),
(6, 16, 265, 0, 0),
(6, 16, 266, 0, 0),
(6, 16, 267, 0, 0),
(6, 16, 268, 0, 0),
(6, 16, 269, 0, 1),
(6, 16, 270, 0, 1),
(6, 16, 271, 0, 0),
(6, 16, 272, 0, 0),
(6, 16, 273, 0, 0),
(6, 16, 274, 0, 0),
(6, 16, 275, 0, 0),
(6, 16, 276, 0, 0),
(6, 16, 277, 0, 0),
(6, 15, 278, 0, 0),
(6, 15, 279, 0, 0),
(6, 15, 280, 0, 0),
(6, 15, 281, 0, 0),
(6, 15, 282, 0, 0),
(6, 15, 283, 0, 0),
(6, 15, 285, 0, 1),
(6, 15, 286, 0, 1),
(6, 15, 287, 0, 0),
(6, 29, 474, 0, 0),
(6, 29, 478, 0, 0),
(6, 29, 479, 0, 0),
(6, 29, 481, 0, 0),
(6, 29, 488, 0, 0),
(6, 29, 489, 0, 0),
(6, 29, 490, 0, 0),
(6, 29, 491, 0, 0),
(6, 29, 493, 0, 0),
(6, 29, 494, 0, 0),
(6, 29, 495, 0, 0),
(6, 29, 496, 0, 0),
(6, 29, 497, 0, 0),
(6, 29, 502, 0, 0),
(6, 29, 503, 0, 0),
(6, 29, 504, 0, 0),
(6, 29, 505, 0, 0),
(6, 10, 518, 0, 0),
(6, 10, 519, 0, 0),
(6, 10, 520, 0, 0),
(6, 10, 521, 0, 0),
(6, 10, 522, 0, 0),
(6, 10, 523, 0, 0),
(6, 31, 524, 0, 0),
(6, 31, 525, 0, 1),
(6, 31, 526, 0, 1),
(6, 31, 527, 0, 0),
(6, 31, 528, 0, 1),
(6, 31, 529, 0, 0),
(6, 31, 530, 0, 0),
(6, 31, 531, 0, 0),
(6, 31, 532, 0, 0),
(6, 31, 533, 0, 0),
(6, 31, 534, 0, 0),
(6, 31, 535, 0, 1),
(6, 31, 536, 0, 1),
(6, 31, 537, 0, 0),
(6, 31, 538, 0, 0),
(6, 31, 539, 0, 0),
(6, 31, 540, 0, 1),
(6, 31, 541, 0, 0),
(6, 31, 542, 0, 0),
(6, 29, 559, 0, 0),
(6, 39, 579, 0, 0),
(6, 39, 580, 0, 0),
(6, 39, 581, 0, 0),
(6, 39, 582, 0, 0),
(6, 39, 583, 0, 0),
(6, 39, 584, 0, 0),
(6, 39, 585, 0, 0),
(6, 39, 589, 0, 0),
(6, 39, 590, 0, 0),
(6, 39, 591, 0, 0),
(6, 39, 593, 0, 1),
(6, 39, 594, 0, 1),
(6, 39, 595, 0, 0),
(6, 39, 596, 0, 0),
(6, 42, 597, 0, 0),
(6, 42, 598, 0, 1),
(6, 42, 599, 0, 1),
(6, 42, 600, 0, 0),
(6, 42, 601, 0, 0),
(6, 43, 602, 0, 0),
(6, 43, 603, 0, 0),
(6, 43, 604, 0, 1),
(6, 43, 605, 0, 1),
(6, 43, 606, 0, 0),
(6, 43, 607, 0, 1),
(6, 43, 608, 0, 0),
(6, 43, 691, 0, 0),
(6, 6, 700, 0, 1),
(6, 4, 701, 0, 1),
(6, 43, 710, 0, 0),
(6, 43, 711, 0, 0),
(6, 13, 718, 0, 0),
(6, 13, 720, 0, 0),
(6, 39, 724, 0, 0),
(6, 50, 725, 0, 0),
(6, 50, 726, 0, 0),
(6, 50, 727, 0, 1),
(6, 50, 728, 0, 1),
(6, 51, 729, 0, 0),
(6, 51, 730, 0, 0),
(6, 51, 731, 0, 0),
(6, 51, 732, 0, 0),
(6, 39, 734, 0, 0),
(6, 50, 740, 0, 0),
(6, 50, 742, 0, 0),
(6, 50, 744, 0, 0),
(6, 50, 746, 0, 0),
(6, 39, 750, 0, 0),
(6, 51, 754, 0, 0),
(6, 51, 758, 0, 0),
(6, 51, 760, 0, 0),
(6, 51, 762, 0, 0),
(6, 51, 766, 0, 0),
(6, 51, 768, 0, 0),
(6, 51, 770, 0, 0),
(6, 51, 772, 0, 0),
(6, 50, 774, 0, 0),
(6, 50, 780, 0, 0),
(6, 51, 782, 0, 0),
(6, 50, 784, 0, 0),
(6, 39, 788, 0, 0),
(6, 51, 790, 0, 0),
(6, 51, 792, 0, 0),
(6, 50, 794, 0, 0),
(6, 50, 796, 0, 0),
(6, 50, 798, 0, 0),
(6, 50, 800, 0, 0),
(7, 6, 1, 0, 0),
(7, 6, 2, 0, 0),
(7, 6, 3, 0, 0),
(7, 6, 5, 0, 0),
(7, 6, 7, 0, 0),
(7, 6, 9, 0, 0),
(7, 6, 11, 0, 0),
(7, 6, 14, 0, 0),
(7, 6, 16, 0, 0),
(7, 6, 19, 0, 0),
(7, 6, 20, 0, 0),
(7, 6, 21, 0, 1),
(7, 6, 22, 0, 1),
(7, 6, 23, 0, 0),
(7, 6, 36, 0, 0),
(7, 4, 66, 0, 0),
(7, 4, 67, 0, 0),
(7, 4, 68, 0, 0),
(7, 4, 69, 0, 0),
(7, 4, 70, 0, 0),
(7, 4, 71, 0, 0),
(7, 4, 72, 0, 0),
(7, 4, 73, 0, 0),
(7, 4, 74, 0, 0),
(7, 4, 75, 0, 0),
(7, 4, 76, 0, 0),
(7, 4, 77, 0, 0),
(7, 4, 78, 0, 0),
(7, 4, 79, 0, 0),
(7, 4, 80, 0, 0),
(7, 4, 81, 0, 0),
(7, 4, 82, 0, 0),
(7, 4, 83, 0, 0),
(7, 4, 84, 0, 0),
(7, 4, 85, 0, 0),
(7, 4, 86, 0, 0),
(7, 4, 87, 0, 0),
(7, 4, 88, 0, 0),
(7, 4, 89, 0, 0),
(7, 4, 90, 0, 1),
(7, 4, 91, 0, 1),
(7, 4, 92, 0, 0),
(7, 4, 93, 0, 0),
(7, 4, 94, 0, 0),
(7, 4, 95, 0, 0),
(7, 4, 108, 0, 0),
(7, 13, 155, 0, 0),
(7, 13, 156, 0, 0),
(7, 13, 157, 0, 0),
(7, 13, 158, 0, 0),
(7, 13, 159, 0, 0),
(7, 13, 160, 0, 0),
(7, 13, 161, 0, 0),
(7, 13, 162, 0, 0),
(7, 13, 163, 0, 0),
(7, 13, 164, 0, 0),
(7, 13, 165, 0, 0),
(7, 13, 166, 0, 1),
(7, 13, 167, 0, 1),
(7, 13, 168, 0, 0),
(7, 13, 169, 0, 0),
(7, 13, 170, 0, 0),
(7, 13, 171, 0, 0),
(7, 14, 173, 0, 0),
(7, 14, 174, 0, 0),
(7, 14, 176, 0, 0),
(7, 14, 177, 0, 0),
(7, 14, 190, 0, 1),
(7, 14, 191, 0, 1),
(7, 14, 192, 0, 0),
(7, 14, 193, 0, 0),
(7, 14, 194, 0, 0),
(7, 14, 196, 0, 0),
(7, 14, 197, 0, 0),
(7, 14, 198, 0, 0),
(7, 14, 200, 0, 0),
(7, 14, 202, 0, 0),
(7, 14, 203, 0, 0),
(7, 8, 204, 0, 0),
(7, 8, 205, 0, 1),
(7, 8, 206, 0, 1),
(7, 8, 207, 0, 0),
(7, 8, 208, 0, 0),
(7, 8, 210, 0, 1),
(7, 8, 211, 0, 1),
(7, 8, 212, 0, 0),
(7, 8, 213, 0, 0),
(7, 8, 214, 0, 0),
(7, 8, 215, 0, 1),
(7, 8, 216, 0, 0),
(7, 8, 217, 0, 0),
(7, 8, 218, 0, 0),
(7, 10, 219, 0, 0),
(7, 10, 220, 0, 0),
(7, 10, 221, 0, 0),
(7, 10, 222, 0, 0),
(7, 10, 223, 0, 0),
(7, 10, 224, 0, 0),
(7, 10, 225, 0, 0),
(7, 10, 226, 0, 0),
(7, 10, 227, 0, 0),
(7, 10, 228, 0, 1),
(7, 10, 229, 0, 0),
(7, 10, 230, 0, 0),
(7, 9, 231, 0, 0),
(7, 9, 232, 0, 0),
(7, 9, 233, 0, 0),
(7, 9, 234, 0, 0),
(7, 9, 235, 0, 0),
(7, 9, 236, 0, 0);
INSERT INTO `vtiger_profile2field` (`profileid`, `tabid`, `fieldid`, `visible`, `readonly`) VALUES
(7, 9, 237, 0, 0),
(7, 9, 238, 0, 0),
(7, 9, 239, 0, 0),
(7, 9, 240, 0, 0),
(7, 9, 241, 0, 0),
(7, 9, 242, 0, 0),
(7, 9, 243, 0, 1),
(7, 9, 244, 0, 1),
(7, 9, 245, 0, 0),
(7, 9, 246, 0, 0),
(7, 9, 247, 0, 0),
(7, 9, 248, 0, 0),
(7, 9, 249, 0, 0),
(7, 9, 250, 0, 0),
(7, 9, 251, 0, 0),
(7, 9, 252, 0, 0),
(7, 9, 253, 0, 0),
(7, 9, 254, 0, 0),
(7, 16, 255, 0, 0),
(7, 16, 256, 0, 0),
(7, 16, 257, 0, 0),
(7, 16, 258, 0, 0),
(7, 16, 259, 0, 0),
(7, 16, 260, 0, 0),
(7, 16, 261, 0, 0),
(7, 16, 262, 0, 0),
(7, 16, 263, 0, 0),
(7, 16, 264, 0, 0),
(7, 16, 265, 0, 0),
(7, 16, 266, 0, 0),
(7, 16, 267, 0, 0),
(7, 16, 268, 0, 0),
(7, 16, 269, 0, 1),
(7, 16, 270, 0, 1),
(7, 16, 271, 0, 0),
(7, 16, 272, 0, 0),
(7, 16, 273, 0, 0),
(7, 16, 274, 0, 0),
(7, 16, 275, 0, 0),
(7, 16, 276, 0, 0),
(7, 16, 277, 0, 0),
(7, 15, 278, 0, 0),
(7, 15, 279, 0, 0),
(7, 15, 280, 0, 0),
(7, 15, 281, 0, 0),
(7, 15, 282, 0, 0),
(7, 15, 283, 0, 0),
(7, 15, 285, 0, 1),
(7, 15, 286, 0, 1),
(7, 15, 287, 0, 0),
(7, 29, 474, 0, 0),
(7, 29, 478, 0, 0),
(7, 29, 479, 0, 0),
(7, 29, 481, 0, 0),
(7, 29, 488, 0, 0),
(7, 29, 489, 0, 0),
(7, 29, 490, 0, 0),
(7, 29, 491, 0, 0),
(7, 29, 493, 0, 0),
(7, 29, 494, 0, 0),
(7, 29, 495, 0, 0),
(7, 29, 496, 0, 0),
(7, 29, 497, 0, 0),
(7, 29, 502, 0, 0),
(7, 29, 503, 0, 0),
(7, 29, 504, 0, 0),
(7, 29, 505, 0, 0),
(7, 10, 518, 0, 0),
(7, 10, 519, 0, 0),
(7, 10, 520, 0, 0),
(7, 10, 521, 0, 0),
(7, 10, 522, 0, 0),
(7, 10, 523, 0, 0),
(7, 31, 524, 0, 0),
(7, 31, 525, 0, 1),
(7, 31, 526, 0, 1),
(7, 31, 527, 0, 0),
(7, 31, 528, 0, 1),
(7, 31, 529, 0, 0),
(7, 31, 530, 0, 0),
(7, 31, 531, 0, 0),
(7, 31, 532, 0, 0),
(7, 31, 533, 0, 0),
(7, 31, 534, 0, 0),
(7, 31, 535, 0, 1),
(7, 31, 536, 0, 1),
(7, 31, 537, 0, 0),
(7, 31, 538, 0, 0),
(7, 31, 539, 0, 0),
(7, 31, 540, 0, 1),
(7, 31, 541, 0, 0),
(7, 31, 542, 0, 0),
(7, 29, 559, 0, 0),
(7, 39, 579, 0, 0),
(7, 39, 580, 0, 0),
(7, 39, 581, 0, 0),
(7, 39, 582, 0, 0),
(7, 39, 583, 0, 0),
(7, 39, 584, 0, 0),
(7, 39, 585, 0, 0),
(7, 39, 589, 0, 0),
(7, 39, 590, 0, 0),
(7, 39, 591, 0, 0),
(7, 39, 593, 0, 1),
(7, 39, 594, 0, 1),
(7, 39, 595, 0, 0),
(7, 39, 596, 0, 0),
(7, 42, 597, 0, 0),
(7, 42, 598, 0, 1),
(7, 42, 599, 0, 1),
(7, 42, 600, 0, 0),
(7, 42, 601, 0, 0),
(7, 43, 602, 0, 0),
(7, 43, 603, 0, 0),
(7, 43, 604, 0, 1),
(7, 43, 605, 0, 1),
(7, 43, 606, 0, 0),
(7, 43, 607, 0, 1),
(7, 43, 608, 0, 0),
(7, 43, 691, 0, 0),
(7, 6, 700, 0, 1),
(7, 4, 701, 0, 1),
(7, 43, 710, 0, 0),
(7, 43, 711, 0, 0),
(7, 13, 718, 0, 0),
(7, 13, 720, 0, 0),
(7, 39, 724, 0, 0),
(7, 50, 725, 0, 0),
(7, 50, 726, 0, 0),
(7, 50, 727, 0, 1),
(7, 50, 728, 0, 1),
(7, 51, 729, 0, 0),
(7, 51, 730, 0, 0),
(7, 51, 731, 0, 0),
(7, 51, 732, 0, 0),
(7, 39, 734, 0, 0),
(7, 50, 740, 0, 0),
(7, 50, 742, 0, 0),
(7, 50, 744, 0, 0),
(7, 50, 746, 0, 0),
(7, 39, 750, 0, 0),
(7, 51, 754, 0, 0),
(7, 51, 758, 0, 0),
(7, 51, 760, 0, 0),
(7, 51, 762, 0, 0),
(7, 51, 766, 0, 0),
(7, 51, 768, 0, 0),
(7, 51, 770, 0, 0),
(7, 51, 772, 0, 0),
(7, 50, 774, 0, 0),
(7, 50, 780, 0, 0),
(7, 51, 782, 0, 0),
(7, 50, 784, 0, 0),
(7, 39, 788, 0, 0),
(7, 51, 790, 0, 0),
(7, 51, 792, 0, 0),
(7, 50, 794, 0, 0),
(7, 50, 796, 0, 0),
(7, 50, 798, 0, 0),
(7, 50, 800, 0, 0),
(8, 6, 1, 0, 0),
(8, 6, 2, 0, 0),
(8, 6, 3, 0, 0),
(8, 6, 5, 0, 0),
(8, 6, 7, 0, 0),
(8, 6, 9, 0, 0),
(8, 6, 11, 0, 0),
(8, 6, 14, 0, 0),
(8, 6, 16, 0, 0),
(8, 6, 19, 0, 0),
(8, 6, 20, 0, 0),
(8, 6, 21, 0, 1),
(8, 6, 22, 0, 1),
(8, 6, 23, 0, 0),
(8, 6, 36, 0, 0),
(8, 4, 66, 0, 0),
(8, 4, 67, 0, 0),
(8, 4, 68, 0, 0),
(8, 4, 69, 0, 0),
(8, 4, 70, 0, 0),
(8, 4, 71, 0, 0),
(8, 4, 72, 0, 0),
(8, 4, 73, 0, 0),
(8, 4, 74, 0, 0),
(8, 4, 75, 0, 0),
(8, 4, 76, 0, 0),
(8, 4, 77, 0, 0),
(8, 4, 78, 0, 0),
(8, 4, 79, 0, 0),
(8, 4, 80, 0, 0),
(8, 4, 81, 0, 0),
(8, 4, 82, 0, 0),
(8, 4, 83, 0, 0),
(8, 4, 84, 0, 0),
(8, 4, 85, 0, 0),
(8, 4, 86, 0, 0),
(8, 4, 87, 0, 0),
(8, 4, 88, 0, 0),
(8, 4, 89, 0, 0),
(8, 4, 90, 0, 1),
(8, 4, 91, 0, 1),
(8, 4, 92, 0, 0),
(8, 4, 93, 0, 0),
(8, 4, 94, 0, 0),
(8, 4, 95, 0, 0),
(8, 4, 108, 0, 0),
(8, 13, 155, 0, 0),
(8, 13, 156, 0, 0),
(8, 13, 157, 0, 0),
(8, 13, 158, 0, 0),
(8, 13, 159, 0, 0),
(8, 13, 160, 0, 0),
(8, 13, 161, 0, 0),
(8, 13, 162, 0, 0),
(8, 13, 163, 0, 0),
(8, 13, 164, 0, 0),
(8, 13, 165, 0, 0),
(8, 13, 166, 0, 1),
(8, 13, 167, 0, 1),
(8, 13, 168, 0, 0),
(8, 13, 169, 0, 0),
(8, 13, 170, 0, 0),
(8, 13, 171, 0, 0),
(8, 14, 173, 0, 0),
(8, 14, 174, 0, 0),
(8, 14, 176, 0, 0),
(8, 14, 177, 0, 0),
(8, 14, 190, 0, 1),
(8, 14, 191, 0, 1),
(8, 14, 192, 0, 0),
(8, 14, 193, 0, 0),
(8, 14, 194, 0, 0),
(8, 14, 196, 0, 0),
(8, 14, 197, 0, 0),
(8, 14, 198, 0, 0),
(8, 14, 200, 0, 0),
(8, 14, 202, 0, 0),
(8, 14, 203, 0, 0),
(8, 8, 204, 0, 0),
(8, 8, 205, 0, 1),
(8, 8, 206, 0, 1),
(8, 8, 207, 0, 0),
(8, 8, 208, 0, 0),
(8, 8, 210, 0, 1),
(8, 8, 211, 0, 1),
(8, 8, 212, 0, 0),
(8, 8, 213, 0, 0),
(8, 8, 214, 0, 0),
(8, 8, 215, 0, 1),
(8, 8, 216, 0, 0),
(8, 8, 217, 0, 0),
(8, 8, 218, 0, 0),
(8, 10, 219, 0, 0),
(8, 10, 220, 0, 0),
(8, 10, 221, 0, 0),
(8, 10, 222, 0, 0),
(8, 10, 223, 0, 0),
(8, 10, 224, 0, 0),
(8, 10, 225, 0, 0),
(8, 10, 226, 0, 0),
(8, 10, 227, 0, 0),
(8, 10, 228, 0, 1),
(8, 10, 229, 0, 0),
(8, 10, 230, 0, 0),
(8, 9, 231, 0, 0),
(8, 9, 232, 0, 0),
(8, 9, 233, 0, 0),
(8, 9, 234, 0, 0),
(8, 9, 235, 0, 0),
(8, 9, 236, 0, 0),
(8, 9, 237, 0, 0),
(8, 9, 238, 0, 0),
(8, 9, 239, 0, 0),
(8, 9, 240, 0, 0),
(8, 9, 241, 0, 0),
(8, 9, 242, 0, 0),
(8, 9, 243, 0, 1),
(8, 9, 244, 0, 1),
(8, 9, 245, 0, 0),
(8, 9, 246, 0, 0),
(8, 9, 247, 0, 0),
(8, 9, 248, 0, 0),
(8, 9, 249, 0, 0),
(8, 9, 250, 0, 0),
(8, 9, 251, 0, 0),
(8, 9, 252, 0, 0),
(8, 9, 253, 0, 0),
(8, 9, 254, 0, 0),
(8, 16, 255, 0, 0),
(8, 16, 256, 0, 0),
(8, 16, 257, 0, 0),
(8, 16, 258, 0, 0),
(8, 16, 259, 0, 0),
(8, 16, 260, 0, 0),
(8, 16, 261, 0, 0),
(8, 16, 262, 0, 0),
(8, 16, 263, 0, 0),
(8, 16, 264, 0, 0),
(8, 16, 265, 0, 0),
(8, 16, 266, 0, 0),
(8, 16, 267, 0, 0),
(8, 16, 268, 0, 0),
(8, 16, 269, 0, 1),
(8, 16, 270, 0, 1),
(8, 16, 271, 0, 0),
(8, 16, 272, 0, 0),
(8, 16, 273, 0, 0),
(8, 16, 274, 0, 0),
(8, 16, 275, 0, 0),
(8, 16, 276, 0, 0),
(8, 16, 277, 0, 0),
(8, 15, 278, 0, 0),
(8, 15, 279, 0, 0),
(8, 15, 280, 0, 0),
(8, 15, 281, 0, 0),
(8, 15, 282, 0, 0),
(8, 15, 283, 0, 0),
(8, 15, 285, 0, 1),
(8, 15, 286, 0, 1),
(8, 15, 287, 0, 0),
(8, 29, 474, 0, 0),
(8, 29, 478, 0, 0),
(8, 29, 479, 0, 0),
(8, 29, 481, 0, 0),
(8, 29, 488, 0, 0),
(8, 29, 489, 0, 0),
(8, 29, 490, 0, 0),
(8, 29, 491, 0, 0),
(8, 29, 493, 0, 0),
(8, 29, 494, 0, 0),
(8, 29, 495, 0, 0),
(8, 29, 496, 0, 0),
(8, 29, 497, 0, 0),
(8, 29, 502, 0, 0),
(8, 29, 503, 0, 0),
(8, 29, 504, 0, 0),
(8, 29, 505, 0, 0),
(8, 10, 518, 0, 0),
(8, 10, 519, 0, 0),
(8, 10, 520, 0, 0),
(8, 10, 521, 0, 0),
(8, 10, 522, 0, 0),
(8, 10, 523, 0, 0),
(8, 31, 524, 0, 0),
(8, 31, 525, 0, 1),
(8, 31, 526, 0, 1),
(8, 31, 527, 0, 0),
(8, 31, 528, 0, 1),
(8, 31, 529, 0, 0),
(8, 31, 530, 0, 0),
(8, 31, 531, 0, 0),
(8, 31, 532, 0, 0),
(8, 31, 533, 0, 0),
(8, 31, 534, 0, 0),
(8, 31, 535, 0, 1),
(8, 31, 536, 0, 1),
(8, 31, 537, 0, 0),
(8, 31, 538, 0, 0),
(8, 31, 539, 0, 0),
(8, 31, 540, 0, 1),
(8, 31, 541, 0, 0),
(8, 31, 542, 0, 0),
(8, 29, 559, 0, 0),
(8, 39, 579, 0, 0),
(8, 39, 580, 0, 0),
(8, 39, 581, 0, 0),
(8, 39, 582, 0, 0),
(8, 39, 583, 0, 0),
(8, 39, 584, 0, 0),
(8, 39, 585, 0, 0),
(8, 39, 589, 0, 0),
(8, 39, 590, 0, 0),
(8, 39, 591, 0, 0),
(8, 39, 593, 0, 1),
(8, 39, 594, 0, 1),
(8, 39, 595, 0, 0),
(8, 39, 596, 0, 0),
(8, 42, 597, 0, 0),
(8, 42, 598, 0, 1),
(8, 42, 599, 0, 1),
(8, 42, 600, 0, 0),
(8, 42, 601, 0, 0),
(8, 43, 602, 0, 0),
(8, 43, 603, 0, 0),
(8, 43, 604, 0, 1),
(8, 43, 605, 0, 1),
(8, 43, 606, 0, 0),
(8, 43, 607, 0, 1),
(8, 43, 608, 0, 0),
(8, 43, 691, 0, 0),
(8, 6, 700, 0, 1),
(8, 4, 701, 0, 1),
(8, 43, 710, 0, 0),
(8, 43, 711, 0, 0),
(8, 13, 718, 0, 0),
(8, 13, 720, 0, 0),
(8, 39, 724, 0, 0),
(8, 50, 725, 0, 0),
(8, 50, 726, 0, 0),
(8, 50, 727, 0, 1),
(8, 50, 728, 0, 1),
(8, 51, 729, 0, 0),
(8, 51, 730, 0, 0),
(8, 51, 731, 0, 0),
(8, 51, 732, 0, 0),
(8, 39, 734, 0, 0),
(8, 50, 740, 0, 0),
(8, 50, 742, 0, 0),
(8, 50, 744, 0, 0),
(8, 50, 746, 0, 0),
(8, 39, 750, 0, 0),
(8, 51, 754, 0, 0),
(8, 51, 758, 0, 0),
(8, 51, 760, 0, 0),
(8, 51, 762, 0, 0),
(8, 51, 766, 0, 0),
(8, 51, 768, 0, 0),
(8, 51, 770, 0, 0),
(8, 51, 772, 0, 0),
(8, 50, 774, 0, 0),
(8, 50, 780, 0, 0),
(8, 51, 782, 0, 0),
(8, 50, 784, 0, 0),
(8, 39, 788, 0, 0),
(8, 51, 790, 0, 0),
(8, 51, 792, 0, 0),
(8, 50, 794, 0, 0),
(8, 50, 796, 0, 0),
(8, 50, 798, 0, 0),
(8, 50, 800, 0, 0),
(9, 6, 1, 0, 0),
(9, 6, 2, 0, 0),
(9, 6, 3, 0, 0),
(9, 6, 5, 0, 0),
(9, 6, 7, 0, 0),
(9, 6, 9, 0, 0),
(9, 6, 11, 0, 0),
(9, 6, 14, 0, 0),
(9, 6, 16, 0, 0),
(9, 6, 19, 0, 0),
(9, 6, 20, 0, 0),
(9, 6, 21, 0, 1),
(9, 6, 22, 0, 1),
(9, 6, 23, 0, 0),
(9, 6, 36, 0, 0),
(9, 4, 66, 0, 0),
(9, 4, 67, 0, 0),
(9, 4, 68, 0, 0),
(9, 4, 69, 0, 0),
(9, 4, 70, 0, 0),
(9, 4, 71, 0, 0),
(9, 4, 72, 0, 0),
(9, 4, 73, 0, 0),
(9, 4, 74, 0, 0),
(9, 4, 75, 0, 0),
(9, 4, 76, 0, 0),
(9, 4, 77, 0, 0),
(9, 4, 78, 0, 0),
(9, 4, 79, 0, 0),
(9, 4, 80, 0, 0),
(9, 4, 81, 0, 0),
(9, 4, 82, 0, 0),
(9, 4, 83, 0, 0),
(9, 4, 84, 0, 0),
(9, 4, 85, 0, 0),
(9, 4, 86, 0, 0),
(9, 4, 87, 0, 0),
(9, 4, 88, 0, 0),
(9, 4, 89, 0, 0),
(9, 4, 90, 0, 1),
(9, 4, 91, 0, 1),
(9, 4, 92, 0, 0),
(9, 4, 93, 0, 0),
(9, 4, 94, 0, 0),
(9, 4, 95, 0, 0),
(9, 4, 108, 0, 0),
(9, 13, 155, 0, 0),
(9, 13, 156, 0, 0),
(9, 13, 157, 0, 0),
(9, 13, 158, 0, 0),
(9, 13, 159, 0, 0),
(9, 13, 160, 0, 0),
(9, 13, 161, 0, 0),
(9, 13, 162, 0, 0),
(9, 13, 163, 0, 0),
(9, 13, 164, 0, 0),
(9, 13, 165, 0, 0),
(9, 13, 166, 0, 1),
(9, 13, 167, 0, 1),
(9, 13, 168, 0, 0),
(9, 13, 169, 0, 0),
(9, 13, 170, 0, 0),
(9, 13, 171, 0, 0),
(9, 14, 173, 0, 0),
(9, 14, 174, 0, 0),
(9, 14, 176, 0, 0),
(9, 14, 177, 0, 0),
(9, 14, 190, 0, 1),
(9, 14, 191, 0, 1),
(9, 14, 192, 0, 0),
(9, 14, 193, 0, 0),
(9, 14, 194, 0, 0),
(9, 14, 196, 0, 0),
(9, 14, 197, 0, 0),
(9, 14, 198, 0, 0),
(9, 14, 200, 0, 0),
(9, 14, 202, 0, 0),
(9, 14, 203, 0, 0),
(9, 8, 204, 0, 0),
(9, 8, 205, 0, 1),
(9, 8, 206, 0, 1),
(9, 8, 207, 0, 0),
(9, 8, 208, 0, 0),
(9, 8, 210, 0, 1),
(9, 8, 211, 0, 1),
(9, 8, 212, 0, 0),
(9, 8, 213, 0, 0),
(9, 8, 214, 0, 0),
(9, 8, 215, 0, 1),
(9, 8, 216, 0, 0),
(9, 8, 217, 0, 0),
(9, 8, 218, 0, 0),
(9, 10, 219, 0, 0),
(9, 10, 220, 0, 0),
(9, 10, 221, 0, 0),
(9, 10, 222, 0, 0),
(9, 10, 223, 0, 0),
(9, 10, 224, 0, 0),
(9, 10, 225, 0, 0),
(9, 10, 226, 0, 0),
(9, 10, 227, 0, 0),
(9, 10, 228, 0, 1),
(9, 10, 229, 0, 0),
(9, 10, 230, 0, 0),
(9, 9, 231, 0, 0),
(9, 9, 232, 0, 0),
(9, 9, 233, 0, 0),
(9, 9, 234, 0, 0),
(9, 9, 235, 0, 0),
(9, 9, 236, 0, 0),
(9, 9, 237, 0, 0),
(9, 9, 238, 0, 0),
(9, 9, 239, 0, 0),
(9, 9, 240, 0, 0),
(9, 9, 241, 0, 0),
(9, 9, 242, 0, 0),
(9, 9, 243, 0, 1),
(9, 9, 244, 0, 1),
(9, 9, 245, 0, 0),
(9, 9, 246, 0, 0),
(9, 9, 247, 0, 0),
(9, 9, 248, 0, 0),
(9, 9, 249, 0, 0),
(9, 9, 250, 0, 0),
(9, 9, 251, 0, 0),
(9, 9, 252, 0, 0),
(9, 9, 253, 0, 0),
(9, 9, 254, 0, 0),
(9, 16, 255, 0, 0),
(9, 16, 256, 0, 0),
(9, 16, 257, 0, 0),
(9, 16, 258, 0, 0),
(9, 16, 259, 0, 0),
(9, 16, 260, 0, 0),
(9, 16, 261, 0, 0),
(9, 16, 262, 0, 0),
(9, 16, 263, 0, 0),
(9, 16, 264, 0, 0),
(9, 16, 265, 0, 0),
(9, 16, 266, 0, 0),
(9, 16, 267, 0, 0),
(9, 16, 268, 0, 0),
(9, 16, 269, 0, 1),
(9, 16, 270, 0, 1),
(9, 16, 271, 0, 0),
(9, 16, 272, 0, 0),
(9, 16, 273, 0, 0),
(9, 16, 274, 0, 0),
(9, 16, 275, 0, 0),
(9, 16, 276, 0, 0),
(9, 16, 277, 0, 0),
(9, 15, 278, 0, 0),
(9, 15, 279, 0, 0),
(9, 15, 280, 0, 0),
(9, 15, 281, 0, 0),
(9, 15, 282, 0, 0),
(9, 15, 283, 0, 0),
(9, 15, 285, 0, 1),
(9, 15, 286, 0, 1),
(9, 15, 287, 0, 0),
(9, 29, 474, 0, 0),
(9, 29, 478, 0, 0),
(9, 29, 479, 0, 0),
(9, 29, 481, 0, 0),
(9, 29, 488, 0, 0),
(9, 29, 489, 0, 0),
(9, 29, 490, 0, 0),
(9, 29, 491, 0, 0),
(9, 29, 493, 0, 0),
(9, 29, 494, 0, 0),
(9, 29, 495, 0, 0),
(9, 29, 496, 0, 0),
(9, 29, 497, 0, 0),
(9, 29, 502, 0, 0),
(9, 29, 503, 0, 0),
(9, 29, 504, 0, 0),
(9, 29, 505, 0, 0),
(9, 10, 518, 0, 0),
(9, 10, 519, 0, 0),
(9, 10, 520, 0, 0),
(9, 10, 521, 0, 0),
(9, 10, 522, 0, 0),
(9, 10, 523, 0, 0),
(9, 31, 524, 0, 0),
(9, 31, 525, 0, 1),
(9, 31, 526, 0, 1),
(9, 31, 527, 0, 0),
(9, 31, 528, 0, 1),
(9, 31, 529, 0, 0),
(9, 31, 530, 0, 0),
(9, 31, 531, 0, 0),
(9, 31, 532, 0, 0),
(9, 31, 533, 0, 0),
(9, 31, 534, 0, 0),
(9, 31, 535, 0, 1),
(9, 31, 536, 0, 1),
(9, 31, 537, 0, 0),
(9, 31, 538, 0, 0),
(9, 31, 539, 0, 0),
(9, 31, 540, 0, 1),
(9, 31, 541, 0, 0),
(9, 31, 542, 0, 0),
(9, 29, 559, 0, 0),
(9, 39, 579, 0, 0),
(9, 39, 580, 0, 0),
(9, 39, 581, 0, 0),
(9, 39, 582, 0, 0),
(9, 39, 583, 0, 0),
(9, 39, 584, 0, 0),
(9, 39, 585, 0, 0),
(9, 39, 589, 0, 0),
(9, 39, 590, 0, 0),
(9, 39, 591, 0, 0),
(9, 39, 593, 0, 1),
(9, 39, 594, 0, 1),
(9, 39, 595, 0, 0),
(9, 39, 596, 0, 0),
(9, 42, 597, 0, 0),
(9, 42, 598, 0, 1),
(9, 42, 599, 0, 1),
(9, 42, 600, 0, 0),
(9, 42, 601, 0, 0),
(9, 43, 602, 0, 0),
(9, 43, 603, 0, 0),
(9, 43, 604, 0, 1),
(9, 43, 605, 0, 1),
(9, 43, 606, 0, 0),
(9, 43, 607, 0, 1),
(9, 43, 608, 0, 0),
(9, 43, 691, 0, 0),
(9, 6, 700, 0, 1),
(9, 4, 701, 0, 1),
(9, 43, 710, 0, 0),
(9, 43, 711, 0, 0),
(9, 13, 718, 0, 0),
(9, 13, 720, 0, 0),
(9, 39, 724, 0, 0),
(9, 50, 725, 0, 0),
(9, 50, 726, 0, 0),
(9, 50, 727, 0, 1),
(9, 50, 728, 0, 1),
(9, 51, 729, 0, 0),
(9, 51, 730, 0, 0),
(9, 51, 731, 0, 0),
(9, 51, 732, 0, 0),
(9, 39, 734, 0, 0),
(9, 50, 740, 0, 0),
(9, 50, 742, 0, 0),
(9, 50, 744, 0, 0),
(9, 50, 746, 0, 0),
(9, 39, 750, 0, 0),
(9, 51, 754, 0, 0),
(9, 51, 758, 0, 0),
(9, 51, 760, 0, 0),
(9, 51, 762, 0, 0),
(9, 51, 766, 0, 0),
(9, 51, 768, 0, 0),
(9, 51, 770, 0, 0),
(9, 51, 772, 0, 0),
(9, 50, 774, 0, 0),
(9, 50, 780, 0, 0),
(9, 51, 782, 0, 0),
(9, 50, 784, 0, 0),
(9, 39, 788, 0, 0),
(9, 51, 790, 0, 0),
(9, 51, 792, 0, 0),
(9, 50, 794, 0, 0),
(9, 50, 796, 0, 0),
(9, 50, 798, 0, 0),
(9, 50, 800, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2globalpermissions`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2globalpermissions` (
  `profileid` int(19) NOT NULL,
  `globalactionid` int(19) NOT NULL,
  `globalactionpermission` int(19) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`globalactionid`),
  KEY `idx_profile2globalpermissions` (`profileid`,`globalactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2globalpermissions`
--

INSERT INTO `vtiger_profile2globalpermissions` (`profileid`, `globalactionid`, `globalactionpermission`) VALUES
(1, 1, 0),
(1, 2, 0),
(3, 1, 1),
(3, 2, 1),
(4, 1, 1),
(4, 2, 1),
(5, 1, 0),
(5, 2, 0),
(6, 1, 1),
(6, 2, 1),
(7, 1, 0),
(7, 2, 1),
(8, 1, 0),
(8, 2, 1),
(9, 1, 0),
(9, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2standardpermissions`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2standardpermissions` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) NOT NULL,
  `operation` int(10) NOT NULL,
  `permissions` int(1) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`tabid`,`operation`),
  KEY `profile2standardpermissions_profileid_tabid_operation_idx` (`profileid`,`tabid`,`operation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2standardpermissions`
--

INSERT INTO `vtiger_profile2standardpermissions` (`profileid`, `tabid`, `operation`, `permissions`) VALUES
(1, 2, 0, 0),
(1, 2, 1, 0),
(1, 2, 2, 0),
(1, 2, 3, 0),
(1, 2, 4, 0),
(1, 4, 0, 0),
(1, 4, 1, 0),
(1, 4, 2, 0),
(1, 4, 3, 0),
(1, 4, 4, 0),
(1, 6, 0, 0),
(1, 6, 1, 0),
(1, 6, 2, 0),
(1, 6, 3, 0),
(1, 6, 4, 0),
(1, 7, 0, 0),
(1, 7, 1, 0),
(1, 7, 2, 0),
(1, 7, 3, 0),
(1, 7, 4, 0),
(1, 8, 0, 0),
(1, 8, 1, 0),
(1, 8, 2, 0),
(1, 8, 3, 0),
(1, 8, 4, 0),
(1, 9, 0, 0),
(1, 9, 1, 0),
(1, 9, 2, 0),
(1, 9, 3, 0),
(1, 9, 4, 0),
(1, 13, 0, 0),
(1, 13, 1, 0),
(1, 13, 2, 0),
(1, 13, 3, 0),
(1, 13, 4, 0),
(1, 14, 0, 0),
(1, 14, 1, 0),
(1, 14, 2, 0),
(1, 14, 3, 0),
(1, 14, 4, 0),
(1, 15, 0, 0),
(1, 15, 1, 0),
(1, 15, 2, 0),
(1, 15, 3, 0),
(1, 15, 4, 0),
(1, 16, 0, 0),
(1, 16, 1, 0),
(1, 16, 2, 0),
(1, 16, 3, 0),
(1, 16, 4, 0),
(1, 18, 0, 0),
(1, 18, 1, 0),
(1, 18, 2, 0),
(1, 18, 3, 0),
(1, 18, 4, 0),
(1, 19, 0, 0),
(1, 19, 1, 0),
(1, 19, 2, 0),
(1, 19, 3, 0),
(1, 19, 4, 0),
(1, 20, 0, 0),
(1, 20, 1, 0),
(1, 20, 2, 0),
(1, 20, 3, 0),
(1, 20, 4, 0),
(1, 21, 0, 0),
(1, 21, 1, 0),
(1, 21, 2, 0),
(1, 21, 3, 0),
(1, 21, 4, 0),
(1, 22, 0, 0),
(1, 22, 1, 0),
(1, 22, 2, 0),
(1, 22, 3, 0),
(1, 22, 4, 0),
(1, 23, 0, 0),
(1, 23, 1, 0),
(1, 23, 2, 0),
(1, 23, 3, 0),
(1, 23, 4, 0),
(1, 26, 0, 0),
(1, 26, 1, 0),
(1, 26, 2, 0),
(1, 26, 3, 0),
(1, 26, 4, 0),
(1, 31, 0, 0),
(1, 31, 1, 0),
(1, 31, 2, 0),
(1, 31, 3, 0),
(1, 31, 4, 0),
(1, 36, 0, 0),
(1, 36, 1, 0),
(1, 36, 2, 0),
(1, 36, 3, 0),
(1, 36, 4, 0),
(1, 37, 0, 0),
(1, 37, 1, 0),
(1, 37, 2, 0),
(1, 37, 3, 0),
(1, 37, 4, 0),
(1, 39, 0, 0),
(1, 39, 1, 0),
(1, 39, 2, 0),
(1, 39, 3, 0),
(1, 39, 4, 0),
(1, 42, 0, 0),
(1, 42, 1, 0),
(1, 42, 2, 0),
(1, 42, 3, 0),
(1, 42, 4, 0),
(1, 43, 0, 0),
(1, 43, 1, 0),
(1, 43, 2, 0),
(1, 43, 3, 0),
(1, 43, 4, 0),
(1, 44, 0, 0),
(1, 44, 1, 0),
(1, 44, 2, 0),
(1, 44, 3, 0),
(1, 44, 4, 0),
(1, 45, 0, 0),
(1, 45, 1, 0),
(1, 45, 2, 0),
(1, 45, 3, 0),
(1, 45, 4, 0),
(1, 46, 0, 0),
(1, 46, 1, 0),
(1, 46, 2, 0),
(1, 46, 3, 0),
(1, 46, 4, 0),
(1, 50, 0, 0),
(1, 50, 1, 0),
(1, 50, 2, 0),
(1, 50, 3, 0),
(1, 50, 4, 0),
(1, 51, 0, 0),
(1, 51, 1, 0),
(1, 51, 2, 0),
(1, 51, 3, 0),
(1, 51, 4, 0),
(3, 2, 0, 1),
(3, 2, 1, 1),
(3, 2, 2, 1),
(3, 2, 3, 0),
(3, 2, 4, 0),
(3, 4, 0, 0),
(3, 4, 1, 0),
(3, 4, 2, 0),
(3, 4, 3, 0),
(3, 4, 4, 0),
(3, 6, 0, 0),
(3, 6, 1, 0),
(3, 6, 2, 0),
(3, 6, 3, 0),
(3, 6, 4, 0),
(3, 7, 0, 0),
(3, 7, 1, 0),
(3, 7, 2, 0),
(3, 7, 3, 0),
(3, 7, 4, 0),
(3, 8, 0, 0),
(3, 8, 1, 0),
(3, 8, 2, 0),
(3, 8, 3, 0),
(3, 8, 4, 0),
(3, 9, 0, 0),
(3, 9, 1, 0),
(3, 9, 2, 0),
(3, 9, 3, 0),
(3, 9, 4, 0),
(3, 13, 0, 0),
(3, 13, 1, 0),
(3, 13, 2, 0),
(3, 13, 3, 0),
(3, 13, 4, 0),
(3, 14, 0, 0),
(3, 14, 1, 0),
(3, 14, 2, 0),
(3, 14, 3, 0),
(3, 14, 4, 0),
(3, 15, 0, 0),
(3, 15, 1, 0),
(3, 15, 2, 0),
(3, 15, 3, 0),
(3, 15, 4, 0),
(3, 16, 0, 0),
(3, 16, 1, 0),
(3, 16, 2, 0),
(3, 16, 3, 0),
(3, 16, 4, 0),
(3, 18, 0, 0),
(3, 18, 1, 0),
(3, 18, 2, 0),
(3, 18, 3, 0),
(3, 18, 4, 0),
(3, 19, 0, 0),
(3, 19, 1, 0),
(3, 19, 2, 0),
(3, 19, 3, 0),
(3, 19, 4, 0),
(3, 20, 0, 0),
(3, 20, 1, 0),
(3, 20, 2, 0),
(3, 20, 3, 0),
(3, 20, 4, 0),
(3, 21, 0, 0),
(3, 21, 1, 0),
(3, 21, 2, 0),
(3, 21, 3, 0),
(3, 21, 4, 0),
(3, 22, 0, 0),
(3, 22, 1, 0),
(3, 22, 2, 0),
(3, 22, 3, 0),
(3, 22, 4, 0),
(3, 23, 0, 0),
(3, 23, 1, 0),
(3, 23, 2, 0),
(3, 23, 3, 0),
(3, 23, 4, 0),
(3, 26, 0, 0),
(3, 26, 1, 0),
(3, 26, 2, 0),
(3, 26, 3, 0),
(3, 26, 4, 0),
(3, 31, 0, 0),
(3, 31, 1, 0),
(3, 31, 2, 0),
(3, 31, 3, 0),
(3, 31, 4, 0),
(3, 36, 0, 0),
(3, 36, 1, 0),
(3, 36, 2, 0),
(3, 36, 3, 0),
(3, 36, 4, 0),
(3, 37, 0, 0),
(3, 37, 1, 0),
(3, 37, 2, 0),
(3, 37, 3, 0),
(3, 37, 4, 0),
(3, 39, 0, 0),
(3, 39, 1, 0),
(3, 39, 2, 0),
(3, 39, 3, 0),
(3, 39, 4, 0),
(3, 42, 0, 0),
(3, 42, 1, 0),
(3, 42, 2, 0),
(3, 42, 3, 0),
(3, 42, 4, 0),
(3, 43, 0, 0),
(3, 43, 1, 0),
(3, 43, 2, 0),
(3, 43, 3, 0),
(3, 43, 4, 0),
(3, 44, 0, 0),
(3, 44, 1, 0),
(3, 44, 2, 0),
(3, 44, 3, 0),
(3, 44, 4, 0),
(3, 45, 0, 0),
(3, 45, 1, 0),
(3, 45, 2, 0),
(3, 45, 3, 0),
(3, 45, 4, 0),
(3, 46, 0, 0),
(3, 46, 1, 0),
(3, 46, 2, 0),
(3, 46, 3, 0),
(3, 46, 4, 0),
(3, 50, 0, 0),
(3, 50, 1, 0),
(3, 50, 2, 0),
(3, 50, 3, 0),
(3, 50, 4, 0),
(3, 51, 0, 0),
(3, 51, 1, 0),
(3, 51, 2, 0),
(3, 51, 3, 0),
(3, 51, 4, 0),
(4, 2, 0, 1),
(4, 2, 1, 1),
(4, 2, 2, 1),
(4, 2, 3, 0),
(4, 2, 4, 0),
(4, 4, 0, 1),
(4, 4, 1, 1),
(4, 4, 2, 1),
(4, 4, 3, 0),
(4, 4, 4, 0),
(4, 6, 0, 1),
(4, 6, 1, 1),
(4, 6, 2, 1),
(4, 6, 3, 0),
(4, 6, 4, 0),
(4, 7, 0, 1),
(4, 7, 1, 1),
(4, 7, 2, 1),
(4, 7, 3, 0),
(4, 7, 4, 0),
(4, 8, 0, 1),
(4, 8, 1, 1),
(4, 8, 2, 1),
(4, 8, 3, 0),
(4, 8, 4, 0),
(4, 9, 0, 1),
(4, 9, 1, 1),
(4, 9, 2, 1),
(4, 9, 3, 0),
(4, 9, 4, 0),
(4, 13, 0, 1),
(4, 13, 1, 1),
(4, 13, 2, 1),
(4, 13, 3, 0),
(4, 13, 4, 0),
(4, 14, 0, 1),
(4, 14, 1, 1),
(4, 14, 2, 1),
(4, 14, 3, 0),
(4, 14, 4, 0),
(4, 15, 0, 1),
(4, 15, 1, 1),
(4, 15, 2, 1),
(4, 15, 3, 0),
(4, 15, 4, 0),
(4, 16, 0, 1),
(4, 16, 1, 1),
(4, 16, 2, 1),
(4, 16, 3, 0),
(4, 16, 4, 0),
(4, 18, 0, 1),
(4, 18, 1, 1),
(4, 18, 2, 1),
(4, 18, 3, 0),
(4, 18, 4, 0),
(4, 19, 0, 1),
(4, 19, 1, 1),
(4, 19, 2, 1),
(4, 19, 3, 0),
(4, 19, 4, 0),
(4, 20, 0, 1),
(4, 20, 1, 1),
(4, 20, 2, 1),
(4, 20, 3, 0),
(4, 20, 4, 0),
(4, 21, 0, 1),
(4, 21, 1, 1),
(4, 21, 2, 1),
(4, 21, 3, 0),
(4, 21, 4, 0),
(4, 22, 0, 1),
(4, 22, 1, 1),
(4, 22, 2, 1),
(4, 22, 3, 0),
(4, 22, 4, 0),
(4, 23, 0, 1),
(4, 23, 1, 1),
(4, 23, 2, 1),
(4, 23, 3, 0),
(4, 23, 4, 0),
(4, 26, 0, 1),
(4, 26, 1, 1),
(4, 26, 2, 1),
(4, 26, 3, 0),
(4, 26, 4, 0),
(4, 31, 0, 0),
(4, 31, 1, 0),
(4, 31, 2, 0),
(4, 31, 3, 0),
(4, 31, 4, 0),
(4, 36, 0, 0),
(4, 36, 1, 0),
(4, 36, 2, 0),
(4, 36, 3, 0),
(4, 36, 4, 0),
(4, 37, 0, 0),
(4, 37, 1, 0),
(4, 37, 2, 0),
(4, 37, 3, 0),
(4, 37, 4, 0),
(4, 39, 0, 0),
(4, 39, 1, 0),
(4, 39, 2, 0),
(4, 39, 3, 0),
(4, 39, 4, 0),
(4, 42, 0, 0),
(4, 42, 1, 0),
(4, 42, 2, 0),
(4, 42, 3, 0),
(4, 42, 4, 0),
(4, 43, 0, 0),
(4, 43, 1, 0),
(4, 43, 2, 0),
(4, 43, 3, 0),
(4, 43, 4, 0),
(4, 44, 0, 0),
(4, 44, 1, 0),
(4, 44, 2, 0),
(4, 44, 3, 0),
(4, 44, 4, 0),
(4, 45, 0, 0),
(4, 45, 1, 0),
(4, 45, 2, 0),
(4, 45, 3, 0),
(4, 45, 4, 0),
(4, 46, 0, 0),
(4, 46, 1, 0),
(4, 46, 2, 0),
(4, 46, 3, 0),
(4, 46, 4, 0),
(4, 50, 0, 0),
(4, 50, 1, 0),
(4, 50, 2, 0),
(4, 50, 3, 0),
(4, 50, 4, 0),
(4, 51, 0, 0),
(4, 51, 1, 0),
(4, 51, 2, 0),
(4, 51, 3, 0),
(4, 51, 4, 0),
(5, 4, 0, 0),
(5, 4, 1, 0),
(5, 4, 2, 0),
(5, 4, 4, 0),
(5, 6, 0, 0),
(5, 6, 1, 0),
(5, 6, 2, 0),
(5, 6, 4, 0),
(5, 8, 0, 0),
(5, 8, 1, 0),
(5, 8, 2, 0),
(5, 8, 4, 0),
(5, 9, 0, 0),
(5, 9, 1, 0),
(5, 9, 2, 0),
(5, 9, 4, 0),
(5, 13, 0, 0),
(5, 13, 1, 0),
(5, 13, 2, 0),
(5, 13, 4, 0),
(5, 14, 0, 0),
(5, 14, 1, 0),
(5, 14, 2, 0),
(5, 14, 4, 0),
(5, 15, 0, 0),
(5, 15, 1, 0),
(5, 15, 2, 0),
(5, 15, 4, 0),
(5, 16, 0, 0),
(5, 16, 1, 0),
(5, 16, 2, 0),
(5, 16, 4, 0),
(5, 25, 0, 1),
(5, 25, 1, 1),
(5, 25, 2, 1),
(5, 25, 4, 1),
(5, 31, 0, 0),
(5, 31, 1, 0),
(5, 31, 2, 0),
(5, 31, 4, 0),
(5, 39, 0, 0),
(5, 39, 1, 0),
(5, 39, 2, 0),
(5, 39, 4, 0),
(5, 42, 0, 0),
(5, 42, 1, 0),
(5, 42, 2, 0),
(5, 42, 4, 0),
(5, 43, 0, 0),
(5, 43, 1, 0),
(5, 43, 2, 0),
(5, 43, 4, 0),
(5, 50, 0, 0),
(5, 50, 1, 0),
(5, 50, 2, 0),
(5, 50, 4, 0),
(5, 51, 0, 0),
(5, 51, 1, 0),
(5, 51, 2, 0),
(5, 51, 3, 0),
(5, 51, 4, 0),
(6, 4, 0, 0),
(6, 4, 1, 0),
(6, 4, 2, 0),
(6, 4, 4, 0),
(6, 6, 0, 0),
(6, 6, 1, 0),
(6, 6, 2, 0),
(6, 6, 4, 0),
(6, 8, 0, 0),
(6, 8, 1, 0),
(6, 8, 2, 0),
(6, 8, 4, 0),
(6, 9, 0, 0),
(6, 9, 1, 0),
(6, 9, 2, 0),
(6, 9, 4, 0),
(6, 13, 0, 0),
(6, 13, 1, 0),
(6, 13, 2, 0),
(6, 13, 4, 0),
(6, 14, 0, 0),
(6, 14, 1, 0),
(6, 14, 2, 0),
(6, 14, 4, 0),
(6, 15, 0, 0),
(6, 15, 1, 0),
(6, 15, 2, 0),
(6, 15, 4, 0),
(6, 16, 0, 0),
(6, 16, 1, 0),
(6, 16, 2, 0),
(6, 16, 4, 0),
(6, 25, 0, 1),
(6, 25, 1, 1),
(6, 25, 2, 1),
(6, 25, 4, 1),
(6, 31, 0, 0),
(6, 31, 1, 0),
(6, 31, 2, 0),
(6, 31, 4, 0),
(6, 39, 0, 0),
(6, 39, 1, 0),
(6, 39, 2, 0),
(6, 39, 4, 0),
(6, 42, 0, 0),
(6, 42, 1, 0),
(6, 42, 2, 0),
(6, 42, 4, 0),
(6, 43, 0, 0),
(6, 43, 1, 0),
(6, 43, 2, 0),
(6, 43, 4, 0),
(6, 50, 0, 0),
(6, 50, 1, 0),
(6, 50, 2, 0),
(6, 50, 4, 0),
(6, 51, 0, 0),
(6, 51, 1, 0),
(6, 51, 2, 0),
(6, 51, 3, 0),
(6, 51, 4, 0),
(7, 4, 0, 0),
(7, 4, 1, 0),
(7, 4, 2, 0),
(7, 4, 4, 0),
(7, 6, 0, 0),
(7, 6, 1, 0),
(7, 6, 2, 0),
(7, 6, 4, 0),
(7, 8, 0, 0),
(7, 8, 1, 0),
(7, 8, 2, 0),
(7, 8, 4, 0),
(7, 9, 0, 0),
(7, 9, 1, 0),
(7, 9, 2, 0),
(7, 9, 4, 0),
(7, 13, 0, 0),
(7, 13, 1, 0),
(7, 13, 2, 0),
(7, 13, 4, 0),
(7, 14, 0, 0),
(7, 14, 1, 0),
(7, 14, 2, 0),
(7, 14, 4, 0),
(7, 15, 0, 0),
(7, 15, 1, 0),
(7, 15, 2, 0),
(7, 15, 4, 0),
(7, 16, 0, 0),
(7, 16, 1, 0),
(7, 16, 2, 0),
(7, 16, 4, 0),
(7, 25, 0, 1),
(7, 25, 1, 1),
(7, 25, 2, 1),
(7, 25, 4, 1),
(7, 31, 0, 0),
(7, 31, 1, 0),
(7, 31, 2, 0),
(7, 31, 4, 0),
(7, 39, 0, 0),
(7, 39, 1, 0),
(7, 39, 2, 0),
(7, 39, 4, 0),
(7, 42, 0, 0),
(7, 42, 1, 0),
(7, 42, 2, 0),
(7, 42, 4, 0),
(7, 43, 0, 0),
(7, 43, 1, 0),
(7, 43, 2, 0),
(7, 43, 4, 0),
(7, 50, 0, 0),
(7, 50, 1, 0),
(7, 50, 2, 0),
(7, 50, 4, 0),
(7, 51, 0, 0),
(7, 51, 1, 0),
(7, 51, 2, 0),
(7, 51, 3, 0),
(7, 51, 4, 0),
(8, 4, 0, 0),
(8, 4, 1, 0),
(8, 4, 2, 0),
(8, 4, 4, 0),
(8, 6, 0, 0),
(8, 6, 1, 0),
(8, 6, 2, 0),
(8, 6, 4, 0),
(8, 8, 0, 0),
(8, 8, 1, 0),
(8, 8, 2, 0),
(8, 8, 4, 0),
(8, 9, 0, 0),
(8, 9, 1, 0),
(8, 9, 2, 0),
(8, 9, 4, 0),
(8, 13, 0, 0),
(8, 13, 1, 0),
(8, 13, 2, 0),
(8, 13, 4, 0),
(8, 14, 0, 0),
(8, 14, 1, 0),
(8, 14, 2, 0),
(8, 14, 4, 0),
(8, 15, 0, 0),
(8, 15, 1, 0),
(8, 15, 2, 0),
(8, 15, 4, 0),
(8, 16, 0, 0),
(8, 16, 1, 0),
(8, 16, 2, 0),
(8, 16, 4, 0),
(8, 25, 0, 1),
(8, 25, 1, 1),
(8, 25, 2, 1),
(8, 25, 4, 1),
(8, 31, 0, 0),
(8, 31, 1, 0),
(8, 31, 2, 0),
(8, 31, 4, 0),
(8, 39, 0, 0),
(8, 39, 1, 0),
(8, 39, 2, 0),
(8, 39, 4, 0),
(8, 42, 0, 0),
(8, 42, 1, 0),
(8, 42, 2, 0),
(8, 42, 4, 0),
(8, 43, 0, 0),
(8, 43, 1, 0),
(8, 43, 2, 0),
(8, 43, 4, 0),
(8, 50, 0, 0),
(8, 50, 1, 0),
(8, 50, 2, 0),
(8, 50, 4, 0),
(8, 51, 0, 0),
(8, 51, 1, 0),
(8, 51, 2, 0),
(8, 51, 3, 0),
(8, 51, 4, 0),
(9, 4, 0, 1),
(9, 4, 1, 1),
(9, 4, 2, 1),
(9, 4, 4, 1),
(9, 6, 0, 1),
(9, 6, 1, 1),
(9, 6, 2, 1),
(9, 6, 4, 1),
(9, 8, 0, 1),
(9, 8, 1, 1),
(9, 8, 2, 1),
(9, 8, 4, 1),
(9, 9, 0, 1),
(9, 9, 1, 1),
(9, 9, 2, 1),
(9, 9, 4, 1),
(9, 13, 0, 1),
(9, 13, 1, 1),
(9, 13, 2, 1),
(9, 13, 4, 1),
(9, 14, 0, 1),
(9, 14, 1, 1),
(9, 14, 2, 1),
(9, 14, 4, 1),
(9, 16, 0, 1),
(9, 16, 1, 1),
(9, 16, 2, 1),
(9, 16, 4, 1),
(9, 25, 0, 1),
(9, 25, 1, 1),
(9, 25, 2, 1),
(9, 25, 4, 1),
(9, 31, 0, 1),
(9, 31, 1, 1),
(9, 31, 2, 1),
(9, 31, 4, 1),
(9, 50, 0, 1),
(9, 50, 1, 1),
(9, 50, 2, 1),
(9, 50, 4, 1),
(9, 51, 0, 0),
(9, 51, 1, 0),
(9, 51, 2, 0),
(9, 51, 3, 0),
(9, 51, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2tab`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2tab` (
  `profileid` int(11) DEFAULT NULL,
  `tabid` int(10) DEFAULT NULL,
  `permissions` int(10) NOT NULL DEFAULT '0',
  KEY `profile2tab_profileid_tabid_idx` (`profileid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2tab`
--

INSERT INTO `vtiger_profile2tab` (`profileid`, `tabid`, `permissions`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(3, 1, 0),
(3, 2, 0),
(3, 3, 0),
(3, 4, 0),
(3, 6, 0),
(3, 7, 0),
(3, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 13, 0),
(3, 14, 0),
(3, 15, 0),
(3, 16, 0),
(3, 18, 0),
(3, 19, 0),
(3, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(3, 25, 0),
(3, 26, 0),
(3, 27, 0),
(4, 1, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(4, 6, 0),
(4, 7, 0),
(4, 8, 0),
(4, 9, 0),
(4, 10, 0),
(4, 13, 0),
(4, 14, 0),
(4, 15, 0),
(4, 16, 0),
(4, 18, 0),
(4, 19, 0),
(4, 20, 0),
(4, 21, 0),
(4, 22, 0),
(4, 23, 0),
(4, 24, 0),
(4, 25, 0),
(4, 26, 0),
(4, 27, 0),
(1, 30, 0),
(3, 30, 0),
(4, 30, 0),
(1, 31, 0),
(3, 31, 0),
(4, 31, 0),
(1, 32, 0),
(3, 32, 0),
(4, 32, 0),
(1, 33, 0),
(3, 33, 0),
(4, 33, 0),
(1, 34, 0),
(3, 34, 0),
(4, 34, 0),
(1, 35, 0),
(3, 35, 0),
(4, 35, 0),
(1, 36, 0),
(3, 36, 0),
(4, 36, 0),
(1, 37, 0),
(3, 37, 0),
(4, 37, 0),
(1, 38, 0),
(3, 38, 0),
(4, 38, 0),
(1, 39, 0),
(3, 39, 0),
(4, 39, 0),
(1, 40, 0),
(3, 40, 0),
(4, 40, 0),
(1, 41, 0),
(3, 41, 0),
(4, 41, 0),
(1, 42, 0),
(3, 42, 0),
(4, 42, 0),
(1, 43, 0),
(3, 43, 0),
(4, 43, 0),
(1, 44, 0),
(3, 44, 0),
(4, 44, 0),
(1, 45, 0),
(3, 45, 0),
(4, 45, 0),
(1, 46, 0),
(3, 46, 0),
(4, 46, 0),
(1, 47, 0),
(3, 47, 0),
(4, 47, 0),
(1, 48, 0),
(3, 48, 0),
(4, 48, 0),
(1, 49, 0),
(3, 49, 0),
(4, 49, 0),
(1, 50, 0),
(3, 50, 0),
(4, 50, 0),
(5, 4, 0),
(5, 6, 0),
(5, 8, 0),
(5, 9, 0),
(5, 10, 0),
(5, 13, 0),
(5, 14, 0),
(5, 15, 0),
(5, 25, 0),
(5, 31, 0),
(5, 33, 0),
(5, 38, 0),
(5, 39, 0),
(5, 40, 0),
(5, 42, 0),
(5, 43, 0),
(5, 47, 0),
(5, 49, 0),
(5, 50, 0),
(5, 16, 0),
(6, 4, 0),
(6, 6, 0),
(6, 8, 0),
(6, 9, 0),
(6, 10, 0),
(6, 13, 0),
(6, 14, 0),
(6, 15, 0),
(6, 25, 0),
(6, 31, 0),
(6, 33, 0),
(6, 38, 0),
(6, 39, 0),
(6, 40, 0),
(6, 42, 0),
(6, 43, 0),
(6, 47, 0),
(6, 49, 0),
(6, 50, 0),
(6, 16, 0),
(7, 4, 0),
(7, 6, 0),
(7, 8, 0),
(7, 9, 0),
(7, 10, 0),
(7, 13, 0),
(7, 14, 0),
(7, 15, 0),
(7, 25, 0),
(7, 31, 0),
(7, 33, 0),
(7, 38, 0),
(7, 39, 0),
(7, 40, 0),
(7, 42, 0),
(7, 43, 0),
(7, 47, 0),
(7, 49, 0),
(7, 50, 0),
(7, 16, 0),
(8, 4, 0),
(8, 6, 0),
(8, 8, 0),
(8, 9, 0),
(8, 10, 0),
(8, 13, 0),
(8, 14, 0),
(8, 15, 0),
(8, 25, 0),
(8, 31, 0),
(8, 33, 0),
(8, 38, 0),
(8, 39, 0),
(8, 40, 0),
(8, 42, 0),
(8, 43, 0),
(8, 47, 0),
(8, 49, 0),
(8, 50, 0),
(8, 16, 0),
(9, 4, 1),
(9, 6, 1),
(9, 8, 1),
(9, 9, 1),
(9, 10, 1),
(9, 13, 1),
(9, 14, 1),
(9, 15, 1),
(9, 25, 1),
(9, 31, 1),
(9, 33, 1),
(9, 38, 1),
(9, 39, 1),
(9, 40, 1),
(9, 42, 1),
(9, 43, 1),
(9, 47, 1),
(9, 49, 1),
(9, 50, 1),
(9, 16, 1),
(1, 51, 0),
(3, 51, 0),
(4, 51, 0),
(5, 51, 0),
(6, 51, 0),
(7, 51, 0),
(8, 51, 0),
(9, 51, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2utility`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2utility` (
  `profileid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `permission` int(1) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`tabid`,`activityid`),
  KEY `profile2utility_profileid_tabid_activityid_idx` (`profileid`,`tabid`,`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2utility`
--

INSERT INTO `vtiger_profile2utility` (`profileid`, `tabid`, `activityid`, `permission`) VALUES
(1, 2, 5, 0),
(1, 2, 6, 0),
(1, 2, 10, 0),
(1, 4, 5, 0),
(1, 4, 6, 0),
(1, 4, 8, 0),
(1, 4, 10, 0),
(1, 6, 5, 0),
(1, 6, 6, 0),
(1, 6, 8, 0),
(1, 6, 10, 0),
(1, 7, 5, 0),
(1, 7, 6, 0),
(1, 7, 8, 0),
(1, 7, 9, 0),
(1, 7, 10, 0),
(1, 8, 6, 0),
(1, 9, 5, 0),
(1, 9, 6, 0),
(1, 13, 5, 0),
(1, 13, 6, 0),
(1, 13, 8, 0),
(1, 13, 10, 0),
(1, 14, 5, 0),
(1, 14, 6, 0),
(1, 14, 10, 0),
(1, 18, 5, 0),
(1, 18, 6, 0),
(1, 18, 10, 0),
(1, 20, 5, 0),
(1, 20, 6, 0),
(1, 21, 5, 0),
(1, 21, 6, 0),
(1, 22, 5, 0),
(1, 22, 6, 0),
(1, 23, 5, 0),
(1, 23, 6, 0),
(1, 31, 5, 0),
(1, 31, 6, 0),
(1, 31, 10, 0),
(1, 36, 11, 1),
(1, 36, 12, 1),
(1, 37, 5, 0),
(1, 37, 6, 0),
(1, 37, 10, 0),
(1, 44, 5, 0),
(1, 44, 6, 0),
(1, 44, 10, 0),
(1, 45, 5, 0),
(1, 45, 6, 0),
(1, 45, 10, 0),
(1, 46, 5, 0),
(1, 46, 6, 0),
(1, 46, 10, 0),
(1, 50, 5, 0),
(1, 50, 6, 0),
(1, 50, 8, 0),
(1, 51, 5, 0),
(1, 51, 6, 0),
(1, 51, 8, 0),
(3, 2, 5, 1),
(3, 2, 6, 1),
(3, 2, 10, 0),
(3, 4, 5, 1),
(3, 4, 6, 1),
(3, 4, 8, 0),
(3, 4, 10, 0),
(3, 6, 5, 1),
(3, 6, 6, 1),
(3, 6, 8, 0),
(3, 6, 10, 0),
(3, 7, 5, 1),
(3, 7, 6, 1),
(3, 7, 8, 0),
(3, 7, 9, 0),
(3, 7, 10, 0),
(3, 8, 6, 1),
(3, 9, 5, 0),
(3, 9, 6, 0),
(3, 13, 5, 1),
(3, 13, 6, 1),
(3, 13, 8, 0),
(3, 13, 10, 0),
(3, 14, 5, 1),
(3, 14, 6, 1),
(3, 14, 10, 0),
(3, 18, 5, 1),
(3, 18, 6, 1),
(3, 18, 10, 0),
(3, 20, 5, 0),
(3, 20, 6, 0),
(3, 21, 5, 0),
(3, 21, 6, 0),
(3, 22, 5, 0),
(3, 22, 6, 0),
(3, 23, 5, 0),
(3, 23, 6, 0),
(3, 31, 5, 0),
(3, 31, 6, 0),
(3, 31, 10, 0),
(3, 36, 11, 1),
(3, 36, 12, 1),
(3, 37, 5, 0),
(3, 37, 6, 0),
(3, 37, 10, 0),
(3, 44, 5, 0),
(3, 44, 6, 0),
(3, 44, 10, 0),
(3, 45, 5, 0),
(3, 45, 6, 0),
(3, 45, 10, 0),
(3, 46, 5, 0),
(3, 46, 6, 0),
(3, 46, 10, 0),
(3, 50, 5, 0),
(3, 50, 6, 0),
(3, 50, 8, 0),
(3, 51, 5, 0),
(3, 51, 6, 0),
(3, 51, 8, 0),
(4, 2, 5, 1),
(4, 2, 6, 1),
(4, 2, 10, 0),
(4, 4, 5, 1),
(4, 4, 6, 1),
(4, 4, 8, 1),
(4, 4, 10, 0),
(4, 6, 5, 1),
(4, 6, 6, 1),
(4, 6, 8, 1),
(4, 6, 10, 0),
(4, 7, 5, 1),
(4, 7, 6, 1),
(4, 7, 8, 1),
(4, 7, 9, 0),
(4, 7, 10, 0),
(4, 8, 6, 1),
(4, 9, 5, 0),
(4, 9, 6, 0),
(4, 13, 5, 1),
(4, 13, 6, 1),
(4, 13, 8, 1),
(4, 13, 10, 0),
(4, 14, 5, 1),
(4, 14, 6, 1),
(4, 14, 10, 0),
(4, 18, 5, 1),
(4, 18, 6, 1),
(4, 18, 10, 0),
(4, 20, 5, 0),
(4, 20, 6, 0),
(4, 21, 5, 0),
(4, 21, 6, 0),
(4, 22, 5, 0),
(4, 22, 6, 0),
(4, 23, 5, 0),
(4, 23, 6, 0),
(4, 31, 5, 0),
(4, 31, 6, 0),
(4, 31, 10, 0),
(4, 36, 11, 1),
(4, 36, 12, 1),
(4, 37, 5, 0),
(4, 37, 6, 0),
(4, 37, 10, 0),
(4, 44, 5, 0),
(4, 44, 6, 0),
(4, 44, 10, 0),
(4, 45, 5, 0),
(4, 45, 6, 0),
(4, 45, 10, 0),
(4, 46, 5, 0),
(4, 46, 6, 0),
(4, 46, 10, 0),
(4, 50, 5, 0),
(4, 50, 6, 0),
(4, 50, 8, 0),
(4, 51, 5, 0),
(4, 51, 6, 0),
(4, 51, 8, 0),
(5, 4, 5, 0),
(5, 4, 6, 0),
(5, 4, 10, 0),
(5, 6, 5, 0),
(5, 6, 6, 0),
(5, 6, 10, 0),
(5, 8, 6, 0),
(5, 9, 5, 0),
(5, 9, 6, 0),
(5, 13, 5, 0),
(5, 13, 6, 0),
(5, 13, 10, 0),
(5, 14, 5, 0),
(5, 14, 6, 0),
(5, 14, 10, 0),
(5, 16, 5, 0),
(5, 16, 6, 0),
(5, 31, 5, 0),
(5, 31, 6, 0),
(5, 31, 10, 0),
(5, 50, 5, 0),
(5, 50, 6, 0),
(5, 51, 5, 0),
(5, 51, 6, 0),
(5, 51, 8, 0),
(6, 4, 5, 0),
(6, 4, 6, 0),
(6, 4, 10, 0),
(6, 6, 5, 0),
(6, 6, 6, 0),
(6, 6, 10, 0),
(6, 8, 6, 0),
(6, 9, 5, 0),
(6, 9, 6, 0),
(6, 13, 5, 0),
(6, 13, 6, 0),
(6, 13, 10, 0),
(6, 14, 5, 0),
(6, 14, 6, 0),
(6, 14, 10, 0),
(6, 16, 5, 0),
(6, 16, 6, 0),
(6, 31, 5, 0),
(6, 31, 6, 0),
(6, 31, 10, 0),
(6, 50, 5, 0),
(6, 50, 6, 0),
(6, 51, 5, 0),
(6, 51, 6, 0),
(6, 51, 8, 0),
(7, 4, 5, 0),
(7, 4, 6, 0),
(7, 4, 10, 0),
(7, 6, 5, 0),
(7, 6, 6, 0),
(7, 6, 10, 0),
(7, 8, 6, 0),
(7, 9, 5, 0),
(7, 9, 6, 0),
(7, 13, 5, 0),
(7, 13, 6, 0),
(7, 13, 10, 0),
(7, 14, 5, 0),
(7, 14, 6, 0),
(7, 14, 10, 0),
(7, 16, 5, 0),
(7, 16, 6, 0),
(7, 31, 5, 0),
(7, 31, 6, 0),
(7, 31, 10, 0),
(7, 50, 5, 0),
(7, 50, 6, 0),
(7, 51, 5, 0),
(7, 51, 6, 0),
(7, 51, 8, 0),
(8, 4, 5, 0),
(8, 4, 6, 0),
(8, 4, 10, 0),
(8, 6, 5, 0),
(8, 6, 6, 0),
(8, 6, 10, 0),
(8, 8, 6, 0),
(8, 9, 5, 0),
(8, 9, 6, 0),
(8, 13, 5, 0),
(8, 13, 6, 0),
(8, 13, 10, 0),
(8, 14, 5, 0),
(8, 14, 6, 0),
(8, 14, 10, 0),
(8, 16, 5, 0),
(8, 16, 6, 0),
(8, 31, 5, 0),
(8, 31, 6, 0),
(8, 31, 10, 0),
(8, 50, 5, 0),
(8, 50, 6, 0),
(8, 51, 5, 0),
(8, 51, 6, 0),
(8, 51, 8, 0),
(9, 4, 5, 0),
(9, 4, 6, 0),
(9, 4, 10, 0),
(9, 6, 5, 0),
(9, 6, 6, 0),
(9, 6, 10, 0),
(9, 8, 6, 0),
(9, 9, 5, 0),
(9, 9, 6, 0),
(9, 13, 5, 0),
(9, 13, 6, 0),
(9, 13, 10, 0),
(9, 14, 5, 0),
(9, 14, 6, 0),
(9, 14, 10, 0),
(9, 16, 5, 0),
(9, 16, 6, 0),
(9, 31, 5, 0),
(9, 31, 6, 0),
(9, 31, 10, 0),
(9, 50, 5, 0),
(9, 50, 6, 0),
(9, 51, 5, 0),
(9, 51, 6, 0),
(9, 51, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile_seq`
--

INSERT INTO `vtiger_profile_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_progress`
--

CREATE TABLE IF NOT EXISTS `vtiger_progress` (
  `progressid` int(11) NOT NULL AUTO_INCREMENT,
  `progress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`progressid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `vtiger_progress`
--

INSERT INTO `vtiger_progress` (`progressid`, `progress`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, '10%', 1, 278, 2),
(3, '20%', 1, 279, 3),
(4, '30%', 1, 280, 4),
(5, '40%', 1, 281, 5),
(6, '50%', 1, 282, 6),
(7, '60%', 1, 283, 7),
(8, '70%', 1, 284, 8),
(9, '80%', 1, 285, 9),
(10, '90%', 1, 286, 10),
(11, '100%', 1, 287, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_progress_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_progress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_progress_seq`
--

INSERT INTO `vtiger_progress_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_project`
--

CREATE TABLE IF NOT EXISTS `vtiger_project` (
  `projectid` int(11) DEFAULT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `project_no` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `targetenddate` date DEFAULT NULL,
  `actualenddate` date DEFAULT NULL,
  `targetbudget` varchar(255) DEFAULT NULL,
  `projecturl` varchar(255) DEFAULT NULL,
  `projectstatus` varchar(100) DEFAULT NULL,
  `projectpriority` varchar(100) DEFAULT NULL,
  `projecttype` varchar(100) DEFAULT NULL,
  `progress` varchar(100) DEFAULT NULL,
  `linktoaccountscontacts` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectcf` (
  `projectid` int(11) NOT NULL,
  PRIMARY KEY (`projectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestone`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectmilestone` (
  `projectmilestoneid` int(11) NOT NULL,
  `projectmilestonename` varchar(255) DEFAULT NULL,
  `projectmilestone_no` varchar(100) DEFAULT NULL,
  `projectmilestonedate` varchar(255) DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projectmilestonetype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`projectmilestoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonecf`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectmilestonecf` (
  `projectmilestoneid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`projectmilestoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonetype`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectmilestonetype` (
  `projectmilestonetypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projectmilestonetype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectmilestonetypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projectmilestonetype`
--

INSERT INTO `vtiger_projectmilestonetype` (`projectmilestonetypeid`, `projectmilestonetype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'administrative', 1, 238, 2),
(3, 'operative', 1, 239, 3),
(4, 'other', 1, 240, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonetype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectmilestonetype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projectmilestonetype_seq`
--

INSERT INTO `vtiger_projectmilestonetype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectpriority`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectpriority` (
  `projectpriorityid` int(11) NOT NULL AUTO_INCREMENT,
  `projectpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectpriorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projectpriority`
--

INSERT INTO `vtiger_projectpriority` (`projectpriorityid`, `projectpriority`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'low', 1, 274, 2),
(3, 'normal', 1, 275, 3),
(4, 'high', 1, 276, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectpriority_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projectpriority_seq`
--

INSERT INTO `vtiger_projectpriority_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectstatus` (
  `projectstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `projectstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vtiger_projectstatus`
--

INSERT INTO `vtiger_projectstatus` (`projectstatusid`, `projectstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'prospecting', 1, 261, 2),
(3, 'initiated', 1, 262, 3),
(4, 'in progress', 1, 263, 4),
(5, 'waiting for feedback', 1, 264, 5),
(6, 'on hold', 1, 265, 6),
(7, 'completed', 1, 266, 7),
(8, 'delivered', 1, 267, 8),
(9, 'archived', 1, 268, 9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projectstatus_seq`
--

INSERT INTO `vtiger_projectstatus_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttask`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttask` (
  `projecttaskid` int(11) NOT NULL,
  `projecttaskname` varchar(255) DEFAULT NULL,
  `projecttask_no` varchar(100) DEFAULT NULL,
  `projecttasktype` varchar(100) DEFAULT NULL,
  `projecttaskpriority` varchar(100) DEFAULT NULL,
  `projecttaskprogress` varchar(100) DEFAULT NULL,
  `projecttaskhours` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projecttasknumber` int(11) DEFAULT NULL,
  `projecttaskstatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`projecttaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskcf` (
  `projecttaskid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`projecttaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskpriority`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskpriority` (
  `projecttaskpriorityid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskpriorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projecttaskpriority`
--

INSERT INTO `vtiger_projecttaskpriority` (`projecttaskpriorityid`, `projecttaskpriority`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'low', 1, 246, 2),
(3, 'normal', 1, 247, 3),
(4, 'high', 1, 248, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskpriority_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttaskpriority_seq`
--

INSERT INTO `vtiger_projecttaskpriority_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskprogress`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskprogress` (
  `projecttaskprogressid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskprogress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskprogressid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `vtiger_projecttaskprogress`
--

INSERT INTO `vtiger_projecttaskprogress` (`projecttaskprogressid`, `projecttaskprogress`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, '10%', 1, 250, 2),
(3, '20%', 1, 251, 3),
(4, '30%', 1, 252, 4),
(5, '40%', 1, 253, 5),
(6, '50%', 1, 254, 6),
(7, '60%', 1, 255, 7),
(8, '70%', 1, 256, 8),
(9, '80%', 1, 257, 9),
(10, '90%', 1, 258, 10),
(11, '100%', 1, 259, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskprogress_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskprogress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttaskprogress_seq`
--

INSERT INTO `vtiger_projecttaskprogress_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskstatus` (
  `projecttaskstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_projecttaskstatus`
--

INSERT INTO `vtiger_projecttaskstatus` (`projecttaskstatusid`, `projecttaskstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Open', 0, 290, 2),
(3, 'In Progress', 0, 291, 3),
(4, 'Completed', 0, 292, 4),
(5, 'Deferred', 0, 293, 5),
(6, 'Canceled ', 0, 294, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttaskstatus_seq`
--

INSERT INTO `vtiger_projecttaskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttasktype`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttasktype` (
  `projecttasktypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttasktype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttasktypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projecttasktype`
--

INSERT INTO `vtiger_projecttasktype` (`projecttasktypeid`, `projecttasktype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'administrative', 1, 242, 2),
(3, 'operative', 1, 243, 3),
(4, 'other', 1, 244, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttasktype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttasktype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttasktype_seq`
--

INSERT INTO `vtiger_projecttasktype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttype`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttype` (
  `projecttypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projecttype`
--

INSERT INTO `vtiger_projecttype` (`projecttypeid`, `projecttype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'administrative', 1, 270, 2),
(3, 'operative', 1, 271, 3),
(4, 'other', 1, 272, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttype_seq`
--

INSERT INTO `vtiger_projecttype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_purchaseorder`
--

CREATE TABLE IF NOT EXISTS `vtiger_purchaseorder` (
  `purchaseorderid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `quoteid` int(19) DEFAULT NULL,
  `vendorid` int(19) DEFAULT NULL,
  `requisition_no` varchar(100) DEFAULT NULL,
  `purchaseorder_no` varchar(100) DEFAULT NULL,
  `tracking_no` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `terms_conditions` text,
  `postatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `paid` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchaseorderid`),
  KEY `purchaseorder_vendorid_idx` (`vendorid`),
  KEY `purchaseorder_quoteid_idx` (`quoteid`),
  KEY `purchaseorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_purchaseordercf`
--

CREATE TABLE IF NOT EXISTS `vtiger_purchaseordercf` (
  `purchaseorderid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotes`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotes` (
  `quoteid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `potentialid` int(19) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `validtill` date DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `quote_no` varchar(100) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `inventorymanager` int(19) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`quoteid`),
  KEY `quote_quotestage_idx` (`quotestage`),
  KEY `quotes_potentialid_idx` (`potentialid`),
  KEY `quotes_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotesbillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotesbillads` (
  `quotebilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`quotebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotescf`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotescf` (
  `quoteid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotesshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotesshipads` (
  `quoteshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`quoteshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestage`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotestage` (
  `quotestageid` int(19) NOT NULL AUTO_INCREMENT,
  `quotestage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`quotestageid`),
  UNIQUE KEY `quotestage_quotestage_idx` (`quotestage`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_quotestage`
--

INSERT INTO `vtiger_quotestage` (`quotestageid`, `quotestage`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Created', 0, 139, 0),
(2, 'Delivered', 0, 140, 1),
(3, 'Reviewed', 0, 141, 2),
(4, 'Accepted', 0, 142, 3),
(5, 'Rejected', 0, 143, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestagehistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotestagehistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `quoteid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `quotestagehistory_quoteid_idx` (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestage_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotestage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_quotestage_seq`
--

INSERT INTO `vtiger_quotestage_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rating`
--

CREATE TABLE IF NOT EXISTS `vtiger_rating` (
  `rating_id` int(19) NOT NULL AUTO_INCREMENT,
  `rating` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_rating`
--

INSERT INTO `vtiger_rating` (`rating_id`, `rating`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Acquired', 1, 145, 1),
(3, 'Active', 1, 146, 2),
(4, 'Market Failed', 1, 147, 3),
(5, 'Project Cancelled', 1, 148, 4),
(6, 'Shutdown', 1, 149, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rating_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_rating_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_rating_seq`
--

INSERT INTO `vtiger_rating_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringevents`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurringevents` (
  `recurringid` int(19) NOT NULL AUTO_INCREMENT,
  `activityid` int(19) NOT NULL,
  `recurringdate` date DEFAULT NULL,
  `recurringtype` varchar(30) DEFAULT NULL,
  `recurringfreq` int(19) DEFAULT NULL,
  `recurringinfo` varchar(50) DEFAULT NULL,
  `recurringenddate` date DEFAULT NULL,
  PRIMARY KEY (`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurringtype` (
  `recurringeventid` int(19) NOT NULL AUTO_INCREMENT,
  `recurringtype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`recurringeventid`),
  UNIQUE KEY `recurringtype_status_idx` (`recurringtype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_recurringtype`
--

INSERT INTO `vtiger_recurringtype` (`recurringeventid`, `recurringtype`, `sortorderid`, `presence`) VALUES
(2, 'Daily', 1, 1),
(3, 'Weekly', 2, 1),
(4, 'Monthly', 3, 1),
(5, 'Yearly', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringtype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurringtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_recurringtype_seq`
--

INSERT INTO `vtiger_recurringtype_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurring_frequency`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurring_frequency` (
  `recurring_frequency_id` int(11) DEFAULT NULL,
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_recurring_frequency`
--

INSERT INTO `vtiger_recurring_frequency` (`recurring_frequency_id`, `recurring_frequency`, `sortorderid`, `presence`) VALUES
(2, 'Daily', 1, 1),
(3, 'Weekly', 2, 1),
(4, 'Monthly', 3, 1),
(5, 'Quarterly', 4, 1),
(6, 'Yearly', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurring_frequency_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurring_frequency_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_recurring_frequency_seq`
--

INSERT INTO `vtiger_recurring_frequency_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists`
--

CREATE TABLE IF NOT EXISTS `vtiger_relatedlists` (
  `relation_id` int(19) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `related_tabid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `presence` int(10) NOT NULL DEFAULT '0',
  `actions` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`relation_id`),
  KEY `relatedlists_relation_id_idx` (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_relatedlists`
--

INSERT INTO `vtiger_relatedlists` (`relation_id`, `tabid`, `related_tabid`, `name`, `sequence`, `label`, `presence`, `actions`) VALUES
(1, 6, 4, 'get_contacts', 1, 'Contacts', 0, 'add'),
(2, 6, 2, 'get_opportunities', 2, 'Potentials', 0, 'add'),
(3, 6, 20, 'get_quotes', 3, 'Quotes', 0, 'add'),
(4, 6, 22, 'get_salesorder', 4, 'Sales Order', 0, 'add'),
(5, 6, 23, 'get_invoices', 5, 'Invoice', 0, 'add'),
(6, 6, 9, 'get_activities', 6, 'Activities', 0, 'add'),
(7, 6, 10, 'get_emails', 7, 'Emails', 0, 'add'),
(8, 6, 9, 'get_history', 8, 'Activity History', 0, 'add'),
(9, 6, 8, 'get_attachments', 9, 'Documents', 0, 'add,select'),
(10, 6, 13, 'get_tickets', 10, 'HelpDesk', 0, 'add'),
(11, 6, 14, 'get_products', 11, 'Products', 0, 'select'),
(12, 7, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(13, 7, 10, 'get_emails', 2, 'Emails', 0, 'add'),
(14, 7, 9, 'get_history', 3, 'Activity History', 0, 'add'),
(15, 7, 8, 'get_attachments', 4, 'Documents', 0, 'add,select'),
(16, 7, 14, 'get_products', 5, 'Products', 0, 'select'),
(17, 7, 26, 'get_campaigns', 6, 'Campaigns', 0, 'select'),
(18, 4, 2, 'get_opportunities', 1, 'Potentials', 0, 'add'),
(19, 4, 9, 'get_activities', 2, 'Activities', 0, 'add'),
(20, 4, 10, 'get_emails', 3, 'Emails', 0, 'add'),
(21, 4, 13, 'get_tickets', 4, 'HelpDesk', 0, 'add'),
(22, 4, 20, 'get_quotes', 5, 'Quotes', 0, 'add'),
(23, 4, 21, 'get_purchase_orders', 6, 'Purchase Order', 0, 'add'),
(24, 4, 22, 'get_salesorder', 7, 'Sales Order', 0, 'add'),
(25, 4, 14, 'get_products', 8, 'Products', 0, 'select'),
(26, 4, 9, 'get_history', 9, 'Activity History', 0, 'add'),
(27, 4, 8, 'get_attachments', 10, 'Documents', 0, 'add,select'),
(28, 4, 26, 'get_campaigns', 11, 'Campaigns', 0, 'select'),
(29, 4, 23, 'get_invoices', 12, 'Invoice', 0, 'add'),
(30, 2, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(31, 2, 4, 'get_contacts', 2, 'Contacts', 0, 'select'),
(32, 2, 14, 'get_products', 3, 'Products', 0, 'select'),
(33, 2, 0, 'get_stage_history', 4, 'Sales Stage History', 0, ''),
(34, 2, 8, 'get_attachments', 5, 'Documents', 0, 'add,select'),
(35, 2, 20, 'get_Quotes', 6, 'Quotes', 0, 'add'),
(36, 2, 22, 'get_salesorder', 7, 'Sales Order', 0, 'add'),
(37, 2, 9, 'get_history', 8, 'Activity History', 0, ''),
(38, 14, 13, 'get_tickets', 1, 'HelpDesk', 0, 'add'),
(39, 14, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(40, 14, 20, 'get_quotes', 4, 'Quotes', 0, 'add'),
(41, 14, 21, 'get_purchase_orders', 5, 'Purchase Order', 0, 'add'),
(42, 14, 22, 'get_salesorder', 6, 'Sales Order', 0, 'add'),
(43, 14, 23, 'get_invoices', 7, 'Invoice', 0, 'add'),
(44, 14, 19, 'get_product_pricebooks', 8, 'PriceBooks', 0, 'ADD,SELECT'),
(45, 14, 7, 'get_leads', 9, 'Leads', 0, 'select'),
(46, 14, 6, 'get_accounts', 10, 'Accounts', 0, 'select'),
(47, 14, 4, 'get_contacts', 11, 'Contacts', 0, 'select'),
(48, 14, 2, 'get_opportunities', 12, 'Potentials', 0, 'select'),
(49, 14, 14, 'get_products', 13, 'Product Bundles', 0, 'add,select'),
(50, 14, 14, 'get_parent_products', 14, 'Parent Product', 0, ''),
(51, 10, 4, 'get_contacts', 1, 'Contacts', 0, 'select,bulkmail'),
(52, 10, 0, 'get_users', 2, 'Users', 0, ''),
(53, 10, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(54, 13, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(55, 13, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(56, 13, 0, 'get_ticket_history', 3, 'Ticket History', 0, ''),
(57, 13, 9, 'get_history', 4, 'Activity History', 0, 'add'),
(58, 19, 14, 'get_pricebook_products', 2, 'Products', 0, 'select'),
(59, 18, 14, 'get_products', 1, 'Products', 0, 'add,select'),
(60, 18, 21, 'get_purchase_orders', 2, 'Purchase Order', 0, 'add'),
(61, 18, 4, 'get_contacts', 3, 'Contacts', 0, 'select'),
(62, 18, 10, 'get_emails', 4, 'Emails', 0, 'add'),
(63, 20, 22, 'get_salesorder', 1, 'Sales Order', 0, ''),
(64, 20, 9, 'get_activities', 2, 'Activities', 0, 'add'),
(65, 20, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(66, 20, 9, 'get_history', 4, 'Activity History', 0, ''),
(67, 20, 0, 'get_quotestagehistory', 5, 'Quote Stage History', 0, ''),
(68, 21, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(69, 21, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(70, 21, 9, 'get_history', 3, 'Activity History', 0, ''),
(71, 21, 0, 'get_postatushistory', 4, 'PurchaseOrder Status History', 0, ''),
(72, 22, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(73, 22, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(74, 22, 23, 'get_invoices', 3, 'Invoice', 0, ''),
(75, 22, 9, 'get_history', 4, 'Activity History', 0, ''),
(76, 22, 0, 'get_sostatushistory', 5, 'SalesOrder Status History', 0, ''),
(77, 23, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(78, 23, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(79, 23, 9, 'get_history', 3, 'Activity History', 0, ''),
(80, 23, 0, 'get_invoicestatushistory', 4, 'Invoice Status History', 0, ''),
(81, 9, 0, 'get_users', 1, 'Users', 0, ''),
(82, 9, 4, 'get_contacts', 2, 'Contacts', 0, ''),
(83, 26, 4, 'get_contacts', 1, 'Contacts', 0, 'add,select'),
(84, 26, 7, 'get_leads', 2, 'Leads', 0, 'add,select'),
(85, 26, 2, 'get_opportunities', 3, 'Potentials', 0, 'add'),
(86, 26, 9, 'get_activities', 4, 'Activities', 0, 'add'),
(87, 6, 26, 'get_campaigns', 13, 'Campaigns', 0, 'select'),
(88, 26, 6, 'get_accounts', 5, 'Accounts', 0, 'add,select'),
(89, 15, 8, 'get_attachments', 1, 'Documents', 0, 'add,select'),
(90, 31, 13, 'get_related_list', 1, 'Service Requests', 0, 'ADD,SELECT'),
(91, 31, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT'),
(92, 6, 31, 'get_dependents_list', 14, 'Service Contracts', 0, 'ADD'),
(93, 4, 31, 'get_dependents_list', 13, 'Service Contracts', 0, 'ADD'),
(94, 13, 31, 'get_related_list', 5, 'Service Contracts', 0, 'ADD,SELECT'),
(98, 37, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT'),
(99, 37, 20, 'get_quotes', 2, 'Quotes', 0, 'ADD'),
(100, 37, 21, 'get_purchase_orders', 3, 'Purchase Order', 0, 'ADD'),
(101, 37, 22, 'get_salesorder', 4, 'Sales Order', 0, 'ADD'),
(102, 37, 23, 'get_invoices', 5, 'Invoice', 0, 'ADD'),
(103, 37, 19, 'get_service_pricebooks', 6, 'PriceBooks', 0, 'ADD'),
(104, 37, 7, 'get_related_list', 7, 'Leads', 0, 'SELECT'),
(105, 37, 6, 'get_related_list', 8, 'Accounts', 0, 'SELECT'),
(106, 37, 4, 'get_related_list', 9, 'Contacts', 0, 'SELECT'),
(107, 37, 2, 'get_related_list', 10, 'Potentials', 0, 'SELECT'),
(108, 37, 8, 'get_attachments', 11, 'Documents', 0, 'ADD,SELECT'),
(109, 13, 37, 'get_related_list', 6, 'Services', 0, 'SELECT'),
(110, 7, 37, 'get_related_list', 8, 'Services', 0, 'SELECT'),
(111, 6, 37, 'get_related_list', 16, 'Services', 0, 'SELECT'),
(112, 4, 37, 'get_related_list', 15, 'Services', 0, 'SELECT'),
(113, 2, 37, 'get_related_list', 9, 'Services', 0, 'SELECT'),
(114, 19, 37, 'get_pricebook_services', 3, 'Services', 0, 'SELECT'),
(115, 39, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT'),
(116, 39, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT'),
(117, 6, 39, 'get_dependents_list', 17, 'Assets', 0, 'ADD'),
(118, 14, 39, 'get_dependents_list', 15, 'Assets', 0, 'ADD'),
(119, 23, 39, 'get_dependents_list', 5, 'Assets', 0, 'ADD'),
(120, 42, 6, 'get_related_list', 1, 'Accounts', 0, ' '),
(121, 42, 4, 'get_related_list', 2, 'Contacts', 0, ' '),
(122, 42, 7, 'get_related_list', 3, 'Leads', 0, ' '),
(129, 6, 46, 'get_dependents_list', 18, 'Projects', 0, 'add'),
(130, 4, 46, 'get_dependents_list', 16, 'Projects', 0, 'add'),
(131, 13, 46, 'get_related_list', 7, 'Projects', 0, 'SELECT'),
(132, 45, 8, 'get_attachments', 1, 'Documents', 0, 'ADD,SELECT'),
(133, 46, 45, 'get_dependents_list', 1, 'Project Tasks', 0, 'ADD'),
(134, 46, 44, 'get_dependents_list', 2, 'Project Milestones', 0, 'ADD'),
(135, 46, 8, 'get_attachments', 3, 'Documents', 0, 'ADD,SELECT'),
(136, 46, 13, 'get_related_list', 4, 'HelpDesk', 0, 'ADD,SELECT'),
(137, 46, 0, 'get_gantt_chart', 5, 'Charts', 0, ''),
(138, 4, 39, 'get_dependents_list', 17, 'Assets', 0, 'ADD'),
(139, 4, 18, 'get_vendors', 18, 'Vendors', 0, 'SELECT');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists_rb`
--

CREATE TABLE IF NOT EXISTS `vtiger_relatedlists_rb` (
  `entityid` int(19) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `rel_table` varchar(200) DEFAULT NULL,
  `rel_column` varchar(200) DEFAULT NULL,
  `ref_column` varchar(200) DEFAULT NULL,
  `related_crm_ids` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_relatedlists_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_relatedlists_seq`
--

INSERT INTO `vtiger_relatedlists_seq` (`id`) VALUES
(139);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relcriteria`
--

CREATE TABLE IF NOT EXISTS `vtiger_relcriteria` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT '1',
  `column_condition` varchar(256) DEFAULT 'and',
  PRIMARY KEY (`queryid`,`columnindex`),
  KEY `relcriteria_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_relcriteria`
--

INSERT INTO `vtiger_relcriteria` (`queryid`, `columnindex`, `columnname`, `comparator`, `value`, `groupid`, `column_condition`) VALUES
(1, 0, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V', 'n', '', 1, 'and'),
(2, 0, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V', 'e', '', 1, 'and'),
(3, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V', 'n', '', 1, 'and'),
(7, 0, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'e', 'Closed Won', 1, 'and'),
(12, 0, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V', 'n', 'Closed', 1, 'and'),
(13, 0, 'vtiger_products:productname:Products_Product_Name:productname:V', 'ny', '', 1, ''),
(15, 0, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Accepted', 1, 'and'),
(15, 1, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Rejected', 1, 'and'),
(22, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V', 'n', '', 1, 'and'),
(23, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V', 'n', '', 1, 'and'),
(24, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V', 'n', '', 1, 'and'),
(25, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V', 'n', '', 1, 'and'),
(26, 0, 'vtiger_maintenancecf:cf_743:Maintenance_Material_Cost:cf_743:N', 'ny', '0', 1, 'and'),
(26, 1, 'vtiger_maintenancecf:cf_745:Maintenance_Company_Cost:cf_745:N', 'ny', '0', 1, ''),
(27, 0, 'vtiger_assets:assetname:Assets_Asset_Name:assetname:V', 'ny', '', 1, 'and'),
(27, 1, 'vtiger_assets:assetstatus:Assets_Status:assetstatus:V', 'ny', '', 1, ''),
(27, 2, 'vtiger_assetscf:cf_723:Assets_asset_type:cf_723:V', 'e', 'Buildings', 2, ''),
(28, 0, 'vtiger_maintenancecf:cf_745:Maintenance_Company_Cost:cf_745:N', 'ny', '0', 1, 'and'),
(28, 1, 'vtiger_maintenancecf:cf_743:Maintenance_Material_Cost:cf_743:N', 'ny', '0', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relcriteria_grouping`
--

CREATE TABLE IF NOT EXISTS `vtiger_relcriteria_grouping` (
  `groupid` int(11) NOT NULL,
  `queryid` int(19) NOT NULL,
  `group_condition` varchar(256) DEFAULT NULL,
  `condition_expression` text,
  PRIMARY KEY (`groupid`,`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_relcriteria_grouping`
--

INSERT INTO `vtiger_relcriteria_grouping` (`groupid`, `queryid`, `group_condition`, `condition_expression`) VALUES
(1, 1, '', '0'),
(1, 2, '', '0'),
(1, 3, '', '0'),
(1, 7, '', '0'),
(1, 12, '', '0'),
(1, 13, 'and', ' 0 '),
(1, 15, '', '0 and 1'),
(1, 22, '', '0'),
(1, 23, '', '0'),
(1, 24, '', '0'),
(1, 25, '', '0'),
(1, 26, 'and', ' 0 and 1 '),
(1, 27, 'and', ' 0 and 1 '),
(1, 28, 'and', ' 0 and 1 '),
(2, 27, NULL, ' 2 ');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reminder_interval`
--

CREATE TABLE IF NOT EXISTS `vtiger_reminder_interval` (
  `reminder_intervalid` int(19) NOT NULL AUTO_INCREMENT,
  `reminder_interval` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL,
  `presence` int(1) NOT NULL,
  PRIMARY KEY (`reminder_intervalid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vtiger_reminder_interval`
--

INSERT INTO `vtiger_reminder_interval` (`reminder_intervalid`, `reminder_interval`, `sortorderid`, `presence`) VALUES
(2, '1 Minute', 1, 1),
(3, '5 Minutes', 2, 1),
(4, '15 Minutes', 3, 1),
(5, '30 Minutes', 4, 1),
(6, '45 Minutes', 5, 1),
(7, '1 Hour', 6, 1),
(8, '1 Day', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reminder_interval_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_reminder_interval_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reminder_interval_seq`
--

INSERT INTO `vtiger_reminder_interval_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report`
--

CREATE TABLE IF NOT EXISTS `vtiger_report` (
  `reportid` int(19) NOT NULL,
  `folderid` int(19) NOT NULL,
  `reportname` varchar(100) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `reporttype` varchar(50) DEFAULT '',
  `queryid` int(19) NOT NULL DEFAULT '0',
  `state` varchar(50) DEFAULT 'SAVED',
  `customizable` int(1) DEFAULT '1',
  `category` int(11) DEFAULT '1',
  `owner` int(11) DEFAULT '1',
  `sharingtype` varchar(200) DEFAULT 'Private',
  PRIMARY KEY (`reportid`),
  KEY `report_queryid_idx` (`queryid`),
  KEY `report_folderid_idx` (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_report`
--

INSERT INTO `vtiger_report` (`reportid`, `folderid`, `reportname`, `description`, `reporttype`, `queryid`, `state`, `customizable`, `category`, `owner`, `sharingtype`) VALUES
(4, 2, 'Lead by Source', 'Lead by Source', 'summary', 4, 'CUSTOM', 1, 1, 1, 'Public'),
(6, 3, 'Potential Pipeline', 'Potential Pipeline', 'summary', 6, 'CUSTOM', 1, 1, 1, 'Public'),
(7, 3, 'Closed Potentials', 'Potential that have Won', 'tabular', 7, 'CUSTOM', 1, 1, 1, 'Public'),
(8, 4, 'Last Month Activities', 'Last Month Activities', 'tabular', 8, 'CUSTOM', 1, 1, 1, 'Public'),
(9, 4, 'This Month Activities', 'This Month Activities', 'tabular', 9, 'CUSTOM', 1, 1, 1, 'Public'),
(13, 6, 'Product Details', 'Product Detailed Report', 'tabular', 13, 'CUSTOM', 1, 1, 1, 'Public'),
(15, 7, 'Open Quotes', 'Quotes that are Open', 'tabular', 15, 'CUSTOM', 1, 1, 1, 'Public'),
(17, 8, 'PurchaseOrder by Contacts', 'PurchaseOrder related to Contacts', 'tabular', 17, 'CUSTOM', 1, 1, 1, 'Public'),
(21, 11, 'Campaign Expectations and Actuals', 'Campaign Expectations and Actuals', 'tabular', 21, 'CUSTOM', 1, 1, 1, 'Public'),
(26, 13, 'building ', 'To evaluate the cost used in maintenance', 'tabular', 26, 'CUSTOM', 1, 1, 5, 'Public'),
(27, 10, 'buildings', 'Total list of available buildings', 'tabular', 27, 'CUSTOM', 1, 1, 5, 'Public'),
(28, 11, 'components valuation', 'expenses for the year 2013', 'tabular', 28, 'CUSTOM', 1, 1, 5, 'Public'),
(29, 14, 'All assests', '', 'tabular', 29, 'CUSTOM', 1, 1, 5, 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportdatefilter`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportdatefilter` (
  `datefilterid` int(19) NOT NULL,
  `datecolumnname` varchar(250) DEFAULT '',
  `datefilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`datefilterid`),
  KEY `reportdatefilter_datefilterid_idx` (`datefilterid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportdatefilter`
--

INSERT INTO `vtiger_reportdatefilter` (`datefilterid`, `datecolumnname`, `datefilter`, `startdate`, `enddate`) VALUES
(8, 'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time', 'lastmonth', '2005-05-01', '2005-05-31'),
(9, 'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportfilters`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportfilters` (
  `filterid` int(19) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportfilters`
--

INSERT INTO `vtiger_reportfilters` (`filterid`, `name`) VALUES
(1, 'Private'),
(2, 'Public'),
(3, 'Shared');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportfolder`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportfolder` (
  `folderid` int(19) NOT NULL AUTO_INCREMENT,
  `foldername` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `state` varchar(50) DEFAULT 'SAVED',
  PRIMARY KEY (`folderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `vtiger_reportfolder`
--

INSERT INTO `vtiger_reportfolder` (`folderid`, `foldername`, `description`, `state`) VALUES
(1, 'Account and Contact Reports', 'Account and Contact Reports', 'SAVED'),
(2, 'Lead Reports', 'Lead Reports', 'SAVED'),
(3, 'Furniture Reports', 'Furniture Reports', 'SAVED'),
(4, 'Fixture Reports', 'Fixture Reports', 'SAVED'),
(5, 'Office Equipment Reports', 'Office Equipment Reports', 'SAVED'),
(6, 'Product Reports', 'Product Reports', 'SAVED'),
(7, 'Laboratory Equipment Reports', 'Laboratory Equipment Reports', 'SAVED'),
(8, 'Software Reports', 'Software Reports', 'SAVED'),
(9, 'Vehicle Reports', 'Vehicle Reports', 'SAVED'),
(10, 'Building Reports', 'Building Reports', 'SAVED'),
(11, 'Components Reports', 'Components Reports', 'SAVED'),
(12, 'Email Reports', 'Email Reports', 'SAVED'),
(13, 'Valuation', 'Valuation Reports', 'CUSTOMIZED'),
(14, 'All assets', 'A list of all assets', 'CUSTOMIZED');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportgroupbycolumn`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportgroupbycolumn` (
  `reportid` int(19) DEFAULT NULL,
  `sortid` int(19) DEFAULT NULL,
  `sortcolname` varchar(250) DEFAULT NULL,
  `dategroupbycriteria` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportmodules`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportmodules` (
  `reportmodulesid` int(19) NOT NULL,
  `primarymodule` varchar(50) NOT NULL DEFAULT '',
  `secondarymodules` varchar(250) DEFAULT '',
  PRIMARY KEY (`reportmodulesid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportmodules`
--

INSERT INTO `vtiger_reportmodules` (`reportmodulesid`, `primarymodule`, `secondarymodules`) VALUES
(1, 'Contacts', 'Accounts'),
(2, 'Contacts', 'Accounts'),
(3, 'Contacts', 'Potentials'),
(4, 'Leads', ''),
(5, 'Leads', ''),
(6, 'Potentials', ''),
(7, 'Potentials', ''),
(8, 'Calendar', ''),
(9, 'Calendar', ''),
(10, 'HelpDesk', 'Products'),
(11, 'HelpDesk', ''),
(12, 'HelpDesk', ''),
(13, 'Products', 'Documents:Assets'),
(14, 'Products', 'Contacts'),
(15, 'Quotes', ''),
(16, 'Quotes', ''),
(17, 'PurchaseOrder', 'Contacts'),
(18, 'PurchaseOrder', ''),
(19, 'Invoice', ''),
(20, 'SalesOrder', ''),
(21, 'Campaigns', ''),
(22, 'Contacts', 'Emails'),
(23, 'Accounts', 'Emails'),
(24, 'Leads', 'Emails'),
(25, 'Vendors', 'Emails'),
(26, 'Maintenance', ''),
(27, 'Assets', 'HelpDesk:Documents'),
(28, 'Maintenance', ''),
(29, 'Assets', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsharing`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportsharing` (
  `reportid` int(19) NOT NULL,
  `shareid` int(19) NOT NULL,
  `setype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsortcol`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportsortcol` (
  `sortcolid` int(19) NOT NULL,
  `reportid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `sortorder` varchar(250) DEFAULT 'Asc',
  PRIMARY KEY (`sortcolid`,`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportsortcol`
--

INSERT INTO `vtiger_reportsortcol` (`sortcolid`, `reportid`, `columnname`, `sortorder`) VALUES
(0, 13, 'vtiger_products:productname:Products_Product_Name:productname:V', 'Ascending'),
(0, 26, 'vtiger_maintenancecf:cf_741:Maintenance_Designation:cf_741:V', 'Ascending'),
(0, 27, 'none', 'Ascending'),
(0, 28, 'none', ''),
(0, 29, 'vtiger_assets:product:Assets_Product_Name:product:V', 'Ascending'),
(1, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V', 'Ascending'),
(1, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V', 'Ascending'),
(1, 6, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'Ascending'),
(1, 11, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V', 'Ascending'),
(1, 13, 'none', ''),
(1, 26, 'none', ''),
(1, 27, 'none', ''),
(1, 28, 'none', ''),
(1, 29, 'none', ''),
(2, 13, 'none', ''),
(2, 26, 'none', ''),
(2, 27, 'none', ''),
(2, 28, 'none', ''),
(2, 29, 'none', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsummary`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportsummary` (
  `reportsummaryid` int(19) NOT NULL,
  `summarytype` int(19) NOT NULL,
  `columnname` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`reportsummaryid`,`summarytype`,`columnname`),
  KEY `reportsummary_reportsummaryid_idx` (`reportsummaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportsummary`
--

INSERT INTO `vtiger_reportsummary` (`reportsummaryid`, `summarytype`, `columnname`) VALUES
(13, 0, 'cb:vtiger_products:unit_price:Unit_Price_SUM:2'),
(13, 1, 'cb:vtiger_products:qty_per_unit:Qty/Unit_SUM:2'),
(13, 2, 'cb:vtiger_notes:filedownloadcount:Download_Count_SUM:2'),
(26, 0, 'cb:vtiger_maintenancecf:cf_743:Material_Cost_SUM:2'),
(26, 1, 'cb:vtiger_maintenancecf:cf_745:Company_Cost_SUM:2'),
(26, 2, 'cb:vtiger_maintenancecf:cf_793:Other_cost_SUM:2'),
(28, 0, 'cb:vtiger_maintenancecf:cf_743:Material_Cost_SUM:2'),
(28, 1, 'cb:vtiger_maintenancecf:cf_743:Material_Cost_AVG:3'),
(28, 2, 'cb:vtiger_maintenancecf:cf_743:Material_Cost_MIN:4'),
(28, 3, 'cb:vtiger_maintenancecf:cf_743:Material_Cost_MAX:5'),
(28, 4, 'cb:vtiger_maintenancecf:cf_745:Company_Cost_SUM:2'),
(28, 5, 'cb:vtiger_maintenancecf:cf_745:Company_Cost_AVG:3'),
(28, 6, 'cb:vtiger_maintenancecf:cf_745:Company_Cost_MIN:4'),
(28, 7, 'cb:vtiger_maintenancecf:cf_745:Company_Cost_MAX:5');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reporttype`
--

CREATE TABLE IF NOT EXISTS `vtiger_reporttype` (
  `reportid` int(10) NOT NULL,
  `data` text,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role`
--

CREATE TABLE IF NOT EXISTS `vtiger_role` (
  `roleid` varchar(255) NOT NULL,
  `rolename` varchar(200) DEFAULT NULL,
  `parentrole` varchar(255) DEFAULT NULL,
  `depth` int(19) DEFAULT NULL,
  `allowassignedrecordsto` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_role`
--

INSERT INTO `vtiger_role` (`roleid`, `rolename`, `parentrole`, `depth`, `allowassignedrecordsto`) VALUES
('H1', 'Organization', 'H1', 0, 1),
('H10', 'Others', 'H1::H2::H10', 2, 2),
('H2', 'Manager', 'H1::H2', 1, 1),
('H6', 'UDSM Staff', 'H1::H2::H6', 2, 3),
('H7', 'CoICT Staff', 'H1::H2::H7', 2, 2),
('H8', 'Teaching Staff', 'H1::H2::H8', 2, 2),
('H9', 'Non Teaching Staff', 'H1::H2::H9', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role2picklist`
--

CREATE TABLE IF NOT EXISTS `vtiger_role2picklist` (
  `roleid` varchar(255) NOT NULL,
  `picklistvalueid` int(11) NOT NULL,
  `picklistid` int(11) NOT NULL,
  `sortid` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`,`picklistvalueid`,`picklistid`),
  KEY `role2picklist_roleid_picklistid_idx` (`roleid`,`picklistid`,`picklistvalueid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_role2picklist`
--

INSERT INTO `vtiger_role2picklist` (`roleid`, `picklistvalueid`, `picklistid`, `sortid`) VALUES
('H1', 1, 1, 0),
('H1', 2, 1, 1),
('H1', 3, 1, 2),
('H1', 4, 1, 3),
('H1', 5, 1, 4),
('H1', 6, 1, 5),
('H1', 7, 1, 6),
('H1', 8, 1, 7),
('H1', 9, 1, 8),
('H1', 10, 1, 9),
('H1', 11, 1, 10),
('H1', 12, 2, 0),
('H1', 13, 2, 1),
('H1', 14, 3, 0),
('H1', 15, 3, 1),
('H1', 16, 3, 2),
('H1', 17, 3, 3),
('H1', 18, 3, 4),
('H1', 19, 3, 5),
('H1', 20, 4, 0),
('H1', 21, 4, 1),
('H1', 22, 4, 2),
('H1', 23, 4, 3),
('H1', 24, 4, 4),
('H1', 25, 4, 5),
('H1', 26, 4, 6),
('H1', 27, 4, 7),
('H1', 28, 4, 8),
('H1', 29, 4, 9),
('H1', 30, 4, 10),
('H1', 31, 4, 11),
('H1', 32, 4, 12),
('H1', 33, 5, 0),
('H1', 34, 5, 1),
('H1', 35, 5, 2),
('H1', 36, 5, 3),
('H1', 37, 5, 4),
('H1', 38, 6, 0),
('H1', 39, 6, 1),
('H1', 40, 6, 2),
('H1', 41, 7, 0),
('H1', 42, 7, 1),
('H1', 43, 7, 2),
('H1', 44, 7, 3),
('H1', 45, 7, 4),
('H1', 46, 8, 0),
('H1', 47, 9, 0),
('H1', 48, 9, 1),
('H1', 49, 9, 2),
('H1', 50, 9, 3),
('H1', 59, 10, 8),
('H1', 60, 11, 0),
('H1', 61, 11, 1),
('H1', 62, 11, 2),
('H1', 63, 11, 3),
('H1', 64, 11, 4),
('H1', 65, 11, 5),
('H1', 66, 11, 6),
('H1', 67, 11, 7),
('H1', 68, 11, 8),
('H1', 69, 11, 9),
('H1', 70, 11, 10),
('H1', 71, 11, 11),
('H1', 72, 11, 12),
('H1', 73, 11, 13),
('H1', 74, 11, 14),
('H1', 75, 11, 15),
('H1', 76, 11, 16),
('H1', 77, 11, 17),
('H1', 78, 11, 18),
('H1', 79, 11, 19),
('H1', 80, 11, 20),
('H1', 81, 11, 21),
('H1', 82, 11, 22),
('H1', 83, 11, 23),
('H1', 84, 11, 24),
('H1', 85, 11, 25),
('H1', 86, 11, 26),
('H1', 87, 11, 27),
('H1', 88, 11, 28),
('H1', 89, 11, 29),
('H1', 90, 11, 30),
('H1', 91, 11, 31),
('H1', 92, 12, 0),
('H1', 93, 12, 1),
('H1', 94, 12, 2),
('H1', 95, 12, 3),
('H1', 96, 12, 4),
('H1', 97, 12, 5),
('H1', 98, 13, 0),
('H1', 99, 13, 1),
('H1', 100, 13, 2),
('H1', 101, 13, 3),
('H1', 102, 13, 4),
('H1', 103, 13, 5),
('H1', 104, 13, 6),
('H1', 105, 13, 7),
('H1', 106, 13, 8),
('H1', 107, 13, 9),
('H1', 108, 13, 10),
('H1', 109, 13, 11),
('H1', 110, 13, 12),
('H1', 111, 14, 0),
('H1', 112, 14, 1),
('H1', 113, 14, 2),
('H1', 114, 14, 3),
('H1', 115, 14, 4),
('H1', 116, 14, 5),
('H1', 117, 14, 6),
('H1', 118, 14, 7),
('H1', 119, 14, 8),
('H1', 120, 14, 9),
('H1', 121, 14, 10),
('H1', 122, 14, 11),
('H1', 123, 15, 0),
('H1', 124, 15, 1),
('H1', 125, 15, 2),
('H1', 126, 15, 3),
('H1', 127, 16, 0),
('H1', 128, 16, 1),
('H1', 129, 16, 2),
('H1', 130, 17, 0),
('H1', 131, 17, 1),
('H1', 132, 17, 2),
('H1', 133, 17, 3),
('H1', 134, 17, 4),
('H1', 135, 18, 0),
('H1', 136, 18, 1),
('H1', 137, 18, 2),
('H1', 138, 18, 3),
('H1', 139, 19, 0),
('H1', 140, 19, 1),
('H1', 141, 19, 2),
('H1', 142, 19, 3),
('H1', 143, 19, 4),
('H1', 144, 20, 0),
('H1', 145, 20, 1),
('H1', 146, 20, 2),
('H1', 147, 20, 3),
('H1', 148, 20, 4),
('H1', 149, 20, 5),
('H1', 150, 21, 0),
('H1', 151, 21, 1),
('H1', 152, 21, 2),
('H1', 153, 21, 3),
('H1', 154, 21, 4),
('H1', 155, 21, 5),
('H1', 156, 21, 6),
('H1', 157, 21, 7),
('H1', 158, 21, 8),
('H1', 159, 21, 9),
('H1', 160, 22, 0),
('H1', 161, 22, 1),
('H1', 162, 22, 2),
('H1', 163, 22, 3),
('H1', 164, 22, 4),
('H1', 165, 22, 5),
('H1', 166, 23, 0),
('H1', 167, 23, 1),
('H1', 168, 23, 2),
('H1', 169, 23, 3),
('H1', 170, 24, 0),
('H1', 171, 24, 1),
('H1', 172, 24, 2),
('H1', 173, 25, 0),
('H1', 174, 25, 1),
('H1', 175, 25, 2),
('H1', 176, 25, 3),
('H1', 177, 25, 4),
('H1', 178, 25, 5),
('H1', 179, 26, 0),
('H1', 180, 26, 1),
('H1', 181, 26, 2),
('H1', 182, 27, 0),
('H1', 183, 27, 1),
('H1', 184, 27, 2),
('H1', 185, 27, 3),
('H1', 186, 28, 0),
('H1', 187, 28, 1),
('H1', 188, 28, 2),
('H1', 189, 28, 3),
('H1', 190, 29, 0),
('H1', 191, 29, 1),
('H1', 192, 29, 2),
('H1', 193, 29, 3),
('H1', 194, 30, 0),
('H1', 195, 30, 1),
('H1', 196, 30, 2),
('H1', 197, 30, 3),
('H1', 198, 30, 4),
('H1', 199, 30, 5),
('H1', 200, 30, 6),
('H1', 201, 30, 7),
('H1', 202, 30, 8),
('H1', 203, 30, 9),
('H1', 204, 30, 10),
('H1', 205, 30, 11),
('H1', 206, 30, 12),
('H1', 207, 30, 13),
('H1', 208, 30, 14),
('H1', 209, 30, 15),
('H1', 210, 31, 1),
('H1', 211, 31, 2),
('H1', 212, 31, 3),
('H1', 213, 31, 4),
('H1', 214, 32, 1),
('H1', 215, 32, 2),
('H1', 216, 32, 3),
('H1', 217, 32, 4),
('H1', 218, 32, 5),
('H1', 219, 32, 6),
('H1', 220, 33, 1),
('H1', 221, 33, 2),
('H1', 222, 33, 3),
('H1', 223, 34, 1),
('H1', 224, 34, 2),
('H1', 225, 34, 3),
('H1', 226, 35, 1),
('H1', 227, 35, 2),
('H1', 228, 35, 3),
('H1', 229, 36, 1),
('H1', 230, 36, 2),
('H1', 231, 36, 3),
('H1', 232, 36, 4),
('H1', 233, 36, 5),
('H1', 234, 36, 6),
('H1', 235, 37, 1),
('H1', 236, 37, 2),
('H1', 237, 38, 1),
('H1', 238, 38, 2),
('H1', 239, 38, 3),
('H1', 240, 38, 4),
('H1', 241, 39, 1),
('H1', 242, 39, 2),
('H1', 243, 39, 3),
('H1', 244, 39, 4),
('H1', 245, 40, 1),
('H1', 246, 40, 2),
('H1', 247, 40, 3),
('H1', 248, 40, 4),
('H1', 249, 41, 1),
('H1', 250, 41, 2),
('H1', 251, 41, 3),
('H1', 252, 41, 4),
('H1', 253, 41, 5),
('H1', 254, 41, 6),
('H1', 255, 41, 7),
('H1', 256, 41, 8),
('H1', 257, 41, 9),
('H1', 258, 41, 10),
('H1', 259, 41, 11),
('H1', 260, 42, 1),
('H1', 261, 42, 2),
('H1', 262, 42, 3),
('H1', 263, 42, 4),
('H1', 264, 42, 5),
('H1', 265, 42, 6),
('H1', 266, 42, 7),
('H1', 267, 42, 8),
('H1', 268, 42, 9),
('H1', 269, 43, 1),
('H1', 270, 43, 2),
('H1', 271, 43, 3),
('H1', 272, 43, 4),
('H1', 273, 44, 1),
('H1', 274, 44, 2),
('H1', 275, 44, 3),
('H1', 276, 44, 4),
('H1', 277, 45, 1),
('H1', 278, 45, 2),
('H1', 279, 45, 3),
('H1', 280, 45, 4),
('H1', 281, 45, 5),
('H1', 282, 45, 6),
('H1', 283, 45, 7),
('H1', 284, 45, 8),
('H1', 285, 45, 9),
('H1', 286, 45, 10),
('H1', 287, 45, 11),
('H1', 288, 12, 1),
('H1', 289, 46, 1),
('H1', 290, 46, 2),
('H1', 291, 46, 3),
('H1', 292, 46, 4),
('H1', 293, 46, 5),
('H1', 294, 46, 6),
('H1', 295, 2, 1),
('H1', 296, 47, 1),
('H1', 297, 47, 2),
('H1', 298, 47, 3),
('H1', 299, 48, 1),
('H1', 300, 48, 2),
('H10', 1, 1, 0),
('H10', 2, 1, 1),
('H10', 3, 1, 2),
('H10', 4, 1, 3),
('H10', 5, 1, 4),
('H10', 6, 1, 5),
('H10', 7, 1, 6),
('H10', 8, 1, 7),
('H10', 9, 1, 8),
('H10', 10, 1, 9),
('H10', 11, 1, 10),
('H10', 12, 2, 0),
('H10', 13, 2, 1),
('H10', 14, 3, 0),
('H10', 15, 3, 1),
('H10', 16, 3, 2),
('H10', 17, 3, 3),
('H10', 18, 3, 4),
('H10', 19, 3, 5),
('H10', 20, 4, 0),
('H10', 21, 4, 1),
('H10', 22, 4, 2),
('H10', 23, 4, 3),
('H10', 24, 4, 4),
('H10', 25, 4, 5),
('H10', 26, 4, 6),
('H10', 27, 4, 7),
('H10', 28, 4, 8),
('H10', 29, 4, 9),
('H10', 30, 4, 10),
('H10', 31, 4, 11),
('H10', 32, 4, 12),
('H10', 33, 5, 0),
('H10', 34, 5, 1),
('H10', 35, 5, 2),
('H10', 36, 5, 3),
('H10', 37, 5, 4),
('H10', 38, 6, 0),
('H10', 39, 6, 1),
('H10', 40, 6, 2),
('H10', 41, 7, 0),
('H10', 42, 7, 1),
('H10', 43, 7, 2),
('H10', 44, 7, 3),
('H10', 45, 7, 4),
('H10', 46, 8, 0),
('H10', 47, 9, 0),
('H10', 48, 9, 1),
('H10', 49, 9, 2),
('H10', 50, 9, 3),
('H10', 59, 10, 8),
('H10', 60, 11, 0),
('H10', 61, 11, 1),
('H10', 62, 11, 2),
('H10', 63, 11, 3),
('H10', 64, 11, 4),
('H10', 65, 11, 5),
('H10', 66, 11, 6),
('H10', 67, 11, 7),
('H10', 68, 11, 8),
('H10', 69, 11, 9),
('H10', 70, 11, 10),
('H10', 71, 11, 11),
('H10', 72, 11, 12),
('H10', 73, 11, 13),
('H10', 74, 11, 14),
('H10', 75, 11, 15),
('H10', 76, 11, 16),
('H10', 77, 11, 17),
('H10', 78, 11, 18),
('H10', 79, 11, 19),
('H10', 80, 11, 20),
('H10', 81, 11, 21),
('H10', 82, 11, 22),
('H10', 83, 11, 23),
('H10', 84, 11, 24),
('H10', 85, 11, 25),
('H10', 86, 11, 26),
('H10', 87, 11, 27),
('H10', 88, 11, 28),
('H10', 89, 11, 29),
('H10', 90, 11, 30),
('H10', 91, 11, 31),
('H10', 92, 12, 0),
('H10', 93, 12, 1),
('H10', 94, 12, 2),
('H10', 95, 12, 3),
('H10', 96, 12, 4),
('H10', 97, 12, 5),
('H10', 98, 13, 0),
('H10', 99, 13, 1),
('H10', 100, 13, 2),
('H10', 101, 13, 3),
('H10', 102, 13, 4),
('H10', 103, 13, 5),
('H10', 104, 13, 6),
('H10', 105, 13, 7),
('H10', 106, 13, 8),
('H10', 107, 13, 9),
('H10', 108, 13, 10),
('H10', 109, 13, 11),
('H10', 110, 13, 12),
('H10', 111, 14, 0),
('H10', 112, 14, 1),
('H10', 113, 14, 2),
('H10', 114, 14, 3),
('H10', 115, 14, 4),
('H10', 116, 14, 5),
('H10', 117, 14, 6),
('H10', 118, 14, 7),
('H10', 119, 14, 8),
('H10', 120, 14, 9),
('H10', 121, 14, 10),
('H10', 122, 14, 11),
('H10', 123, 15, 0),
('H10', 124, 15, 1),
('H10', 125, 15, 2),
('H10', 126, 15, 3),
('H10', 127, 16, 0),
('H10', 128, 16, 1),
('H10', 129, 16, 2),
('H10', 130, 17, 0),
('H10', 131, 17, 1),
('H10', 132, 17, 2),
('H10', 133, 17, 3),
('H10', 134, 17, 4),
('H10', 135, 18, 0),
('H10', 136, 18, 1),
('H10', 137, 18, 2),
('H10', 138, 18, 3),
('H10', 139, 19, 0),
('H10', 140, 19, 1),
('H10', 141, 19, 2),
('H10', 142, 19, 3),
('H10', 143, 19, 4),
('H10', 144, 20, 0),
('H10', 145, 20, 1),
('H10', 146, 20, 2),
('H10', 147, 20, 3),
('H10', 148, 20, 4),
('H10', 149, 20, 5),
('H10', 150, 21, 0),
('H10', 151, 21, 1),
('H10', 152, 21, 2),
('H10', 153, 21, 3),
('H10', 154, 21, 4),
('H10', 155, 21, 5),
('H10', 156, 21, 6),
('H10', 157, 21, 7),
('H10', 158, 21, 8),
('H10', 159, 21, 9),
('H10', 160, 22, 0),
('H10', 161, 22, 1),
('H10', 162, 22, 2),
('H10', 163, 22, 3),
('H10', 164, 22, 4),
('H10', 165, 22, 5),
('H10', 166, 23, 0),
('H10', 167, 23, 1),
('H10', 168, 23, 2),
('H10', 169, 23, 3),
('H10', 170, 24, 0),
('H10', 171, 24, 1),
('H10', 172, 24, 2),
('H10', 173, 25, 0),
('H10', 174, 25, 1),
('H10', 175, 25, 2),
('H10', 176, 25, 3),
('H10', 177, 25, 4),
('H10', 178, 25, 5),
('H10', 179, 26, 0),
('H10', 180, 26, 1),
('H10', 181, 26, 2),
('H10', 182, 27, 0),
('H10', 183, 27, 1),
('H10', 184, 27, 2),
('H10', 185, 27, 3),
('H10', 186, 28, 0),
('H10', 187, 28, 1),
('H10', 188, 28, 2),
('H10', 189, 28, 3),
('H10', 190, 29, 0),
('H10', 191, 29, 1),
('H10', 192, 29, 2),
('H10', 193, 29, 3),
('H10', 194, 30, 0),
('H10', 195, 30, 1),
('H10', 196, 30, 2),
('H10', 197, 30, 3),
('H10', 198, 30, 4),
('H10', 199, 30, 5),
('H10', 200, 30, 6),
('H10', 201, 30, 7),
('H10', 202, 30, 8),
('H10', 203, 30, 9),
('H10', 204, 30, 10),
('H10', 205, 30, 11),
('H10', 206, 30, 12),
('H10', 207, 30, 13),
('H10', 208, 30, 14),
('H10', 209, 30, 15),
('H10', 210, 31, 1),
('H10', 211, 31, 2),
('H10', 212, 31, 3),
('H10', 213, 31, 4),
('H10', 214, 32, 1),
('H10', 215, 32, 2),
('H10', 216, 32, 3),
('H10', 217, 32, 4),
('H10', 218, 32, 5),
('H10', 219, 32, 6),
('H10', 220, 33, 1),
('H10', 221, 33, 2),
('H10', 222, 33, 3),
('H10', 223, 34, 1),
('H10', 224, 34, 2),
('H10', 225, 34, 3),
('H10', 226, 35, 1),
('H10', 227, 35, 2),
('H10', 228, 35, 3),
('H10', 229, 36, 1),
('H10', 230, 36, 2),
('H10', 231, 36, 3),
('H10', 232, 36, 4),
('H10', 233, 36, 5),
('H10', 234, 36, 6),
('H10', 235, 37, 1),
('H10', 236, 37, 2),
('H10', 237, 38, 1),
('H10', 238, 38, 2),
('H10', 239, 38, 3),
('H10', 240, 38, 4),
('H10', 241, 39, 1),
('H10', 242, 39, 2),
('H10', 243, 39, 3),
('H10', 244, 39, 4),
('H10', 245, 40, 1),
('H10', 246, 40, 2),
('H10', 247, 40, 3),
('H10', 248, 40, 4),
('H10', 249, 41, 1),
('H10', 250, 41, 2),
('H10', 251, 41, 3),
('H10', 252, 41, 4),
('H10', 253, 41, 5),
('H10', 254, 41, 6),
('H10', 255, 41, 7),
('H10', 256, 41, 8),
('H10', 257, 41, 9),
('H10', 258, 41, 10),
('H10', 259, 41, 11),
('H10', 260, 42, 1),
('H10', 261, 42, 2),
('H10', 262, 42, 3),
('H10', 263, 42, 4),
('H10', 264, 42, 5),
('H10', 265, 42, 6),
('H10', 266, 42, 7),
('H10', 267, 42, 8),
('H10', 268, 42, 9),
('H10', 269, 43, 1),
('H10', 270, 43, 2),
('H10', 271, 43, 3),
('H10', 272, 43, 4),
('H10', 273, 44, 1),
('H10', 274, 44, 2),
('H10', 275, 44, 3),
('H10', 276, 44, 4),
('H10', 277, 45, 1),
('H10', 278, 45, 2),
('H10', 279, 45, 3),
('H10', 280, 45, 4),
('H10', 281, 45, 5),
('H10', 282, 45, 6),
('H10', 283, 45, 7),
('H10', 284, 45, 8),
('H10', 285, 45, 9),
('H10', 286, 45, 10),
('H10', 287, 45, 11),
('H10', 288, 12, 1),
('H10', 289, 46, 1),
('H10', 290, 46, 2),
('H10', 291, 46, 3),
('H10', 292, 46, 4),
('H10', 293, 46, 5),
('H10', 294, 46, 6),
('H10', 295, 2, 1),
('H10', 296, 47, 1),
('H10', 297, 47, 2),
('H10', 298, 47, 3),
('H10', 299, 48, 1),
('H10', 300, 48, 2),
('H10', 301, 37, 3),
('H2', 1, 1, 0),
('H2', 2, 1, 1),
('H2', 3, 1, 2),
('H2', 4, 1, 3),
('H2', 5, 1, 4),
('H2', 6, 1, 5),
('H2', 7, 1, 6),
('H2', 8, 1, 7),
('H2', 9, 1, 8),
('H2', 10, 1, 9),
('H2', 11, 1, 10),
('H2', 12, 2, 0),
('H2', 13, 2, 1),
('H2', 14, 3, 0),
('H2', 15, 3, 1),
('H2', 16, 3, 2),
('H2', 17, 3, 3),
('H2', 18, 3, 4),
('H2', 19, 3, 5),
('H2', 20, 4, 0),
('H2', 21, 4, 1),
('H2', 22, 4, 2),
('H2', 23, 4, 3),
('H2', 24, 4, 4),
('H2', 25, 4, 5),
('H2', 26, 4, 6),
('H2', 27, 4, 7),
('H2', 28, 4, 8),
('H2', 29, 4, 9),
('H2', 30, 4, 10),
('H2', 31, 4, 11),
('H2', 32, 4, 12),
('H2', 33, 5, 0),
('H2', 34, 5, 1),
('H2', 35, 5, 2),
('H2', 36, 5, 3),
('H2', 37, 5, 4),
('H2', 38, 6, 0),
('H2', 39, 6, 1),
('H2', 40, 6, 2),
('H2', 41, 7, 0),
('H2', 42, 7, 1),
('H2', 43, 7, 2),
('H2', 44, 7, 3),
('H2', 45, 7, 4),
('H2', 46, 8, 0),
('H2', 47, 9, 0),
('H2', 48, 9, 1),
('H2', 49, 9, 2),
('H2', 50, 9, 3),
('H2', 59, 10, 8),
('H2', 60, 11, 0),
('H2', 61, 11, 1),
('H2', 62, 11, 2),
('H2', 63, 11, 3),
('H2', 64, 11, 4),
('H2', 65, 11, 5),
('H2', 66, 11, 6),
('H2', 67, 11, 7),
('H2', 68, 11, 8),
('H2', 69, 11, 9),
('H2', 70, 11, 10),
('H2', 71, 11, 11),
('H2', 72, 11, 12),
('H2', 73, 11, 13),
('H2', 74, 11, 14),
('H2', 75, 11, 15),
('H2', 76, 11, 16),
('H2', 77, 11, 17),
('H2', 78, 11, 18),
('H2', 79, 11, 19),
('H2', 80, 11, 20),
('H2', 81, 11, 21),
('H2', 82, 11, 22),
('H2', 83, 11, 23),
('H2', 84, 11, 24),
('H2', 85, 11, 25),
('H2', 86, 11, 26),
('H2', 87, 11, 27),
('H2', 88, 11, 28),
('H2', 89, 11, 29),
('H2', 90, 11, 30),
('H2', 91, 11, 31),
('H2', 92, 12, 0),
('H2', 93, 12, 1),
('H2', 94, 12, 2),
('H2', 95, 12, 3),
('H2', 96, 12, 4),
('H2', 97, 12, 5),
('H2', 98, 13, 0),
('H2', 99, 13, 1),
('H2', 100, 13, 2),
('H2', 101, 13, 3),
('H2', 102, 13, 4),
('H2', 103, 13, 5),
('H2', 104, 13, 6),
('H2', 105, 13, 7),
('H2', 106, 13, 8),
('H2', 107, 13, 9),
('H2', 108, 13, 10),
('H2', 109, 13, 11),
('H2', 110, 13, 12),
('H2', 111, 14, 0),
('H2', 112, 14, 1),
('H2', 113, 14, 2),
('H2', 114, 14, 3),
('H2', 115, 14, 4),
('H2', 116, 14, 5),
('H2', 117, 14, 6),
('H2', 118, 14, 7),
('H2', 119, 14, 8),
('H2', 120, 14, 9),
('H2', 121, 14, 10),
('H2', 122, 14, 11),
('H2', 123, 15, 0),
('H2', 124, 15, 1),
('H2', 125, 15, 2),
('H2', 126, 15, 3),
('H2', 127, 16, 0),
('H2', 128, 16, 1),
('H2', 129, 16, 2),
('H2', 130, 17, 0),
('H2', 131, 17, 1),
('H2', 132, 17, 2),
('H2', 133, 17, 3),
('H2', 134, 17, 4),
('H2', 135, 18, 0),
('H2', 136, 18, 1),
('H2', 137, 18, 2),
('H2', 138, 18, 3),
('H2', 139, 19, 0),
('H2', 140, 19, 1),
('H2', 141, 19, 2),
('H2', 142, 19, 3),
('H2', 143, 19, 4),
('H2', 144, 20, 0),
('H2', 145, 20, 1),
('H2', 146, 20, 2),
('H2', 147, 20, 3),
('H2', 148, 20, 4),
('H2', 149, 20, 5),
('H2', 150, 21, 0),
('H2', 151, 21, 1),
('H2', 152, 21, 2),
('H2', 153, 21, 3),
('H2', 154, 21, 4),
('H2', 155, 21, 5),
('H2', 156, 21, 6),
('H2', 157, 21, 7),
('H2', 158, 21, 8),
('H2', 159, 21, 9),
('H2', 160, 22, 0),
('H2', 161, 22, 1),
('H2', 162, 22, 2),
('H2', 163, 22, 3),
('H2', 164, 22, 4),
('H2', 165, 22, 5),
('H2', 166, 23, 0),
('H2', 167, 23, 1),
('H2', 168, 23, 2),
('H2', 169, 23, 3),
('H2', 170, 24, 0),
('H2', 171, 24, 1),
('H2', 172, 24, 2),
('H2', 173, 25, 0),
('H2', 174, 25, 1),
('H2', 175, 25, 2),
('H2', 176, 25, 3),
('H2', 177, 25, 4),
('H2', 178, 25, 5),
('H2', 179, 26, 0),
('H2', 180, 26, 1),
('H2', 181, 26, 2),
('H2', 182, 27, 0),
('H2', 183, 27, 1),
('H2', 184, 27, 2),
('H2', 185, 27, 3),
('H2', 186, 28, 0),
('H2', 187, 28, 1),
('H2', 188, 28, 2),
('H2', 189, 28, 3),
('H2', 190, 29, 0),
('H2', 191, 29, 1),
('H2', 192, 29, 2),
('H2', 193, 29, 3),
('H2', 194, 30, 0),
('H2', 195, 30, 1),
('H2', 196, 30, 2),
('H2', 197, 30, 3),
('H2', 198, 30, 4),
('H2', 199, 30, 5),
('H2', 200, 30, 6),
('H2', 201, 30, 7),
('H2', 202, 30, 8),
('H2', 203, 30, 9),
('H2', 204, 30, 10),
('H2', 205, 30, 11),
('H2', 206, 30, 12),
('H2', 207, 30, 13),
('H2', 208, 30, 14),
('H2', 209, 30, 15),
('H2', 210, 31, 1),
('H2', 211, 31, 2),
('H2', 212, 31, 3),
('H2', 213, 31, 4),
('H2', 214, 32, 1),
('H2', 215, 32, 2),
('H2', 216, 32, 3),
('H2', 217, 32, 4),
('H2', 218, 32, 5),
('H2', 219, 32, 6),
('H2', 220, 33, 1),
('H2', 221, 33, 2),
('H2', 222, 33, 3),
('H2', 223, 34, 1),
('H2', 224, 34, 2),
('H2', 225, 34, 3),
('H2', 226, 35, 1),
('H2', 227, 35, 2),
('H2', 228, 35, 3),
('H2', 229, 36, 1),
('H2', 230, 36, 2),
('H2', 231, 36, 3),
('H2', 232, 36, 4),
('H2', 233, 36, 5),
('H2', 234, 36, 6),
('H2', 235, 37, 1),
('H2', 236, 37, 2),
('H2', 237, 38, 1),
('H2', 238, 38, 2),
('H2', 239, 38, 3),
('H2', 240, 38, 4),
('H2', 241, 39, 1),
('H2', 242, 39, 2),
('H2', 243, 39, 3),
('H2', 244, 39, 4),
('H2', 245, 40, 1),
('H2', 246, 40, 2),
('H2', 247, 40, 3),
('H2', 248, 40, 4),
('H2', 249, 41, 1),
('H2', 250, 41, 2),
('H2', 251, 41, 3),
('H2', 252, 41, 4),
('H2', 253, 41, 5),
('H2', 254, 41, 6),
('H2', 255, 41, 7),
('H2', 256, 41, 8),
('H2', 257, 41, 9),
('H2', 258, 41, 10),
('H2', 259, 41, 11),
('H2', 260, 42, 1),
('H2', 261, 42, 2),
('H2', 262, 42, 3),
('H2', 263, 42, 4),
('H2', 264, 42, 5),
('H2', 265, 42, 6),
('H2', 266, 42, 7),
('H2', 267, 42, 8),
('H2', 268, 42, 9),
('H2', 269, 43, 1),
('H2', 270, 43, 2),
('H2', 271, 43, 3),
('H2', 272, 43, 4),
('H2', 273, 44, 1),
('H2', 274, 44, 2),
('H2', 275, 44, 3),
('H2', 276, 44, 4),
('H2', 277, 45, 1),
('H2', 278, 45, 2),
('H2', 279, 45, 3),
('H2', 280, 45, 4),
('H2', 281, 45, 5),
('H2', 282, 45, 6),
('H2', 283, 45, 7),
('H2', 284, 45, 8),
('H2', 285, 45, 9),
('H2', 286, 45, 10),
('H2', 287, 45, 11),
('H2', 288, 12, 1),
('H2', 289, 46, 1),
('H2', 290, 46, 2),
('H2', 291, 46, 3),
('H2', 292, 46, 4),
('H2', 293, 46, 5),
('H2', 294, 46, 6),
('H2', 295, 2, 1),
('H2', 296, 47, 1),
('H2', 297, 47, 2),
('H2', 298, 47, 3),
('H2', 299, 48, 1),
('H2', 300, 48, 2),
('H2', 301, 37, 3),
('H3', 1, 1, 0),
('H3', 2, 1, 1),
('H3', 3, 1, 2),
('H3', 4, 1, 3),
('H3', 5, 1, 4),
('H3', 6, 1, 5),
('H3', 7, 1, 6),
('H3', 8, 1, 7),
('H3', 9, 1, 8),
('H3', 10, 1, 9),
('H3', 11, 1, 10),
('H3', 12, 2, 0),
('H3', 13, 2, 1),
('H3', 14, 3, 0),
('H3', 15, 3, 1),
('H3', 16, 3, 2),
('H3', 17, 3, 3),
('H3', 18, 3, 4),
('H3', 19, 3, 5),
('H3', 20, 4, 0),
('H3', 21, 4, 1),
('H3', 22, 4, 2),
('H3', 23, 4, 3),
('H3', 24, 4, 4),
('H3', 25, 4, 5),
('H3', 26, 4, 6),
('H3', 27, 4, 7),
('H3', 28, 4, 8),
('H3', 29, 4, 9),
('H3', 30, 4, 10),
('H3', 31, 4, 11),
('H3', 32, 4, 12),
('H3', 33, 5, 0),
('H3', 34, 5, 1),
('H3', 35, 5, 2),
('H3', 36, 5, 3),
('H3', 37, 5, 4),
('H3', 38, 6, 0),
('H3', 39, 6, 1),
('H3', 40, 6, 2),
('H3', 41, 7, 0),
('H3', 42, 7, 1),
('H3', 43, 7, 2),
('H3', 44, 7, 3),
('H3', 45, 7, 4),
('H3', 46, 8, 0),
('H3', 47, 9, 0),
('H3', 48, 9, 1),
('H3', 49, 9, 2),
('H3', 50, 9, 3),
('H3', 59, 10, 8),
('H3', 60, 11, 0),
('H3', 61, 11, 1),
('H3', 62, 11, 2),
('H3', 63, 11, 3),
('H3', 64, 11, 4),
('H3', 65, 11, 5),
('H3', 66, 11, 6),
('H3', 67, 11, 7),
('H3', 68, 11, 8),
('H3', 69, 11, 9),
('H3', 70, 11, 10),
('H3', 71, 11, 11),
('H3', 72, 11, 12),
('H3', 73, 11, 13),
('H3', 74, 11, 14),
('H3', 75, 11, 15),
('H3', 76, 11, 16),
('H3', 77, 11, 17),
('H3', 78, 11, 18),
('H3', 79, 11, 19),
('H3', 80, 11, 20),
('H3', 81, 11, 21),
('H3', 82, 11, 22),
('H3', 83, 11, 23),
('H3', 84, 11, 24),
('H3', 85, 11, 25),
('H3', 86, 11, 26),
('H3', 87, 11, 27),
('H3', 88, 11, 28),
('H3', 89, 11, 29),
('H3', 90, 11, 30),
('H3', 91, 11, 31),
('H3', 92, 12, 0),
('H3', 93, 12, 1),
('H3', 94, 12, 2),
('H3', 95, 12, 3),
('H3', 96, 12, 4),
('H3', 97, 12, 5),
('H3', 98, 13, 0),
('H3', 99, 13, 1),
('H3', 100, 13, 2),
('H3', 101, 13, 3),
('H3', 102, 13, 4),
('H3', 103, 13, 5),
('H3', 104, 13, 6),
('H3', 105, 13, 7),
('H3', 106, 13, 8),
('H3', 107, 13, 9),
('H3', 108, 13, 10),
('H3', 109, 13, 11),
('H3', 110, 13, 12),
('H3', 111, 14, 0),
('H3', 112, 14, 1),
('H3', 113, 14, 2),
('H3', 114, 14, 3),
('H3', 115, 14, 4),
('H3', 116, 14, 5),
('H3', 117, 14, 6),
('H3', 118, 14, 7),
('H3', 119, 14, 8),
('H3', 120, 14, 9),
('H3', 121, 14, 10),
('H3', 122, 14, 11),
('H3', 123, 15, 0),
('H3', 124, 15, 1),
('H3', 125, 15, 2),
('H3', 126, 15, 3),
('H3', 127, 16, 0),
('H3', 128, 16, 1),
('H3', 129, 16, 2),
('H3', 130, 17, 0),
('H3', 131, 17, 1),
('H3', 132, 17, 2),
('H3', 133, 17, 3),
('H3', 134, 17, 4),
('H3', 135, 18, 0),
('H3', 136, 18, 1),
('H3', 137, 18, 2),
('H3', 138, 18, 3),
('H3', 139, 19, 0),
('H3', 140, 19, 1),
('H3', 141, 19, 2),
('H3', 142, 19, 3),
('H3', 143, 19, 4),
('H3', 144, 20, 0),
('H3', 145, 20, 1),
('H3', 146, 20, 2),
('H3', 147, 20, 3),
('H3', 148, 20, 4),
('H3', 149, 20, 5),
('H3', 150, 21, 0),
('H3', 151, 21, 1),
('H3', 152, 21, 2),
('H3', 153, 21, 3),
('H3', 154, 21, 4),
('H3', 155, 21, 5),
('H3', 156, 21, 6),
('H3', 157, 21, 7),
('H3', 158, 21, 8),
('H3', 159, 21, 9),
('H3', 160, 22, 0),
('H3', 161, 22, 1),
('H3', 162, 22, 2),
('H3', 163, 22, 3),
('H3', 164, 22, 4),
('H3', 165, 22, 5),
('H3', 166, 23, 0),
('H3', 167, 23, 1),
('H3', 168, 23, 2),
('H3', 169, 23, 3),
('H3', 170, 24, 0),
('H3', 171, 24, 1),
('H3', 172, 24, 2),
('H3', 173, 25, 0),
('H3', 174, 25, 1),
('H3', 175, 25, 2),
('H3', 176, 25, 3),
('H3', 177, 25, 4),
('H3', 178, 25, 5),
('H3', 179, 26, 0),
('H3', 180, 26, 1),
('H3', 181, 26, 2),
('H3', 182, 27, 0),
('H3', 183, 27, 1),
('H3', 184, 27, 2),
('H3', 185, 27, 3),
('H3', 186, 28, 0),
('H3', 187, 28, 1),
('H3', 188, 28, 2),
('H3', 189, 28, 3),
('H3', 190, 29, 0),
('H3', 191, 29, 1),
('H3', 192, 29, 2),
('H3', 193, 29, 3),
('H3', 194, 30, 0),
('H3', 195, 30, 1),
('H3', 196, 30, 2),
('H3', 197, 30, 3),
('H3', 198, 30, 4),
('H3', 199, 30, 5),
('H3', 200, 30, 6),
('H3', 201, 30, 7),
('H3', 202, 30, 8),
('H3', 203, 30, 9),
('H3', 204, 30, 10),
('H3', 205, 30, 11),
('H3', 206, 30, 12),
('H3', 207, 30, 13),
('H3', 208, 30, 14),
('H3', 209, 30, 15),
('H3', 210, 31, 1),
('H3', 211, 31, 2),
('H3', 212, 31, 3),
('H3', 213, 31, 4),
('H3', 214, 32, 1),
('H3', 215, 32, 2),
('H3', 216, 32, 3),
('H3', 217, 32, 4),
('H3', 218, 32, 5),
('H3', 219, 32, 6),
('H3', 220, 33, 1),
('H3', 221, 33, 2),
('H3', 222, 33, 3),
('H3', 223, 34, 1),
('H3', 224, 34, 2),
('H3', 225, 34, 3),
('H3', 226, 35, 1),
('H3', 227, 35, 2),
('H3', 228, 35, 3),
('H3', 229, 36, 1),
('H3', 230, 36, 2),
('H3', 231, 36, 3),
('H3', 232, 36, 4),
('H3', 233, 36, 5),
('H3', 234, 36, 6),
('H3', 235, 37, 1),
('H3', 236, 37, 2),
('H3', 237, 38, 1),
('H3', 238, 38, 2),
('H3', 239, 38, 3),
('H3', 240, 38, 4),
('H3', 241, 39, 1),
('H3', 242, 39, 2),
('H3', 243, 39, 3),
('H3', 244, 39, 4),
('H3', 245, 40, 1),
('H3', 246, 40, 2),
('H3', 247, 40, 3),
('H3', 248, 40, 4),
('H3', 249, 41, 1),
('H3', 250, 41, 2),
('H3', 251, 41, 3),
('H3', 252, 41, 4),
('H3', 253, 41, 5),
('H3', 254, 41, 6),
('H3', 255, 41, 7),
('H3', 256, 41, 8),
('H3', 257, 41, 9),
('H3', 258, 41, 10),
('H3', 259, 41, 11),
('H3', 260, 42, 1),
('H3', 261, 42, 2),
('H3', 262, 42, 3),
('H3', 263, 42, 4),
('H3', 264, 42, 5),
('H3', 265, 42, 6),
('H3', 266, 42, 7),
('H3', 267, 42, 8),
('H3', 268, 42, 9),
('H3', 269, 43, 1),
('H3', 270, 43, 2),
('H3', 271, 43, 3),
('H3', 272, 43, 4),
('H3', 273, 44, 1),
('H3', 274, 44, 2),
('H3', 275, 44, 3),
('H3', 276, 44, 4),
('H3', 277, 45, 1),
('H3', 278, 45, 2),
('H3', 279, 45, 3),
('H3', 280, 45, 4),
('H3', 281, 45, 5),
('H3', 282, 45, 6),
('H3', 283, 45, 7),
('H3', 284, 45, 8),
('H3', 285, 45, 9),
('H3', 286, 45, 10),
('H3', 287, 45, 11),
('H3', 288, 12, 1),
('H3', 289, 46, 1),
('H3', 290, 46, 2),
('H3', 291, 46, 3),
('H3', 292, 46, 4),
('H3', 293, 46, 5),
('H3', 294, 46, 6),
('H3', 295, 2, 1),
('H3', 296, 47, 1),
('H3', 297, 47, 2),
('H3', 298, 47, 3),
('H3', 299, 48, 1),
('H3', 300, 48, 2),
('H3', 301, 37, 3),
('H4', 1, 1, 0),
('H4', 2, 1, 1),
('H4', 3, 1, 2),
('H4', 4, 1, 3),
('H4', 5, 1, 4),
('H4', 6, 1, 5),
('H4', 7, 1, 6),
('H4', 8, 1, 7),
('H4', 9, 1, 8),
('H4', 10, 1, 9),
('H4', 11, 1, 10),
('H4', 12, 2, 0),
('H4', 13, 2, 1),
('H4', 14, 3, 0),
('H4', 15, 3, 1),
('H4', 16, 3, 2),
('H4', 17, 3, 3),
('H4', 18, 3, 4),
('H4', 19, 3, 5),
('H4', 20, 4, 0),
('H4', 21, 4, 1),
('H4', 22, 4, 2),
('H4', 23, 4, 3),
('H4', 24, 4, 4),
('H4', 25, 4, 5),
('H4', 26, 4, 6),
('H4', 27, 4, 7),
('H4', 28, 4, 8),
('H4', 29, 4, 9),
('H4', 30, 4, 10),
('H4', 31, 4, 11),
('H4', 32, 4, 12),
('H4', 33, 5, 0),
('H4', 34, 5, 1),
('H4', 35, 5, 2),
('H4', 36, 5, 3),
('H4', 37, 5, 4),
('H4', 38, 6, 0),
('H4', 39, 6, 1),
('H4', 40, 6, 2),
('H4', 41, 7, 0),
('H4', 42, 7, 1),
('H4', 43, 7, 2),
('H4', 44, 7, 3),
('H4', 45, 7, 4),
('H4', 46, 8, 0),
('H4', 47, 9, 0),
('H4', 48, 9, 1),
('H4', 49, 9, 2),
('H4', 50, 9, 3),
('H4', 59, 10, 8),
('H4', 60, 11, 0),
('H4', 61, 11, 1),
('H4', 62, 11, 2),
('H4', 63, 11, 3),
('H4', 64, 11, 4),
('H4', 65, 11, 5),
('H4', 66, 11, 6),
('H4', 67, 11, 7),
('H4', 68, 11, 8),
('H4', 69, 11, 9),
('H4', 70, 11, 10),
('H4', 71, 11, 11),
('H4', 72, 11, 12),
('H4', 73, 11, 13),
('H4', 74, 11, 14),
('H4', 75, 11, 15),
('H4', 76, 11, 16),
('H4', 77, 11, 17),
('H4', 78, 11, 18),
('H4', 79, 11, 19),
('H4', 80, 11, 20),
('H4', 81, 11, 21),
('H4', 82, 11, 22),
('H4', 83, 11, 23),
('H4', 84, 11, 24),
('H4', 85, 11, 25),
('H4', 86, 11, 26),
('H4', 87, 11, 27),
('H4', 88, 11, 28),
('H4', 89, 11, 29),
('H4', 90, 11, 30),
('H4', 91, 11, 31),
('H4', 92, 12, 0),
('H4', 93, 12, 1),
('H4', 94, 12, 2),
('H4', 95, 12, 3),
('H4', 96, 12, 4),
('H4', 97, 12, 5),
('H4', 98, 13, 0),
('H4', 99, 13, 1),
('H4', 100, 13, 2),
('H4', 101, 13, 3),
('H4', 102, 13, 4),
('H4', 103, 13, 5),
('H4', 104, 13, 6),
('H4', 105, 13, 7),
('H4', 106, 13, 8),
('H4', 107, 13, 9),
('H4', 108, 13, 10),
('H4', 109, 13, 11),
('H4', 110, 13, 12),
('H4', 111, 14, 0),
('H4', 112, 14, 1),
('H4', 113, 14, 2),
('H4', 114, 14, 3),
('H4', 115, 14, 4),
('H4', 116, 14, 5),
('H4', 117, 14, 6),
('H4', 118, 14, 7),
('H4', 119, 14, 8),
('H4', 120, 14, 9),
('H4', 121, 14, 10),
('H4', 122, 14, 11),
('H4', 123, 15, 0),
('H4', 124, 15, 1),
('H4', 125, 15, 2),
('H4', 126, 15, 3),
('H4', 127, 16, 0),
('H4', 128, 16, 1),
('H4', 129, 16, 2),
('H4', 130, 17, 0),
('H4', 131, 17, 1),
('H4', 132, 17, 2),
('H4', 133, 17, 3),
('H4', 134, 17, 4),
('H4', 135, 18, 0),
('H4', 136, 18, 1),
('H4', 137, 18, 2),
('H4', 138, 18, 3),
('H4', 139, 19, 0),
('H4', 140, 19, 1),
('H4', 141, 19, 2),
('H4', 142, 19, 3),
('H4', 143, 19, 4),
('H4', 144, 20, 0),
('H4', 145, 20, 1),
('H4', 146, 20, 2),
('H4', 147, 20, 3),
('H4', 148, 20, 4),
('H4', 149, 20, 5),
('H4', 150, 21, 0),
('H4', 151, 21, 1),
('H4', 152, 21, 2),
('H4', 153, 21, 3),
('H4', 154, 21, 4),
('H4', 155, 21, 5),
('H4', 156, 21, 6),
('H4', 157, 21, 7),
('H4', 158, 21, 8),
('H4', 159, 21, 9),
('H4', 160, 22, 0),
('H4', 161, 22, 1),
('H4', 162, 22, 2),
('H4', 163, 22, 3),
('H4', 164, 22, 4),
('H4', 165, 22, 5),
('H4', 166, 23, 0),
('H4', 167, 23, 1),
('H4', 168, 23, 2),
('H4', 169, 23, 3),
('H4', 170, 24, 0),
('H4', 171, 24, 1),
('H4', 172, 24, 2),
('H4', 173, 25, 0),
('H4', 174, 25, 1),
('H4', 175, 25, 2),
('H4', 176, 25, 3),
('H4', 177, 25, 4),
('H4', 178, 25, 5),
('H4', 179, 26, 0),
('H4', 180, 26, 1),
('H4', 181, 26, 2),
('H4', 182, 27, 0),
('H4', 183, 27, 1),
('H4', 184, 27, 2),
('H4', 185, 27, 3),
('H4', 186, 28, 0),
('H4', 187, 28, 1),
('H4', 188, 28, 2),
('H4', 189, 28, 3),
('H4', 190, 29, 0),
('H4', 191, 29, 1),
('H4', 192, 29, 2),
('H4', 193, 29, 3),
('H4', 194, 30, 0),
('H4', 195, 30, 1),
('H4', 196, 30, 2),
('H4', 197, 30, 3),
('H4', 198, 30, 4),
('H4', 199, 30, 5),
('H4', 200, 30, 6),
('H4', 201, 30, 7),
('H4', 202, 30, 8),
('H4', 203, 30, 9),
('H4', 204, 30, 10),
('H4', 205, 30, 11),
('H4', 206, 30, 12),
('H4', 207, 30, 13),
('H4', 208, 30, 14),
('H4', 209, 30, 15),
('H4', 210, 31, 1),
('H4', 211, 31, 2),
('H4', 212, 31, 3),
('H4', 213, 31, 4),
('H4', 214, 32, 1),
('H4', 215, 32, 2),
('H4', 216, 32, 3),
('H4', 217, 32, 4),
('H4', 218, 32, 5),
('H4', 219, 32, 6),
('H4', 220, 33, 1),
('H4', 221, 33, 2),
('H4', 222, 33, 3),
('H4', 223, 34, 1),
('H4', 224, 34, 2),
('H4', 225, 34, 3),
('H4', 226, 35, 1),
('H4', 227, 35, 2),
('H4', 228, 35, 3),
('H4', 229, 36, 1),
('H4', 230, 36, 2),
('H4', 231, 36, 3),
('H4', 232, 36, 4),
('H4', 233, 36, 5),
('H4', 234, 36, 6),
('H4', 235, 37, 1),
('H4', 236, 37, 2),
('H4', 237, 38, 1),
('H4', 238, 38, 2),
('H4', 239, 38, 3),
('H4', 240, 38, 4),
('H4', 241, 39, 1),
('H4', 242, 39, 2),
('H4', 243, 39, 3),
('H4', 244, 39, 4),
('H4', 245, 40, 1),
('H4', 246, 40, 2),
('H4', 247, 40, 3),
('H4', 248, 40, 4),
('H4', 249, 41, 1),
('H4', 250, 41, 2),
('H4', 251, 41, 3),
('H4', 252, 41, 4),
('H4', 253, 41, 5),
('H4', 254, 41, 6),
('H4', 255, 41, 7),
('H4', 256, 41, 8),
('H4', 257, 41, 9),
('H4', 258, 41, 10),
('H4', 259, 41, 11),
('H4', 260, 42, 1),
('H4', 261, 42, 2),
('H4', 262, 42, 3),
('H4', 263, 42, 4),
('H4', 264, 42, 5),
('H4', 265, 42, 6),
('H4', 266, 42, 7),
('H4', 267, 42, 8),
('H4', 268, 42, 9),
('H4', 269, 43, 1),
('H4', 270, 43, 2),
('H4', 271, 43, 3),
('H4', 272, 43, 4),
('H4', 273, 44, 1),
('H4', 274, 44, 2),
('H4', 275, 44, 3),
('H4', 276, 44, 4),
('H4', 277, 45, 1),
('H4', 278, 45, 2),
('H4', 279, 45, 3),
('H4', 280, 45, 4),
('H4', 281, 45, 5),
('H4', 282, 45, 6),
('H4', 283, 45, 7),
('H4', 284, 45, 8),
('H4', 285, 45, 9),
('H4', 286, 45, 10),
('H4', 287, 45, 11),
('H4', 288, 12, 1),
('H4', 289, 46, 1),
('H4', 290, 46, 2),
('H4', 291, 46, 3),
('H4', 292, 46, 4),
('H4', 293, 46, 5),
('H4', 294, 46, 6),
('H4', 295, 2, 1),
('H4', 296, 47, 1),
('H4', 297, 47, 2),
('H4', 298, 47, 3),
('H4', 299, 48, 1),
('H4', 300, 48, 2),
('H4', 301, 37, 3),
('H5', 1, 1, 0),
('H5', 2, 1, 1),
('H5', 3, 1, 2),
('H5', 4, 1, 3),
('H5', 5, 1, 4),
('H5', 6, 1, 5),
('H5', 7, 1, 6),
('H5', 8, 1, 7),
('H5', 9, 1, 8),
('H5', 10, 1, 9),
('H5', 11, 1, 10),
('H5', 12, 2, 0),
('H5', 13, 2, 1),
('H5', 14, 3, 0),
('H5', 15, 3, 1),
('H5', 16, 3, 2),
('H5', 17, 3, 3),
('H5', 18, 3, 4),
('H5', 19, 3, 5),
('H5', 20, 4, 0),
('H5', 21, 4, 1),
('H5', 22, 4, 2),
('H5', 23, 4, 3),
('H5', 24, 4, 4),
('H5', 25, 4, 5),
('H5', 26, 4, 6),
('H5', 27, 4, 7),
('H5', 28, 4, 8),
('H5', 29, 4, 9),
('H5', 30, 4, 10),
('H5', 31, 4, 11),
('H5', 32, 4, 12),
('H5', 33, 5, 0),
('H5', 34, 5, 1),
('H5', 35, 5, 2),
('H5', 36, 5, 3),
('H5', 37, 5, 4),
('H5', 38, 6, 0),
('H5', 39, 6, 1),
('H5', 40, 6, 2),
('H5', 41, 7, 0),
('H5', 42, 7, 1),
('H5', 43, 7, 2),
('H5', 44, 7, 3),
('H5', 45, 7, 4),
('H5', 46, 8, 0),
('H5', 47, 9, 0),
('H5', 48, 9, 1),
('H5', 49, 9, 2),
('H5', 50, 9, 3),
('H5', 59, 10, 8),
('H5', 60, 11, 0),
('H5', 61, 11, 1),
('H5', 62, 11, 2),
('H5', 63, 11, 3),
('H5', 64, 11, 4),
('H5', 65, 11, 5),
('H5', 66, 11, 6),
('H5', 67, 11, 7),
('H5', 68, 11, 8),
('H5', 69, 11, 9),
('H5', 70, 11, 10),
('H5', 71, 11, 11),
('H5', 72, 11, 12),
('H5', 73, 11, 13),
('H5', 74, 11, 14),
('H5', 75, 11, 15),
('H5', 76, 11, 16),
('H5', 77, 11, 17),
('H5', 78, 11, 18),
('H5', 79, 11, 19),
('H5', 80, 11, 20),
('H5', 81, 11, 21),
('H5', 82, 11, 22),
('H5', 83, 11, 23),
('H5', 84, 11, 24),
('H5', 85, 11, 25),
('H5', 86, 11, 26),
('H5', 87, 11, 27),
('H5', 88, 11, 28),
('H5', 89, 11, 29),
('H5', 90, 11, 30),
('H5', 91, 11, 31),
('H5', 92, 12, 0),
('H5', 93, 12, 1),
('H5', 94, 12, 2),
('H5', 95, 12, 3),
('H5', 96, 12, 4),
('H5', 97, 12, 5),
('H5', 98, 13, 0),
('H5', 99, 13, 1),
('H5', 100, 13, 2),
('H5', 101, 13, 3),
('H5', 102, 13, 4),
('H5', 103, 13, 5),
('H5', 104, 13, 6),
('H5', 105, 13, 7),
('H5', 106, 13, 8),
('H5', 107, 13, 9),
('H5', 108, 13, 10),
('H5', 109, 13, 11),
('H5', 110, 13, 12),
('H5', 111, 14, 0),
('H5', 112, 14, 1),
('H5', 113, 14, 2),
('H5', 114, 14, 3),
('H5', 115, 14, 4),
('H5', 116, 14, 5),
('H5', 117, 14, 6),
('H5', 118, 14, 7),
('H5', 119, 14, 8),
('H5', 120, 14, 9),
('H5', 121, 14, 10),
('H5', 122, 14, 11),
('H5', 123, 15, 0),
('H5', 124, 15, 1),
('H5', 125, 15, 2),
('H5', 126, 15, 3),
('H5', 127, 16, 0),
('H5', 128, 16, 1),
('H5', 129, 16, 2),
('H5', 130, 17, 0),
('H5', 131, 17, 1),
('H5', 132, 17, 2),
('H5', 133, 17, 3),
('H5', 134, 17, 4),
('H5', 135, 18, 0),
('H5', 136, 18, 1),
('H5', 137, 18, 2),
('H5', 138, 18, 3),
('H5', 139, 19, 0),
('H5', 140, 19, 1),
('H5', 141, 19, 2),
('H5', 142, 19, 3),
('H5', 143, 19, 4),
('H5', 144, 20, 0),
('H5', 145, 20, 1),
('H5', 146, 20, 2),
('H5', 147, 20, 3),
('H5', 148, 20, 4),
('H5', 149, 20, 5),
('H5', 150, 21, 0),
('H5', 151, 21, 1),
('H5', 152, 21, 2),
('H5', 153, 21, 3),
('H5', 154, 21, 4),
('H5', 155, 21, 5),
('H5', 156, 21, 6),
('H5', 157, 21, 7),
('H5', 158, 21, 8),
('H5', 159, 21, 9),
('H5', 160, 22, 0),
('H5', 161, 22, 1),
('H5', 162, 22, 2),
('H5', 163, 22, 3),
('H5', 164, 22, 4),
('H5', 165, 22, 5),
('H5', 166, 23, 0),
('H5', 167, 23, 1),
('H5', 168, 23, 2),
('H5', 169, 23, 3),
('H5', 170, 24, 0),
('H5', 171, 24, 1),
('H5', 172, 24, 2),
('H5', 173, 25, 0),
('H5', 174, 25, 1),
('H5', 175, 25, 2),
('H5', 176, 25, 3),
('H5', 177, 25, 4),
('H5', 178, 25, 5),
('H5', 179, 26, 0),
('H5', 180, 26, 1),
('H5', 181, 26, 2),
('H5', 182, 27, 0),
('H5', 183, 27, 1),
('H5', 184, 27, 2),
('H5', 185, 27, 3),
('H5', 186, 28, 0),
('H5', 187, 28, 1),
('H5', 188, 28, 2),
('H5', 189, 28, 3),
('H5', 190, 29, 0),
('H5', 191, 29, 1),
('H5', 192, 29, 2),
('H5', 193, 29, 3),
('H5', 194, 30, 0),
('H5', 195, 30, 1),
('H5', 196, 30, 2),
('H5', 197, 30, 3),
('H5', 198, 30, 4),
('H5', 199, 30, 5),
('H5', 200, 30, 6),
('H5', 201, 30, 7),
('H5', 202, 30, 8),
('H5', 203, 30, 9),
('H5', 204, 30, 10),
('H5', 205, 30, 11),
('H5', 206, 30, 12),
('H5', 207, 30, 13),
('H5', 208, 30, 14),
('H5', 209, 30, 15),
('H5', 210, 31, 1),
('H5', 211, 31, 2),
('H5', 212, 31, 3),
('H5', 213, 31, 4),
('H5', 214, 32, 1),
('H5', 215, 32, 2),
('H5', 216, 32, 3),
('H5', 217, 32, 4),
('H5', 218, 32, 5),
('H5', 219, 32, 6),
('H5', 220, 33, 1),
('H5', 221, 33, 2),
('H5', 222, 33, 3),
('H5', 223, 34, 1),
('H5', 224, 34, 2),
('H5', 225, 34, 3),
('H5', 226, 35, 1),
('H5', 227, 35, 2),
('H5', 228, 35, 3),
('H5', 229, 36, 1),
('H5', 230, 36, 2),
('H5', 231, 36, 3),
('H5', 232, 36, 4),
('H5', 233, 36, 5),
('H5', 234, 36, 6),
('H5', 235, 37, 1),
('H5', 236, 37, 2),
('H5', 237, 38, 1),
('H5', 238, 38, 2),
('H5', 239, 38, 3),
('H5', 240, 38, 4),
('H5', 241, 39, 1),
('H5', 242, 39, 2),
('H5', 243, 39, 3),
('H5', 244, 39, 4),
('H5', 245, 40, 1),
('H5', 246, 40, 2),
('H5', 247, 40, 3),
('H5', 248, 40, 4),
('H5', 249, 41, 1),
('H5', 250, 41, 2),
('H5', 251, 41, 3),
('H5', 252, 41, 4),
('H5', 253, 41, 5),
('H5', 254, 41, 6),
('H5', 255, 41, 7),
('H5', 256, 41, 8),
('H5', 257, 41, 9),
('H5', 258, 41, 10),
('H5', 259, 41, 11),
('H5', 260, 42, 1),
('H5', 261, 42, 2),
('H5', 262, 42, 3),
('H5', 263, 42, 4),
('H5', 264, 42, 5),
('H5', 265, 42, 6),
('H5', 266, 42, 7),
('H5', 267, 42, 8),
('H5', 268, 42, 9),
('H5', 269, 43, 1),
('H5', 270, 43, 2),
('H5', 271, 43, 3),
('H5', 272, 43, 4),
('H5', 273, 44, 1),
('H5', 274, 44, 2),
('H5', 275, 44, 3),
('H5', 276, 44, 4),
('H5', 277, 45, 1),
('H5', 278, 45, 2),
('H5', 279, 45, 3),
('H5', 280, 45, 4),
('H5', 281, 45, 5),
('H5', 282, 45, 6),
('H5', 283, 45, 7),
('H5', 284, 45, 8),
('H5', 285, 45, 9),
('H5', 286, 45, 10),
('H5', 287, 45, 11),
('H5', 288, 12, 1),
('H5', 289, 46, 1),
('H5', 290, 46, 2),
('H5', 291, 46, 3),
('H5', 292, 46, 4),
('H5', 293, 46, 5),
('H5', 294, 46, 6),
('H5', 295, 2, 1),
('H5', 296, 47, 1),
('H5', 297, 47, 2),
('H5', 298, 47, 3),
('H5', 299, 48, 1),
('H5', 300, 48, 2),
('H5', 301, 37, 3),
('H6', 1, 1, 0),
('H6', 2, 1, 1),
('H6', 3, 1, 2),
('H6', 4, 1, 3),
('H6', 5, 1, 4),
('H6', 6, 1, 5),
('H6', 7, 1, 6),
('H6', 8, 1, 7),
('H6', 9, 1, 8),
('H6', 10, 1, 9),
('H6', 11, 1, 10),
('H6', 12, 2, 0),
('H6', 13, 2, 1),
('H6', 14, 3, 0),
('H6', 15, 3, 1),
('H6', 16, 3, 2),
('H6', 17, 3, 3),
('H6', 18, 3, 4),
('H6', 19, 3, 5),
('H6', 20, 4, 0),
('H6', 21, 4, 1),
('H6', 22, 4, 2),
('H6', 23, 4, 3),
('H6', 24, 4, 4),
('H6', 25, 4, 5),
('H6', 26, 4, 6),
('H6', 27, 4, 7),
('H6', 28, 4, 8),
('H6', 29, 4, 9),
('H6', 30, 4, 10),
('H6', 31, 4, 11),
('H6', 32, 4, 12),
('H6', 33, 5, 0),
('H6', 34, 5, 1),
('H6', 35, 5, 2),
('H6', 36, 5, 3),
('H6', 37, 5, 4),
('H6', 38, 6, 0),
('H6', 39, 6, 1),
('H6', 40, 6, 2),
('H6', 41, 7, 0),
('H6', 42, 7, 1),
('H6', 43, 7, 2),
('H6', 44, 7, 3),
('H6', 45, 7, 4),
('H6', 46, 8, 0),
('H6', 47, 9, 0),
('H6', 48, 9, 1),
('H6', 49, 9, 2),
('H6', 50, 9, 3),
('H6', 59, 10, 8),
('H6', 60, 11, 0),
('H6', 61, 11, 1),
('H6', 62, 11, 2),
('H6', 63, 11, 3),
('H6', 64, 11, 4),
('H6', 65, 11, 5),
('H6', 66, 11, 6),
('H6', 67, 11, 7),
('H6', 68, 11, 8),
('H6', 69, 11, 9),
('H6', 70, 11, 10),
('H6', 71, 11, 11),
('H6', 72, 11, 12),
('H6', 73, 11, 13),
('H6', 74, 11, 14),
('H6', 75, 11, 15),
('H6', 76, 11, 16),
('H6', 77, 11, 17),
('H6', 78, 11, 18),
('H6', 79, 11, 19),
('H6', 80, 11, 20),
('H6', 81, 11, 21),
('H6', 82, 11, 22),
('H6', 83, 11, 23),
('H6', 84, 11, 24),
('H6', 85, 11, 25),
('H6', 86, 11, 26),
('H6', 87, 11, 27),
('H6', 88, 11, 28),
('H6', 89, 11, 29),
('H6', 90, 11, 30),
('H6', 91, 11, 31),
('H6', 92, 12, 0),
('H6', 93, 12, 1),
('H6', 94, 12, 2),
('H6', 95, 12, 3),
('H6', 96, 12, 4),
('H6', 97, 12, 5),
('H6', 98, 13, 0),
('H6', 99, 13, 1),
('H6', 100, 13, 2),
('H6', 101, 13, 3),
('H6', 102, 13, 4),
('H6', 103, 13, 5),
('H6', 104, 13, 6),
('H6', 105, 13, 7),
('H6', 106, 13, 8),
('H6', 107, 13, 9),
('H6', 108, 13, 10),
('H6', 109, 13, 11),
('H6', 110, 13, 12),
('H6', 111, 14, 0),
('H6', 112, 14, 1),
('H6', 113, 14, 2),
('H6', 114, 14, 3),
('H6', 115, 14, 4),
('H6', 116, 14, 5),
('H6', 117, 14, 6),
('H6', 118, 14, 7),
('H6', 119, 14, 8),
('H6', 120, 14, 9),
('H6', 121, 14, 10),
('H6', 122, 14, 11),
('H6', 123, 15, 0),
('H6', 124, 15, 1),
('H6', 125, 15, 2),
('H6', 126, 15, 3),
('H6', 127, 16, 0),
('H6', 128, 16, 1),
('H6', 129, 16, 2),
('H6', 130, 17, 0),
('H6', 131, 17, 1),
('H6', 132, 17, 2),
('H6', 133, 17, 3),
('H6', 134, 17, 4),
('H6', 135, 18, 0),
('H6', 136, 18, 1),
('H6', 137, 18, 2),
('H6', 138, 18, 3),
('H6', 139, 19, 0),
('H6', 140, 19, 1),
('H6', 141, 19, 2),
('H6', 142, 19, 3),
('H6', 143, 19, 4),
('H6', 144, 20, 0),
('H6', 145, 20, 1),
('H6', 146, 20, 2),
('H6', 147, 20, 3),
('H6', 148, 20, 4),
('H6', 149, 20, 5),
('H6', 150, 21, 0),
('H6', 151, 21, 1),
('H6', 152, 21, 2),
('H6', 153, 21, 3),
('H6', 154, 21, 4),
('H6', 155, 21, 5),
('H6', 156, 21, 6),
('H6', 157, 21, 7),
('H6', 158, 21, 8),
('H6', 159, 21, 9),
('H6', 160, 22, 0),
('H6', 161, 22, 1),
('H6', 162, 22, 2),
('H6', 163, 22, 3),
('H6', 164, 22, 4),
('H6', 165, 22, 5),
('H6', 166, 23, 0),
('H6', 167, 23, 1),
('H6', 168, 23, 2),
('H6', 169, 23, 3),
('H6', 170, 24, 0),
('H6', 171, 24, 1),
('H6', 172, 24, 2),
('H6', 173, 25, 0),
('H6', 174, 25, 1),
('H6', 175, 25, 2),
('H6', 176, 25, 3),
('H6', 177, 25, 4),
('H6', 178, 25, 5),
('H6', 179, 26, 0),
('H6', 180, 26, 1),
('H6', 181, 26, 2),
('H6', 182, 27, 0),
('H6', 183, 27, 1),
('H6', 184, 27, 2),
('H6', 185, 27, 3),
('H6', 186, 28, 0),
('H6', 187, 28, 1),
('H6', 188, 28, 2),
('H6', 189, 28, 3),
('H6', 190, 29, 0),
('H6', 191, 29, 1),
('H6', 192, 29, 2),
('H6', 193, 29, 3),
('H6', 194, 30, 0),
('H6', 195, 30, 1),
('H6', 196, 30, 2),
('H6', 197, 30, 3),
('H6', 198, 30, 4),
('H6', 199, 30, 5),
('H6', 200, 30, 6),
('H6', 201, 30, 7),
('H6', 202, 30, 8),
('H6', 203, 30, 9),
('H6', 204, 30, 10),
('H6', 205, 30, 11),
('H6', 206, 30, 12),
('H6', 207, 30, 13),
('H6', 208, 30, 14),
('H6', 209, 30, 15),
('H6', 210, 31, 1),
('H6', 211, 31, 2),
('H6', 212, 31, 3),
('H6', 213, 31, 4),
('H6', 214, 32, 1),
('H6', 215, 32, 2),
('H6', 216, 32, 3),
('H6', 217, 32, 4),
('H6', 218, 32, 5),
('H6', 219, 32, 6),
('H6', 220, 33, 1),
('H6', 221, 33, 2),
('H6', 222, 33, 3),
('H6', 223, 34, 1),
('H6', 224, 34, 2),
('H6', 225, 34, 3),
('H6', 226, 35, 1),
('H6', 227, 35, 2),
('H6', 228, 35, 3),
('H6', 229, 36, 1),
('H6', 230, 36, 2),
('H6', 231, 36, 3),
('H6', 232, 36, 4),
('H6', 233, 36, 5),
('H6', 234, 36, 6),
('H6', 235, 37, 1),
('H6', 236, 37, 2),
('H6', 237, 38, 1),
('H6', 238, 38, 2),
('H6', 239, 38, 3),
('H6', 240, 38, 4),
('H6', 241, 39, 1),
('H6', 242, 39, 2),
('H6', 243, 39, 3),
('H6', 244, 39, 4),
('H6', 245, 40, 1),
('H6', 246, 40, 2),
('H6', 247, 40, 3),
('H6', 248, 40, 4),
('H6', 249, 41, 1),
('H6', 250, 41, 2),
('H6', 251, 41, 3),
('H6', 252, 41, 4),
('H6', 253, 41, 5),
('H6', 254, 41, 6),
('H6', 255, 41, 7),
('H6', 256, 41, 8),
('H6', 257, 41, 9),
('H6', 258, 41, 10),
('H6', 259, 41, 11),
('H6', 260, 42, 1),
('H6', 261, 42, 2),
('H6', 262, 42, 3),
('H6', 263, 42, 4),
('H6', 264, 42, 5),
('H6', 265, 42, 6),
('H6', 266, 42, 7),
('H6', 267, 42, 8),
('H6', 268, 42, 9),
('H6', 269, 43, 1),
('H6', 270, 43, 2),
('H6', 271, 43, 3),
('H6', 272, 43, 4),
('H6', 273, 44, 1),
('H6', 274, 44, 2),
('H6', 275, 44, 3),
('H6', 276, 44, 4),
('H6', 277, 45, 1),
('H6', 278, 45, 2),
('H6', 279, 45, 3),
('H6', 280, 45, 4),
('H6', 281, 45, 5),
('H6', 282, 45, 6),
('H6', 283, 45, 7),
('H6', 284, 45, 8),
('H6', 285, 45, 9),
('H6', 286, 45, 10),
('H6', 287, 45, 11),
('H6', 288, 12, 1),
('H6', 289, 46, 1),
('H6', 290, 46, 2),
('H6', 291, 46, 3),
('H6', 292, 46, 4),
('H6', 293, 46, 5),
('H6', 294, 46, 6),
('H6', 295, 2, 1),
('H6', 296, 47, 1),
('H6', 297, 47, 2),
('H6', 298, 47, 3),
('H6', 299, 48, 1),
('H6', 300, 48, 2),
('H6', 301, 37, 3),
('H7', 1, 1, 0),
('H7', 2, 1, 1),
('H7', 3, 1, 2),
('H7', 4, 1, 3),
('H7', 5, 1, 4),
('H7', 6, 1, 5),
('H7', 7, 1, 6),
('H7', 8, 1, 7),
('H7', 9, 1, 8),
('H7', 10, 1, 9),
('H7', 11, 1, 10),
('H7', 12, 2, 0),
('H7', 13, 2, 1),
('H7', 14, 3, 0),
('H7', 15, 3, 1),
('H7', 16, 3, 2),
('H7', 17, 3, 3),
('H7', 18, 3, 4),
('H7', 19, 3, 5),
('H7', 20, 4, 0),
('H7', 21, 4, 1),
('H7', 22, 4, 2),
('H7', 23, 4, 3),
('H7', 24, 4, 4),
('H7', 25, 4, 5),
('H7', 26, 4, 6),
('H7', 27, 4, 7),
('H7', 28, 4, 8),
('H7', 29, 4, 9),
('H7', 30, 4, 10),
('H7', 31, 4, 11),
('H7', 32, 4, 12),
('H7', 33, 5, 0),
('H7', 34, 5, 1),
('H7', 35, 5, 2),
('H7', 36, 5, 3),
('H7', 37, 5, 4),
('H7', 38, 6, 0),
('H7', 39, 6, 1),
('H7', 40, 6, 2),
('H7', 41, 7, 0),
('H7', 42, 7, 1),
('H7', 43, 7, 2),
('H7', 44, 7, 3),
('H7', 45, 7, 4),
('H7', 46, 8, 0),
('H7', 47, 9, 0),
('H7', 48, 9, 1),
('H7', 49, 9, 2),
('H7', 50, 9, 3),
('H7', 59, 10, 8),
('H7', 60, 11, 0),
('H7', 61, 11, 1),
('H7', 62, 11, 2),
('H7', 63, 11, 3),
('H7', 64, 11, 4),
('H7', 65, 11, 5),
('H7', 66, 11, 6),
('H7', 67, 11, 7),
('H7', 68, 11, 8),
('H7', 69, 11, 9),
('H7', 70, 11, 10),
('H7', 71, 11, 11),
('H7', 72, 11, 12),
('H7', 73, 11, 13),
('H7', 74, 11, 14),
('H7', 75, 11, 15),
('H7', 76, 11, 16),
('H7', 77, 11, 17),
('H7', 78, 11, 18),
('H7', 79, 11, 19),
('H7', 80, 11, 20),
('H7', 81, 11, 21),
('H7', 82, 11, 22),
('H7', 83, 11, 23),
('H7', 84, 11, 24),
('H7', 85, 11, 25),
('H7', 86, 11, 26),
('H7', 87, 11, 27),
('H7', 88, 11, 28),
('H7', 89, 11, 29),
('H7', 90, 11, 30),
('H7', 91, 11, 31),
('H7', 92, 12, 0),
('H7', 93, 12, 1),
('H7', 94, 12, 2),
('H7', 95, 12, 3),
('H7', 96, 12, 4),
('H7', 97, 12, 5),
('H7', 98, 13, 0),
('H7', 99, 13, 1),
('H7', 100, 13, 2),
('H7', 101, 13, 3),
('H7', 102, 13, 4),
('H7', 103, 13, 5),
('H7', 104, 13, 6),
('H7', 105, 13, 7),
('H7', 106, 13, 8),
('H7', 107, 13, 9),
('H7', 108, 13, 10),
('H7', 109, 13, 11),
('H7', 110, 13, 12),
('H7', 111, 14, 0),
('H7', 112, 14, 1),
('H7', 113, 14, 2),
('H7', 114, 14, 3),
('H7', 115, 14, 4),
('H7', 116, 14, 5),
('H7', 117, 14, 6),
('H7', 118, 14, 7),
('H7', 119, 14, 8),
('H7', 120, 14, 9),
('H7', 121, 14, 10),
('H7', 122, 14, 11),
('H7', 123, 15, 0),
('H7', 124, 15, 1),
('H7', 125, 15, 2),
('H7', 126, 15, 3),
('H7', 127, 16, 0),
('H7', 128, 16, 1),
('H7', 129, 16, 2),
('H7', 130, 17, 0),
('H7', 131, 17, 1),
('H7', 132, 17, 2),
('H7', 133, 17, 3),
('H7', 134, 17, 4),
('H7', 135, 18, 0),
('H7', 136, 18, 1),
('H7', 137, 18, 2),
('H7', 138, 18, 3),
('H7', 139, 19, 0),
('H7', 140, 19, 1),
('H7', 141, 19, 2),
('H7', 142, 19, 3),
('H7', 143, 19, 4),
('H7', 144, 20, 0),
('H7', 145, 20, 1),
('H7', 146, 20, 2),
('H7', 147, 20, 3),
('H7', 148, 20, 4),
('H7', 149, 20, 5),
('H7', 150, 21, 0),
('H7', 151, 21, 1),
('H7', 152, 21, 2),
('H7', 153, 21, 3),
('H7', 154, 21, 4),
('H7', 155, 21, 5),
('H7', 156, 21, 6),
('H7', 157, 21, 7),
('H7', 158, 21, 8),
('H7', 159, 21, 9),
('H7', 160, 22, 0),
('H7', 161, 22, 1),
('H7', 162, 22, 2),
('H7', 163, 22, 3),
('H7', 164, 22, 4),
('H7', 165, 22, 5),
('H7', 166, 23, 0),
('H7', 167, 23, 1),
('H7', 168, 23, 2),
('H7', 169, 23, 3),
('H7', 170, 24, 0),
('H7', 171, 24, 1),
('H7', 172, 24, 2),
('H7', 173, 25, 0),
('H7', 174, 25, 1),
('H7', 175, 25, 2),
('H7', 176, 25, 3),
('H7', 177, 25, 4),
('H7', 178, 25, 5),
('H7', 179, 26, 0),
('H7', 180, 26, 1),
('H7', 181, 26, 2),
('H7', 182, 27, 0),
('H7', 183, 27, 1),
('H7', 184, 27, 2),
('H7', 185, 27, 3),
('H7', 186, 28, 0),
('H7', 187, 28, 1),
('H7', 188, 28, 2),
('H7', 189, 28, 3),
('H7', 190, 29, 0),
('H7', 191, 29, 1),
('H7', 192, 29, 2),
('H7', 193, 29, 3),
('H7', 194, 30, 0),
('H7', 195, 30, 1),
('H7', 196, 30, 2),
('H7', 197, 30, 3),
('H7', 198, 30, 4),
('H7', 199, 30, 5),
('H7', 200, 30, 6),
('H7', 201, 30, 7),
('H7', 202, 30, 8),
('H7', 203, 30, 9),
('H7', 204, 30, 10),
('H7', 205, 30, 11),
('H7', 206, 30, 12),
('H7', 207, 30, 13),
('H7', 208, 30, 14),
('H7', 209, 30, 15),
('H7', 210, 31, 1),
('H7', 211, 31, 2),
('H7', 212, 31, 3),
('H7', 213, 31, 4),
('H7', 214, 32, 1),
('H7', 215, 32, 2),
('H7', 216, 32, 3),
('H7', 217, 32, 4),
('H7', 218, 32, 5),
('H7', 219, 32, 6),
('H7', 220, 33, 1),
('H7', 221, 33, 2),
('H7', 222, 33, 3),
('H7', 223, 34, 1),
('H7', 224, 34, 2),
('H7', 225, 34, 3),
('H7', 226, 35, 1),
('H7', 227, 35, 2),
('H7', 228, 35, 3),
('H7', 229, 36, 1),
('H7', 230, 36, 2),
('H7', 231, 36, 3),
('H7', 232, 36, 4),
('H7', 233, 36, 5),
('H7', 234, 36, 6),
('H7', 235, 37, 1),
('H7', 236, 37, 2),
('H7', 237, 38, 1),
('H7', 238, 38, 2),
('H7', 239, 38, 3),
('H7', 240, 38, 4),
('H7', 241, 39, 1),
('H7', 242, 39, 2),
('H7', 243, 39, 3),
('H7', 244, 39, 4),
('H7', 245, 40, 1),
('H7', 246, 40, 2),
('H7', 247, 40, 3),
('H7', 248, 40, 4),
('H7', 249, 41, 1),
('H7', 250, 41, 2),
('H7', 251, 41, 3),
('H7', 252, 41, 4),
('H7', 253, 41, 5),
('H7', 254, 41, 6),
('H7', 255, 41, 7),
('H7', 256, 41, 8),
('H7', 257, 41, 9),
('H7', 258, 41, 10),
('H7', 259, 41, 11),
('H7', 260, 42, 1),
('H7', 261, 42, 2),
('H7', 262, 42, 3),
('H7', 263, 42, 4),
('H7', 264, 42, 5),
('H7', 265, 42, 6),
('H7', 266, 42, 7),
('H7', 267, 42, 8),
('H7', 268, 42, 9),
('H7', 269, 43, 1),
('H7', 270, 43, 2),
('H7', 271, 43, 3),
('H7', 272, 43, 4),
('H7', 273, 44, 1),
('H7', 274, 44, 2),
('H7', 275, 44, 3),
('H7', 276, 44, 4),
('H7', 277, 45, 1),
('H7', 278, 45, 2),
('H7', 279, 45, 3),
('H7', 280, 45, 4),
('H7', 281, 45, 5),
('H7', 282, 45, 6),
('H7', 283, 45, 7),
('H7', 284, 45, 8),
('H7', 285, 45, 9),
('H7', 286, 45, 10),
('H7', 287, 45, 11),
('H7', 288, 12, 1),
('H7', 289, 46, 1),
('H7', 290, 46, 2),
('H7', 291, 46, 3),
('H7', 292, 46, 4),
('H7', 293, 46, 5),
('H7', 294, 46, 6),
('H7', 295, 2, 1),
('H7', 296, 47, 1),
('H7', 297, 47, 2),
('H7', 298, 47, 3),
('H7', 299, 48, 1),
('H7', 300, 48, 2),
('H7', 301, 37, 3),
('H8', 1, 1, 0),
('H8', 2, 1, 1),
('H8', 3, 1, 2),
('H8', 4, 1, 3),
('H8', 5, 1, 4),
('H8', 6, 1, 5),
('H8', 7, 1, 6),
('H8', 8, 1, 7),
('H8', 9, 1, 8),
('H8', 10, 1, 9),
('H8', 11, 1, 10),
('H8', 12, 2, 0),
('H8', 13, 2, 1),
('H8', 14, 3, 0),
('H8', 15, 3, 1),
('H8', 16, 3, 2),
('H8', 17, 3, 3),
('H8', 18, 3, 4),
('H8', 19, 3, 5),
('H8', 20, 4, 0),
('H8', 21, 4, 1),
('H8', 22, 4, 2),
('H8', 23, 4, 3),
('H8', 24, 4, 4),
('H8', 25, 4, 5),
('H8', 26, 4, 6),
('H8', 27, 4, 7),
('H8', 28, 4, 8),
('H8', 29, 4, 9),
('H8', 30, 4, 10),
('H8', 31, 4, 11),
('H8', 32, 4, 12),
('H8', 33, 5, 0),
('H8', 34, 5, 1),
('H8', 35, 5, 2),
('H8', 36, 5, 3),
('H8', 37, 5, 4),
('H8', 38, 6, 0),
('H8', 39, 6, 1),
('H8', 40, 6, 2),
('H8', 41, 7, 0),
('H8', 42, 7, 1),
('H8', 43, 7, 2),
('H8', 44, 7, 3),
('H8', 45, 7, 4),
('H8', 46, 8, 0),
('H8', 47, 9, 0),
('H8', 48, 9, 1),
('H8', 49, 9, 2),
('H8', 50, 9, 3),
('H8', 59, 10, 8),
('H8', 60, 11, 0),
('H8', 61, 11, 1),
('H8', 62, 11, 2),
('H8', 63, 11, 3),
('H8', 64, 11, 4),
('H8', 65, 11, 5),
('H8', 66, 11, 6),
('H8', 67, 11, 7),
('H8', 68, 11, 8),
('H8', 69, 11, 9),
('H8', 70, 11, 10),
('H8', 71, 11, 11),
('H8', 72, 11, 12),
('H8', 73, 11, 13),
('H8', 74, 11, 14),
('H8', 75, 11, 15),
('H8', 76, 11, 16),
('H8', 77, 11, 17),
('H8', 78, 11, 18),
('H8', 79, 11, 19),
('H8', 80, 11, 20),
('H8', 81, 11, 21),
('H8', 82, 11, 22),
('H8', 83, 11, 23),
('H8', 84, 11, 24),
('H8', 85, 11, 25),
('H8', 86, 11, 26),
('H8', 87, 11, 27),
('H8', 88, 11, 28),
('H8', 89, 11, 29),
('H8', 90, 11, 30),
('H8', 91, 11, 31),
('H8', 92, 12, 0),
('H8', 93, 12, 1),
('H8', 94, 12, 2),
('H8', 95, 12, 3),
('H8', 96, 12, 4),
('H8', 97, 12, 5),
('H8', 98, 13, 0),
('H8', 99, 13, 1),
('H8', 100, 13, 2),
('H8', 101, 13, 3),
('H8', 102, 13, 4),
('H8', 103, 13, 5),
('H8', 104, 13, 6),
('H8', 105, 13, 7),
('H8', 106, 13, 8),
('H8', 107, 13, 9),
('H8', 108, 13, 10),
('H8', 109, 13, 11),
('H8', 110, 13, 12),
('H8', 111, 14, 0),
('H8', 112, 14, 1),
('H8', 113, 14, 2),
('H8', 114, 14, 3),
('H8', 115, 14, 4),
('H8', 116, 14, 5),
('H8', 117, 14, 6),
('H8', 118, 14, 7),
('H8', 119, 14, 8),
('H8', 120, 14, 9),
('H8', 121, 14, 10),
('H8', 122, 14, 11),
('H8', 123, 15, 0),
('H8', 124, 15, 1),
('H8', 125, 15, 2),
('H8', 126, 15, 3),
('H8', 127, 16, 0),
('H8', 128, 16, 1),
('H8', 129, 16, 2),
('H8', 130, 17, 0),
('H8', 131, 17, 1),
('H8', 132, 17, 2),
('H8', 133, 17, 3),
('H8', 134, 17, 4),
('H8', 135, 18, 0),
('H8', 136, 18, 1),
('H8', 137, 18, 2),
('H8', 138, 18, 3),
('H8', 139, 19, 0),
('H8', 140, 19, 1),
('H8', 141, 19, 2),
('H8', 142, 19, 3),
('H8', 143, 19, 4),
('H8', 144, 20, 0),
('H8', 145, 20, 1),
('H8', 146, 20, 2),
('H8', 147, 20, 3),
('H8', 148, 20, 4),
('H8', 149, 20, 5),
('H8', 150, 21, 0),
('H8', 151, 21, 1),
('H8', 152, 21, 2),
('H8', 153, 21, 3),
('H8', 154, 21, 4),
('H8', 155, 21, 5),
('H8', 156, 21, 6),
('H8', 157, 21, 7),
('H8', 158, 21, 8),
('H8', 159, 21, 9),
('H8', 160, 22, 0),
('H8', 161, 22, 1),
('H8', 162, 22, 2),
('H8', 163, 22, 3),
('H8', 164, 22, 4),
('H8', 165, 22, 5),
('H8', 166, 23, 0),
('H8', 167, 23, 1),
('H8', 168, 23, 2),
('H8', 169, 23, 3),
('H8', 170, 24, 0),
('H8', 171, 24, 1),
('H8', 172, 24, 2),
('H8', 173, 25, 0),
('H8', 174, 25, 1),
('H8', 175, 25, 2),
('H8', 176, 25, 3),
('H8', 177, 25, 4),
('H8', 178, 25, 5),
('H8', 179, 26, 0),
('H8', 180, 26, 1),
('H8', 181, 26, 2),
('H8', 182, 27, 0),
('H8', 183, 27, 1),
('H8', 184, 27, 2),
('H8', 185, 27, 3),
('H8', 186, 28, 0),
('H8', 187, 28, 1),
('H8', 188, 28, 2),
('H8', 189, 28, 3),
('H8', 190, 29, 0),
('H8', 191, 29, 1),
('H8', 192, 29, 2),
('H8', 193, 29, 3),
('H8', 194, 30, 0),
('H8', 195, 30, 1),
('H8', 196, 30, 2),
('H8', 197, 30, 3),
('H8', 198, 30, 4),
('H8', 199, 30, 5),
('H8', 200, 30, 6),
('H8', 201, 30, 7),
('H8', 202, 30, 8),
('H8', 203, 30, 9),
('H8', 204, 30, 10),
('H8', 205, 30, 11),
('H8', 206, 30, 12),
('H8', 207, 30, 13),
('H8', 208, 30, 14),
('H8', 209, 30, 15),
('H8', 210, 31, 1),
('H8', 211, 31, 2),
('H8', 212, 31, 3),
('H8', 213, 31, 4),
('H8', 214, 32, 1),
('H8', 215, 32, 2),
('H8', 216, 32, 3),
('H8', 217, 32, 4),
('H8', 218, 32, 5),
('H8', 219, 32, 6),
('H8', 220, 33, 1),
('H8', 221, 33, 2),
('H8', 222, 33, 3),
('H8', 223, 34, 1),
('H8', 224, 34, 2),
('H8', 225, 34, 3),
('H8', 226, 35, 1),
('H8', 227, 35, 2),
('H8', 228, 35, 3),
('H8', 229, 36, 1),
('H8', 230, 36, 2),
('H8', 231, 36, 3),
('H8', 232, 36, 4),
('H8', 233, 36, 5),
('H8', 234, 36, 6),
('H8', 235, 37, 1),
('H8', 236, 37, 2),
('H8', 237, 38, 1),
('H8', 238, 38, 2),
('H8', 239, 38, 3),
('H8', 240, 38, 4),
('H8', 241, 39, 1),
('H8', 242, 39, 2),
('H8', 243, 39, 3),
('H8', 244, 39, 4),
('H8', 245, 40, 1),
('H8', 246, 40, 2),
('H8', 247, 40, 3),
('H8', 248, 40, 4),
('H8', 249, 41, 1),
('H8', 250, 41, 2),
('H8', 251, 41, 3),
('H8', 252, 41, 4),
('H8', 253, 41, 5),
('H8', 254, 41, 6),
('H8', 255, 41, 7),
('H8', 256, 41, 8),
('H8', 257, 41, 9),
('H8', 258, 41, 10),
('H8', 259, 41, 11),
('H8', 260, 42, 1),
('H8', 261, 42, 2),
('H8', 262, 42, 3),
('H8', 263, 42, 4),
('H8', 264, 42, 5),
('H8', 265, 42, 6),
('H8', 266, 42, 7),
('H8', 267, 42, 8),
('H8', 268, 42, 9),
('H8', 269, 43, 1),
('H8', 270, 43, 2),
('H8', 271, 43, 3),
('H8', 272, 43, 4),
('H8', 273, 44, 1),
('H8', 274, 44, 2),
('H8', 275, 44, 3),
('H8', 276, 44, 4),
('H8', 277, 45, 1),
('H8', 278, 45, 2),
('H8', 279, 45, 3),
('H8', 280, 45, 4),
('H8', 281, 45, 5),
('H8', 282, 45, 6),
('H8', 283, 45, 7),
('H8', 284, 45, 8),
('H8', 285, 45, 9),
('H8', 286, 45, 10),
('H8', 287, 45, 11),
('H8', 288, 12, 1),
('H8', 289, 46, 1),
('H8', 290, 46, 2),
('H8', 291, 46, 3),
('H8', 292, 46, 4),
('H8', 293, 46, 5),
('H8', 294, 46, 6),
('H8', 295, 2, 1),
('H8', 296, 47, 1),
('H8', 297, 47, 2),
('H8', 298, 47, 3),
('H8', 299, 48, 1),
('H8', 300, 48, 2),
('H8', 301, 37, 3),
('H9', 1, 1, 0),
('H9', 2, 1, 1),
('H9', 3, 1, 2),
('H9', 4, 1, 3),
('H9', 5, 1, 4),
('H9', 6, 1, 5),
('H9', 7, 1, 6),
('H9', 8, 1, 7),
('H9', 9, 1, 8),
('H9', 10, 1, 9),
('H9', 11, 1, 10),
('H9', 12, 2, 0),
('H9', 13, 2, 1),
('H9', 14, 3, 0),
('H9', 15, 3, 1),
('H9', 16, 3, 2),
('H9', 17, 3, 3),
('H9', 18, 3, 4),
('H9', 19, 3, 5),
('H9', 20, 4, 0),
('H9', 21, 4, 1),
('H9', 22, 4, 2),
('H9', 23, 4, 3),
('H9', 24, 4, 4),
('H9', 25, 4, 5),
('H9', 26, 4, 6),
('H9', 27, 4, 7),
('H9', 28, 4, 8),
('H9', 29, 4, 9),
('H9', 30, 4, 10),
('H9', 31, 4, 11),
('H9', 32, 4, 12),
('H9', 33, 5, 0),
('H9', 34, 5, 1),
('H9', 35, 5, 2),
('H9', 36, 5, 3),
('H9', 37, 5, 4),
('H9', 38, 6, 0),
('H9', 39, 6, 1),
('H9', 40, 6, 2),
('H9', 41, 7, 0),
('H9', 42, 7, 1),
('H9', 43, 7, 2),
('H9', 44, 7, 3),
('H9', 45, 7, 4),
('H9', 46, 8, 0),
('H9', 47, 9, 0),
('H9', 48, 9, 1),
('H9', 49, 9, 2),
('H9', 50, 9, 3),
('H9', 59, 10, 8),
('H9', 60, 11, 0),
('H9', 61, 11, 1),
('H9', 62, 11, 2),
('H9', 63, 11, 3),
('H9', 64, 11, 4),
('H9', 65, 11, 5),
('H9', 66, 11, 6),
('H9', 67, 11, 7),
('H9', 68, 11, 8),
('H9', 69, 11, 9),
('H9', 70, 11, 10),
('H9', 71, 11, 11),
('H9', 72, 11, 12),
('H9', 73, 11, 13),
('H9', 74, 11, 14),
('H9', 75, 11, 15),
('H9', 76, 11, 16),
('H9', 77, 11, 17),
('H9', 78, 11, 18),
('H9', 79, 11, 19),
('H9', 80, 11, 20),
('H9', 81, 11, 21),
('H9', 82, 11, 22),
('H9', 83, 11, 23),
('H9', 84, 11, 24),
('H9', 85, 11, 25),
('H9', 86, 11, 26),
('H9', 87, 11, 27),
('H9', 88, 11, 28),
('H9', 89, 11, 29),
('H9', 90, 11, 30),
('H9', 91, 11, 31),
('H9', 92, 12, 0),
('H9', 93, 12, 1),
('H9', 94, 12, 2),
('H9', 95, 12, 3),
('H9', 96, 12, 4),
('H9', 97, 12, 5),
('H9', 98, 13, 0),
('H9', 99, 13, 1),
('H9', 100, 13, 2),
('H9', 101, 13, 3),
('H9', 102, 13, 4),
('H9', 103, 13, 5),
('H9', 104, 13, 6),
('H9', 105, 13, 7),
('H9', 106, 13, 8),
('H9', 107, 13, 9),
('H9', 108, 13, 10),
('H9', 109, 13, 11),
('H9', 110, 13, 12),
('H9', 111, 14, 0),
('H9', 112, 14, 1),
('H9', 113, 14, 2),
('H9', 114, 14, 3),
('H9', 115, 14, 4),
('H9', 116, 14, 5),
('H9', 117, 14, 6),
('H9', 118, 14, 7),
('H9', 119, 14, 8),
('H9', 120, 14, 9),
('H9', 121, 14, 10),
('H9', 122, 14, 11),
('H9', 123, 15, 0),
('H9', 124, 15, 1),
('H9', 125, 15, 2),
('H9', 126, 15, 3),
('H9', 127, 16, 0),
('H9', 128, 16, 1),
('H9', 129, 16, 2),
('H9', 130, 17, 0),
('H9', 131, 17, 1),
('H9', 132, 17, 2),
('H9', 133, 17, 3),
('H9', 134, 17, 4),
('H9', 135, 18, 0),
('H9', 136, 18, 1),
('H9', 137, 18, 2),
('H9', 138, 18, 3),
('H9', 139, 19, 0),
('H9', 140, 19, 1),
('H9', 141, 19, 2),
('H9', 142, 19, 3),
('H9', 143, 19, 4),
('H9', 144, 20, 0),
('H9', 145, 20, 1),
('H9', 146, 20, 2),
('H9', 147, 20, 3),
('H9', 148, 20, 4),
('H9', 149, 20, 5),
('H9', 150, 21, 0),
('H9', 151, 21, 1),
('H9', 152, 21, 2),
('H9', 153, 21, 3),
('H9', 154, 21, 4),
('H9', 155, 21, 5),
('H9', 156, 21, 6),
('H9', 157, 21, 7),
('H9', 158, 21, 8),
('H9', 159, 21, 9),
('H9', 160, 22, 0),
('H9', 161, 22, 1),
('H9', 162, 22, 2),
('H9', 163, 22, 3),
('H9', 164, 22, 4),
('H9', 165, 22, 5),
('H9', 166, 23, 0),
('H9', 167, 23, 1),
('H9', 168, 23, 2),
('H9', 169, 23, 3),
('H9', 170, 24, 0),
('H9', 171, 24, 1),
('H9', 172, 24, 2),
('H9', 173, 25, 0),
('H9', 174, 25, 1),
('H9', 175, 25, 2),
('H9', 176, 25, 3),
('H9', 177, 25, 4),
('H9', 178, 25, 5),
('H9', 179, 26, 0),
('H9', 180, 26, 1),
('H9', 181, 26, 2),
('H9', 182, 27, 0),
('H9', 183, 27, 1),
('H9', 184, 27, 2),
('H9', 185, 27, 3),
('H9', 186, 28, 0),
('H9', 187, 28, 1),
('H9', 188, 28, 2),
('H9', 189, 28, 3);
INSERT INTO `vtiger_role2picklist` (`roleid`, `picklistvalueid`, `picklistid`, `sortid`) VALUES
('H9', 190, 29, 0),
('H9', 191, 29, 1),
('H9', 192, 29, 2),
('H9', 193, 29, 3),
('H9', 194, 30, 0),
('H9', 195, 30, 1),
('H9', 196, 30, 2),
('H9', 197, 30, 3),
('H9', 198, 30, 4),
('H9', 199, 30, 5),
('H9', 200, 30, 6),
('H9', 201, 30, 7),
('H9', 202, 30, 8),
('H9', 203, 30, 9),
('H9', 204, 30, 10),
('H9', 205, 30, 11),
('H9', 206, 30, 12),
('H9', 207, 30, 13),
('H9', 208, 30, 14),
('H9', 209, 30, 15),
('H9', 210, 31, 1),
('H9', 211, 31, 2),
('H9', 212, 31, 3),
('H9', 213, 31, 4),
('H9', 214, 32, 1),
('H9', 215, 32, 2),
('H9', 216, 32, 3),
('H9', 217, 32, 4),
('H9', 218, 32, 5),
('H9', 219, 32, 6),
('H9', 220, 33, 1),
('H9', 221, 33, 2),
('H9', 222, 33, 3),
('H9', 223, 34, 1),
('H9', 224, 34, 2),
('H9', 225, 34, 3),
('H9', 226, 35, 1),
('H9', 227, 35, 2),
('H9', 228, 35, 3),
('H9', 229, 36, 1),
('H9', 230, 36, 2),
('H9', 231, 36, 3),
('H9', 232, 36, 4),
('H9', 233, 36, 5),
('H9', 234, 36, 6),
('H9', 235, 37, 1),
('H9', 236, 37, 2),
('H9', 237, 38, 1),
('H9', 238, 38, 2),
('H9', 239, 38, 3),
('H9', 240, 38, 4),
('H9', 241, 39, 1),
('H9', 242, 39, 2),
('H9', 243, 39, 3),
('H9', 244, 39, 4),
('H9', 245, 40, 1),
('H9', 246, 40, 2),
('H9', 247, 40, 3),
('H9', 248, 40, 4),
('H9', 249, 41, 1),
('H9', 250, 41, 2),
('H9', 251, 41, 3),
('H9', 252, 41, 4),
('H9', 253, 41, 5),
('H9', 254, 41, 6),
('H9', 255, 41, 7),
('H9', 256, 41, 8),
('H9', 257, 41, 9),
('H9', 258, 41, 10),
('H9', 259, 41, 11),
('H9', 260, 42, 1),
('H9', 261, 42, 2),
('H9', 262, 42, 3),
('H9', 263, 42, 4),
('H9', 264, 42, 5),
('H9', 265, 42, 6),
('H9', 266, 42, 7),
('H9', 267, 42, 8),
('H9', 268, 42, 9),
('H9', 269, 43, 1),
('H9', 270, 43, 2),
('H9', 271, 43, 3),
('H9', 272, 43, 4),
('H9', 273, 44, 1),
('H9', 274, 44, 2),
('H9', 275, 44, 3),
('H9', 276, 44, 4),
('H9', 277, 45, 1),
('H9', 278, 45, 2),
('H9', 279, 45, 3),
('H9', 280, 45, 4),
('H9', 281, 45, 5),
('H9', 282, 45, 6),
('H9', 283, 45, 7),
('H9', 284, 45, 8),
('H9', 285, 45, 9),
('H9', 286, 45, 10),
('H9', 287, 45, 11),
('H9', 288, 12, 1),
('H9', 289, 46, 1),
('H9', 290, 46, 2),
('H9', 291, 46, 3),
('H9', 292, 46, 4),
('H9', 293, 46, 5),
('H9', 294, 46, 6),
('H9', 295, 2, 1),
('H9', 296, 47, 1),
('H9', 297, 47, 2),
('H9', 298, 47, 3),
('H9', 299, 48, 1),
('H9', 300, 48, 2),
('H9', 301, 37, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role2profile`
--

CREATE TABLE IF NOT EXISTS `vtiger_role2profile` (
  `roleid` varchar(255) NOT NULL,
  `profileid` int(11) NOT NULL,
  PRIMARY KEY (`roleid`,`profileid`),
  KEY `role2profile_roleid_profileid_idx` (`roleid`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_role2profile`
--

INSERT INTO `vtiger_role2profile` (`roleid`, `profileid`) VALUES
('H10', 9),
('H2', 1),
('H6', 5),
('H7', 6),
('H8', 7),
('H9', 8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_role_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_role_seq`
--

INSERT INTO `vtiger_role_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rowheight`
--

CREATE TABLE IF NOT EXISTS `vtiger_rowheight` (
  `rowheightid` int(11) NOT NULL AUTO_INCREMENT,
  `rowheight` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowheightid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_rowheight`
--

INSERT INTO `vtiger_rowheight` (`rowheightid`, `rowheight`, `sortorderid`, `presence`) VALUES
(1, 'wide', 1, 1),
(2, 'medium', 2, 1),
(3, 'narrow', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rowheight_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_rowheight_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_rowheight_seq`
--

INSERT INTO `vtiger_rowheight_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rss`
--

CREATE TABLE IF NOT EXISTS `vtiger_rss` (
  `rssid` int(19) NOT NULL,
  `rssurl` varchar(200) NOT NULL DEFAULT '',
  `rsstitle` varchar(200) DEFAULT NULL,
  `rsstype` int(10) DEFAULT '0',
  `starred` int(1) DEFAULT '0',
  PRIMARY KEY (`rssid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanactivityrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesmanactivityrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`activityid`),
  KEY `salesmanactivityrel_activityid_idx` (`activityid`),
  KEY `salesmanactivityrel_smid_idx` (`smid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_salesmanactivityrel`
--

INSERT INTO `vtiger_salesmanactivityrel` (`smid`, `activityid`) VALUES
(5, 18),
(5, 57),
(11, 57),
(12, 57);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanattachmentsrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesmanattachmentsrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `attachmentsid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`attachmentsid`),
  KEY `salesmanattachmentsrel_smid_idx` (`smid`),
  KEY `salesmanattachmentsrel_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanticketrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesmanticketrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `id` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`id`),
  KEY `salesmanticketrel_smid_idx` (`smid`),
  KEY `salesmanticketrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesorder`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesorder` (
  `salesorderid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `potentialid` int(19) DEFAULT NULL,
  `customerno` varchar(100) DEFAULT NULL,
  `salesorder_no` varchar(100) DEFAULT NULL,
  `quoteid` int(19) DEFAULT NULL,
  `vendorterms` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `vendorid` int(19) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `pending` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `enable_recurring` int(11) DEFAULT '0',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`salesorderid`),
  KEY `salesorder_vendorid_idx` (`vendorid`),
  KEY `salesorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesordercf`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesordercf` (
  `salesorderid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sales_stage`
--

CREATE TABLE IF NOT EXISTS `vtiger_sales_stage` (
  `sales_stage_id` int(19) NOT NULL AUTO_INCREMENT,
  `sales_stage` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sales_stage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `vtiger_sales_stage`
--

INSERT INTO `vtiger_sales_stage` (`sales_stage_id`, `sales_stage`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Prospecting', 1, 150, 0),
(2, 'Qualification', 1, 151, 1),
(3, 'Needs Analysis', 1, 152, 2),
(4, 'Value Proposition', 1, 153, 3),
(5, 'Id. Decision Makers', 1, 154, 4),
(6, 'Perception Analysis', 1, 155, 5),
(7, 'Proposal or Price Quote', 1, 156, 6),
(8, 'Negotiation or Review', 1, 157, 7),
(9, 'Closed Won', 0, 158, 8),
(10, 'Closed Lost', 0, 159, 9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sales_stage_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_sales_stage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_sales_stage_seq`
--

INSERT INTO `vtiger_sales_stage_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salutationtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_salutationtype` (
  `salutationid` int(19) NOT NULL AUTO_INCREMENT,
  `salutationtype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`salutationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_salutationtype`
--

INSERT INTO `vtiger_salutationtype` (`salutationid`, `salutationtype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Mr.', 1, 161, 1),
(3, 'Ms.', 1, 162, 2),
(4, 'Mrs.', 1, 163, 3),
(5, 'Dr.', 1, 164, 4),
(6, 'Prof.', 1, 165, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salutationtype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_salutationtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_salutationtype_seq`
--

INSERT INTO `vtiger_salutationtype_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_scheduled_reports`
--

CREATE TABLE IF NOT EXISTS `vtiger_scheduled_reports` (
  `reportid` int(11) NOT NULL,
  `recipients` text,
  `schedule` text,
  `format` varchar(10) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_schedulereports`
--

CREATE TABLE IF NOT EXISTS `vtiger_schedulereports` (
  `reportid` int(10) DEFAULT NULL,
  `scheduleid` int(3) DEFAULT NULL,
  `recipients` text,
  `schdate` varchar(20) DEFAULT NULL,
  `schtime` time DEFAULT NULL,
  `schdayoftheweek` varchar(100) DEFAULT NULL,
  `schdayofthemonth` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(500) DEFAULT NULL,
  `specificemails` varchar(500) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_schedulereports`
--

INSERT INTO `vtiger_schedulereports` (`reportid`, `scheduleid`, `recipients`, `schdate`, `schtime`, `schdayoftheweek`, `schdayofthemonth`, `schannualdates`, `specificemails`, `next_trigger_time`) VALUES
(13, 1, '["USER::5"]', NULL, '00:00:00', NULL, NULL, NULL, '""', '2016-06-26 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seactivityrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_seactivityrel` (
  `crmid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL,
  PRIMARY KEY (`crmid`,`activityid`),
  KEY `seactivityrel_activityid_idx` (`activityid`),
  KEY `seactivityrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_seactivityrel`
--

INSERT INTO `vtiger_seactivityrel` (`crmid`, `activityid`) VALUES
(30, 34),
(30, 35),
(30, 36),
(21, 38),
(21, 41),
(21, 42),
(21, 43),
(21, 44),
(21, 45),
(21, 58);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seactivityrel_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_seactivityrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_seactivityrel_seq`
--

INSERT INTO `vtiger_seactivityrel_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seattachmentsrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_seattachmentsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `attachmentsid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`attachmentsid`),
  KEY `seattachmentsrel_attachmentsid_idx` (`attachmentsid`),
  KEY `seattachmentsrel_crmid_idx` (`crmid`),
  KEY `seattachmentsrel_attachmentsid_crmid_idx` (`attachmentsid`,`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_seattachmentsrel`
--

INSERT INTO `vtiger_seattachmentsrel` (`crmid`, `attachmentsid`) VALUES
(19, 20);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectcolumn`
--

CREATE TABLE IF NOT EXISTS `vtiger_selectcolumn` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL DEFAULT '0',
  `columnname` varchar(250) DEFAULT '',
  PRIMARY KEY (`queryid`,`columnindex`),
  KEY `selectcolumn_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_selectcolumn`
--

INSERT INTO `vtiger_selectcolumn` (`queryid`, `columnindex`, `columnname`) VALUES
(1, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(1, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(1, 2, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(1, 3, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(1, 4, 'vtiger_account:industry:Accounts_industry:industry:V'),
(1, 5, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(2, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(2, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(2, 2, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(2, 3, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(2, 4, 'vtiger_account:industry:Accounts_industry:industry:V'),
(2, 5, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(3, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(3, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(3, 2, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(3, 3, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(3, 4, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(3, 5, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(4, 0, 'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),
(4, 1, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(4, 2, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(4, 3, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(4, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),
(5, 0, 'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),
(5, 1, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(5, 2, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(5, 3, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(5, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),
(5, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V'),
(6, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(6, 1, 'vtiger_potential:amount:Potentials_Amount:amount:N'),
(6, 2, 'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),
(6, 3, 'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),
(6, 4, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(7, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(7, 1, 'vtiger_potential:amount:Potentials_Amount:amount:N'),
(7, 2, 'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),
(7, 3, 'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),
(7, 4, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(8, 0, 'vtiger_activity:subject:Calendar_Subject:subject:V'),
(8, 1, 'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),
(8, 2, 'vtiger_activity:status:Calendar_Status:taskstatus:V'),
(8, 3, 'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),
(8, 4, 'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),
(9, 0, 'vtiger_activity:subject:Calendar_Subject:subject:V'),
(9, 1, 'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),
(9, 2, 'vtiger_activity:status:Calendar_Status:taskstatus:V'),
(9, 3, 'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),
(9, 4, 'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),
(10, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(10, 1, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(10, 2, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(10, 3, 'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),
(10, 4, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(10, 5, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(11, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(11, 1, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),
(11, 2, 'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),
(11, 3, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(11, 4, 'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),
(11, 5, 'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),
(12, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(12, 1, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),
(12, 2, 'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),
(12, 3, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(12, 4, 'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),
(12, 5, 'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),
(13, 0, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(13, 1, 'vtiger_products:product_no:Products_Product_No:product_no:V'),
(13, 2, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(13, 3, 'vtiger_crmentityProducts:createdtime:Products_Created_Time:createdtime:DT'),
(13, 4, 'vtiger_products:discontinued:Products_Product_Active:discontinued:C'),
(13, 5, 'vtiger_products:unit_price:Products_Unit_Price:unit_price:N'),
(13, 6, 'vtiger_products:usageunit:Products_Usage_Unit:usageunit:V'),
(13, 7, 'vtiger_products:qty_per_unit:Products_Qty/Unit:qty_per_unit:N'),
(13, 8, 'vtiger_products:qtyinstock:Products_Qty_In_Stock:qtyinstock:NN'),
(14, 0, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(14, 1, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(14, 2, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(14, 3, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(14, 4, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(14, 5, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(15, 0, 'vtiger_quotes:subject:Quotes_Subject:subject:V'),
(15, 1, 'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),
(15, 2, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),
(15, 3, 'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),
(15, 4, 'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),
(15, 5, 'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),
(16, 0, 'vtiger_quotes:subject:Quotes_Subject:subject:V'),
(16, 1, 'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),
(16, 2, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),
(16, 3, 'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),
(16, 4, 'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),
(16, 5, 'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),
(16, 6, 'vtiger_quotes:carrier:Quotes_Carrier:carrier:V'),
(16, 7, 'vtiger_quotes:shipping:Quotes_Shipping:shipping:V'),
(17, 0, 'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),
(17, 1, 'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),
(17, 2, 'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),
(17, 3, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(17, 4, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(17, 5, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(17, 6, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(18, 0, 'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),
(18, 1, 'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),
(18, 2, 'vtiger_purchaseorder:requisition_no:PurchaseOrder_Requisition_No:requisition_no:V'),
(18, 3, 'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),
(18, 4, 'vtiger_contactdetailsPurchaseOrder:lastname:PurchaseOrder_Contact_Name:contact_id:I'),
(18, 5, 'vtiger_purchaseorder:carrier:PurchaseOrder_Carrier:carrier:V'),
(18, 6, 'vtiger_purchaseorder:salescommission:PurchaseOrder_Sales_Commission:salescommission:N'),
(18, 7, 'vtiger_purchaseorder:exciseduty:PurchaseOrder_Excise_Duty:exciseduty:N'),
(18, 8, 'vtiger_usersPurchaseOrder:user_name:PurchaseOrder_Assigned_To:assigned_user_id:V'),
(19, 0, 'vtiger_invoice:subject:Invoice_Subject:subject:V'),
(19, 1, 'vtiger_invoice:salesorderid:Invoice_Sales_Order:salesorder_id:I'),
(19, 2, 'vtiger_invoice:customerno:Invoice_Customer_No:customerno:V'),
(19, 3, 'vtiger_invoice:exciseduty:Invoice_Excise_Duty:exciseduty:N'),
(19, 4, 'vtiger_invoice:salescommission:Invoice_Sales_Commission:salescommission:N'),
(19, 5, 'vtiger_accountInvoice:accountname:Invoice_Account_Name:account_id:I'),
(20, 0, 'vtiger_salesorder:subject:SalesOrder_Subject:subject:V'),
(20, 1, 'vtiger_quotesSalesOrder:subject:SalesOrder_Quote_Name:quote_id:I'),
(20, 2, 'vtiger_contactdetailsSalesOrder:lastname:SalesOrder_Contact_Name:contact_id:I'),
(20, 3, 'vtiger_salesorder:duedate:SalesOrder_Due_Date:duedate:D'),
(20, 4, 'vtiger_salesorder:carrier:SalesOrder_Carrier:carrier:V'),
(20, 5, 'vtiger_salesorder:sostatus:SalesOrder_Status:sostatus:V'),
(20, 6, 'vtiger_accountSalesOrder:accountname:SalesOrder_Account_Name:account_id:I'),
(20, 7, 'vtiger_salesorder:salescommission:SalesOrder_Sales_Commission:salescommission:N'),
(20, 8, 'vtiger_salesorder:exciseduty:SalesOrder_Excise_Duty:exciseduty:N'),
(20, 9, 'vtiger_usersSalesOrder:user_name:SalesOrder_Assigned_To:assigned_user_id:V'),
(21, 0, 'vtiger_campaign:campaignname:Campaigns_Campaign_Name:campaignname:V'),
(21, 1, 'vtiger_campaign:campaigntype:Campaigns_Campaign_Type:campaigntype:V'),
(21, 2, 'vtiger_campaign:targetaudience:Campaigns_Target_Audience:targetaudience:V'),
(21, 3, 'vtiger_campaign:budgetcost:Campaigns_Budget_Cost:budgetcost:I'),
(21, 4, 'vtiger_campaign:actualcost:Campaigns_Actual_Cost:actualcost:I'),
(21, 5, 'vtiger_campaign:expectedrevenue:Campaigns_Expected_Revenue:expectedrevenue:I'),
(21, 6, 'vtiger_campaign:expectedsalescount:Campaigns_Expected_Sales_Count:expectedsalescount:N'),
(21, 7, 'vtiger_campaign:actualsalescount:Campaigns_Actual_Sales_Count:actualsalescount:N'),
(21, 8, 'vtiger_usersCampaigns:user_name:Campaigns_Assigned_To:assigned_user_id:V'),
(22, 0, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(22, 1, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(22, 2, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(22, 3, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),
(23, 0, 'vtiger_account:accountname:Accounts_Account_Name:accountname:V'),
(23, 1, 'vtiger_account:phone:Accounts_Phone:phone:V'),
(23, 2, 'vtiger_account:email1:Accounts_Email:email1:E'),
(23, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(23, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),
(24, 0, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(24, 1, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(24, 2, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(24, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(24, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),
(25, 0, 'vtiger_vendor:vendorname:Vendors_Vendor_Name:vendorname:V'),
(25, 1, 'vtiger_vendor:glacct:Vendors_GL_Account:glacct:V'),
(25, 2, 'vtiger_vendor:email:Vendors_Email:email:E'),
(25, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(25, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),
(26, 0, 'vtiger_maintenance:assets:Maintenance_Assets:assets:V'),
(26, 1, 'vtiger_usersMaintenance:user_name:Maintenance_Assigned_To:assigned_user_id:V'),
(26, 2, 'vtiger_maintenancecf:cf_739:Maintenance_User:cf_739:V'),
(26, 3, 'vtiger_maintenancecf:cf_741:Maintenance_Designation:cf_741:V'),
(26, 4, 'vtiger_maintenancecf:cf_773:Maintenance_Date:cf_773:D'),
(26, 5, 'vtiger_maintenancecf:cf_779:Maintenance_Description:cf_779:V'),
(26, 6, 'vtiger_maintenancecf:cf_743:Maintenance_Material_Cost:cf_743:N'),
(26, 7, 'vtiger_maintenancecf:cf_745:Maintenance_Company_Cost:cf_745:N'),
(26, 8, 'vtiger_maintenancecf:cf_793:Maintenance_Other_cost:cf_793:NN'),
(27, 0, 'vtiger_assets:asset_no:Assets_Asset_No:asset_no:V'),
(27, 1, 'vtiger_assets:assetname:Assets_Asset_Name:assetname:V'),
(27, 2, 'vtiger_assets:serialnumber:Assets_Serial_Number:serialnumber:V'),
(27, 3, 'vtiger_assets:dateinservice:Assets_Date_in_Service:dateinservice:D'),
(27, 4, 'vtiger_assets:assetstatus:Assets_Status:assetstatus:V'),
(27, 5, 'vtiger_usersAssets:user_name:Assets_Assigned_To:assigned_user_id:V'),
(27, 6, 'vtiger_assetscf:cf_749:Assets_MAINTENANCE_STATUS:cf_749:V'),
(28, 0, 'vtiger_maintenancecf:cf_737:Maintenance_Zone:cf_737:V'),
(28, 1, 'vtiger_maintenance:assets:Maintenance_Assets:assets:V'),
(28, 2, 'vtiger_maintenancecf:cf_785:Maintenance_Asset_Number:cf_785:V'),
(28, 3, 'vtiger_maintenancecf:cf_777:Maintenance_Asset_Type:cf_777:V'),
(28, 4, 'vtiger_maintenancecf:cf_775:Maintenance_Room_Number:cf_775:I'),
(28, 5, 'vtiger_maintenancecf:cf_739:Maintenance_User:cf_739:V'),
(28, 6, 'vtiger_maintenancecf:cf_773:Maintenance_Date:cf_773:D'),
(28, 7, 'vtiger_maintenancecf:cf_743:Maintenance_Material_Cost:cf_743:N'),
(28, 8, 'vtiger_maintenancecf:cf_745:Maintenance_Company_Cost:cf_745:N'),
(29, 0, 'vtiger_assets:asset_no:Assets_Asset_No:asset_no:V'),
(29, 1, 'vtiger_assets:product:Assets_Product_Name:product:V'),
(29, 2, 'vtiger_assets:assetname:Assets_Asset_Name:assetname:V'),
(29, 3, 'vtiger_assets:serialnumber:Assets_Serial_Number:serialnumber:V'),
(29, 4, 'vtiger_assets:dateinservice:Assets_Date_in_Service:dateinservice:D'),
(29, 5, 'vtiger_usersAssets:user_name:Assets_Assigned_To:assigned_user_id:V'),
(29, 6, 'vtiger_assets:assetstatus:Assets_Status:assetstatus:V'),
(29, 7, 'vtiger_assetscf:cf_787:Assets_Zone:cf_787:V');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectquery`
--

CREATE TABLE IF NOT EXISTS `vtiger_selectquery` (
  `queryid` int(19) NOT NULL,
  `startindex` int(19) DEFAULT '0',
  `numofobjects` int(19) DEFAULT '0',
  PRIMARY KEY (`queryid`),
  KEY `selectquery_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_selectquery`
--

INSERT INTO `vtiger_selectquery` (`queryid`, `startindex`, `numofobjects`) VALUES
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(13, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectquery_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_selectquery_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_selectquery_seq`
--

INSERT INTO `vtiger_selectquery_seq` (`id`) VALUES
(29);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_senotesrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_senotesrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `notesid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`notesid`),
  KEY `senotesrel_notesid_idx` (`notesid`),
  KEY `senotesrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seproductsrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_seproductsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `productid` int(19) NOT NULL DEFAULT '0',
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY (`crmid`,`productid`),
  KEY `seproductsrel_productid_idx` (`productid`),
  KEY `seproductrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service`
--

CREATE TABLE IF NOT EXISTS `vtiger_service` (
  `serviceid` int(11) NOT NULL,
  `service_no` varchar(100) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `servicecategory` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT '0.00',
  `unit_price` decimal(25,8) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT '0',
  `service_usageunit` varchar(200) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `commissionrate` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecategory`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecategory` (
  `servicecategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `servicecategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`servicecategoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_servicecategory`
--

INSERT INTO `vtiger_servicecategory` (`servicecategoryid`, `servicecategory`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Support', 1, 230, 2),
(3, 'Installation', 1, 231, 3),
(4, 'Migration', 1, 232, 4),
(5, 'Customization', 1, 233, 5),
(6, 'Training', 1, 234, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecategory_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_servicecategory_seq`
--

INSERT INTO `vtiger_servicecategory_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecf`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecf` (
  `serviceid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecontracts`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecontracts` (
  `servicecontractsid` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sc_related_to` int(11) DEFAULT NULL,
  `tracking_unit` varchar(100) DEFAULT NULL,
  `total_units` decimal(5,2) DEFAULT NULL,
  `used_units` decimal(5,2) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `planned_duration` varchar(256) DEFAULT NULL,
  `actual_duration` varchar(256) DEFAULT NULL,
  `contract_status` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `contract_type` varchar(200) DEFAULT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `contract_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_servicecontracts`
--

INSERT INTO `vtiger_servicecontracts` (`servicecontractsid`, `start_date`, `end_date`, `sc_related_to`, `tracking_unit`, `total_units`, `used_units`, `subject`, `due_date`, `planned_duration`, `actual_duration`, `contract_status`, `priority`, `contract_type`, `progress`, `contract_no`) VALUES
(27, '2016-06-29', NULL, 11, '', 34.00, 12.00, 'Network Facility Repair', '2016-07-10', '12', '', 'In Planning', 'Normal', 'Services', 35.29, 'SERCON1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecontractscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecontractscf` (
  `servicecontractsid` int(11) NOT NULL,
  PRIMARY KEY (`servicecontractsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_servicecontractscf`
--

INSERT INTO `vtiger_servicecontractscf` (`servicecontractsid`) VALUES
(27);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service_usageunit`
--

CREATE TABLE IF NOT EXISTS `vtiger_service_usageunit` (
  `service_usageunitid` int(11) NOT NULL AUTO_INCREMENT,
  `service_usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`service_usageunitid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_service_usageunit`
--

INSERT INTO `vtiger_service_usageunit` (`service_usageunitid`, `service_usageunit`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Hours', 1, 226, 1),
(2, 'Days', 1, 227, 2),
(3, 'Incidents', 1, 228, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service_usageunit_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_service_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_service_usageunit_seq`
--

INSERT INTO `vtiger_service_usageunit_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seticketsrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_seticketsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `ticketid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`ticketid`),
  KEY `seticketsrel_crmid_idx` (`crmid`),
  KEY `seticketsrel_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_blocks`
--

CREATE TABLE IF NOT EXISTS `vtiger_settings_blocks` (
  `blockid` int(19) NOT NULL,
  `label` varchar(250) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  PRIMARY KEY (`blockid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_settings_blocks`
--

INSERT INTO `vtiger_settings_blocks` (`blockid`, `label`, `sequence`) VALUES
(1, 'LBL_USER_MANAGEMENT', 1),
(2, 'LBL_STUDIO', 2),
(3, 'LBL_COMMUNICATION_TEMPLATES', 3),
(4, 'LBL_OTHER_SETTINGS', 4),
(5, 'LBL_INTEGRATION', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_blocks_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_settings_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_settings_blocks_seq`
--

INSERT INTO `vtiger_settings_blocks_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_field`
--

CREATE TABLE IF NOT EXISTS `vtiger_settings_field` (
  `fieldid` int(19) NOT NULL,
  `blockid` int(19) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `iconpath` varchar(300) DEFAULT NULL,
  `description` text,
  `linkto` text,
  `sequence` int(19) DEFAULT NULL,
  `active` int(19) DEFAULT '0',
  `pinned` int(1) DEFAULT '0',
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_settings_field`
--

INSERT INTO `vtiger_settings_field` (`fieldid`, `blockid`, `name`, `iconpath`, `description`, `linkto`, `sequence`, `active`, `pinned`) VALUES
(1, 1, 'LBL_USERS', 'ico-users.gif', 'LBL_USER_DESCRIPTION', 'index.php?module=Users&parent=Settings&view=List', 1, 0, 0),
(2, 1, 'LBL_ROLES', 'ico-roles.gif', 'LBL_ROLE_DESCRIPTION', 'index.php?module=Roles&parent=Settings&view=Index', 2, 0, 0),
(3, 1, 'LBL_PROFILES', 'ico-profile.gif', 'LBL_PROFILE_DESCRIPTION', 'index.php?module=Profiles&parent=Settings&view=List', 3, 0, 0),
(4, 1, 'USERGROUPLIST', 'ico-groups.gif', 'LBL_GROUP_DESCRIPTION', 'index.php?module=Groups&parent=Settings&view=List', 4, 0, 0),
(5, 1, 'LBL_SHARING_ACCESS', 'shareaccess.gif', 'LBL_SHARING_ACCESS_DESCRIPTION', 'index.php?module=SharingAccess&parent=Settings&view=Index', 5, 0, 0),
(6, 1, 'LBL_FIELDS_ACCESS', 'orgshar.gif', 'LBL_SHARING_FIELDS_DESCRIPTION', 'index.php?module=FieldAccess&parent=Settings&view=Index', 6, 0, 0),
(7, 1, 'LBL_LOGIN_HISTORY_DETAILS', 'set-IcoLoginHistory.gif', 'LBL_LOGIN_HISTORY_DESCRIPTION', 'index.php?module=LoginHistory&parent=Settings&view=List', 7, 0, 0),
(8, 2, 'VTLIB_LBL_MODULE_MANAGER', 'vtlib_modmng.gif', 'VTLIB_LBL_MODULE_MANAGER_DESCRIPTION', 'index.php?module=ModuleManager&parent=Settings&view=List', 8, 0, 0),
(9, 2, 'LBL_PICKLIST_EDITOR', 'picklist.gif', 'LBL_PICKLIST_DESCRIPTION', 'index.php?parent=Settings&module=Picklist&view=Index', 1, 0, 0),
(10, 2, 'LBL_PICKLIST_DEPENDENCY_SETUP', 'picklistdependency.gif', 'LBL_PICKLIST_DEPENDENCY_DESCRIPTION', 'index.php?parent=Settings&module=PickListDependency&view=List', 2, 0, 0),
(11, 2, 'LBL_MENU_EDITOR', 'menueditor.png', 'LBL_MENU_DESC', 'index.php?module=MenuEditor&parent=Settings&view=Index', 3, 0, 0),
(12, 3, 'NOTIFICATIONSCHEDULERS', 'notification.gif', 'LBL_NOTIF_SCHED_DESCRIPTION', 'index.php?module=Settings&view=listnotificationschedulers&parenttab=Settings', 4, 0, 0),
(13, 3, 'INVENTORYNOTIFICATION', 'inventory.gif', 'LBL_INV_NOTIF_DESCRIPTION', 'index.php?module=Settings&view=listinventorynotifications&parenttab=Settings', 1, 0, 0),
(14, 3, 'LBL_COMPANY_DETAILS', 'company.gif', 'LBL_COMPANY_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=CompanyDetails', 2, 0, 0),
(15, 4, 'LBL_MAIL_SERVER_SETTINGS', 'ogmailserver.gif', 'LBL_MAIL_SERVER_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=OutgoingServerDetail', 3, 0, 0),
(16, 4, 'LBL_CURRENCY_SETTINGS', 'currency.gif', 'LBL_CURRENCY_DESCRIPTION', 'index.php?parent=Settings&module=Currency&view=List', 4, 0, 0),
(17, 4, 'LBL_TAX_SETTINGS', 'taxConfiguration.gif', 'LBL_TAX_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=TaxIndex', 5, 0, 0),
(18, 4, 'LBL_SYSTEM_INFO', 'system.gif', 'LBL_SYSTEM_DESCRIPTION', 'index.php?module=Settings&submodule=Server&view=ProxyConfig', 6, 1, 0),
(19, 4, 'LBL_ANNOUNCEMENT', 'announ.gif', 'LBL_ANNOUNCEMENT_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=AnnouncementEdit', 1, 0, 0),
(20, 4, 'LBL_DEFAULT_MODULE_VIEW', 'set-IcoTwoTabConfig.gif', 'LBL_DEFAULT_MODULE_VIEW_DESC', 'index.php?module=Settings&action=DefModuleView&parenttab=Settings', 2, 0, 0),
(21, 4, 'INVENTORYTERMSANDCONDITIONS', 'terms.gif', 'LBL_INV_TANDC_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=TermsAndConditionsEdit', 3, 0, 0),
(22, 4, 'LBL_CUSTOMIZE_MODENT_NUMBER', 'settingsInvNumber.gif', 'LBL_CUSTOMIZE_MODENT_NUMBER_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=CustomRecordNumbering', 4, 0, 0),
(23, 4, 'LBL_MAIL_SCANNER', 'mailScanner.gif', 'LBL_MAIL_SCANNER_DESCRIPTION', 'index.php?parent=Settings&module=MailConverter&view=List', 5, 0, 0),
(24, 4, 'LBL_LIST_WORKFLOWS', 'settingsWorkflow.png', 'LBL_LIST_WORKFLOWS_DESCRIPTION', 'index.php?module=Workflows&parent=Settings&view=List', 6, 0, 0),
(25, 4, 'LBL_CONFIG_EDITOR', 'migrate.gif', 'LBL_CONFIG_EDITOR_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=ConfigEditorDetail', 7, 0, 0),
(26, 4, 'Scheduler', 'Cron.png', 'Allows you to Configure Cron Task', 'index.php?module=CronTasks&parent=Settings&view=List', 8, 0, 0),
(27, 4, 'LBL_WORKFLOW_LIST', 'settingsWorkflow.png', 'LBL_AVAILABLE_WORKLIST_LIST', 'index.php?module=com_vtiger_workflow&action=workflowlist', 8, 0, 0),
(28, 4, 'ModTracker', 'set-IcoLoginHistory.gif', 'LBL_MODTRACKER_DESCRIPTION', 'index.php?module=ModTracker&action=BasicSettings&parenttab=Settings&formodule=ModTracker', 9, 0, 0),
(30, 4, 'Webforms', 'modules/Webforms/img/Webform.png', 'LBL_WEBFORMS_DESCRIPTION', 'index.php?module=Webforms&action=index&parenttab=Settings', 10, 0, 0),
(31, 4, 'LBL_CUSTOMER_PORTAL', 'portal_icon.png', 'PORTAL_EXTENSION_DESCRIPTION', 'index.php?module=CustomerPortal&action=index&parenttab=Settings', 11, 0, 0),
(32, 2, 'LBL_EDIT_FIELDS', '', 'LBL_LAYOUT_EDITOR_DESCRIPTION', 'index.php?module=LayoutEditor&parent=Settings&view=Index', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_field_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_settings_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_settings_field_seq`
--

INSERT INTO `vtiger_settings_field_seq` (`id`) VALUES
(32);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sharedcalendar`
--

CREATE TABLE IF NOT EXISTS `vtiger_sharedcalendar` (
  `userid` int(19) NOT NULL,
  `sharedid` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`sharedid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shareduserinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_shareduserinfo` (
  `userid` int(19) NOT NULL DEFAULT '0',
  `shareduserid` int(19) NOT NULL DEFAULT '0',
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_shareduserinfo`
--

INSERT INTO `vtiger_shareduserinfo` (`userid`, `shareduserid`, `color`, `visible`) VALUES
(5, 1, NULL, 0),
(5, 5, '#e620a1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shippingtaxinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_shippingtaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`taxid`),
  KEY `shippingtaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_shippingtaxinfo`
--

INSERT INTO `vtiger_shippingtaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`) VALUES
(1, 'shtax1', 'VAT', 4.500, 0),
(2, 'shtax2', 'Sales', 10.000, 0),
(3, 'shtax3', 'Service', 12.500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shippingtaxinfo_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_shippingtaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_shippingtaxinfo_seq`
--

INSERT INTO `vtiger_shippingtaxinfo_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shorturls`
--

CREATE TABLE IF NOT EXISTS `vtiger_shorturls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) DEFAULT NULL,
  `handler_path` varchar(400) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL,
  `handler_function` varchar(100) DEFAULT NULL,
  `handler_data` varchar(255) DEFAULT NULL,
  `onetime` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_shorturls`
--

INSERT INTO `vtiger_shorturls` (`id`, `uid`, `handler_path`, `handler_class`, `handler_function`, `handler_data`, `onetime`) VALUES
(1, '577bc1b51b2076.42596625', 'modules/Users/handlers/ForgotPassword.php', 'Users_ForgotPassword_Handler', 'changePassword', '{"username":"shio","email":"elipokeamosses@gmail.com","time":1467728309,"hash":"1a72b9d11e538254cf47dd16bd02f328"}', 0),
(2, '577e2400258552.46899539', 'modules/Users/handlers/ForgotPassword.php', 'Users_ForgotPassword_Handler', 'changePassword', '{"username":"shio","email":"elipokeamosses@gmail.com","time":1467884544,"hash":"e1849c444a155ee249c5181f175c6456"}', 0),
(3, '577e246b0fae77.23477575', 'modules/Users/handlers/ForgotPassword.php', 'Users_ForgotPassword_Handler', 'changePassword', '{"username":"shio","email":"elipokeamosses@gmail.com","time":1467884651,"hash":"f7ea51aac92ad0d6490e2a846ee49043"}', 0),
(4, '577e2478c6c183.16510245', 'modules/Users/handlers/ForgotPassword.php', 'Users_ForgotPassword_Handler', 'changePassword', '{"username":"shio","secret_token":"577e2478c6c08","secret_hash":"d9c14fa665696cd827470f28a5aa7805"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier`
--

CREATE TABLE IF NOT EXISTS `vtiger_smsnotifier` (
  `smsnotifierid` int(11) DEFAULT NULL,
  `message` text,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_smsnotifier`
--

INSERT INTO `vtiger_smsnotifier` (`smsnotifierid`, `message`, `status`) VALUES
(22, 'hfdhdd', NULL),
(23, 'kl', NULL),
(24, 'free', NULL),
(25, 'julio', NULL),
(26, 'fr', NULL),
(28, 'bh', NULL),
(29, 'by you', NULL),
(31, 'hi', NULL),
(32, 'hi', NULL),
(37, 'hi', NULL),
(39, 'cf', NULL),
(40, 'vgh', NULL),
(46, 'gkdaj', NULL),
(47, 'hd', NULL),
(48, 'fr', NULL),
(49, 'ty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifiercf`
--

CREATE TABLE IF NOT EXISTS `vtiger_smsnotifiercf` (
  `smsnotifierid` int(11) NOT NULL,
  PRIMARY KEY (`smsnotifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_smsnotifiercf`
--

INSERT INTO `vtiger_smsnotifiercf` (`smsnotifierid`) VALUES
(22),
(23),
(24),
(25),
(26),
(28),
(29),
(31),
(32),
(37),
(39),
(40),
(46),
(47),
(48),
(49);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier_servers`
--

CREATE TABLE IF NOT EXISTS `vtiger_smsnotifier_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL,
  `providertype` varchar(50) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `parameters` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_smsnotifier_servers`
--

INSERT INTO `vtiger_smsnotifier_servers` (`id`, `password`, `isactive`, `providertype`, `username`, `parameters`) VALUES
(1, 'HYAAWKFWLIAaZL', 1, 'ClickATell', 'mosses', '{"api_id":"3606201","from":"mosses","mo":""}');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier_status`
--

CREATE TABLE IF NOT EXISTS `vtiger_smsnotifier_status` (
  `smsnotifierid` int(11) DEFAULT NULL,
  `tonumber` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `smsmessageid` varchar(50) DEFAULT NULL,
  `needlookup` int(1) DEFAULT '1',
  `statusid` int(11) NOT NULL AUTO_INCREMENT,
  `statusmessage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_smsnotifier_status`
--

INSERT INTO `vtiger_smsnotifier_status` (`smsnotifierid`, `tonumber`, `status`, `smsmessageid`, `needlookup`, `statusid`, `statusmessage`) VALUES
(31, '+255789025030', 'Processing', 'e2610c33351db0db56b75867a852a2bd', 1, 1, ''),
(49, '+255789025030', 'Processing', '514e091eef5ca289aa96d90d6cb6be3d To: 255789025030', 1, 2, ''),
(49, '+255789025030', 'Processing', '4506a88791f02a37d5f8065b186173c5 To: 255688188349', 1, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_soapservice`
--

CREATE TABLE IF NOT EXISTS `vtiger_soapservice` (
  `id` int(19) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `sessionid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sobillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_sobillads` (
  `sobilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_soshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_soshipads` (
  `soshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`soshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_sostatus` (
  `sostatusid` int(19) NOT NULL AUTO_INCREMENT,
  `sostatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sostatusid`),
  UNIQUE KEY `sostatus_sostatus_idx` (`sostatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_sostatus`
--

INSERT INTO `vtiger_sostatus` (`sostatusid`, `sostatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Created', 0, 166, 0),
(2, 'Approved', 0, 167, 1),
(3, 'Delivered', 0, 168, 2),
(4, 'Cancelled', 0, 169, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatushistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_sostatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `salesorderid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `sostatushistory_salesorderid_idx` (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_sostatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_sostatus_seq`
--

INSERT INTO `vtiger_sostatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sqltimelog`
--

CREATE TABLE IF NOT EXISTS `vtiger_sqltimelog` (
  `id` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `data` text,
  `started` decimal(20,6) DEFAULT NULL,
  `ended` decimal(20,6) DEFAULT NULL,
  `loggedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_start_hour`
--

CREATE TABLE IF NOT EXISTS `vtiger_start_hour` (
  `start_hourid` int(11) NOT NULL AUTO_INCREMENT,
  `start_hour` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`start_hourid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `vtiger_start_hour`
--

INSERT INTO `vtiger_start_hour` (`start_hourid`, `start_hour`, `sortorderid`, `presence`) VALUES
(1, '00:00', 1, 1),
(2, '01:00', 2, 1),
(3, '02:00', 3, 1),
(4, '03:00', 4, 1),
(5, '04:00', 5, 1),
(6, '05:00', 6, 1),
(7, '06:00', 7, 1),
(8, '07:00', 8, 1),
(9, '08:00', 9, 1),
(10, '09:00', 10, 1),
(11, '10:00', 11, 1),
(12, '11:00', 12, 1),
(13, '12:00', 13, 1),
(14, '13:00', 14, 1),
(15, '14:00', 15, 1),
(16, '15:00', 16, 1),
(17, '16:00', 17, 1),
(18, '17:00', 18, 1),
(19, '18:00', 19, 1),
(20, '19:00', 20, 1),
(21, '20:00', 21, 1),
(22, '21:00', 22, 1),
(23, '22:00', 23, 1),
(24, '23:00', 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_start_hour_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_start_hour_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_start_hour_seq`
--

INSERT INTO `vtiger_start_hour_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_status`
--

CREATE TABLE IF NOT EXISTS `vtiger_status` (
  `statusid` int(19) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_status`
--

INSERT INTO `vtiger_status` (`statusid`, `status`, `presence`, `picklist_valueid`) VALUES
(1, 'Active', 0, 1),
(2, 'Inactive', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_status_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_status_seq`
--

INSERT INTO `vtiger_status_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_systems`
--

CREATE TABLE IF NOT EXISTS `vtiger_systems` (
  `id` int(19) NOT NULL,
  `server` varchar(100) DEFAULT NULL,
  `server_port` int(19) DEFAULT NULL,
  `server_username` varchar(100) DEFAULT NULL,
  `server_password` varchar(100) DEFAULT NULL,
  `server_type` varchar(20) DEFAULT NULL,
  `smtp_auth` varchar(5) DEFAULT NULL,
  `server_path` varchar(256) DEFAULT NULL,
  `from_email_field` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_systems`
--

INSERT INTO `vtiger_systems` (`id`, `server`, `server_port`, `server_username`, `server_password`, `server_type`, `smtp_auth`, `server_path`, `from_email_field`) VALUES
(1, 'ssl://smtp.gmail.com:465', 0, 'elipokeamosses@gmail.com', 'dyetuf@dyetuf', 'email', '1', NULL, 'elipokeamosses@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_systems_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_systems_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_systems_seq`
--

INSERT INTO `vtiger_systems_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tab`
--

CREATE TABLE IF NOT EXISTS `vtiger_tab` (
  `tabid` int(19) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT '1',
  `tabsequence` int(10) DEFAULT NULL,
  `tablabel` varchar(25) NOT NULL,
  `modifiedby` int(19) DEFAULT NULL,
  `modifiedtime` int(19) DEFAULT NULL,
  `customized` int(19) DEFAULT NULL,
  `ownedby` int(19) DEFAULT NULL,
  `isentitytype` int(11) NOT NULL DEFAULT '1',
  `trial` int(1) NOT NULL DEFAULT '0',
  `version` varchar(10) DEFAULT NULL,
  `parent` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tabid`),
  UNIQUE KEY `tab_name_idx` (`name`),
  KEY `tab_modifiedby_idx` (`modifiedby`),
  KEY `tab_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_tab`
--

INSERT INTO `vtiger_tab` (`tabid`, `name`, `presence`, `tabsequence`, `tablabel`, `modifiedby`, `modifiedtime`, `customized`, `ownedby`, `isentitytype`, `trial`, `version`, `parent`) VALUES
(1, 'Dashboard', 1, -1, 'Dashboards', NULL, NULL, 0, 1, 0, 0, NULL, 'Analytics'),
(2, 'Potentials', 1, -1, 'Potentials', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(3, 'Home', 0, -1, 'Home', NULL, NULL, 0, 1, 0, 0, NULL, NULL),
(4, 'Contacts', 0, 9, 'Contacts', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(6, 'Accounts', 0, 2, 'Accounts', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(7, 'Leads', 0, -1, 'Leads', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(8, 'Documents', 0, 5, 'Documents', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools'),
(9, 'Calendar', 0, 1, 'Calendar', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools'),
(10, 'Emails', 0, -1, 'Emails', NULL, NULL, 0, 1, 1, 0, NULL, 'Tools'),
(13, 'HelpDesk', 0, 8, 'HelpDesk', NULL, NULL, 0, 0, 1, 0, NULL, 'Support'),
(14, 'Products', 0, 3, 'Products', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory'),
(15, 'Faq', 0, 6, 'Faq', NULL, NULL, 0, 1, 1, 0, NULL, 'Support'),
(16, 'Events', 2, -1, 'Events', NULL, NULL, 0, 0, 1, 0, NULL, NULL),
(18, 'Vendors', 1, -1, 'Vendors', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory'),
(19, 'PriceBooks', 1, -1, 'PriceBooks', NULL, NULL, 0, 1, 1, 0, NULL, 'Inventory'),
(20, 'Quotes', 1, -1, 'Quotes', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(21, 'PurchaseOrder', 1, -1, 'PurchaseOrder', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory'),
(22, 'SalesOrder', 1, -1, 'SalesOrder', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(23, 'Invoice', 1, -1, 'Invoice', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(24, 'Rss', 1, -1, 'Rss', NULL, NULL, 0, 1, 0, 0, NULL, 'Tools'),
(25, 'Reports', 0, 10, 'Reports', NULL, NULL, 0, 1, 0, 0, NULL, 'Analytics'),
(26, 'Campaigns', 1, -1, 'Campaigns', NULL, NULL, 0, 0, 1, 0, NULL, 'Marketing'),
(27, 'Portal', 1, -1, 'Portal', NULL, NULL, 0, 1, 0, 0, NULL, 'Tools'),
(28, 'Webmails', 0, -1, 'Webmails', NULL, NULL, 0, 1, 1, 0, NULL, NULL),
(29, 'Users', 0, -1, 'Users', NULL, NULL, 0, 1, 0, 0, NULL, NULL),
(30, 'ModTracker', 0, -1, 'ModTracker', NULL, NULL, 0, 0, 0, 0, '1.2', ''),
(31, 'ServiceContracts', 0, 7, 'Service Contracts', NULL, NULL, 0, 0, 1, 0, '2.4', 'Support'),
(32, 'Import', 0, -1, 'Import', NULL, NULL, 1, 0, 0, 0, '1.7', ''),
(33, 'MailManager', 0, -1, 'MailManager', NULL, NULL, 1, 0, 0, 0, '1.9', 'Tools'),
(34, 'Mobile', 0, -1, 'Mobile', NULL, NULL, 1, 0, 0, 0, '2.0', ''),
(35, 'WSAPP', 0, -1, 'WSAPP', NULL, NULL, 1, 0, 0, 0, '3.4.4', ''),
(36, 'PBXManager', 1, -1, 'PBXManager', NULL, NULL, 1, 0, 1, 0, '2.2', 'Tools'),
(37, 'Services', 1, -1, 'Services', NULL, NULL, 0, 0, 1, 0, '2.6', 'Inventory'),
(38, 'Google', 0, -1, 'Google', NULL, NULL, 0, 0, 0, 0, '1.5', ''),
(39, 'Assets', 0, 4, 'Assets', NULL, NULL, 0, 0, 1, 0, '2.0', 'Inventory'),
(40, 'Webforms', 0, -1, 'Webforms', NULL, NULL, 0, 0, 0, 0, '1.6', ''),
(41, 'CustomerPortal', 0, -1, 'CustomerPortal', NULL, NULL, 0, 0, 0, 0, '1.4', ''),
(42, 'SMSNotifier', 0, -1, 'SMSNotifier', NULL, NULL, 0, 0, 1, 0, '1.9', 'Tools'),
(43, 'ModComments', 0, -1, 'Comments', NULL, NULL, 0, 0, 1, 0, '2.1', 'Tools'),
(44, 'ProjectMilestone', 1, -1, 'ProjectMilestone', NULL, NULL, 0, 0, 1, 0, '3.0', 'Support'),
(45, 'ProjectTask', 1, -1, 'ProjectTask', NULL, NULL, 0, 0, 1, 0, '3.1', 'Support'),
(46, 'Project', 1, -1, 'Project', NULL, NULL, 0, 0, 1, 0, '3.3', 'Support'),
(47, 'EmailTemplates', 0, -1, 'Email Templates', NULL, NULL, 1, 0, 0, 0, '1.0', 'Tools'),
(48, 'RecycleBin', 1, -1, 'Recycle Bin', NULL, NULL, 0, 0, 0, 0, '1.5', 'Tools'),
(49, 'ExtensionStore', 0, -1, 'Extension Store', NULL, NULL, 1, 0, 0, 0, '1.2', 'Settings'),
(50, 'Maintenance', 0, -1, 'Maintenance', NULL, NULL, 1, 0, 1, 0, '0', 'Tools'),
(51, 'Valuation', 1, -1, 'Valuation', NULL, NULL, 1, 0, 1, 0, '0', 'Tools');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tab_info`
--

CREATE TABLE IF NOT EXISTS `vtiger_tab_info` (
  `tabid` int(19) DEFAULT NULL,
  `prefname` varchar(256) DEFAULT NULL,
  `prefvalue` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_tab_info`
--

INSERT INTO `vtiger_tab_info` (`tabid`, `prefname`, `prefvalue`) VALUES
(30, 'vtiger_min_version', '6.0.0rc'),
(31, 'vtiger_min_version', '6.0.0rc'),
(32, 'vtiger_min_version', '6.0.0rc'),
(32, 'vtiger_max_version', '6.*'),
(33, 'vtiger_min_version', '6.0.0RC'),
(34, 'vtiger_min_version', '6.0.0rc'),
(35, 'vtiger_min_version', '6.0.0rc'),
(36, 'vtiger_min_version', '6.0.0'),
(36, 'vtiger_max_version', '6.*'),
(37, 'vtiger_min_version', '6.0.0rc'),
(37, 'vtiger_max_version', '6.*'),
(38, 'vtiger_min_version', '6.0.0rc'),
(38, 'vtiger_max_version', '6.*'),
(39, 'vtiger_min_version', '6.0.0rc'),
(39, 'vtiger_max_version', '6.*'),
(40, 'vtiger_min_version', '6.0.0rc'),
(40, 'vtiger_max_version', '6.*'),
(41, 'vtiger_min_version', '6.0.0rc'),
(41, 'vtiger_max_version', '6.*'),
(42, 'vtiger_min_version', '6.0.0rc'),
(42, 'vtiger_max_version', '6.*'),
(43, 'vtiger_min_version', '6.0.0rc'),
(43, 'vtiger_max_version', '6.*'),
(44, 'vtiger_min_version', '6.0.0rc'),
(44, 'vtiger_max_version', '6.*'),
(45, 'vtiger_min_version', '6.0.0rc'),
(46, 'vtiger_min_version', '6.0.0rc'),
(47, 'vtiger_min_version', '6.0.0rc'),
(47, 'vtiger_max_version', '6.*'),
(48, 'vtiger_min_version', '6.0.0rc'),
(48, 'vtiger_max_version', '6.*'),
(49, 'vtiger_min_version', '6.0.0'),
(49, 'vtiger_max_version', '6.*');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskpriority`
--

CREATE TABLE IF NOT EXISTS `vtiger_taskpriority` (
  `taskpriorityid` int(19) NOT NULL AUTO_INCREMENT,
  `taskpriority` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskpriorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_taskpriority`
--

INSERT INTO `vtiger_taskpriority` (`taskpriorityid`, `taskpriority`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'High', 1, 170, 0),
(2, 'Medium', 1, 171, 1),
(3, 'Low', 1, 172, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskpriority_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_taskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_taskpriority_seq`
--

INSERT INTO `vtiger_taskpriority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_taskstatus` (
  `taskstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `taskstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_taskstatus`
--

INSERT INTO `vtiger_taskstatus` (`taskstatusid`, `taskstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Not Started', 0, 173, 0),
(2, 'In Progress', 0, 174, 1),
(3, 'Completed', 0, 175, 2),
(4, 'Pending Input', 0, 176, 3),
(5, 'Deferred', 0, 177, 4),
(6, 'Planned', 0, 178, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_taskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_taskstatus_seq`
--

INSERT INTO `vtiger_taskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxclass`
--

CREATE TABLE IF NOT EXISTS `vtiger_taxclass` (
  `taxclassid` int(19) NOT NULL AUTO_INCREMENT,
  `taxclass` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`taxclassid`),
  UNIQUE KEY `taxclass_carrier_idx` (`taxclass`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_taxclass`
--

INSERT INTO `vtiger_taxclass` (`taxclassid`, `taxclass`, `sortorderid`, `presence`) VALUES
(1, 'SalesTax', 0, 1),
(2, 'Vat', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxclass_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_taxclass_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_taxclass_seq`
--

INSERT INTO `vtiger_taxclass_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcategories`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketcategories` (
  `ticketcategories_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketcategories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_ticketcategories`
--

INSERT INTO `vtiger_ticketcategories` (`ticketcategories_id`, `ticketcategories`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Big Problem', 1, 179, 0),
(2, 'Small Problem', 1, 180, 1),
(3, 'Other Problem', 1, 181, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcategories_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketcategories_seq`
--

INSERT INTO `vtiger_ticketcategories_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketcf` (
  `ticketid` int(19) NOT NULL DEFAULT '0',
  `from_portal` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcomments`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketcomments` (
  `commentid` int(19) NOT NULL AUTO_INCREMENT,
  `ticketid` int(19) DEFAULT NULL,
  `comments` text,
  `ownerid` int(19) NOT NULL DEFAULT '0',
  `ownertype` varchar(10) DEFAULT NULL,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `ticketcomments_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketpriorities`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketpriorities` (
  `ticketpriorities_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketpriorities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketpriorities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_ticketpriorities`
--

INSERT INTO `vtiger_ticketpriorities` (`ticketpriorities_id`, `ticketpriorities`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Low', 1, 182, 0),
(2, 'Normal', 1, 183, 1),
(3, 'High', 1, 184, 2),
(4, 'Urgent', 1, 185, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketpriorities_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketpriorities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketpriorities_seq`
--

INSERT INTO `vtiger_ticketpriorities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketseverities`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketseverities` (
  `ticketseverities_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketseverities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketseverities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_ticketseverities`
--

INSERT INTO `vtiger_ticketseverities` (`ticketseverities_id`, `ticketseverities`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Minor', 1, 186, 0),
(2, 'Major', 1, 187, 1),
(3, 'Feature', 1, 188, 2),
(4, 'Critical', 1, 189, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketseverities_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketseverities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketseverities_seq`
--

INSERT INTO `vtiger_ticketseverities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketstatus` (
  `ticketstatus_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_ticketstatus`
--

INSERT INTO `vtiger_ticketstatus` (`ticketstatus_id`, `ticketstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Open', 0, 190, 0),
(2, 'In Progress', 0, 191, 1),
(3, 'Wait For Response', 0, 192, 2),
(4, 'Closed', 0, 193, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketstatus_seq`
--

INSERT INTO `vtiger_ticketstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_time_zone`
--

CREATE TABLE IF NOT EXISTS `vtiger_time_zone` (
  `time_zoneid` int(19) NOT NULL AUTO_INCREMENT,
  `time_zone` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`time_zoneid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `vtiger_time_zone`
--

INSERT INTO `vtiger_time_zone` (`time_zoneid`, `time_zone`, `sortorderid`, `presence`) VALUES
(1, 'Pacific/Midway', 0, 1),
(2, 'Pacific/Samoa', 1, 1),
(3, 'Pacific/Honolulu', 2, 1),
(4, 'America/Anchorage', 3, 1),
(5, 'America/Los_Angeles', 4, 1),
(6, 'America/Tijuana', 5, 1),
(7, 'America/Denver', 6, 1),
(8, 'America/Chihuahua', 7, 1),
(9, 'America/Mazatlan', 8, 1),
(10, 'America/Phoenix', 9, 1),
(11, 'America/Regina', 10, 1),
(12, 'America/Tegucigalpa', 11, 1),
(13, 'America/Chicago', 12, 1),
(14, 'America/Mexico_City', 13, 1),
(15, 'America/Monterrey', 14, 1),
(16, 'America/New_York', 15, 1),
(17, 'America/Bogota', 16, 1),
(18, 'America/Lima', 17, 1),
(19, 'America/Rio_Branco', 18, 1),
(20, 'America/Indiana/Indianapolis', 19, 1),
(21, 'America/Caracas', 20, 1),
(22, 'America/Halifax', 21, 1),
(23, 'America/Manaus', 22, 1),
(24, 'America/Santiago', 23, 1),
(25, 'America/La_Paz', 24, 1),
(26, 'America/Cuiaba', 25, 1),
(27, 'America/Asuncion', 26, 1),
(28, 'America/St_Johns', 27, 1),
(29, 'America/Argentina/Buenos_Aires', 28, 1),
(30, 'America/Sao_Paulo', 29, 1),
(31, 'America/Godthab', 30, 1),
(32, 'America/Montevideo', 31, 1),
(33, 'Atlantic/South_Georgia', 32, 1),
(34, 'Atlantic/Azores', 33, 1),
(35, 'Atlantic/Cape_Verde', 34, 1),
(36, 'Europe/London', 35, 1),
(37, 'UTC', 36, 1),
(38, 'Africa/Monrovia', 37, 1),
(39, 'Africa/Casablanca', 38, 1),
(40, 'Europe/Belgrade', 39, 1),
(41, 'Europe/Sarajevo', 40, 1),
(42, 'Europe/Brussels', 41, 1),
(43, 'Africa/Algiers', 42, 1),
(44, 'Europe/Amsterdam', 43, 1),
(45, 'Europe/Minsk', 44, 1),
(46, 'Africa/Cairo', 45, 1),
(47, 'Europe/Helsinki', 46, 1),
(48, 'Europe/Athens', 47, 1),
(49, 'Europe/Istanbul', 48, 1),
(50, 'Asia/Jerusalem', 49, 1),
(51, 'Asia/Amman', 50, 1),
(52, 'Asia/Beirut', 51, 1),
(53, 'Africa/Windhoek', 52, 1),
(54, 'Africa/Harare', 53, 1),
(55, 'Asia/Kuwait', 54, 1),
(56, 'Asia/Baghdad', 55, 1),
(57, 'Africa/Nairobi', 56, 1),
(58, 'Asia/Tehran', 57, 1),
(59, 'Asia/Tbilisi', 58, 1),
(60, 'Europe/Moscow', 59, 1),
(61, 'Asia/Muscat', 60, 1),
(62, 'Asia/Baku', 61, 1),
(63, 'Asia/Yerevan', 62, 1),
(64, 'Asia/Karachi', 63, 1),
(65, 'Asia/Tashkent', 64, 1),
(66, 'Asia/Kolkata', 65, 1),
(67, 'Asia/Colombo', 66, 1),
(68, 'Asia/Katmandu', 67, 1),
(69, 'Asia/Dhaka', 68, 1),
(70, 'Asia/Almaty', 69, 1),
(71, 'Asia/Yekaterinburg', 70, 1),
(72, 'Asia/Rangoon', 71, 1),
(73, 'Asia/Novosibirsk', 72, 1),
(74, 'Asia/Bangkok', 73, 1),
(75, 'Asia/Brunei', 74, 1),
(76, 'Asia/Krasnoyarsk', 75, 1),
(77, 'Asia/Ulaanbaatar', 76, 1),
(78, 'Asia/Kuala_Lumpur', 77, 1),
(79, 'Asia/Taipei', 78, 1),
(80, 'Australia/Perth', 79, 1),
(81, 'Asia/Irkutsk', 80, 1),
(82, 'Asia/Seoul', 81, 1),
(83, 'Asia/Tokyo', 82, 1),
(84, 'Australia/Darwin', 83, 1),
(85, 'Australia/Adelaide', 84, 1),
(86, 'Australia/Canberra', 85, 1),
(87, 'Australia/Brisbane', 86, 1),
(88, 'Australia/Hobart', 87, 1),
(89, 'Asia/Vladivostok', 88, 1),
(90, 'Pacific/Guam', 89, 1),
(91, 'Asia/Yakutsk', 90, 1),
(92, 'Pacific/Fiji', 91, 1),
(93, 'Asia/Kamchatka', 92, 1),
(94, 'Pacific/Auckland', 93, 1),
(95, 'Asia/Magadan', 94, 1),
(96, 'Pacific/Tongatapu', 95, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_time_zone_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_time_zone_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_time_zone_seq`
--

INSERT INTO `vtiger_time_zone_seq` (`id`) VALUES
(96);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_group_rel_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_read_group_rel_sharing_per_userid_sharedgroupid_tabid` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_group_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_read_group_sharing_per_userid_sharedgroupid_idx` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_user_rel_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_read_user_rel_sharing_per_userid_shared_reltabid_idx` (`userid`,`shareduserid`,`relatedtabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_user_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_read_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_group_rel_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_write_group_rel_sharing_per_userid_sharedgroupid_tabid_idx` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_group_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_write_group_sharing_per_UK1` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_user_rel_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_write_user_rel_sharing_per_userid_sharduserid_tabid_idx` (`userid`,`shareduserid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_user_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_write_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracker`
--

CREATE TABLE IF NOT EXISTS `vtiger_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(25) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracking_unit`
--

CREATE TABLE IF NOT EXISTS `vtiger_tracking_unit` (
  `tracking_unitid` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_unit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`tracking_unitid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_tracking_unit`
--

INSERT INTO `vtiger_tracking_unit` (`tracking_unitid`, `tracking_unit`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Hours', 1, 211, 2),
(3, 'Days', 1, 212, 3),
(4, 'Incidents', 1, 213, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracking_unit_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_tracking_unit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_tracking_unit_seq`
--

INSERT INTO `vtiger_tracking_unit_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_troubletickets`
--

CREATE TABLE IF NOT EXISTS `vtiger_troubletickets` (
  `ticketid` int(19) NOT NULL,
  `ticket_no` varchar(100) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `parent_id` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `severity` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `solution` text,
  `update_log` text,
  `version_id` int(11) DEFAULT NULL,
  `hours` decimal(25,8) DEFAULT NULL,
  `days` decimal(25,8) DEFAULT NULL,
  `contact_id` int(19) DEFAULT NULL,
  PRIMARY KEY (`ticketid`),
  KEY `troubletickets_ticketid_idx` (`ticketid`),
  KEY `troubletickets_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_usageunit`
--

CREATE TABLE IF NOT EXISTS `vtiger_usageunit` (
  `usageunitid` int(19) NOT NULL AUTO_INCREMENT,
  `usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`usageunitid`),
  UNIQUE KEY `usageunit_usageunit_idx` (`usageunit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `vtiger_usageunit`
--

INSERT INTO `vtiger_usageunit` (`usageunitid`, `usageunit`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Box', 1, 194, 0),
(2, 'Carton', 1, 195, 1),
(3, 'Dozen', 1, 196, 2),
(4, 'Each', 1, 197, 3),
(5, 'Hours', 1, 198, 4),
(6, 'Impressions', 1, 199, 5),
(7, 'Lb', 1, 200, 6),
(8, 'M', 1, 201, 7),
(9, 'Pack', 1, 202, 8),
(10, 'Pages', 1, 203, 9),
(11, 'Pieces', 1, 204, 10),
(12, 'Quantity', 1, 205, 11),
(13, 'Reams', 1, 206, 12),
(14, 'Sheet', 1, 207, 13),
(15, 'Spiral Binder', 1, 208, 14),
(16, 'Sq Ft', 1, 209, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_usageunit_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_usageunit_seq`
--

INSERT INTO `vtiger_usageunit_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user2mergefields`
--

CREATE TABLE IF NOT EXISTS `vtiger_user2mergefields` (
  `userid` int(11) DEFAULT NULL,
  `tabid` int(19) DEFAULT NULL,
  `fieldid` int(19) DEFAULT NULL,
  `visible` int(2) DEFAULT NULL,
  KEY `userid_tabid_idx` (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_user2role` (
  `userid` int(11) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `user2role_roleid_idx` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_user2role`
--

INSERT INTO `vtiger_user2role` (`userid`, `roleid`) VALUES
(1, 'H2'),
(5, 'H2'),
(13, 'H2'),
(11, 'H6'),
(12, 'H8');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users`
--

CREATE TABLE IF NOT EXISTS `vtiger_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_hash` varchar(32) DEFAULT NULL,
  `cal_color` varchar(25) DEFAULT '#E6FAD8',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `reports_to_id` varchar(36) DEFAULT NULL,
  `is_admin` varchar(3) DEFAULT '0',
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `description` text,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `signature` text,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(25) DEFAULT NULL,
  `address_postalcode` varchar(9) DEFAULT NULL,
  `user_preferences` text,
  `tz` varchar(30) DEFAULT NULL,
  `holidays` varchar(60) DEFAULT NULL,
  `namedays` varchar(60) DEFAULT NULL,
  `workdays` varchar(30) DEFAULT NULL,
  `weekstart` int(11) DEFAULT NULL,
  `date_format` varchar(200) DEFAULT NULL,
  `hour_format` varchar(30) DEFAULT 'am/pm',
  `start_hour` varchar(30) DEFAULT '10:00',
  `end_hour` varchar(30) DEFAULT '23:00',
  `activity_view` varchar(200) DEFAULT 'Today',
  `lead_view` varchar(200) DEFAULT 'Today',
  `imagename` varchar(250) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `confirm_password` varchar(300) DEFAULT NULL,
  `internal_mailer` varchar(3) NOT NULL DEFAULT '1',
  `reminder_interval` varchar(100) DEFAULT NULL,
  `reminder_next_time` varchar(100) DEFAULT NULL,
  `crypt_type` varchar(20) NOT NULL DEFAULT 'MD5',
  `accesskey` varchar(36) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `language` varchar(36) DEFAULT NULL,
  `time_zone` varchar(200) DEFAULT NULL,
  `currency_grouping_pattern` varchar(100) DEFAULT NULL,
  `currency_decimal_separator` varchar(2) DEFAULT NULL,
  `currency_grouping_separator` varchar(2) DEFAULT NULL,
  `currency_symbol_placement` varchar(20) DEFAULT NULL,
  `phone_crm_extension` varchar(100) DEFAULT NULL,
  `no_of_currency_decimals` varchar(2) DEFAULT NULL,
  `truncate_trailing_zeros` varchar(3) DEFAULT NULL,
  `dayoftheweek` varchar(100) DEFAULT NULL,
  `callduration` varchar(100) DEFAULT NULL,
  `othereventduration` varchar(100) DEFAULT NULL,
  `calendarsharedtype` varchar(100) DEFAULT NULL,
  `default_record_view` varchar(10) DEFAULT NULL,
  `leftpanelhide` varchar(3) DEFAULT NULL,
  `rowheight` varchar(10) DEFAULT NULL,
  `defaulteventstatus` varchar(50) DEFAULT NULL,
  `defaultactivitytype` varchar(50) DEFAULT NULL,
  `is_owner` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_user_name_idx` (`user_name`),
  KEY `user_user_password_idx` (`user_password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `vtiger_users`
--

INSERT INTO `vtiger_users` (`id`, `user_name`, `user_password`, `user_hash`, `cal_color`, `first_name`, `last_name`, `reports_to_id`, `is_admin`, `currency_id`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `secondaryemail`, `status`, `signature`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `user_preferences`, `tz`, `holidays`, `namedays`, `workdays`, `weekstart`, `date_format`, `hour_format`, `start_hour`, `end_hour`, `activity_view`, `lead_view`, `imagename`, `deleted`, `confirm_password`, `internal_mailer`, `reminder_interval`, `reminder_next_time`, `crypt_type`, `accesskey`, `theme`, `language`, `time_zone`, `currency_grouping_pattern`, `currency_decimal_separator`, `currency_grouping_separator`, `currency_symbol_placement`, `phone_crm_extension`, `no_of_currency_decimals`, `truncate_trailing_zeros`, `dayoftheweek`, `callduration`, `othereventduration`, `calendarsharedtype`, `default_record_view`, `leftpanelhide`, `rowheight`, `defaulteventstatus`, `defaultactivitytype`, `is_owner`) VALUES
(1, 'admin', '$1$ad000000$TSo7hiKEQRo7QsMOPBzKK1', 'd41d8cd98f00b204e9800998ecf8427e', '#E6FAD8', 'joseph', 'Administrator', '', 'on', 1, '', '2016-07-11 12:36:36', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'joseph.f.henry@gmail.com', '', '', 'Inactive', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'mm-dd-yyyy', '12', '00:00', '23:00', 'This Week', 'Today', '', 1, '$1$ad000000$nYTnfhTZRmUP.wQT9y1AE.', '1', '1 Minute', NULL, 'PHP5.3MD5', 'T7LXfkeSsafcl0UZ', 'softed', 'en_us', 'Africa/Nairobi', '123,456,789', '.', ',', '$1.0', '', '2', '1', 'Sunday', '5', '5', 'public', 'Summary', '0', 'medium', NULL, NULL, NULL),
(5, 'shio', '$1$sh000000$COXWA3I6ZXJB4geQSJjnt1', '827ccb0eea8a706c4c34a16891f84e7b', '#E6FAD8', 'mosses', 'shio', '', 'on', 1, '', '2016-07-06 16:50:27', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'elipokeamosses@gmail.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$sh000000$COXWA3I6ZXJB4geQSJjnt1', '0', '', NULL, 'PHP5.3MD5', 'CQDDkfJlWTHbDvze', 'nature', 'en_us', 'Africa/Nairobi', '123,456,789', '.', '.', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', NULL),
(11, 'User1', '$1$Us000000$6oSaDRFuF6ryU5DPCIIGP.', '24c9e15e52afc47c225b757e7bee1f9d', '#E6FAD8', 'User1', 'User1', '', 'off', 1, '', '2016-06-26 20:52:39', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'User1@gmail.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$Us000000$6oSaDRFuF6ryU5DPCIIGP.', '0', '', NULL, 'PHP5.3MD5', 'pvcImmBjt7dmDZ9z', 'softed', 'en_us', 'Pacific/Midway', '123,456,789', '.', '.', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', NULL),
(12, 'user2', '$1$us000000$BR.Zxw2P6X0NN07lVv2XL/', '7e58d63b60197ceb55a1c487989a3720', '#E6FAD8', 'user2', 'user2', '', 'off', 1, '', '2016-07-04 07:48:18', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'hudsongwambe@hotmail.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$us000000$BR.Zxw2P6X0NN07lVv2XL/', '0', '', NULL, 'PHP5.3MD5', 'HzZJ8jolLhnXKqfw', 'softed', 'en_us', 'Pacific/Midway', '123,456,789', '.', '.', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', NULL),
(13, 'admin1', '$1$ad000000$waZFC1bGnoEUCpqtLZxWs0', 'e00cf25ad42683b3df678c61f42c6bda', '#E6FAD8', 'admin1', 'admin1', '', 'on', 1, '', '2016-07-11 12:38:31', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'admin1@gmail.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$ad000000$waZFC1bGnoEUCpqtLZxWs0', '0', '', NULL, 'PHP5.3MD5', 'u9KkunrV3mGctaqW', 'softed', 'en_us', 'Pacific/Midway', '123,456,789', '.', '.', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users2group`
--

CREATE TABLE IF NOT EXISTS `vtiger_users2group` (
  `groupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  PRIMARY KEY (`groupid`,`userid`),
  KEY `users2group_groupname_uerid_idx` (`groupid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_users2group`
--

INSERT INTO `vtiger_users2group` (`groupid`, `userid`) VALUES
(7, 5),
(8, 5),
(9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_userscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_userscf` (
  `usersid` int(11) NOT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users_last_import`
--

CREATE TABLE IF NOT EXISTS `vtiger_users_last_import` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_users_seq`
--

INSERT INTO `vtiger_users_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user_module_preferences`
--

CREATE TABLE IF NOT EXISTS `vtiger_user_module_preferences` (
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `default_cvid` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_valuation`
--

CREATE TABLE IF NOT EXISTS `vtiger_valuation` (
  `valuationid` int(11) DEFAULT NULL,
  `assets` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_valuation`
--

INSERT INTO `vtiger_valuation` (`valuationid`, `assets`) VALUES
(52, 'Building'),
(54, 'IC TA234');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_valuationcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_valuationcf` (
  `valuationid` int(11) NOT NULL,
  `cf_753` varchar(50) DEFAULT '',
  `cf_757` varchar(255) DEFAULT '',
  `cf_759` date DEFAULT NULL,
  `cf_761` varchar(50) DEFAULT '',
  `cf_765` varchar(255) DEFAULT '',
  `cf_767` date DEFAULT NULL,
  `cf_769` decimal(23,2) DEFAULT NULL,
  `cf_771` decimal(53,2) DEFAULT NULL,
  `cf_781` text,
  `cf_789` varchar(255) DEFAULT '',
  `cf_791` varchar(255) DEFAULT '',
  PRIMARY KEY (`valuationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_valuationcf`
--

INSERT INTO `vtiger_valuationcf` (`valuationid`, `cf_753`, `cf_757`, `cf_759`, `cf_761`, `cf_765`, `cf_767`, `cf_769`, `cf_771`, `cf_781`, `cf_789`, `cf_791`) VALUES
(52, 'UDSM', 'Teaching Facility', '2016-06-14', 'Surveyor LTD', 'Teaching Facility', '2016-07-14', 0.00, 0.00, 'Valuation to for the last year', 'Buildings', ''),
(54, '565', '', NULL, 'Mosses', '', '2016-07-15', 0.00, 0.00, '', 'Components', 'K/Nyama campusc');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendor`
--

CREATE TABLE IF NOT EXISTS `vtiger_vendor` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  `vendor_no` varchar(100) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `street` text,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `postalcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendorcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_vendorcf` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendorcontactrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_vendorcontactrel` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  `contactid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vendorid`,`contactid`),
  KEY `vendorcontactrel_vendorid_idx` (`vendorid`),
  KEY `vendorcontactrel_contact_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_version`
--

CREATE TABLE IF NOT EXISTS `vtiger_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_version` varchar(30) DEFAULT NULL,
  `current_version` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_version`
--

INSERT INTO `vtiger_version` (`id`, `old_version`, `current_version`) VALUES
(1, '6.4.0', '6.4.0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_version_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_version_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_version_seq`
--

INSERT INTO `vtiger_version_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_visibility`
--

CREATE TABLE IF NOT EXISTS `vtiger_visibility` (
  `visibilityid` int(19) NOT NULL AUTO_INCREMENT,
  `visibility` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`visibilityid`),
  UNIQUE KEY `visibility_visibility_idx` (`visibility`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_visibility`
--

INSERT INTO `vtiger_visibility` (`visibilityid`, `visibility`, `sortorderid`, `presence`) VALUES
(1, 'Private', 0, 1),
(2, 'Public', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_visibility_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_visibility_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_visibility_seq`
--

INSERT INTO `vtiger_visibility_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_webforms`
--

CREATE TABLE IF NOT EXISTS `vtiger_webforms` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `publicid` varchar(100) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT '1',
  `targetmodule` varchar(50) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `ownerid` int(19) NOT NULL,
  `returnurl` varchar(250) DEFAULT NULL,
  `captcha` int(1) NOT NULL DEFAULT '0',
  `roundrobin` int(1) NOT NULL DEFAULT '0',
  `roundrobin_userid` varchar(256) DEFAULT NULL,
  `roundrobin_logic` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `webformname` (`name`),
  UNIQUE KEY `publicid` (`id`),
  KEY `webforms_webforms_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wordtemplates`
--

CREATE TABLE IF NOT EXISTS `vtiger_wordtemplates` (
  `templateid` int(19) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `module` varchar(30) NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_type` varchar(50) NOT NULL,
  `data` longblob,
  `description` text,
  `filesize` varchar(50) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp` (
  `appid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `appkey` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_wsapp`
--

INSERT INTO `vtiger_wsapp` (`appid`, `name`, `appkey`, `type`) VALUES
(1, 'vtigerCRM', '57373c1c47461', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_handlerdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp_handlerdetails` (
  `type` varchar(200) NOT NULL,
  `handlerclass` varchar(100) DEFAULT NULL,
  `handlerpath` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_wsapp_handlerdetails`
--

INSERT INTO `vtiger_wsapp_handlerdetails` (`type`, `handlerclass`, `handlerpath`) VALUES
('Outlook', 'OutlookHandler', 'modules/WSAPP/Handlers/OutlookHandler.php'),
('vtigerCRM', 'vtigerCRMHandler', 'modules/WSAPP/Handlers/vtigerCRMHandler.php'),
('vtigerSyncLib', 'WSAPP_VtigerSyncEventHandler', 'modules/WSAPP/synclib/handlers/VtigerSyncEventHandler.php');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_queuerecords`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp_queuerecords` (
  `syncserverid` int(19) DEFAULT NULL,
  `details` varchar(300) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `appid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_recordmapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp_recordmapping` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `serverid` varchar(10) DEFAULT NULL,
  `clientid` varchar(255) DEFAULT NULL,
  `clientmodifiedtime` datetime DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `servermodifiedtime` datetime DEFAULT NULL,
  `serverappid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_sync_state`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp_sync_state` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `stateencodedvalues` varchar(300) NOT NULL,
  `userid` int(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_class` varchar(64) NOT NULL,
  `ismodule` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `vtiger_ws_entity`
--

INSERT INTO `vtiger_ws_entity` (`id`, `name`, `handler_path`, `handler_class`, `ismodule`) VALUES
(1, 'Campaigns', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(2, 'Vendors', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(3, 'Faq', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(4, 'Quotes', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(5, 'PurchaseOrder', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(6, 'SalesOrder', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(7, 'Invoice', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(8, 'PriceBooks', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(9, 'Calendar', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(10, 'Leads', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(11, 'Accounts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(12, 'Contacts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(13, 'Potentials', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(14, 'Products', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(15, 'Documents', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(16, 'Emails', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(17, 'HelpDesk', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(18, 'Events', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(19, 'Users', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(20, 'Groups', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(21, 'Currency', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(22, 'DocumentFolders', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(23, 'CompanyDetails', 'include/Webservices/VtigerCompanyDetails.php', 'VtigerCompanyDetails', 0),
(24, 'ServiceContracts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(25, 'PBXManager', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(26, 'Services', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(27, 'Assets', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(28, 'SMSNotifier', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(29, 'ModComments', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(30, 'ProjectMilestone', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(31, 'ProjectTask', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(32, 'Project', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(33, 'LineItem', 'include/Webservices/LineItem/VtigerLineItemOperation.php', 'VtigerLineItemOperation', 0),
(34, 'Tax', 'include/Webservices/LineItem/VtigerTaxOperation.php', 'VtigerTaxOperation', 0),
(35, 'ProductTaxes', 'include/Webservices/LineItem/VtigerProductTaxesOperation.php', 'VtigerProductTaxesOperation', 0),
(36, 'Maintenance', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(37, 'Valuation', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_fieldtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_fieldtype` (
  `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY (`fieldtypeid`),
  UNIQUE KEY `vtiger_idx_1_tablename_fieldname` (`table_name`,`field_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype`
--

INSERT INTO `vtiger_ws_entity_fieldtype` (`fieldtypeid`, `table_name`, `field_name`, `fieldtype`) VALUES
(1, 'vtiger_attachmentsfolder', 'createdby', 'reference'),
(2, 'vtiger_organizationdetails', 'logoname', 'file'),
(3, 'vtiger_organizationdetails', 'phone', 'phone'),
(4, 'vtiger_organizationdetails', 'fax', 'phone'),
(5, 'vtiger_organizationdetails', 'website', 'url'),
(6, 'vtiger_inventoryproductrel', 'productid', 'reference'),
(7, 'vtiger_inventoryproductrel', 'id', 'reference'),
(8, 'vtiger_inventoryproductrel', 'incrementondel', 'autogenerated'),
(9, 'vtiger_producttaxrel', 'productid', 'reference'),
(10, 'vtiger_producttaxrel', 'taxid', 'reference');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_fieldtype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_fieldtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype_seq`
--

INSERT INTO `vtiger_ws_entity_fieldtype_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_name`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_name` (
  `entity_id` int(11) NOT NULL,
  `name_fields` varchar(50) NOT NULL,
  `index_field` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_name`
--

INSERT INTO `vtiger_ws_entity_name` (`entity_id`, `name_fields`, `index_field`, `table_name`) VALUES
(20, 'groupname', 'groupid', 'vtiger_groups'),
(21, 'currency_name', 'id', 'vtiger_currency_info'),
(22, 'foldername', 'folderid', 'vtiger_attachmentsfolder'),
(23, 'organizationname', 'groupid', 'vtiger_organizationdetails'),
(34, 'taxlabel', 'taxid', 'vtiger_inventorytaxinfo');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_referencetype`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_referencetype`
--

INSERT INTO `vtiger_ws_entity_referencetype` (`fieldtypeid`, `type`) VALUES
(5, 'Users'),
(6, 'Products'),
(7, 'Invoice'),
(7, 'PurchaseOrder'),
(7, 'Quotes'),
(7, 'SalesOrder'),
(9, 'Products'),
(10, 'Tax');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_seq`
--

INSERT INTO `vtiger_ws_entity_seq` (`id`) VALUES
(37);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_tables`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_tables` (
  `webservice_entity_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY (`webservice_entity_id`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_tables`
--

INSERT INTO `vtiger_ws_entity_tables` (`webservice_entity_id`, `table_name`) VALUES
(20, 'vtiger_groups'),
(21, 'vtiger_currency_info'),
(22, 'vtiger_attachmentsfolder'),
(23, 'vtiger_organizationdetails'),
(33, 'vtiger_inventoryproductrel'),
(34, 'vtiger_inventorytaxinfo'),
(35, 'vtiger_producttaxrel');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_fieldinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_fieldinfo` (
  `id` varchar(64) NOT NULL,
  `property_name` varchar(32) DEFAULT NULL,
  `property_value` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_fieldinfo`
--

INSERT INTO `vtiger_ws_fieldinfo` (`id`, `property_name`, `property_value`) VALUES
('vtiger_organizationdetails.organization_id', 'upload.path', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_fieldtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_fieldtype` (
  `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT,
  `uitype` varchar(30) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY (`fieldtypeid`),
  UNIQUE KEY `uitype_idx` (`uitype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `vtiger_ws_fieldtype`
--

INSERT INTO `vtiger_ws_fieldtype` (`fieldtypeid`, `uitype`, `fieldtype`) VALUES
(1, '15', 'picklist'),
(2, '16', 'picklist'),
(3, '19', 'text'),
(4, '20', 'text'),
(5, '21', 'text'),
(6, '24', 'text'),
(7, '3', 'autogenerated'),
(8, '11', 'phone'),
(9, '33', 'multipicklist'),
(10, '17', 'url'),
(11, '85', 'skype'),
(12, '56', 'boolean'),
(13, '156', 'boolean'),
(14, '53', 'owner'),
(15, '61', 'file'),
(16, '28', 'file'),
(17, '13', 'email'),
(18, '71', 'currency'),
(19, '72', 'currency'),
(20, '50', 'reference'),
(21, '51', 'reference'),
(22, '57', 'reference'),
(23, '58', 'reference'),
(24, '73', 'reference'),
(25, '75', 'reference'),
(26, '76', 'reference'),
(27, '78', 'reference'),
(28, '80', 'reference'),
(29, '81', 'reference'),
(30, '101', 'reference'),
(31, '52', 'reference'),
(32, '357', 'reference'),
(33, '59', 'reference'),
(34, '66', 'reference'),
(35, '77', 'reference'),
(36, '68', 'reference'),
(37, '117', 'reference'),
(38, '26', 'reference'),
(39, '10', 'reference');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_operation` (
  `operationid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_method` varchar(64) NOT NULL,
  `type` varchar(8) NOT NULL,
  `prelogin` int(3) NOT NULL,
  PRIMARY KEY (`operationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `vtiger_ws_operation`
--

INSERT INTO `vtiger_ws_operation` (`operationid`, `name`, `handler_path`, `handler_method`, `type`, `prelogin`) VALUES
(1, 'login', 'include/Webservices/Login.php', 'vtws_login', 'POST', 1),
(2, 'retrieve', 'include/Webservices/Retrieve.php', 'vtws_retrieve', 'GET', 0),
(3, 'create', 'include/Webservices/Create.php', 'vtws_create', 'POST', 0),
(4, 'update', 'include/Webservices/Update.php', 'vtws_update', 'POST', 0),
(5, 'delete', 'include/Webservices/Delete.php', 'vtws_delete', 'POST', 0),
(6, 'sync', 'include/Webservices/GetUpdates.php', 'vtws_sync', 'GET', 0),
(7, 'query', 'include/Webservices/Query.php', 'vtws_query', 'GET', 0),
(8, 'logout', 'include/Webservices/Logout.php', 'vtws_logout', 'POST', 0),
(9, 'listtypes', 'include/Webservices/ModuleTypes.php', 'vtws_listtypes', 'GET', 0),
(10, 'getchallenge', 'include/Webservices/AuthToken.php', 'vtws_getchallenge', 'GET', 1),
(11, 'describe', 'include/Webservices/DescribeObject.php', 'vtws_describe', 'GET', 0),
(12, 'extendsession', 'include/Webservices/ExtendSession.php', 'vtws_extendSession', 'POST', 1),
(13, 'convertlead', 'include/Webservices/ConvertLead.php', 'vtws_convertlead', 'POST', 0),
(14, 'revise', 'include/Webservices/Revise.php', 'vtws_revise', 'POST', 0),
(15, 'changePassword', 'include/Webservices/ChangePassword.php', 'vtws_changePassword', 'POST', 0),
(16, 'deleteUser', 'include/Webservices/DeleteUser.php', 'vtws_deleteUser', 'POST', 0),
(17, 'mobile.fetchallalerts', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchAllAlerts', 'POST', 0),
(18, 'mobile.alertdetailswithmessage', 'modules/Mobile/api/wsapi.php', 'mobile_ws_alertDetailsWithMessage', 'POST', 0),
(19, 'mobile.fetchmodulefilters', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchModuleFilters', 'POST', 0),
(20, 'mobile.fetchrecord', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchRecord', 'POST', 0),
(21, 'mobile.fetchrecordwithgrouping', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchRecordWithGrouping', 'POST', 0),
(22, 'mobile.filterdetailswithcount', 'modules/Mobile/api/wsapi.php', 'mobile_ws_filterDetailsWithCount', 'POST', 0),
(23, 'mobile.listmodulerecords', 'modules/Mobile/api/wsapi.php', 'mobile_ws_listModuleRecords', 'POST', 0),
(24, 'mobile.saverecord', 'modules/Mobile/api/wsapi.php', 'mobile_ws_saveRecord', 'POST', 0),
(25, 'mobile.syncModuleRecords', 'modules/Mobile/api/wsapi.php', 'mobile_ws_syncModuleRecords', 'POST', 0),
(26, 'mobile.query', 'modules/Mobile/api/wsapi.php', 'mobile_ws_query', 'POST', 0),
(27, 'mobile.querywithgrouping', 'modules/Mobile/api/wsapi.php', 'mobile_ws_queryWithGrouping', 'POST', 0),
(28, 'wsapp_register', 'modules/WSAPP/api/ws/Register.php', 'wsapp_register', 'POST', 0),
(29, 'wsapp_deregister', 'modules/WSAPP/api/ws/DeRegister.php', 'wsapp_deregister', 'POST', 0),
(30, 'wsapp_get', 'modules/WSAPP/api/ws/Get.php', 'wsapp_get', 'POST', 0),
(31, 'wsapp_put', 'modules/WSAPP/api/ws/Put.php', 'wsapp_put', 'POST', 0),
(32, 'wsapp_map', 'modules/WSAPP/api/ws/Map.php', 'wsapp_map', 'POST', 0),
(33, 'retrieve_inventory', 'include/Webservices/LineItem/RetrieveInventory.php', 'vtws_retrieve_inventory', 'GET', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation_parameters`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_operation_parameters` (
  `operationid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`operationid`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `vtiger_ws_operation_parameters`
--

INSERT INTO `vtiger_ws_operation_parameters` (`operationid`, `name`, `type`, `sequence`) VALUES
(1, 'accessKey', 'String', 2),
(1, 'username', 'String', 1),
(2, 'id', 'String', 1),
(3, 'element', 'encoded', 2),
(3, 'elementType', 'String', 1),
(4, 'element', 'encoded', 1),
(5, 'id', 'String', 1),
(6, 'elementType', 'String', 2),
(6, 'modifiedTime', 'DateTime', 1),
(7, 'query', 'String', 1),
(8, 'sessionName', 'String', 1),
(9, 'fieldTypeList', 'encoded', 1),
(10, 'username', 'String', 1),
(11, 'elementType', 'String', 1),
(13, 'accountName', 'String', 3),
(13, 'assignedTo', 'String', 2),
(13, 'avoidPotential', 'Boolean', 4),
(13, 'leadId', 'String', 1),
(13, 'potential', 'Encoded', 5),
(14, 'element', 'Encoded', 1),
(15, 'confirmPassword', 'String', 4),
(15, 'id', 'String', 1),
(15, 'newPassword', 'String', 3),
(15, 'oldPassword', 'String', 2),
(16, 'id', 'String', 1),
(16, 'newOwnerId', 'String', 2),
(18, 'alertid', 'string', 1),
(19, 'module', 'string', 1),
(20, 'record', 'string', 1),
(21, 'record', 'string', 1),
(22, 'filterid', 'string', 1),
(23, 'elements', 'encoded', 1),
(24, 'module', 'string', 1),
(24, 'record', 'string', 2),
(24, 'values', 'encoded', 3),
(25, 'module', 'string', 1),
(25, 'page', 'string', 3),
(25, 'syncToken', 'string', 2),
(26, 'module', 'string', 1),
(26, 'page', 'string', 3),
(26, 'query', 'string', 2),
(27, 'module', 'string', 1),
(27, 'page', 'string', 3),
(27, 'query', 'string', 2),
(28, 'synctype', 'string', 2),
(28, 'type', 'string', 1),
(29, 'key', 'string', 2),
(29, 'type', 'string', 1),
(30, 'key', 'string', 1),
(30, 'module', 'string', 2),
(30, 'token', 'string', 3),
(31, 'element', 'encoded', 2),
(31, 'key', 'string', 1),
(32, 'element', 'encoded', 2),
(32, 'key', 'string', 1),
(33, 'id', 'String', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_operation_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_operation_seq`
--

INSERT INTO `vtiger_ws_operation_seq` (`id`) VALUES
(33);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_referencetype`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_referencetype`
--

INSERT INTO `vtiger_ws_referencetype` (`fieldtypeid`, `type`) VALUES
(20, 'Accounts'),
(21, 'Accounts'),
(22, 'Contacts'),
(23, 'Campaigns'),
(24, 'Accounts'),
(25, 'Vendors'),
(26, 'Potentials'),
(27, 'Quotes'),
(28, 'SalesOrder'),
(29, 'Vendors'),
(30, 'Users'),
(31, 'Campaigns'),
(31, 'Users'),
(32, 'Accounts'),
(32, 'Contacts'),
(32, 'Leads'),
(32, 'Users'),
(32, 'Vendors'),
(33, 'Products'),
(34, 'Accounts'),
(34, 'Campaigns'),
(34, 'HelpDesk'),
(34, 'Leads'),
(34, 'Potentials'),
(35, 'Users'),
(36, 'Accounts'),
(36, 'Contacts'),
(37, 'Currency'),
(38, 'DocumentFolders');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_userauthtoken`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_userauthtoken` (
  `userid` int(19) NOT NULL,
  `token` varchar(36) NOT NULL,
  `expiretime` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`expiretime`),
  UNIQUE KEY `userid_idx` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vtiger_assets`
--
ALTER TABLE `vtiger_assets`
  ADD CONSTRAINT `fk_1_vtiger_assets` FOREIGN KEY (`assetsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pbxmanager_phonelookup`
--
ALTER TABLE `vtiger_pbxmanager_phonelookup`
  ADD CONSTRAINT `vtiger_pbxmanager_phonelookup_ibfk_1` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_service`
--
ALTER TABLE `vtiger_service`
  ADD CONSTRAINT `fk_1_vtiger_service` FOREIGN KEY (`serviceid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

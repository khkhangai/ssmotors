-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 10:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssmotors`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflows`
--

CREATE TABLE `com_vtiger_workflows` (
  `workflow_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `test` text NOT NULL,
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
  `status` tinyint(1) DEFAULT 1,
  `workflowname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `com_vtiger_workflows`
--

INSERT INTO `com_vtiger_workflows` (`workflow_id`, `module_name`, `summary`, `test`, `execution_condition`, `defaultworkflow`, `type`, `filtersavedinnew`, `schtypeid`, `schdayofmonth`, `schdayofweek`, `schannualdates`, `schtime`, `nexttrigger_time`, `status`, `workflowname`) VALUES
(1, 'Invoice', 'UpdateInventoryProducts On Every Save', '[{\"fieldname\":\"subject\",\"operation\":\"does not contain\",\"value\":\"`!`\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'UpdateInventoryProducts On Every Save'),
(2, 'Accounts', 'Send Email to user when Notifyowner is True', '[{\"fieldname\":\"notify_owner\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to user when Notifyowner is True'),
(3, 'Contacts', 'Send Email to user when Notifyowner is True', '[{\"fieldname\":\"notify_owner\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to user when Notifyowner is True'),
(4, 'Contacts', 'Send Email to user when Portal User is True', '[{\"fieldname\":\"portal\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"email\",\"operation\":\"is not empty\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to user when Portal User is True'),
(5, 'Potentials', 'Send Email to users on Potential creation', '[]', 1, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to users on Potential creation'),
(6, 'Contacts', 'Workflow for Contact Creation or Modification', '[]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Contact Creation or Modification'),
(7, 'HelpDesk', 'Ticket Creation From Portal : Send Email to Record Owner and Contact', '[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":1,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ticket Creation From Portal : Send Email to Record Owner and Contact'),
(9, 'HelpDesk', 'Send Email to Contact on Ticket Update', '[{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to Contact on Ticket Update'),
(10, 'Events', 'Workflow for Events when Send Notification is True', '[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Events when Send Notification is True'),
(11, 'Calendar', 'Workflow for Calendar Todos when Send Notification is True', '[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Calendar Todos when Send Notification is True'),
(12, 'Potentials', 'Calculate or Update forecast amount', '[]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Calculate or Update forecast amount'),
(13, 'Events', 'Workflow for Events when Send Notification is True', '[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Events when Send Notification is True'),
(14, 'Calendar', 'Workflow for Calendar Todos when Send Notification is True', '[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Calendar Todos when Send Notification is True'),
(15, 'HelpDesk', 'Comment Added From CRM : Send Email to Organization', '[{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Comment Added From CRM : Send Email to Organization'),
(16, 'PurchaseOrder', 'Update Inventory Products On Every Save', '[]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Update Inventory Products On Every Save'),
(17, 'HelpDesk', 'Comment Added From Portal : Send Email to Record Owner', '[{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Comment Added From Portal : Send Email to Record Owner'),
(18, 'HelpDesk', 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User', '[{\"fieldname\":\"(contact_id : (Contacts) portal)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User'),
(19, 'HelpDesk', 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User', '[{\"fieldname\":\"(contact_id : (Contacts) portal)\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User'),
(20, 'HelpDesk', 'Send Email to Record Owner on Ticket Update', '[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"assigned_user_id\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to Record Owner on Ticket Update'),
(21, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Record Owner', '[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ticket Creation From CRM : Send Email to Record Owner'),
(22, 'HelpDesk', 'Send Email to Organization on Ticket Update', '[{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to Organization on Ticket Update'),
(23, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Organization', '[{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ticket Creation From CRM : Send Email to Organization'),
(24, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Contact', '[{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ticket Creation From CRM : Send Email to Contact');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflows_seq`
--

CREATE TABLE `com_vtiger_workflows_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `com_vtiger_workflows_seq`
--

INSERT INTO `com_vtiger_workflows_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks`
--

CREATE TABLE `com_vtiger_workflowtasks` (
  `task_id` int(11) NOT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `task` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `com_vtiger_workflowtasks`
--

INSERT INTO `com_vtiger_workflowtasks` (`task_id`, `workflow_id`, `summary`, `task`) VALUES
(1, 1, '', 'O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:1;s:7:\"summary\";s:0:\"\";s:6:\"active\";b:1;s:10:\"methodName\";s:15:\"UpdateInventory\";s:2:\"id\";i:1;}'),
(2, 2, 'An account has been created ', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"2\";s:7:\"summary\";s:28:\"An account has been created \";s:6:\"active\";s:1:\"1\";s:10:\"methodName\";s:11:\"NotifyOwner\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:26:\"Regarding Account Creation\";s:7:\"content\";s:301:\"An Account has been assigned to you on vtigerCRM<br>Details of account are :<br><br>AccountId:<b>$account_no</b><br>AccountName:<b>$accountname</b><br>Rating:<b>$rating</b><br>Industry:<b>$industry</b><br>AccountType:<b>$accounttype</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"2\";}'),
(3, 3, 'An contact has been created ', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"3\";s:7:\"summary\";s:28:\"An contact has been created \";s:6:\"active\";s:1:\"1\";s:10:\"methodName\";s:11:\"NotifyOwner\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:26:\"Regarding Contact Creation\";s:7:\"content\";s:305:\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"3\";}'),
(4, 4, 'Email Customer Portal Login Details', 'O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:4;s:7:\"summary\";s:35:\"Email Customer Portal Login Details\";s:6:\"active\";b:1;s:10:\"methodName\";s:22:\"SendPortalLoginDetails\";s:2:\"id\";i:4;}'),
(5, 5, 'An Potential has been created ', 'O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"5\";s:7:\"summary\";s:30:\"An Potential has been created \";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:30:\"Regarding Potential Assignment\";s:7:\"content\";s:342:\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>$potential_no</b><br>Potential Name:<b>$potentialname</b><br>Amount:<b>$amount</b><br>Expected Close Date:<b>$closingdate ($_DATE_FORMAT_)</b><br>Type:<b>$opportunity_type</b><br><br><br>Description :$description<br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"5\";}'),
(6, 6, 'An contact has been created ', 'O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"6\";s:7:\"summary\";s:28:\"An contact has been created \";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:28:\"Regarding Contact Assignment\";s:7:\"content\";s:384:\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>And <b>CustomerPortal Login Details</b> is sent to the EmailID :-$email<br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"6\";}'),
(7, 7, 'Notify Related Contact when Ticket is created from Portal', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:57:\"Notify Related Contact when Ticket is created from Portal\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:1:\"7\";s:10:\"workflowId\";s:1:\"7\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:93:\"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:158:\"Ticket No : $ticket_no<br>\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\n							  Ticket Title : $ticket_title<br><br>\n							  $description\";}'),
(10, 9, 'Send Email to Contact on Ticket Update', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:38:\"Send Email to Contact on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"10\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:624:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:1:\"9\";}'),
(13, 12, 'update forecast amount', 'O:18:\"VTUpdateFieldsTask\":7:{s:18:\"executeImmediately\";b:1;s:43:\"\0VTUpdateFieldsTask\0referenceFieldFocusList\";a:0:{}s:10:\"workflowId\";i:12;s:7:\"summary\";s:22:\"update forecast amount\";s:6:\"active\";b:1;s:19:\"field_value_mapping\";s:96:\"[{\"fieldname\":\"forecast_amount\",\"valuetype\":\"expression\",\"value\":\"amount * probability \\/ 100\"}]\";s:2:\"id\";i:13;}'),
(14, 13, 'Send Notification Email to Record Owner', 'O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:2:\"13\";s:7:\"summary\";s:39:\"Send Notification Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:17:\"Event :  $subject\";s:7:\"content\";s:771:\"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Activity Notification Details:</b><br/>Subject             : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($(general : (__VtigerMeta__) usertimezone)) <br/>Status              : $eventstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Location            : $location <br/>Description         : $description\";s:2:\"id\";s:2:\"14\";}'),
(15, 14, 'Send Notification Email to Record Owner', 'O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:2:\"14\";s:7:\"summary\";s:39:\"Send Notification Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:16:\"Task :  $subject\";s:7:\"content\";s:689:\"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Task Notification Details:</b><br/>Subject : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($_DATE_FORMAT_) <br/>Status              : $taskstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Description         : $description\";s:2:\"id\";s:2:\"15\";}'),
(18, 16, 'Update Inventory Products', 'O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:16;s:7:\"summary\";s:25:\"Update Inventory Products\";s:6:\"active\";b:1;s:10:\"methodName\";s:15:\"UpdateInventory\";s:2:\"id\";i:18;}'),
(19, 17, 'Comment Added From Portal : Send Email to Record Owner', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:54:\"Comment Added From Portal : Send Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"19\";s:10:\"workflowId\";s:2:\"17\";s:9:\"fromEmail\";s:112:\"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(contact_id : (Contacts) email)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:92:\"Respond to Ticket ID## $(general : (__VtigerMeta__) recordId) ## in Customer Portal - URGENT\";s:7:\"content\";s:325:\"Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\n								Customer has provided the following additional information to your reply:<br><br>\n								<b>$lastComment</b><br><br>\n								Kindly respond to above ticket at the earliest.<br><br>\n								Regards<br>Support Administrator\";}'),
(20, 18, 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:82:\"Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"20\";s:10:\"workflowId\";s:2:\"18\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:514:\"Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\n							The Ticket is replied the details are :<br><br>\n							Ticket No : $ticket_no<br>\n							Status : $ticketstatus<br>\n							Category : $ticketcategories<br>\n							Severity : $ticketseverities<br>\n							Priority : $ticketpriorities<br><br>\n							Description : <br>$description<br><br>\n							Solution : <br>$solution<br>\n							The comments are : <br>\n							$allComments<br><br>\n							Regards<br>Support Administrator\";}'),
(21, 19, 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:76:\"Comment Added From CRM : Send Email to Contact, where Contact is Portal User\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"21\";s:10:\"workflowId\";s:2:\"19\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:547:\"Ticket No : $ticket_no<br>\n										Ticket Id : $(general : (__VtigerMeta__) recordId)<br>\n										Subject : $ticket_title<br><br>\n										Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\n										There is a reply to <b>$ticket_title</b> in the \"Customer Portal\" at VTiger.\n										You can use the following link to view the replies made:<br>\n										<a href=\"$(general : (__VtigerMeta__) portaldetailviewurl)\">Ticket Details</a><br><br>\n										Thanks<br>$(general : (__VtigerMeta__) supportName)\";}'),
(22, 15, 'Comment Added From CRM : Send Email to Organization', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:51:\"Comment Added From CRM : Send Email to Organization\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"22\";s:10:\"workflowId\";s:2:\"15\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:34:\",$(parent_id : (Accounts) email1),\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:589:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(parent_id : (Accounts) accountname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";}'),
(23, 7, 'Notify Record Owner when Ticket is created from Portal', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:54:\"Notify Record Owner when Ticket is created from Portal\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"23\";s:10:\"workflowId\";s:1:\"7\";s:9:\"fromEmail\";s:124:\"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:93:\"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:158:\"Ticket No : $ticket_no<br>\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\n							  Ticket Title : $ticket_title<br><br>\n							  $description\";}'),
(24, 20, 'Send Email to Record Owner on Ticket Update', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:43:\"Send Email to Record Owner on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"24\";s:10:\"workflowId\";s:2:\"20\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:40:\"Ticket Number : $ticket_no $ticket_title\";s:7:\"content\";s:596:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution\n								$allComments<br><br>\n								Regards<br>Support Administrator\";}'),
(25, 21, 'Ticket Creation From CRM : Send Email to Record Owner', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:53:\"Ticket Creation From CRM : Send Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"25\";s:10:\"workflowId\";s:2:\"21\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:40:\"Ticket Number : $ticket_no $ticket_title\";s:7:\"content\";s:596:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution\n								$allComments<br><br>\n								Regards<br>Support Administrator\";}'),
(26, 22, 'Send Email to Organization on Ticket Update', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:43:\"Send Email to Organization on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"26\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(parent_id : (Accounts) email1)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:589:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(parent_id : (Accounts) accountname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"22\";}'),
(27, 23, 'Ticket Creation From CRM : Send Email to Organization', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:53:\"Ticket Creation From CRM : Send Email to Organization\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"27\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(parent_id : (Accounts) email1)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:589:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(parent_id : (Accounts) accountname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"23\";}'),
(28, 24, 'Ticket Creation From CRM : Send Email to Contact', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:48:\"Ticket Creation From CRM : Send Email to Contact\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"28\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:624:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"24\";}');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod`
--

CREATE TABLE `com_vtiger_workflowtasks_entitymethod` (
  `workflowtasks_entitymethod_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `method_name` varchar(100) DEFAULT NULL,
  `function_path` varchar(400) DEFAULT NULL,
  `function_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `com_vtiger_workflowtasks_entitymethod_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod_seq`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_seq`
--

CREATE TABLE `com_vtiger_workflowtasks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `com_vtiger_workflowtasks_seq`
--

INSERT INTO `com_vtiger_workflowtasks_seq` (`id`) VALUES
(28);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtask_queue`
--

CREATE TABLE `com_vtiger_workflowtask_queue` (
  `task_id` int(11) DEFAULT NULL,
  `entity_id` varchar(100) DEFAULT NULL,
  `do_after` int(11) DEFAULT NULL,
  `relatedinfo` varchar(255) DEFAULT NULL,
  `task_contents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtemplates`
--

CREATE TABLE `com_vtiger_workflowtemplates` (
  `template_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `title` varchar(400) DEFAULT NULL,
  `template` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_activatedonce`
--

CREATE TABLE `com_vtiger_workflow_activatedonce` (
  `workflow_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_tasktypes`
--

CREATE TABLE `com_vtiger_workflow_tasktypes` (
  `id` int(11) NOT NULL,
  `tasktypename` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `classpath` varchar(255) DEFAULT NULL,
  `templatepath` varchar(255) DEFAULT NULL,
  `modules` varchar(500) DEFAULT NULL,
  `sourcemodule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes`
--

INSERT INTO `com_vtiger_workflow_tasktypes` (`id`, `tasktypename`, `label`, `classname`, `classpath`, `templatepath`, `modules`, `sourcemodule`) VALUES
(1, 'VTEmailTask', 'Send Mail', 'VTEmailTask', 'modules/com_vtiger_workflow/tasks/VTEmailTask.inc', 'modules/Settings/Workflows/Tasks/VTEmailTask.tpl', '{\"include\":[],\"exclude\":[]}', ''),
(2, 'VTEntityMethodTask', 'Invoke Custom Function', 'VTEntityMethodTask', 'modules/com_vtiger_workflow/tasks/VTEntityMethodTask.inc', 'modules/Settings/Workflows/Tasks/VTEntityMethodTask.tpl', '{\"include\":[],\"exclude\":[]}', ''),
(3, 'VTCreateTodoTask', 'Create Todo', 'VTCreateTodoTask', 'modules/com_vtiger_workflow/tasks/VTCreateTodoTask.inc', 'modules/Settings/Workflows/Tasks/VTCreateTodoTask.tpl', '{\"include\":[\"Leads\",\"Accounts\",\"Potentials\",\"Contacts\",\"HelpDesk\",\"Campaigns\",\"Quotes\",\"PurchaseOrder\",\"SalesOrder\",\"Invoice\",\"Project\"],\"exclude\":[\"Calendar\",\"FAQ\",\"Events\"]}', ''),
(4, 'VTCreateEventTask', 'Create Event', 'VTCreateEventTask', 'modules/com_vtiger_workflow/tasks/VTCreateEventTask.inc', 'modules/Settings/Workflows/Tasks/VTCreateEventTask.tpl', '{\"include\":[\"Leads\",\"Accounts\",\"Potentials\",\"Contacts\",\"HelpDesk\",\"Campaigns\",\"Project\"],\"exclude\":[\"Calendar\",\"FAQ\",\"Events\"]}', ''),
(5, 'VTUpdateFieldsTask', 'Update Fields', 'VTUpdateFieldsTask', 'modules/com_vtiger_workflow/tasks/VTUpdateFieldsTask.inc', 'modules/Settings/Workflows/Tasks/VTUpdateFieldsTask.tpl', '{\"include\":[],\"exclude\":[]}', ''),
(6, 'VTCreateEntityTask', 'Create Entity', 'VTCreateEntityTask', 'modules/com_vtiger_workflow/tasks/VTCreateEntityTask.inc', 'modules/Settings/Workflows/Tasks/VTCreateEntityTask.tpl', '{\"include\":[],\"exclude\":[]}', ''),
(7, 'VTSMSTask', 'SMS Task', 'VTSMSTask', 'modules/com_vtiger_workflow/tasks/VTSMSTask.inc', 'modules/Settings/Workflows/Tasks/VTSMSTask.tpl', '{\"include\":[],\"exclude\":[]}', 'SMSNotifier');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_tasktypes_seq`
--

CREATE TABLE `com_vtiger_workflow_tasktypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes_seq`
--

INSERT INTO `com_vtiger_workflow_tasktypes_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_account`
--

CREATE TABLE `vtiger_account` (
  `accountid` int(19) NOT NULL DEFAULT 0,
  `account_no` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `parentid` int(19) DEFAULT 0,
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
  `employees` int(10) DEFAULT 0,
  `emailoptout` varchar(3) DEFAULT '0',
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountbillads`
--

CREATE TABLE `vtiger_accountbillads` (
  `accountaddressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountrating`
--

CREATE TABLE `vtiger_accountrating` (
  `accountratingid` int(19) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountscf`
--

CREATE TABLE `vtiger_accountscf` (
  `accountid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountshipads`
--

CREATE TABLE `vtiger_accountshipads` (
  `accountaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accounttype`
--

CREATE TABLE `vtiger_accounttype` (
  `accounttypeid` int(19) NOT NULL,
  `accounttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_accounttype`
--

INSERT INTO `vtiger_accounttype` (`accounttypeid`, `accounttype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Analyst', 1, 2, 1, NULL),
(3, 'Competitor', 1, 3, 2, NULL),
(4, 'Customer', 1, 4, 3, NULL),
(5, 'Integrator', 1, 5, 4, NULL),
(6, 'Investor', 1, 6, 5, NULL),
(7, 'Partner', 1, 7, 6, NULL),
(8, 'Press', 1, 8, 7, NULL),
(9, 'Prospect', 1, 9, 8, NULL),
(10, 'Reseller', 1, 10, 9, NULL),
(11, 'Other', 1, 11, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accounttype_seq`
--

CREATE TABLE `vtiger_accounttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_accounttype_seq`
--

INSERT INTO `vtiger_accounttype_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_actionmapping`
--

CREATE TABLE `vtiger_actionmapping` (
  `actionid` int(19) NOT NULL,
  `actionname` varchar(200) NOT NULL,
  `securitycheck` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(7, 'CreateView', 0),
(8, 'Merge', 0),
(9, 'ConvertLead', 0),
(10, 'DuplicatesHandling', 0),
(13, 'Print', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity`
--

CREATE TABLE `vtiger_activity` (
  `activityid` int(19) NOT NULL DEFAULT 0,
  `subject` varchar(255) DEFAULT NULL,
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
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitycf`
--

CREATE TABLE `vtiger_activitycf` (
  `activityid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activityproductrel`
--

CREATE TABLE `vtiger_activityproductrel` (
  `activityid` int(19) NOT NULL DEFAULT 0,
  `productid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitytype`
--

CREATE TABLE `vtiger_activitytype` (
  `activitytypeid` int(19) NOT NULL,
  `activitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_activitytype`
--

INSERT INTO `vtiger_activitytype` (`activitytypeid`, `activitytype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Call', 0, 12, 0, NULL),
(2, 'Meeting', 0, 13, 1, NULL),
(3, 'Mobile Call', 0, 295, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitytype_seq`
--

CREATE TABLE `vtiger_activitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_activitytype_seq`
--

INSERT INTO `vtiger_activitytype_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_recurring_info`
--

CREATE TABLE `vtiger_activity_recurring_info` (
  `activityid` int(19) NOT NULL,
  `recurrenceid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_reminder`
--

CREATE TABLE `vtiger_activity_reminder` (
  `activity_id` int(11) NOT NULL,
  `reminder_time` int(11) NOT NULL,
  `reminder_sent` int(2) NOT NULL,
  `recurringid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_reminder_popup`
--

CREATE TABLE `vtiger_activity_reminder_popup` (
  `reminderid` int(19) NOT NULL,
  `semodule` varchar(100) NOT NULL,
  `recordid` int(19) NOT NULL,
  `date_start` date NOT NULL,
  `time_start` varchar(100) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_view`
--

CREATE TABLE `vtiger_activity_view` (
  `activity_viewid` int(19) NOT NULL,
  `activity_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_activity_view`
--

INSERT INTO `vtiger_activity_view` (`activity_viewid`, `activity_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'This Week', 1, 1),
(3, 'This Month', 2, 1),
(4, 'This Year', 3, 1),
(5, 'Agenda', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_view_seq`
--

CREATE TABLE `vtiger_activity_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_activity_view_seq`
--

INSERT INTO `vtiger_activity_view_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_announcement`
--

CREATE TABLE `vtiger_announcement` (
  `creatorid` int(19) NOT NULL,
  `announcement` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_app2tab`
--

CREATE TABLE `vtiger_app2tab` (
  `tabid` int(11) DEFAULT NULL,
  `appname` varchar(20) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `visible` int(3) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_app2tab`
--

INSERT INTO `vtiger_app2tab` (`tabid`, `appname`, `sequence`, `visible`) VALUES
(34, 'TOOLS', 5, 1),
(35, 'SUPPORT', 3, 1),
(36, 'INVENTORY', 2, 1),
(40, 'TOOLS', 1, 0),
(46, 'TOOLS', 4, 1),
(49, 'SETTINGS', 1, 1),
(2, 'SALES', 1, 1),
(20, 'SALES', 2, 1),
(4, 'SALES', 6, 1),
(6, 'SALES', 7, 1),
(14, 'SALES', 3, 0),
(36, 'SALES', 4, 1),
(4, 'MARKETING', 3, 1),
(6, 'MARKETING', 4, 1),
(7, 'MARKETING', 2, 1),
(26, 'MARKETING', 1, 1),
(4, 'INVENTORY', 8, 1),
(6, 'INVENTORY', 9, 1),
(22, 'INVENTORY', 5, 1),
(23, 'INVENTORY', 4, 1),
(14, 'INVENTORY', 1, 1),
(18, 'INVENTORY', 7, 0),
(19, 'INVENTORY', 3, 1),
(21, 'INVENTORY', 6, 1),
(4, 'SUPPORT', 6, 1),
(6, 'SUPPORT', 7, 1),
(13, 'SUPPORT', 1, 1),
(15, 'SUPPORT', 2, 1),
(38, 'SUPPORT', 4, 1),
(45, 'PROJECT', 1, 1),
(44, 'PROJECT', 2, 1),
(43, 'PROJECT', 3, 1),
(4, 'PROJECT', 4, 1),
(6, 'PROJECT', 5, 1),
(47, 'SALES', 5, 1),
(47, 'SUPPORT', 5, 1),
(24, 'TOOLS', 2, 1),
(27, 'TOOLS', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assets`
--

CREATE TABLE `vtiger_assets` (
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
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetscf`
--

CREATE TABLE `vtiger_assetscf` (
  `assetsid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetstatus`
--

CREATE TABLE `vtiger_assetstatus` (
  `assetstatusid` int(11) NOT NULL,
  `assetstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_assetstatus`
--

INSERT INTO `vtiger_assetstatus` (`assetstatusid`, `assetstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'In Service', 1, 235, 1, NULL),
(2, 'Out-of-service', 1, 236, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetstatus_seq`
--

CREATE TABLE `vtiger_assetstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_assetstatus_seq`
--

INSERT INTO `vtiger_assetstatus_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asterisk`
--

CREATE TABLE `vtiger_asterisk` (
  `server` varchar(30) DEFAULT NULL,
  `port` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskextensions`
--

CREATE TABLE `vtiger_asteriskextensions` (
  `userid` int(11) DEFAULT NULL,
  `asterisk_extension` varchar(50) DEFAULT NULL,
  `use_asterisk` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_asteriskextensions`
--

INSERT INTO `vtiger_asteriskextensions` (`userid`, `asterisk_extension`, `use_asterisk`) VALUES
(1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskincomingcalls`
--

CREATE TABLE `vtiger_asteriskincomingcalls` (
  `from_number` varchar(50) DEFAULT NULL,
  `from_name` varchar(50) DEFAULT NULL,
  `to_number` varchar(50) DEFAULT NULL,
  `callertype` varchar(30) DEFAULT NULL,
  `flag` int(19) DEFAULT NULL,
  `timer` int(19) DEFAULT NULL,
  `refuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskincomingevents`
--

CREATE TABLE `vtiger_asteriskincomingevents` (
  `uid` varchar(255) NOT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `from_number` bigint(20) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `to_number` bigint(20) DEFAULT NULL,
  `callertype` varchar(100) DEFAULT NULL,
  `timer` int(20) DEFAULT NULL,
  `flag` varchar(3) DEFAULT NULL,
  `pbxrecordid` int(19) DEFAULT NULL,
  `relcrmid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachments`
--

CREATE TABLE `vtiger_attachments` (
  `attachmentsid` int(19) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `path` text DEFAULT NULL,
  `storedname` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachmentsfolder`
--

CREATE TABLE `vtiger_attachmentsfolder` (
  `folderid` int(19) NOT NULL,
  `foldername` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `createdby` int(19) NOT NULL,
  `sequence` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_attachmentsfolder`
--

INSERT INTO `vtiger_attachmentsfolder` (`folderid`, `foldername`, `description`, `createdby`, `sequence`) VALUES
(1, 'Default', 'This is a Default Folder', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachmentsfolder_seq`
--

CREATE TABLE `vtiger_attachmentsfolder_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_attachmentsfolder_seq`
--

INSERT INTO `vtiger_attachmentsfolder_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_audit_trial`
--

CREATE TABLE `vtiger_audit_trial` (
  `auditid` int(19) NOT NULL,
  `userid` int(19) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `recordid` varchar(20) DEFAULT NULL,
  `actiondate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_blocks`
--

CREATE TABLE `vtiger_blocks` (
  `blockid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `blocklabel` varchar(100) NOT NULL,
  `sequence` int(10) DEFAULT NULL,
  `show_title` int(2) DEFAULT NULL,
  `visible` int(2) NOT NULL DEFAULT 0,
  `create_view` int(2) NOT NULL DEFAULT 0,
  `edit_view` int(2) NOT NULL DEFAULT 0,
  `detail_view` int(2) NOT NULL DEFAULT 0,
  `display_status` int(1) NOT NULL DEFAULT 1,
  `iscustom` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(18, 8, 'LBL_FILE_INFORMATION', 3, 1, 0, 0, 0, 0, 1, 0),
(19, 9, 'LBL_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(20, 9, 'LBL_DESCRIPTION_INFORMATION', 3, 1, 0, 0, 0, 0, 1, 0),
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
(84, 8, 'LBL_DESCRIPTION', 2, 0, 0, 0, 0, 0, 1, 0),
(85, 22, 'Recurring Invoice Information', 2, 0, 0, 0, 0, 0, 1, 0),
(86, 9, 'LBL_CUSTOM_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(87, 16, 'LBL_CUSTOM_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(88, 34, 'LBL_PBXMANAGER_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(89, 35, 'LBL_SERVICE_CONTRACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(90, 35, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(91, 36, 'LBL_SERVICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(92, 36, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(93, 36, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(94, 36, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(95, 38, 'LBL_ASSET_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(96, 38, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(97, 38, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(98, 42, 'LBL_MODCOMMENTS_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(99, 42, 'LBL_OTHER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(100, 42, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(101, 43, 'LBL_PROJECT_MILESTONE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(102, 43, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(103, 43, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(104, 44, 'LBL_PROJECT_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(105, 44, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(106, 44, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(107, 45, 'LBL_PROJECT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(108, 45, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(109, 45, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(110, 47, 'LBL_SMSNOTIFIER_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(111, 47, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(112, 47, 'StatusInformation', 3, 0, 0, 0, 0, 0, 1, 0),
(113, 23, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(114, 22, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(115, 21, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(116, 20, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(117, 16, 'LBL_RECURRENCE_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(118, 29, 'LBL_CALENDAR_SETTINGS', 2, 0, 0, 0, 0, 0, 1, 0),
(119, 16, 'LBL_RELATED_TO', 4, 0, 0, 0, 0, 0, 1, 0),
(120, 9, 'LBL_REMINDER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_blocks_seq`
--

CREATE TABLE `vtiger_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_blocks_seq`
--

INSERT INTO `vtiger_blocks_seq` (`id`) VALUES
(120);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendarsharedtype`
--

CREATE TABLE `vtiger_calendarsharedtype` (
  `calendarsharedtypeid` int(11) NOT NULL,
  `calendarsharedtype` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_calendarsharedtype`
--

INSERT INTO `vtiger_calendarsharedtype` (`calendarsharedtypeid`, `calendarsharedtype`, `sortorderid`, `presence`) VALUES
(1, 'public', 0, 1),
(2, 'private', 1, 1),
(3, 'seletedusers', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendarsharedtype_seq`
--

CREATE TABLE `vtiger_calendarsharedtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_calendarsharedtype_seq`
--

INSERT INTO `vtiger_calendarsharedtype_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_default_activitytypes`
--

CREATE TABLE `vtiger_calendar_default_activitytypes` (
  `id` int(19) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  `defaultcolor` varchar(50) DEFAULT NULL,
  `isdefault` int(11) DEFAULT 1,
  `conditions` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes`
--

INSERT INTO `vtiger_calendar_default_activitytypes` (`id`, `module`, `fieldname`, `defaultcolor`, `isdefault`, `conditions`) VALUES
(1, 'Events', '[\"date_start\",\"due_date\"]', '#17309A', 1, ''),
(2, 'Calendar', '[\"date_start\",\"due_date\"]', '#3A87AD', 1, ''),
(3, 'Potentials', '[\"closingdate\"]', '#AA6705', 1, ''),
(4, 'Contacts', '[\"support_end_date\"]', '#953B39', 1, ''),
(5, 'Contacts', '[\"birthday\"]', '#545252', 1, ''),
(6, 'Invoice', '[\"duedate\"]', '#87865D', 1, ''),
(7, 'Project', '[\"startdate\",\"targetenddate\"]', '#C71585', 1, ''),
(8, 'ProjectTask', '[\"startdate\",\"enddate\"]', '#006400', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_default_activitytypes_seq`
--

CREATE TABLE `vtiger_calendar_default_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes_seq`
--

INSERT INTO `vtiger_calendar_default_activitytypes_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_user_activitytypes`
--

CREATE TABLE `vtiger_calendar_user_activitytypes` (
  `id` int(19) NOT NULL,
  `defaultid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes`
--

INSERT INTO `vtiger_calendar_user_activitytypes` (`id`, `defaultid`, `userid`, `color`, `visible`) VALUES
(1, 1, 1, '#17309A', 1),
(2, 2, 1, '#3A87AD', 1),
(3, 3, 1, '#AA6705', 1),
(4, 4, 1, '#953B39', 1),
(5, 5, 1, '#545252', 1),
(6, 6, 1, '#87865D', 1),
(7, 7, 1, '#C71585', 1),
(8, 8, 1, '#006400', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_user_activitytypes_seq`
--

CREATE TABLE `vtiger_calendar_user_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes_seq`
--

INSERT INTO `vtiger_calendar_user_activitytypes_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_callduration`
--

CREATE TABLE `vtiger_callduration` (
  `calldurationid` int(11) NOT NULL,
  `callduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_callduration`
--

INSERT INTO `vtiger_callduration` (`calldurationid`, `callduration`, `sortorderid`, `presence`) VALUES
(1, '5', 0, 1),
(2, '10', 1, 1),
(3, '30', 2, 1),
(4, '60', 3, 1),
(5, '120', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_callduration_seq`
--

CREATE TABLE `vtiger_callduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_callduration_seq`
--

INSERT INTO `vtiger_callduration_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaign`
--

CREATE TABLE `vtiger_campaign` (
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
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignaccountrel`
--

CREATE TABLE `vtiger_campaignaccountrel` (
  `campaignid` int(19) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `campaignrelstatusid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigncontrel`
--

CREATE TABLE `vtiger_campaigncontrel` (
  `campaignid` int(19) NOT NULL DEFAULT 0,
  `contactid` int(19) NOT NULL DEFAULT 0,
  `campaignrelstatusid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignleadrel`
--

CREATE TABLE `vtiger_campaignleadrel` (
  `campaignid` int(19) NOT NULL DEFAULT 0,
  `leadid` int(19) NOT NULL DEFAULT 0,
  `campaignrelstatusid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignrelstatus`
--

CREATE TABLE `vtiger_campaignrelstatus` (
  `campaignrelstatusid` int(19) DEFAULT NULL,
  `campaignrelstatus` varchar(256) DEFAULT NULL,
  `sortorderid` int(19) DEFAULT NULL,
  `presence` int(19) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_campaignrelstatus`
--

INSERT INTO `vtiger_campaignrelstatus` (`campaignrelstatusid`, `campaignrelstatus`, `sortorderid`, `presence`, `color`) VALUES
(2, 'Contacted - Successful', 1, 1, NULL),
(3, 'Contacted - Unsuccessful', 2, 1, NULL),
(4, 'Contacted - Never Contact Again', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignrelstatus_seq`
--

CREATE TABLE `vtiger_campaignrelstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_campaignrelstatus_seq`
--

INSERT INTO `vtiger_campaignrelstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignscf`
--

CREATE TABLE `vtiger_campaignscf` (
  `campaignid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignstatus`
--

CREATE TABLE `vtiger_campaignstatus` (
  `campaignstatusid` int(19) NOT NULL,
  `campaignstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_campaignstatus`
--

INSERT INTO `vtiger_campaignstatus` (`campaignstatusid`, `campaignstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Planning', 1, 15, 1, NULL),
(3, 'Active', 1, 16, 2, NULL),
(4, 'Inactive', 1, 17, 3, NULL),
(5, 'Completed', 1, 18, 4, NULL),
(6, 'Cancelled', 1, 19, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignstatus_seq`
--

CREATE TABLE `vtiger_campaignstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_campaignstatus_seq`
--

INSERT INTO `vtiger_campaignstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigntype`
--

CREATE TABLE `vtiger_campaigntype` (
  `campaigntypeid` int(19) NOT NULL,
  `campaigntype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_campaigntype`
--

INSERT INTO `vtiger_campaigntype` (`campaigntypeid`, `campaigntype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Conference', 1, 21, 1, NULL),
(3, 'Webinar', 1, 22, 2, NULL),
(4, 'Trade Show', 1, 23, 3, NULL),
(5, 'Public Relations', 1, 24, 4, NULL),
(6, 'Partners', 1, 25, 5, NULL),
(7, 'Referral Program', 1, 26, 6, NULL),
(8, 'Advertisement', 1, 27, 7, NULL),
(9, 'Banner Ads', 1, 28, 8, NULL),
(10, 'Direct Mail', 1, 29, 9, NULL),
(11, 'Email', 1, 30, 10, NULL),
(12, 'Telemarketing', 1, 31, 11, NULL),
(13, 'Others', 1, 32, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigntype_seq`
--

CREATE TABLE `vtiger_campaigntype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_campaigntype_seq`
--

INSERT INTO `vtiger_campaigntype_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_carrier`
--

CREATE TABLE `vtiger_carrier` (
  `carrierid` int(19) NOT NULL,
  `carrier` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_carrier`
--

INSERT INTO `vtiger_carrier` (`carrierid`, `carrier`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'FedEx', 1, 33, 0, NULL),
(2, 'UPS', 1, 34, 1, NULL),
(3, 'USPS', 1, 35, 2, NULL),
(4, 'DHL', 1, 36, 3, NULL),
(5, 'BlueDart', 1, 37, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_carrier_seq`
--

CREATE TABLE `vtiger_carrier_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_carrier_seq`
--

INSERT INTO `vtiger_carrier_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cntactivityrel`
--

CREATE TABLE `vtiger_cntactivityrel` (
  `contactid` int(19) NOT NULL DEFAULT 0,
  `activityid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactaddress`
--

CREATE TABLE `vtiger_contactaddress` (
  `contactaddressid` int(19) NOT NULL DEFAULT 0,
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
  `otherpobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactdetails`
--

CREATE TABLE `vtiger_contactdetails` (
  `contactid` int(19) NOT NULL DEFAULT 0,
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
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactscf`
--

CREATE TABLE `vtiger_contactscf` (
  `contactid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactsubdetails`
--

CREATE TABLE `vtiger_contactsubdetails` (
  `contactsubscriptionid` int(19) NOT NULL DEFAULT 0,
  `homephone` varchar(50) DEFAULT NULL,
  `otherphone` varchar(50) DEFAULT NULL,
  `assistant` varchar(30) DEFAULT NULL,
  `assistantphone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `laststayintouchrequest` int(30) DEFAULT 0,
  `laststayintouchsavedate` int(19) DEFAULT 0,
  `leadsource` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contpotentialrel`
--

CREATE TABLE `vtiger_contpotentialrel` (
  `contactid` int(19) NOT NULL DEFAULT 0,
  `potentialid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_priority`
--

CREATE TABLE `vtiger_contract_priority` (
  `contract_priorityid` int(11) NOT NULL,
  `contract_priority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_contract_priority`
--

INSERT INTO `vtiger_contract_priority` (`contract_priorityid`, `contract_priority`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Low', 1, 220, 1, NULL),
(2, 'Normal', 1, 221, 2, NULL),
(3, 'High', 1, 222, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_priority_seq`
--

CREATE TABLE `vtiger_contract_priority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_contract_priority_seq`
--

INSERT INTO `vtiger_contract_priority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_status`
--

CREATE TABLE `vtiger_contract_status` (
  `contract_statusid` int(11) NOT NULL,
  `contract_status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_contract_status`
--

INSERT INTO `vtiger_contract_status` (`contract_statusid`, `contract_status`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Undefined', 1, 214, 1, NULL),
(2, 'In Planning', 1, 215, 2, NULL),
(3, 'In Progress', 1, 216, 3, NULL),
(4, 'On Hold', 1, 217, 4, NULL),
(5, 'Complete', 0, 218, 5, NULL),
(6, 'Archived', 1, 219, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_status_seq`
--

CREATE TABLE `vtiger_contract_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_contract_status_seq`
--

INSERT INTO `vtiger_contract_status_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_type`
--

CREATE TABLE `vtiger_contract_type` (
  `contract_typeid` int(11) NOT NULL,
  `contract_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_contract_type`
--

INSERT INTO `vtiger_contract_type` (`contract_typeid`, `contract_type`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Support', 1, 223, 1, NULL),
(2, 'Services', 1, 224, 2, NULL),
(3, 'Administrative', 1, 225, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_type_seq`
--

CREATE TABLE `vtiger_contract_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_contract_type_seq`
--

INSERT INTO `vtiger_contract_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_convertleadmapping`
--

CREATE TABLE `vtiger_convertleadmapping` (
  `cfmid` int(19) NOT NULL,
  `leadfid` int(19) NOT NULL,
  `accountfid` int(19) DEFAULT NULL,
  `contactfid` int(19) DEFAULT NULL,
  `potentialfid` int(19) DEFAULT NULL,
  `editable` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_convertleadmapping`
--

INSERT INTO `vtiger_convertleadmapping` (`cfmid`, `leadfid`, `accountfid`, `contactfid`, `potentialfid`, `editable`) VALUES
(1, 43, 1, 0, 110, 0),
(2, 49, 14, 0, 0, 1),
(3, 40, 3, 69, 0, 1),
(4, 44, 5, 77, 0, 1),
(5, 52, 13, 0, 0, 1),
(6, 46, 9, 80, 0, 0),
(7, 48, 4, 0, 0, 1),
(8, 61, 26, 98, 0, 1),
(9, 60, 30, 0, 0, 1),
(10, 62, 32, 104, 0, 1),
(11, 63, 28, 100, 0, 1),
(12, 59, 24, 96, 0, 1),
(13, 64, 34, 106, 0, 1),
(14, 61, 27, 0, 0, 1),
(15, 60, 31, 0, 0, 1),
(16, 62, 33, 0, 0, 1),
(17, 63, 29, 0, 0, 1),
(18, 59, 25, 0, 0, 1),
(19, 64, 35, 0, 0, 1),
(20, 65, 36, 109, 125, 1),
(21, 37, 0, 66, 0, 1),
(22, 38, 0, 67, 0, 0),
(23, 41, 0, 70, 0, 0),
(24, 42, 0, 71, 0, 1),
(25, 45, 0, 76, 0, 1),
(26, 55, 0, 83, 0, 1),
(27, 47, 0, 74, 117, 1),
(28, 50, 0, 0, 0, 1),
(29, 53, 10, 0, 0, 1),
(30, 51, 17, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_convertpotentialmapping`
--

CREATE TABLE `vtiger_convertpotentialmapping` (
  `cfmid` int(19) NOT NULL,
  `potentialfid` int(19) NOT NULL,
  `projectfid` int(19) DEFAULT NULL,
  `editable` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_convertpotentialmapping`
--

INSERT INTO `vtiger_convertpotentialmapping` (`cfmid`, `potentialfid`, `projectfid`, `editable`) VALUES
(1, 110, 648, 1),
(2, 125, 664, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity`
--

CREATE TABLE `vtiger_crmentity` (
  `crmid` int(19) NOT NULL,
  `smcreatorid` int(19) NOT NULL DEFAULT 0,
  `smownerid` int(19) NOT NULL DEFAULT 0,
  `modifiedby` int(19) NOT NULL DEFAULT 0,
  `setype` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `createdtime` datetime NOT NULL,
  `modifiedtime` datetime NOT NULL,
  `viewedtime` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) DEFAULT 1,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `smgroupid` int(19) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_crmentity`
--

INSERT INTO `vtiger_crmentity` (`crmid`, `smcreatorid`, `smownerid`, `modifiedby`, `setype`, `description`, `createdtime`, `modifiedtime`, `viewedtime`, `status`, `version`, `presence`, `deleted`, `smgroupid`, `source`, `label`) VALUES
(2, 1, 1, 1, 'Products', '', '2023-11-21 09:48:55', '2023-11-21 10:18:09', NULL, NULL, 0, 1, 1, 0, 'CRM', 'CROWN 4GR 2,5cc'),
(3, 1, 1, 1, 'Products', '', '2023-11-21 10:05:48', '2023-11-21 10:07:22', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'DANHRAD'),
(4, 1, 1, 1, 'Products', '', '2023-11-21 10:05:48', '2023-11-21 10:07:22', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'FIT L13A URD'),
(5, 1, 1, 1, 'Products', '', '2023-11-21 10:05:48', '2023-11-21 10:07:22', NULL, NULL, 0, 1, 1, 0, 'IMPORT', '2005 TOYOTO'),
(6, 1, 1, 1, 'Products', '', '2023-11-21 10:05:48', '2023-11-21 10:07:22', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'CROWN GRS180 BOGINO'),
(7, 1, 1, 1, 'Products', '', '2023-11-21 10:05:48', '2023-11-21 10:07:22', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'FIT GD1 2003'),
(8, 1, 1, 1, 'Products', '', '2023-11-21 10:05:48', '2023-11-21 10:07:22', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'XTRAIL NT30 QR20'),
(9, 1, 1, 1, 'Products', '', '2023-11-21 10:05:48', '2023-11-21 10:07:22', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'MARK CX115 4WD 2,0cc'),
(10, 1, 1, 1, 'Products', '', '2023-11-21 10:05:48', '2023-11-21 10:07:22', NULL, NULL, 0, 1, 1, 0, 'IMPORT', '2008 COLT 4A90 1,3cc'),
(11, 1, 1, 1, 'Products', '', '2023-11-21 09:48:55', '2023-11-21 10:13:55', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'DANHRAD'),
(12, 1, 1, 1, 'Products', '', '2023-11-21 09:48:56', '2023-11-21 10:13:55', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'FIT L13A URD'),
(13, 1, 1, 1, 'Products', '', '2023-11-21 09:48:57', '2023-11-21 10:13:55', NULL, NULL, 0, 1, 1, 0, 'IMPORT', '2005 TOYOTO'),
(14, 1, 1, 1, 'Products', '', '2023-11-21 09:48:58', '2023-11-21 10:13:55', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'CROWN GRS180 BOGINO'),
(15, 1, 1, 1, 'Products', '', '2023-11-21 09:48:59', '2023-11-21 10:13:55', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'FIT GD1 2003'),
(16, 1, 1, 1, 'Products', '', '2023-11-21 09:49:00', '2023-11-21 10:13:55', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'XTRAIL NT30 QR20'),
(17, 1, 1, 1, 'Products', '', '2023-11-21 10:07:56', '2023-11-21 10:13:55', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'MARK CX115 4WD 2,0cc'),
(18, 1, 1, 1, 'Products', '', '2023-11-21 10:07:56', '2023-11-21 10:13:55', NULL, NULL, 0, 1, 1, 0, 'IMPORT', '2008 COLT 4A90 1,3cc'),
(19, 1, 1, 1, 'Products', '', '2023-11-21 09:48:56', '2023-11-21 10:18:09', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'FIT L13A URD'),
(20, 1, 1, 1, 'Products', '', '2023-11-21 09:48:57', '2023-11-21 10:18:09', NULL, NULL, 0, 1, 1, 0, 'IMPORT', '2005 TOYOTO'),
(21, 1, 1, 1, 'Products', '', '2023-11-21 09:48:58', '2023-11-21 10:18:09', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'CROWN GRS180 BOGINO'),
(22, 1, 1, 1, 'Products', '', '2023-11-21 09:48:59', '2023-11-21 10:18:09', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'FIT GD1 2003'),
(23, 1, 1, 1, 'Products', '', '2023-11-21 09:49:00', '2023-11-21 10:18:09', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'XTRAIL NT30 QR20'),
(24, 1, 1, 1, 'Products', '', '2023-11-21 10:16:16', '2023-11-21 10:18:09', NULL, NULL, 0, 1, 1, 0, 'IMPORT', 'MARK CX115 4WD 2,0cc'),
(25, 1, 1, 1, 'Products', '', '2023-11-21 10:16:16', '2023-11-21 10:18:09', NULL, NULL, 0, 1, 1, 0, 'IMPORT', '2008 COLT 4A90 1,3cc'),
(26, 1, 1, 1, 'Products', '', '2023-11-21 09:48:56', '2023-11-21 10:19:54', NULL, NULL, 0, 1, 0, 0, 'IMPORT', 'FIT L13A URD'),
(27, 1, 1, 1, 'Products', '', '2023-11-21 09:48:57', '2023-11-21 10:19:54', NULL, NULL, 0, 1, 0, 0, 'IMPORT', '2005 TOYOTO'),
(28, 1, 1, 1, 'Products', '', '2023-11-21 09:48:58', '2023-11-21 10:19:54', NULL, NULL, 0, 1, 0, 0, 'IMPORT', 'CROWN GRS180 BOGINO'),
(29, 1, 1, 1, 'Products', '', '2023-11-21 09:48:59', '2023-11-21 10:19:54', NULL, NULL, 0, 1, 0, 0, 'IMPORT', 'FIT GD1 2003'),
(30, 1, 1, 1, 'Products', '', '2023-11-21 09:49:00', '2023-11-21 10:19:54', NULL, NULL, 0, 1, 0, 0, 'IMPORT', 'XTRAIL NT30 QR20'),
(31, 1, 1, 1, 'Products', '', '2023-11-21 10:19:54', '2023-11-21 10:19:54', NULL, NULL, 0, 1, 0, 0, 'IMPORT', 'MARK CX115 4WD 2,0cc'),
(32, 1, 1, 1, 'Products', '', '2023-11-21 10:19:54', '2023-11-21 10:19:54', NULL, NULL, 0, 1, 0, 0, 'IMPORT', '2008 COLT 4A90 1,3cc'),
(33, 1, 1, 1, 'SalesOrder', '', '2023-11-22 05:59:21', '2023-11-22 05:59:21', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Борлуулалт');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentityrel`
--

CREATE TABLE `vtiger_crmentityrel` (
  `crmid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relcrmid` int(11) NOT NULL,
  `relmodule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity_seq`
--

CREATE TABLE `vtiger_crmentity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_crmentity_seq`
--

INSERT INTO `vtiger_crmentity_seq` (`id`) VALUES
(33);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity_user_field`
--

CREATE TABLE `vtiger_crmentity_user_field` (
  `recordid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  `starred` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_crmentity_user_field`
--

INSERT INTO `vtiger_crmentity_user_field` (`recordid`, `userid`, `starred`) VALUES
(2, 1, '0'),
(3, 1, '0'),
(4, 1, '0'),
(5, 1, '0'),
(6, 1, '0'),
(7, 1, '0'),
(8, 1, '0'),
(9, 1, '0'),
(10, 1, '0'),
(11, 1, '0'),
(12, 1, '0'),
(13, 1, '0'),
(14, 1, '0'),
(15, 1, '0'),
(16, 1, '0'),
(17, 1, '0'),
(18, 1, '0'),
(19, 1, '0'),
(20, 1, '0'),
(21, 1, '0'),
(22, 1, '0'),
(23, 1, '0'),
(24, 1, '0'),
(25, 1, '0'),
(26, 1, '0'),
(27, 1, '0'),
(28, 1, '0'),
(29, 1, '0'),
(30, 1, '0'),
(31, 1, '0'),
(32, 1, '0'),
(33, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmsetup`
--

CREATE TABLE `vtiger_crmsetup` (
  `userid` int(11) DEFAULT NULL,
  `setup_status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_crmsetup`
--

INSERT INTO `vtiger_crmsetup` (`userid`, `setup_status`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cron_task`
--

CREATE TABLE `vtiger_cron_task` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `handler_file` varchar(100) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `laststart` int(11) UNSIGNED DEFAULT NULL,
  `lastend` int(11) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_currencies` (
  `currencyid` int(19) NOT NULL,
  `currency_name` varchar(200) DEFAULT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `currency_symbol` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currencies`
--

INSERT INTO `vtiger_currencies` (`currencyid`, `currency_name`, `currency_code`, `currency_symbol`) VALUES
(1, 'Albania, Leke', 'ALL', 'Lek'),
(2, 'Argentina, Pesos', 'ARS', '$'),
(3, 'Aruba, Guilders', 'AWG', 'ƒ'),
(4, 'Australia, Dollars', 'AUD', '$'),
(5, 'Azerbaijan, New Manats', 'AZN', 'ман'),
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
(16, 'Bulgaria, Leva', 'BGN', 'лв'),
(17, 'Brazil, Reais', 'BRL', 'R$'),
(18, 'Great Britain Pounds', 'GBP', '£'),
(19, 'Brunei Darussalam, Dollars', 'BND', '$'),
(20, 'Canada, Dollars', 'CAD', '$'),
(21, 'Cayman Islands, Dollars', 'KYD', '$'),
(22, 'Chile, Pesos', 'CLP', '$'),
(23, 'Colombia, Pesos', 'COP', '$'),
(24, 'Costa Rica, Colón', 'CRC', '₡'),
(25, 'Croatia, Kuna', 'HRK', 'kn'),
(26, 'Cuba, Pesos', 'CUP', '₱'),
(27, 'Czech Republic, Koruny', 'CZK', 'Kč'),
(28, 'Cyprus, Pounds', 'CYP', '£'),
(29, 'Denmark, Kroner', 'DKK', 'kr'),
(30, 'Dominican Republic, Pesos', 'DOP', 'RD$'),
(31, 'East Caribbean, Dollars', 'XCD', '$'),
(32, 'Egypt, Pounds', 'EGP', 'E£'),
(33, 'El Salvador, Colón', 'SVC', '₡'),
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
(48, 'India, Rupees', 'INR', '₹'),
(49, 'Indonesia, Rupiahs', 'IDR', 'Rp'),
(50, 'Iran, Rials', 'IRR', '﷼'),
(51, 'Isle of Man, Pounds', 'IMP', '£'),
(52, 'Israel, New Shekels', 'ILS', '₪'),
(53, 'Jamaica, Dollars', 'JMD', 'J$'),
(54, 'Japan, Yen', 'JPY', '¥'),
(55, 'Jersey, Pounds', 'JEP', '£'),
(56, 'Jordan, Dinar', 'JOD', 'JOD'),
(57, 'Kazakhstan, Tenge', 'KZT', '〒'),
(58, 'Kenya, Shilling', 'KES', 'KES'),
(59, 'Korea (North), Won', 'KPW', '₩'),
(60, 'Korea (South), Won', 'KRW', '₩'),
(61, 'Kuwait, Dinar', 'KWD', 'KWD'),
(62, 'Kyrgyzstan, Soms', 'KGS', 'лв'),
(63, 'Laos, Kips', 'LAK', '₭'),
(64, 'Latvia, Lati', 'LVL', 'Ls'),
(65, 'Lebanon, Pounds', 'LBP', '£'),
(66, 'Liberia, Dollars', 'LRD', '$'),
(67, 'Switzerland Francs', 'CHF', 'CHF'),
(68, 'Lithuania, Litai', 'LTL', 'Lt'),
(69, 'MADAGASCAR, Malagasy Ariary', 'MGA', 'MGA'),
(70, 'Macedonia, Denars', 'MKD', 'ден'),
(71, 'Malaysia, Ringgits', 'MYR', 'RM'),
(72, 'Malta, Liri', 'MTL', '₤'),
(73, 'Mauritius, Rupees', 'MUR', '₨'),
(74, 'Mexico, Pesos', 'MXN', '$'),
(75, 'Mongolia, Tugriks', 'MNT', '₮'),
(76, 'Mozambique, Meticais', 'MZN', 'MT'),
(77, 'Namibia, Dollars', 'NAD', '$'),
(78, 'Nepal, Rupees', 'NPR', '₨'),
(79, 'Netherlands Antilles, Guilders', 'ANG', 'ƒ'),
(80, 'New Zealand, Dollars', 'NZD', '$'),
(81, 'Nicaragua, Cordobas', 'NIO', 'C$'),
(82, 'Nigeria, Nairas', 'NGN', '₦'),
(83, 'North Korea, Won', 'KPW', '₩'),
(84, 'Norway, Krone', 'NOK', 'kr'),
(85, 'Oman, Rials', 'OMR', '﷼'),
(86, 'Pakistan, Rupees', 'PKR', '₨'),
(87, 'Panama, Balboa', 'PAB', 'B/.'),
(88, 'Paraguay, Guarani', 'PYG', 'Gs'),
(89, 'Peru, Nuevos Soles', 'PEN', 'S/.'),
(90, 'Philippines, Pesos', 'PHP', 'Php'),
(91, 'Poland, Zlotych', 'PLN', 'zł'),
(92, 'Qatar, Rials', 'QAR', '﷼'),
(93, 'Romania, New Lei', 'RON', 'lei'),
(94, 'Russia, Rubles', 'RUB', 'руб'),
(95, 'Saint Helena, Pounds', 'SHP', '£'),
(96, 'Saudi Arabia, Riyals', 'SAR', '﷼'),
(97, 'Serbia, Dinars', 'RSD', 'Дин.'),
(98, 'Seychelles, Rupees', 'SCR', '₨'),
(99, 'Singapore, Dollars', 'SGD', '$'),
(100, 'Solomon Islands, Dollars', 'SBD', '$'),
(101, 'Somalia, Shillings', 'SOS', 'S'),
(102, 'South Africa, Rand', 'ZAR', 'R'),
(103, 'South Korea, Won', 'KRW', '₩'),
(104, 'Sri Lanka, Rupees', 'LKR', '₨'),
(105, 'Sweden, Kronor', 'SEK', 'kr'),
(106, 'Switzerland, Francs', 'CHF', 'CHF'),
(107, 'Suriname, Dollars', 'SRD', '$'),
(108, 'Syria, Pounds', 'SYP', '£'),
(109, 'Taiwan, New Dollars', 'TWD', 'NT$'),
(110, 'Thailand, Baht', 'THB', '฿'),
(111, 'Trinidad and Tobago, Dollars', 'TTD', 'TT$'),
(112, 'Turkey, New Lira', 'TRY', 'YTL'),
(113, 'Turkey, Liras', 'TRL', '₤'),
(114, 'Tuvalu, Dollars', 'TVD', '$'),
(115, 'Ukraine, Hryvnia', 'UAH', '₴'),
(116, 'United Arab Emirates, Dirham', 'AED', 'AED'),
(117, 'United Kingdom, Pounds', 'GBP', '£'),
(118, 'United Republic of Tanzania, Shilling', 'TZS', 'TZS'),
(119, 'USA, Dollars', 'USD', '$'),
(120, 'Uruguay, Pesos', 'UYU', '$U'),
(121, 'Uzbekistan, Sums', 'UZS', 'лв'),
(122, 'Venezuela, Bolivares Fuertes', 'VEF', 'Bs'),
(123, 'Vietnam, Dong', 'VND', '₫'),
(124, 'Zambia, Kwacha', 'ZMK', 'ZMK'),
(125, 'Yemen, Rials', 'YER', '﷼'),
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
(137, 'Libya, Dinar', 'LYD', 'LYD'),
(138, 'CFP Franc', 'XPF', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currencies_seq`
--

CREATE TABLE `vtiger_currencies_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currencies_seq`
--

INSERT INTO `vtiger_currencies_seq` (`id`) VALUES
(138);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency`
--

CREATE TABLE `vtiger_currency` (
  `currencyid` int(19) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_decimal_separator`
--

CREATE TABLE `vtiger_currency_decimal_separator` (
  `currency_decimal_separatorid` int(19) NOT NULL,
  `currency_decimal_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currency_decimal_separator`
--

INSERT INTO `vtiger_currency_decimal_separator` (`currency_decimal_separatorid`, `currency_decimal_separator`, `sortorderid`, `presence`) VALUES
(1, '.', 0, 1),
(2, ',', 1, 1),
(3, '\'', 2, 1),
(4, ' ', 3, 1),
(5, '$', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_decimal_separator_seq`
--

CREATE TABLE `vtiger_currency_decimal_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currency_decimal_separator_seq`
--

INSERT INTO `vtiger_currency_decimal_separator_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_pattern`
--

CREATE TABLE `vtiger_currency_grouping_pattern` (
  `currency_grouping_patternid` int(19) NOT NULL,
  `currency_grouping_pattern` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_currency_grouping_pattern_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currency_grouping_pattern_seq`
--

INSERT INTO `vtiger_currency_grouping_pattern_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_separator`
--

CREATE TABLE `vtiger_currency_grouping_separator` (
  `currency_grouping_separatorid` int(19) NOT NULL,
  `currency_grouping_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currency_grouping_separator`
--

INSERT INTO `vtiger_currency_grouping_separator` (`currency_grouping_separatorid`, `currency_grouping_separator`, `sortorderid`, `presence`) VALUES
(1, ',', 0, 1),
(2, '.', 1, 1),
(3, '\'', 2, 1),
(4, ' ', 3, 1),
(5, '$', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_separator_seq`
--

CREATE TABLE `vtiger_currency_grouping_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currency_grouping_separator_seq`
--

INSERT INTO `vtiger_currency_grouping_separator_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_info`
--

CREATE TABLE `vtiger_currency_info` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_code` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(30) DEFAULT NULL,
  `conversion_rate` decimal(12,5) DEFAULT NULL,
  `currency_status` varchar(25) DEFAULT NULL,
  `defaultid` varchar(10) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currency_info`
--

INSERT INTO `vtiger_currency_info` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `conversion_rate`, `currency_status`, `defaultid`, `deleted`) VALUES
(1, 'Mongolia, Tugriks', 'MNT', '₮', 1.00000, 'Active', '-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_info_seq`
--

CREATE TABLE `vtiger_currency_info_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currency_info_seq`
--

INSERT INTO `vtiger_currency_info_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_symbol_placement`
--

CREATE TABLE `vtiger_currency_symbol_placement` (
  `currency_symbol_placementid` int(19) NOT NULL,
  `currency_symbol_placement` varchar(30) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_currency_symbol_placement_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_currency_symbol_placement_seq`
--

INSERT INTO `vtiger_currency_symbol_placement_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customaction`
--

CREATE TABLE `vtiger_customaction` (
  `cvid` int(19) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerdetails`
--

CREATE TABLE `vtiger_customerdetails` (
  `customerid` int(19) NOT NULL,
  `portal` varchar(3) DEFAULT NULL,
  `support_start_date` date DEFAULT NULL,
  `support_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_fields`
--

CREATE TABLE `vtiger_customerportal_fields` (
  `tabid` int(19) NOT NULL,
  `fieldinfo` text DEFAULT NULL,
  `records_visible` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_customerportal_fields`
--

INSERT INTO `vtiger_customerportal_fields` (`tabid`, `fieldinfo`, `records_visible`) VALUES
(4, '{\"lastname\":1,\"assigned_user_id\":1}', 1),
(6, '{\"accountname\":1,\"assigned_user_id\":1}', 1),
(8, '{\"notes_title\":1,\"assigned_user_id\":1,\"filename\":0}', 1),
(13, '{\"ticket_title\":1,\"assigned_user_id\":1,\"ticketpriorities\":1,\"ticketstatus\":1,\"description\":1,\"product_id\":1,\"ticketseverities\":1,\"ticketcategories\":1}', 1),
(14, '{\"productname\":1,\"assigned_user_id\":1}', 1),
(15, '{\"faqstatus\":1,\"question\":1,\"faq_answer\":1}', 1),
(20, '{\"subject\":1,\"quotestage\":1,\"account_id\":1,\"assigned_user_id\":1,\"bill_street\":1,\"ship_street\":1}', 1),
(23, '{\"subject\":1,\"account_id\":1,\"assigned_user_id\":1,\"bill_street\":1,\"ship_street\":1}', 1),
(35, '{\"subject\":1,\"assigned_user_id\":1}', NULL),
(36, '{\"servicename\":1}', 1),
(38, '{\"product\":1,\"serialnumber\":1,\"assigned_user_id\":1,\"datesold\":1,\"dateinservice\":1,\"assetstatus\":1,\"assetname\":1,\"account\":1}', 1),
(43, '{\"projectmilestonename\":1,\"projectid\":1,\"assigned_user_id\":1}', 1),
(44, '{\"projecttaskname\":1,\"projectid\":1,\"assigned_user_id\":1}', 1),
(45, '{\"projectname\":1,\"assigned_user_id\":1}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_prefs`
--

CREATE TABLE `vtiger_customerportal_prefs` (
  `tabid` int(19) NOT NULL,
  `prefkey` varchar(100) NOT NULL,
  `prefvalue` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_customerportal_prefs`
--

INSERT INTO `vtiger_customerportal_prefs` (`tabid`, `prefkey`, `prefvalue`) VALUES
(0, 'defaultassignee', 1),
(0, 'userid', 1),
(4, 'showrelatedinfo', 1),
(6, 'showrelatedinfo', 1),
(8, 'showrelatedinfo', 1),
(13, 'showrelatedinfo', 1),
(14, 'showrelatedinfo', 1),
(15, 'showrelatedinfo', 1),
(20, 'showrelatedinfo', 1),
(23, 'showrelatedinfo', 1),
(36, 'showrelatedinfo', 1),
(38, 'showrelatedinfo', 1),
(43, 'showrelatedinfo', 1),
(44, 'showrelatedinfo', 1),
(45, 'showrelatedinfo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_relatedmoduleinfo`
--

CREATE TABLE `vtiger_customerportal_relatedmoduleinfo` (
  `tabid` int(19) NOT NULL,
  `relatedmodules` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_customerportal_relatedmoduleinfo`
--

INSERT INTO `vtiger_customerportal_relatedmoduleinfo` (`tabid`, `relatedmodules`) VALUES
(8, '[{\"name\":\"History\",\"value\":1}]'),
(13, '[{\"name\":\"History\",\"value\":1},{\"name\":\"ModComments\",\"value\":1},{\"name\":\"Documents\",\"value\":1}]'),
(14, '[{\"name\":\"History\",\"value\":1}]'),
(20, '[{\"name\":\"History\",\"value\":1}]'),
(23, '[{\"name\":\"History\",\"value\":1}]'),
(35, '[{\"name\":\"History\",\"value\":1}]'),
(36, '[{\"name\":\"History\",\"value\":1}]'),
(38, '[{\"name\":\"History\",\"value\":1}]'),
(43, '[{\"name\":\"History\",\"value\":1}]'),
(44, '[{\"name\":\"History\",\"value\":1},{\"name\":\"ModComments\",\"value\":1}]'),
(45, '[{\"name\":\"History\",\"value\":1},{\"name\":\"ModComments\",\"value\":1},{\"name\":\"ProjectTask\",\"value\":1},{\"name\":\"ProjectMilestone\",\"value\":1},{\"name\":\"Documents\",\"value\":1}]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_settings`
--

CREATE TABLE `vtiger_customerportal_settings` (
  `id` int(11) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `default_assignee` int(11) DEFAULT NULL,
  `support_notification` int(11) DEFAULT NULL,
  `announcement` text DEFAULT NULL,
  `shortcuts` text DEFAULT NULL,
  `widgets` text DEFAULT NULL,
  `charts` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_customerportal_settings`
--

INSERT INTO `vtiger_customerportal_settings` (`id`, `url`, `default_assignee`, `support_notification`, `announcement`, `shortcuts`, `widgets`, `charts`) VALUES
(1, NULL, 1, NULL, NULL, '{\"Documents\":{\"LBL_ADD_DOCUMENT\":1},\"HelpDesk\":{\"LBL_CREATE_TICKET\":1,\"LBL_OPEN_TICKETS\":1}}', '{\"widgets\":{\"HelpDesk\":1,\"Documents\":1,\"Faq\":1}}', '{\"charts\":{\"OpenTicketsByPriority\":1,\"TicketsClosureTimeByPriority\":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_tabs`
--

CREATE TABLE `vtiger_customerportal_tabs` (
  `tabid` int(19) NOT NULL,
  `visible` int(1) DEFAULT 1,
  `sequence` int(1) DEFAULT NULL,
  `createrecord` tinyint(1) NOT NULL DEFAULT 0,
  `editrecord` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_customerportal_tabs`
--

INSERT INTO `vtiger_customerportal_tabs` (`tabid`, `visible`, `sequence`, `createrecord`, `editrecord`) VALUES
(4, 0, 9, 0, 1),
(6, 0, 10, 0, 1),
(8, 1, 8, 1, 0),
(13, 1, 2, 1, 1),
(14, 1, 6, 0, 0),
(15, 1, 3, 0, 0),
(20, 1, 5, 0, 0),
(23, 1, 4, 0, 0),
(35, 1, 25, 0, 0),
(36, 1, 7, 0, 0),
(38, 1, 11, 0, 1),
(43, 1, 12, 0, 0),
(44, 1, 13, 0, 0),
(45, 1, 14, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customview`
--

CREATE TABLE `vtiger_customview` (
  `cvid` int(19) NOT NULL,
  `viewname` varchar(100) NOT NULL,
  `setdefault` int(1) DEFAULT 0,
  `setmetrics` int(1) DEFAULT 0,
  `entitytype` varchar(25) NOT NULL,
  `status` int(1) DEFAULT 1,
  `userid` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(35, 'Open Invoices', 0, 0, 'Invoice', 3, 1),
(36, 'Paid Invoices', 0, 0, 'Invoice', 3, 1),
(37, 'Pending Sales Orders', 0, 0, 'SalesOrder', 3, 1),
(38, 'All', 1, 0, 'PBXManager', 0, 1),
(39, 'All', 1, 0, 'ServiceContracts', 0, 1),
(40, 'All', 1, 0, 'Services', 0, 1),
(41, 'All', 1, 0, 'Assets', 0, 1),
(42, 'All', 0, 0, 'ModComments', 0, 1),
(46, 'All', 0, 0, 'SMSNotifier', 0, 1),
(47, 'All', 1, 0, 'ProjectMilestone', 0, 1),
(48, 'All', 1, 0, 'ProjectTask', 0, 1),
(49, 'All', 1, 0, 'Project', 0, 1),
(50, 'Ерөнхий', 1, 0, 'Products', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customview_seq`
--

CREATE TABLE `vtiger_customview_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_customview_seq`
--

INSERT INTO `vtiger_customview_seq` (`id`) VALUES
(50);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cv2group`
--

CREATE TABLE `vtiger_cv2group` (
  `cvid` int(25) NOT NULL,
  `groupid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cv2role`
--

CREATE TABLE `vtiger_cv2role` (
  `cvid` int(25) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cv2rs`
--

CREATE TABLE `vtiger_cv2rs` (
  `cvid` int(25) NOT NULL,
  `rsid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cv2users`
--

CREATE TABLE `vtiger_cv2users` (
  `cvid` int(25) NOT NULL,
  `userid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvadvfilter`
--

CREATE TABLE `vtiger_cvadvfilter` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT 1,
  `column_condition` varchar(255) DEFAULT 'and'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(35, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Created, Approved, Sent', 1, 'and'),
(36, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Paid', 1, 'and'),
(37, 0, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V', 'e', 'Created, Approved', 1, 'and');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvadvfilter_grouping`
--

CREATE TABLE `vtiger_cvadvfilter_grouping` (
  `groupid` int(11) NOT NULL,
  `cvid` int(19) NOT NULL,
  `group_condition` varchar(255) DEFAULT NULL,
  `condition_expression` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(1, 35, '', ''),
(1, 36, '', ''),
(1, 37, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvcolumnlist`
--

CREATE TABLE `vtiger_cvcolumnlist` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(2, 5, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(3, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(3, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(3, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(3, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(3, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(3, 5, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(4, 1, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(4, 2, 'vtiger_accountbillads:bill_city:bill_city:Accounts_Billing_City:V'),
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
(9, 3, 'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:I'),
(9, 4, 'vtiger_contactdetails:email:email:Contacts_Email:E'),
(9, 5, 'vtiger_contactsubdetails:otherphone:otherphone:Contacts_Phone:V'),
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
(14, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(14, 2, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(14, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),
(14, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(14, 5, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(15, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(15, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(15, 2, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(15, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),
(15, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(15, 5, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(16, 1, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(16, 2, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(16, 3, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:V'),
(16, 4, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:V'),
(16, 5, 'vtiger_quotes:total:hdnGrandTotal:Quotes_Total:N'),
(16, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(17, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(17, 2, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(17, 3, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),
(17, 4, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(17, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(18, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(18, 1, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(18, 2, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),
(18, 3, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(18, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(19, 0, 'vtiger_activity:status:taskstatus:Calendar_Status:V'),
(19, 1, 'vtiger_activity:activitytype:activitytype:Calendar_Activity_Type:V'),
(19, 2, 'vtiger_activity:subject:subject:Calendar_Subject:V'),
(19, 3, 'vtiger_seactivityrel:crmid:parent_id:Calendar_Related_To:V'),
(19, 4, 'vtiger_activity:date_start:date_start:Calendar_Start_Date_&_Time:DT'),
(19, 5, 'vtiger_activity:due_date:due_date:Calendar_Due_Date:D'),
(19, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Calendar_Assigned_To:V'),
(20, 0, 'vtiger_activity:subject:subject:Emails_Subject:V'),
(20, 1, 'vtiger_emaildetails:to_email:saved_toid:Emails_To:V'),
(20, 2, 'vtiger_activity:date_start:date_start:Emails_Date_&_Time_Sent:DT'),
(21, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(21, 2, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:V'),
(21, 3, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(21, 4, 'vtiger_invoice:total:hdnGrandTotal:Invoice_Total:N'),
(21, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(22, 1, 'vtiger_notes:title:notes_title:Documents_Title:V'),
(22, 2, 'vtiger_notes:filename:filename:Documents_File_Name:V'),
(22, 3, 'vtiger_crmentity:modifiedtime:modifiedtime:Documents_Modified_Time:DT'),
(22, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Documents_Assigned_To:V'),
(23, 1, 'vtiger_pricebook:bookname:bookname:PriceBooks_Price_Book_Name:V'),
(23, 2, 'vtiger_pricebook:active:active:PriceBooks_Active:C'),
(23, 3, 'vtiger_pricebook:currency_id:currency_id:PriceBooks_Currency:V'),
(24, 1, 'vtiger_products:productname:productname:Products_Product_Name:V'),
(24, 2, 'vtiger_products:productcode:productcode:Products_Part_Number:V'),
(24, 3, 'vtiger_products:commissionrate:commissionrate:Products_Commission_Rate:N'),
(24, 4, 'vtiger_products:qtyinstock:qtyinstock:Products_Qty_In_Stock:NN'),
(24, 5, 'vtiger_products:qty_per_unit:qty_per_unit:Products_Qty/Unit:N'),
(24, 6, 'vtiger_products:unit_price:unit_price:Products_Unit_Price:N'),
(25, 1, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(25, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:V'),
(25, 3, 'vtiger_purchaseorder:tracking_no:tracking_no:PurchaseOrder_Tracking_Number:V'),
(25, 4, 'vtiger_purchaseorder:total:hdnGrandTotal:PurchaseOrder_Total:N'),
(25, 5, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(26, 1, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(26, 2, 'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:V'),
(26, 3, 'vtiger_salesorder:quoteid:quote_id:SalesOrder_Quote_Name:V'),
(26, 4, 'vtiger_salesorder:total:hdnGrandTotal:SalesOrder_Total:N'),
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
(29, 2, 'vtiger_campaign:campaigntype:campaigntype:Campaigns_Campaign_Type:V'),
(29, 3, 'vtiger_campaign:campaignstatus:campaignstatus:Campaigns_Campaign_Status:V'),
(29, 4, 'vtiger_campaign:expectedrevenue:expectedrevenue:Campaigns_Expected_Revenue:N'),
(29, 5, 'vtiger_campaign:closingdate:closingdate:Campaigns_Expected_Close_Date:D'),
(29, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Campaigns_Assigned_To:V'),
(30, 0, 'subject:subject:subject:Subject:V'),
(30, 1, 'from:fromname:fromname:From:N'),
(30, 2, 'to:tpname:toname:To:N'),
(30, 3, 'body:body:body:Body:V'),
(31, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(31, 1, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(31, 2, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(31, 3, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(31, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(32, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(32, 1, 'vtiger_faq:answer:faq_answer:Faq_Answer:V'),
(32, 2, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(32, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(32, 4, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(32, 5, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(35, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(35, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(35, 2, 'vtiger_invoice:accountid:account_id:Invoice_Account_Name:I'),
(35, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(35, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(35, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(35, 6, 'vtiger_crmentity:createdtime:createdtime:Invoice_Created_Time:DT'),
(36, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(36, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(36, 2, 'vtiger_invoice:accountid:account_id:Invoice_Account_Name:I'),
(36, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(36, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(36, 5, 'vtiger_invoiceshipads:ship_street:ship_street:Invoice_Shipping_Address:V'),
(36, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(37, 0, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(37, 1, 'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:I'),
(37, 2, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V'),
(37, 3, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(37, 4, 'vtiger_soshipads:ship_street:ship_street:SalesOrder_Shipping_Address:V'),
(37, 5, 'vtiger_salesorder:carrier:carrier:SalesOrder_Carrier:V'),
(38, 0, 'vtiger_pbxmanager:callstatus:callstatus:PBXManager_Call_Status:V'),
(38, 1, 'vtiger_pbxmanager:customernumber:customernumber:PBXManager_Customer_Number:V'),
(38, 2, 'vtiger_pbxmanager:customer:customer:PBXManager_Customer:V'),
(38, 3, 'vtiger_pbxmanager:user:user:PBXManager_User:V'),
(38, 4, 'vtiger_pbxmanager:recordingurl:recordingurl:PBXManager_Recording_URL:V'),
(38, 5, 'vtiger_pbxmanager:totalduration:totalduration:PBXManager_Total_Duration:I'),
(38, 6, 'vtiger_pbxmanager:starttime:starttime:PBXManager_Start_Time:DT'),
(39, 1, 'vtiger_servicecontracts:subject:subject:ServiceContracts_Subject:V'),
(39, 2, 'vtiger_servicecontracts:sc_related_to:sc_related_to:ServiceContracts_Related_to:V'),
(39, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ServiceContracts_Assigned_To:V'),
(39, 4, 'vtiger_servicecontracts:start_date:start_date:ServiceContracts_Start_Date:D'),
(39, 5, 'vtiger_servicecontracts:due_date:due_date:ServiceContracts_Due_date:D'),
(39, 7, 'vtiger_servicecontracts:progress:progress:ServiceContracts_Progress:N'),
(39, 8, 'vtiger_servicecontracts:contract_status:contract_status:ServiceContracts_Status:V'),
(40, 1, 'vtiger_service:servicename:servicename:Services_Service_Name:V'),
(40, 2, 'vtiger_service:service_usageunit:service_usageunit:Services_Usage_Unit:V'),
(40, 3, 'vtiger_service:unit_price:unit_price:Services_Price:N'),
(40, 4, 'vtiger_service:qty_per_unit:qty_per_unit:Services_No_of_Units:N'),
(40, 5, 'vtiger_service:servicecategory:servicecategory:Services_Service_Category:V'),
(40, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Services_Owner:I'),
(41, 1, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(41, 2, 'vtiger_assets:account:account:Assets_Customer_Name:V'),
(41, 3, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(42, 0, 'vtiger_modcomments:commentcontent:commentcontent:ModComments_Comment:V'),
(42, 1, 'vtiger_modcomments:related_to:related_to:ModComments_Related_To:V'),
(42, 2, 'vtiger_crmentity:modifiedtime:modifiedtime:ModComments_Modified_Time:DT'),
(42, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ModComments_Assigned_To:V'),
(46, 0, 'vtiger_smsnotifier:message:message:SMSNotifier_message:V'),
(46, 2, 'vtiger_crmentity:smownerid:assigned_user_id:SMSNotifier_Assigned_To:V'),
(46, 3, 'vtiger_crmentity:createdtime:createdtime:SMSNotifier_Created_Time:DT'),
(46, 4, 'vtiger_crmentity:modifiedtime:modifiedtime:SMSNotifier_Modified_Time:DT'),
(47, 0, 'vtiger_projectmilestone:projectmilestonename:projectmilestonename:ProjectMilestone_Project_Milestone_Name:V'),
(47, 1, 'vtiger_projectmilestone:projectmilestonedate:projectmilestonedate:ProjectMilestone_Milestone_Date:D'),
(47, 3, 'vtiger_crmentity:description:description:ProjectMilestone_description:V'),
(47, 4, 'vtiger_crmentity:createdtime:createdtime:ProjectMilestone_Created_Time:DT'),
(47, 5, 'vtiger_crmentity:modifiedtime:modifiedtime:ProjectMilestone_Modified_Time:DT'),
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
(49, 19, 'vtiger_project:contactid:contactid:Project_Contact_Name:V'),
(50, 0, 'vtiger_products:serialno:serial_no:Products_Serial_No:V'),
(50, 1, 'vtiger_products:productname:productname:Products_Product_Name:V'),
(50, 2, 'vtiger_products:productcategory:productcategory:Products_Product_Category:V'),
(50, 3, 'vtiger_products:unit_price:unit_price:Products_Unit_Price:N'),
(50, 4, 'vtiger_products:usageunit:usageunit:Products_Usage_Unit:V'),
(50, 5, 'vtiger_products:qtyinstock:qtyinstock:Products_Qty_In_Stock:NN'),
(50, 6, 'vtiger_products:discontinued:discontinued:Products_Product_Active:C');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvstdfilter`
--

CREATE TABLE `vtiger_cvstdfilter` (
  `cvid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `stdfilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_cvstdfilter`
--

INSERT INTO `vtiger_cvstdfilter` (`cvid`, `columnname`, `stdfilter`, `startdate`, `enddate`) VALUES
(3, 'vtiger_crmentity:modifiedtime:modifiedtime:Leads_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30'),
(6, 'vtiger_crmentity:createdtime:createdtime:Accounts_Created_Time', 'thisweek', '2005-06-19', '2005-06-25'),
(9, 'vtiger_contactsubdetails:birthday:birthday:Contacts_Birthdate', 'today', '2005-06-25', '2005-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dashboard_tabs`
--

CREATE TABLE `vtiger_dashboard_tabs` (
  `id` int(19) NOT NULL,
  `tabname` varchar(50) DEFAULT NULL,
  `isdefault` int(1) DEFAULT 0,
  `sequence` int(5) DEFAULT 2,
  `appname` varchar(20) DEFAULT NULL,
  `modulename` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_dashboard_tabs`
--

INSERT INTO `vtiger_dashboard_tabs` (`id`, `tabname`, `isdefault`, `sequence`, `appname`, `modulename`, `userid`) VALUES
(1, 'Default', 0, 2, NULL, NULL, 1),
(2, 'My Dashboard', 1, 1, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2grp`
--

CREATE TABLE `vtiger_datashare_grp2grp` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2role`
--

CREATE TABLE `vtiger_datashare_grp2role` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2rs`
--

CREATE TABLE `vtiger_datashare_grp2rs` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_module_rel`
--

CREATE TABLE `vtiger_datashare_module_rel` (
  `shareid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `relationtype` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodules`
--

CREATE TABLE `vtiger_datashare_relatedmodules` (
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `tabid` int(19) DEFAULT NULL,
  `relatedto_tabid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_datashare_relatedmodules_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_datashare_relatedmodules_seq`
--

INSERT INTO `vtiger_datashare_relatedmodules_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodule_permission`
--

CREATE TABLE `vtiger_datashare_relatedmodule_permission` (
  `shareid` int(19) NOT NULL,
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2group`
--

CREATE TABLE `vtiger_datashare_role2group` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2role`
--

CREATE TABLE `vtiger_datashare_role2role` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2rs`
--

CREATE TABLE `vtiger_datashare_role2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2grp`
--

CREATE TABLE `vtiger_datashare_rs2grp` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2role`
--

CREATE TABLE `vtiger_datashare_rs2role` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2rs`
--

CREATE TABLE `vtiger_datashare_rs2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_date_format`
--

CREATE TABLE `vtiger_date_format` (
  `date_formatid` int(19) NOT NULL,
  `date_format` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_date_format`
--

INSERT INTO `vtiger_date_format` (`date_formatid`, `date_format`, `sortorderid`, `presence`) VALUES
(1, 'dd-mm-yyyy', 0, 1),
(2, 'mm-dd-yyyy', 1, 1),
(3, 'yyyy-mm-dd', 2, 1),
(4, 'dd.mm.yyyy', 3, 1),
(5, 'dd/mm/yyyy', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_date_format_seq`
--

CREATE TABLE `vtiger_date_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_date_format_seq`
--

INSERT INTO `vtiger_date_format_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dayoftheweek`
--

CREATE TABLE `vtiger_dayoftheweek` (
  `dayoftheweekid` int(11) NOT NULL,
  `dayoftheweek` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_dayoftheweek`
--

INSERT INTO `vtiger_dayoftheweek` (`dayoftheweekid`, `dayoftheweek`, `sortorderid`, `presence`) VALUES
(1, 'Sunday', 0, 1),
(2, 'Monday', 1, 1),
(3, 'Tuesday', 2, 1),
(4, 'Wednesday', 3, 1),
(5, 'Thursday', 4, 1),
(6, 'Friday', 5, 1),
(7, 'Saturday', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dayoftheweek_seq`
--

CREATE TABLE `vtiger_dayoftheweek_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_dayoftheweek_seq`
--

INSERT INTO `vtiger_dayoftheweek_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultactivitytype`
--

CREATE TABLE `vtiger_defaultactivitytype` (
  `defaultactivitytypeid` int(11) NOT NULL,
  `defaultactivitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_defaultactivitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_defaultactivitytype_seq`
--

INSERT INTO `vtiger_defaultactivitytype_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultcalendarview`
--

CREATE TABLE `vtiger_defaultcalendarview` (
  `defaultcalendarviewid` int(11) NOT NULL,
  `defaultcalendarview` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_defaultcalendarview`
--

INSERT INTO `vtiger_defaultcalendarview` (`defaultcalendarviewid`, `defaultcalendarview`, `sortorderid`, `presence`) VALUES
(1, 'ListView', 0, 1),
(2, 'MyCalendar', 1, 1),
(3, 'SharedCalendar', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultcalendarview_seq`
--

CREATE TABLE `vtiger_defaultcalendarview_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_defaultcalendarview_seq`
--

INSERT INTO `vtiger_defaultcalendarview_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultcv`
--

CREATE TABLE `vtiger_defaultcv` (
  `tabid` int(19) NOT NULL,
  `defaultviewname` varchar(50) NOT NULL,
  `query` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaulteventstatus`
--

CREATE TABLE `vtiger_defaulteventstatus` (
  `defaulteventstatusid` int(11) NOT NULL,
  `defaulteventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_defaulteventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_defaulteventstatus_seq`
--

INSERT INTO `vtiger_defaulteventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultlandingpage`
--

CREATE TABLE `vtiger_defaultlandingpage` (
  `defaultlandingpageid` int(11) NOT NULL,
  `defaultlandingpage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_defaultlandingpage`
--

INSERT INTO `vtiger_defaultlandingpage` (`defaultlandingpageid`, `defaultlandingpage`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'true', 1, 303, 1, NULL),
(2, 'false', 1, 304, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultlandingpage_seq`
--

CREATE TABLE `vtiger_defaultlandingpage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_defaultlandingpage_seq`
--

INSERT INTO `vtiger_defaultlandingpage_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_default_record_view`
--

CREATE TABLE `vtiger_default_record_view` (
  `default_record_viewid` int(11) NOT NULL,
  `default_record_view` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_default_record_view`
--

INSERT INTO `vtiger_default_record_view` (`default_record_viewid`, `default_record_view`, `sortorderid`, `presence`) VALUES
(1, 'Summary', 0, 1),
(2, 'Detail', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_default_record_view_seq`
--

CREATE TABLE `vtiger_default_record_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_default_record_view_seq`
--

INSERT INTO `vtiger_default_record_view_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_field`
--

CREATE TABLE `vtiger_def_org_field` (
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(13, 173, 0, 0),
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
(14, 204, 0, 0),
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
(8, 219, 0, 0),
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
(10, 231, 0, 0),
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
(9, 255, 0, 0),
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
(16, 278, 0, 0),
(15, 279, 0, 0),
(15, 280, 0, 0),
(15, 281, 0, 0),
(15, 282, 0, 0),
(15, 283, 0, 0),
(15, 284, 0, 0),
(15, 285, 0, 0),
(15, 286, 0, 0),
(15, 287, 0, 0),
(15, 288, 0, 0),
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
(18, 305, 0, 0),
(19, 306, 0, 0),
(19, 307, 0, 0),
(19, 308, 0, 0),
(19, 309, 0, 0),
(19, 310, 0, 0),
(19, 311, 0, 0),
(19, 312, 0, 0),
(19, 313, 0, 0),
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
(20, 350, 0, 0),
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
(21, 388, 0, 0),
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
(22, 435, 0, 0),
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
(23, 474, 0, 0),
(10, 520, 0, 0),
(10, 521, 0, 0),
(10, 522, 0, 0),
(10, 523, 0, 0),
(10, 524, 0, 0),
(10, 525, 0, 0),
(34, 526, 0, 0),
(34, 527, 0, 0),
(34, 528, 0, 0),
(34, 529, 0, 0),
(34, 530, 0, 0),
(34, 531, 0, 0),
(34, 532, 0, 0),
(34, 533, 0, 0),
(34, 534, 0, 0),
(34, 535, 0, 0),
(34, 536, 0, 0),
(34, 537, 0, 0),
(34, 538, 0, 0),
(34, 539, 0, 0),
(34, 540, 0, 0),
(34, 541, 0, 0),
(34, 542, 0, 0),
(29, 543, 0, 0),
(35, 544, 0, 0),
(35, 545, 0, 0),
(35, 546, 0, 0),
(35, 547, 0, 0),
(35, 548, 0, 0),
(35, 549, 0, 0),
(35, 550, 0, 0),
(35, 551, 0, 0),
(35, 552, 0, 0),
(35, 553, 0, 0),
(35, 554, 0, 0),
(35, 555, 0, 0),
(35, 556, 0, 0),
(35, 557, 0, 0),
(35, 558, 0, 0),
(35, 559, 0, 0),
(35, 560, 0, 0),
(35, 561, 0, 0),
(35, 562, 0, 0),
(35, 563, 0, 0),
(35, 564, 0, 0),
(35, 565, 0, 0),
(36, 566, 0, 0),
(36, 567, 0, 0),
(36, 568, 0, 0),
(36, 569, 0, 0),
(36, 570, 0, 0),
(36, 571, 0, 0),
(36, 572, 0, 0),
(36, 573, 0, 0),
(36, 574, 0, 0),
(36, 575, 0, 0),
(36, 576, 0, 0),
(36, 577, 0, 0),
(36, 578, 0, 0),
(36, 579, 0, 0),
(36, 580, 0, 0),
(36, 581, 0, 0),
(36, 582, 0, 0),
(36, 583, 0, 0),
(36, 584, 0, 0),
(36, 585, 0, 0),
(36, 586, 0, 0),
(36, 587, 0, 0),
(38, 588, 0, 0),
(38, 589, 0, 0),
(38, 590, 0, 0),
(38, 591, 0, 0),
(38, 592, 0, 0),
(38, 593, 0, 0),
(38, 594, 0, 0),
(38, 595, 0, 0),
(38, 596, 0, 0),
(38, 597, 0, 0),
(38, 598, 0, 0),
(38, 599, 0, 0),
(38, 600, 0, 0),
(38, 601, 0, 0),
(38, 602, 0, 0),
(38, 603, 0, 0),
(38, 604, 0, 0),
(38, 605, 0, 0),
(38, 606, 0, 0),
(38, 607, 0, 0),
(38, 608, 0, 0),
(42, 609, 0, 0),
(42, 610, 0, 0),
(42, 611, 0, 0),
(42, 612, 0, 0),
(42, 613, 0, 0),
(42, 614, 0, 0),
(42, 615, 0, 0),
(42, 616, 0, 0),
(43, 617, 0, 0),
(43, 618, 0, 0),
(43, 619, 0, 0),
(43, 620, 0, 0),
(43, 621, 0, 0),
(43, 622, 0, 0),
(43, 623, 0, 0),
(43, 624, 0, 0),
(43, 625, 0, 0),
(43, 626, 0, 0),
(43, 627, 0, 0),
(43, 628, 0, 0),
(43, 629, 0, 0),
(44, 630, 0, 0),
(44, 631, 0, 0),
(44, 632, 0, 0),
(44, 633, 0, 0),
(44, 634, 0, 0),
(44, 635, 0, 0),
(44, 636, 0, 0),
(44, 637, 0, 0),
(44, 638, 0, 0),
(44, 639, 0, 0),
(44, 640, 0, 0),
(44, 641, 0, 0),
(44, 642, 0, 0),
(44, 643, 0, 0),
(44, 644, 0, 0),
(44, 645, 0, 0),
(44, 646, 0, 0),
(44, 647, 0, 0),
(45, 648, 0, 0),
(45, 649, 0, 0),
(45, 650, 0, 0),
(45, 651, 0, 0),
(45, 652, 0, 0),
(45, 653, 0, 0),
(45, 654, 0, 0),
(45, 655, 0, 0),
(45, 656, 0, 0),
(45, 657, 0, 0),
(45, 658, 0, 0),
(45, 659, 0, 0),
(45, 660, 0, 0),
(45, 661, 0, 0),
(45, 662, 0, 0),
(45, 663, 0, 0),
(45, 664, 0, 0),
(45, 665, 0, 0),
(45, 666, 0, 0),
(45, 667, 0, 0),
(47, 668, 0, 0),
(47, 669, 0, 0),
(47, 670, 0, 0),
(47, 671, 0, 0),
(47, 672, 0, 0),
(47, 673, 0, 0),
(2, 674, 0, 0),
(29, 675, 0, 0),
(23, 676, 0, 0),
(23, 677, 0, 0),
(23, 678, 0, 0),
(23, 679, 0, 0),
(23, 680, 0, 0),
(23, 681, 0, 0),
(23, 682, 0, 0),
(23, 683, 0, 0),
(23, 684, 0, 0),
(22, 685, 0, 0),
(22, 686, 0, 0),
(22, 687, 0, 0),
(22, 688, 0, 0),
(22, 689, 0, 0),
(22, 690, 0, 0),
(22, 691, 0, 0),
(22, 692, 0, 0),
(22, 693, 0, 0),
(21, 694, 0, 0),
(21, 695, 0, 0),
(21, 696, 0, 0),
(21, 697, 0, 0),
(21, 698, 0, 0),
(21, 699, 0, 0),
(21, 700, 0, 0),
(21, 701, 0, 0),
(21, 702, 0, 0),
(20, 703, 0, 0),
(20, 704, 0, 0),
(20, 705, 0, 0),
(20, 706, 0, 0),
(20, 707, 0, 0),
(20, 708, 0, 0),
(20, 709, 0, 0),
(20, 710, 0, 0),
(20, 711, 0, 0),
(29, 712, 0, 0),
(44, 713, 0, 0),
(42, 714, 0, 0),
(29, 715, 0, 0),
(29, 716, 0, 0),
(29, 717, 0, 0),
(23, 718, 0, 0),
(22, 719, 0, 0),
(21, 720, 0, 0),
(20, 721, 0, 0),
(29, 722, 0, 0),
(6, 723, 0, 0),
(4, 724, 0, 0),
(2, 725, 0, 0),
(29, 726, 0, 0),
(23, 727, 0, 0),
(23, 728, 0, 0),
(21, 729, 0, 0),
(21, 730, 0, 0),
(18, 731, 0, 0),
(7, 732, 0, 0),
(42, 733, 0, 0),
(42, 734, 0, 0),
(23, 735, 0, 0),
(20, 736, 0, 0),
(21, 737, 0, 0),
(22, 738, 0, 0),
(29, 739, 0, 0),
(2, 740, 0, 0),
(13, 741, 0, 0),
(29, 742, 0, 0),
(29, 743, 0, 0),
(29, 744, 0, 0),
(29, 745, 0, 0),
(14, 772, 0, 0),
(36, 773, 0, 0),
(23, 774, 0, 0),
(29, 775, 0, 0),
(23, 776, 0, 0),
(23, 777, 0, 0),
(23, 778, 0, 0),
(20, 779, 0, 0),
(20, 780, 0, 0),
(20, 781, 0, 0),
(21, 782, 0, 0),
(22, 783, 0, 0),
(22, 784, 0, 0),
(22, 785, 0, 0),
(42, 786, 0, 0),
(42, 787, 0, 0),
(42, 788, 0, 0),
(2, 789, 0, 0),
(4, 790, 0, 0),
(6, 791, 0, 0),
(7, 792, 0, 0),
(8, 793, 0, 0),
(9, 794, 0, 0),
(10, 795, 0, 0),
(13, 796, 0, 0),
(14, 797, 0, 0),
(15, 798, 0, 0),
(16, 799, 0, 0),
(18, 800, 0, 0),
(19, 801, 0, 0),
(20, 802, 0, 0),
(21, 803, 0, 0),
(22, 804, 0, 0),
(23, 805, 0, 0),
(26, 806, 0, 0),
(10, 807, 0, 0),
(2, 808, 0, 0),
(4, 809, 0, 0),
(6, 810, 0, 0),
(7, 811, 0, 0),
(8, 812, 0, 0),
(9, 813, 0, 0),
(10, 814, 0, 0),
(13, 815, 0, 0),
(14, 816, 0, 0),
(15, 817, 0, 0),
(16, 818, 0, 0),
(18, 819, 0, 0),
(19, 820, 0, 0),
(20, 821, 0, 0),
(21, 822, 0, 0),
(22, 823, 0, 0),
(23, 824, 0, 0),
(26, 825, 0, 0),
(2, 826, 0, 0),
(4, 827, 0, 0),
(6, 828, 0, 0),
(7, 829, 0, 0),
(8, 830, 0, 0),
(9, 831, 0, 0),
(10, 832, 0, 0),
(13, 833, 0, 0),
(14, 834, 0, 0),
(15, 835, 0, 0),
(16, 836, 0, 0),
(18, 837, 0, 0),
(19, 838, 0, 0),
(20, 839, 0, 0),
(21, 840, 0, 0),
(22, 841, 0, 0),
(23, 842, 0, 0),
(26, 843, 0, 0),
(20, 844, 0, 0),
(21, 845, 0, 0),
(22, 846, 0, 0),
(23, 847, 0, 0),
(45, 848, 0, 0),
(45, 849, 0, 0),
(29, 850, 0, 0),
(22, 851, 0, 0),
(29, 852, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_share`
--

CREATE TABLE `vtiger_def_org_share` (
  `ruleid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `permission` int(19) DEFAULT NULL,
  `editstatus` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_def_org_share`
--

INSERT INTO `vtiger_def_org_share` (`ruleid`, `tabid`, `permission`, `editstatus`) VALUES
(1, 2, 2, 0),
(2, 4, 2, 0),
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
(15, 34, 3, 0),
(16, 35, 2, 0),
(17, 36, 2, 0),
(18, 38, 2, 0),
(19, 42, 2, 0),
(20, 43, 2, 0),
(21, 44, 2, 0),
(22, 45, 2, 0),
(23, 47, 2, 0),
(24, 18, 2, 0),
(25, 10, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_share_seq`
--

CREATE TABLE `vtiger_def_org_share_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_def_org_share_seq`
--

INSERT INTO `vtiger_def_org_share_seq` (`id`) VALUES
(25);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_durationhrs`
--

CREATE TABLE `vtiger_durationhrs` (
  `hrsid` int(19) NOT NULL,
  `hrs` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_durationmins`
--

CREATE TABLE `vtiger_durationmins` (
  `minsid` int(19) NOT NULL,
  `mins` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_duration_minutes`
--

CREATE TABLE `vtiger_duration_minutes` (
  `minutesid` int(19) NOT NULL,
  `duration_minutes` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_duration_minutes`
--

INSERT INTO `vtiger_duration_minutes` (`minutesid`, `duration_minutes`, `sortorderid`, `presence`, `color`) VALUES
(1, '00', 0, 1, NULL),
(2, '15', 1, 1, NULL),
(3, '30', 2, 1, NULL),
(4, '45', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_duration_minutes_seq`
--

CREATE TABLE `vtiger_duration_minutes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_duration_minutes_seq`
--

INSERT INTO `vtiger_duration_minutes_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emaildetails`
--

CREATE TABLE `vtiger_emaildetails` (
  `emailid` int(19) NOT NULL,
  `from_email` varchar(50) NOT NULL DEFAULT '',
  `to_email` text NOT NULL,
  `cc_email` text NOT NULL,
  `bcc_email` text NOT NULL,
  `assigned_user_email` varchar(50) NOT NULL DEFAULT '',
  `idlists` text NOT NULL,
  `email_flag` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailslookup`
--

CREATE TABLE `vtiger_emailslookup` (
  `crmid` int(20) DEFAULT NULL,
  `setype` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `fieldid` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emails_recipientprefs`
--

CREATE TABLE `vtiger_emails_recipientprefs` (
  `id` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `prefs` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailtemplates`
--

CREATE TABLE `vtiger_emailtemplates` (
  `foldername` varchar(100) DEFAULT NULL,
  `templatename` varchar(100) DEFAULT NULL,
  `templatepath` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `templateid` int(19) NOT NULL,
  `systemtemplate` int(1) NOT NULL DEFAULT 0,
  `module` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_emailtemplates`
--

INSERT INTO `vtiger_emailtemplates` (`foldername`, `templatename`, `templatepath`, `subject`, `description`, `body`, `deleted`, `templateid`, `systemtemplate`, `module`) VALUES
('Public', 'Announcement for Release', '', 'Announcement for Release', 'Announcement of a release', 'Hello!   <br />\n	<br />\n	On behalf of the vtiger team,  I am pleased to announce the release of vtiger crm4.2 . This is a feature packed release including the mass email template handling, custom view feature, vtiger_reports feature and a host of other utilities. vtiger runs on all platforms.    <br />\n        <br />\n	Notable Features of vtiger are :   <br />\n	<br />\n	-Email Client Integration    <br />\n	-Trouble Ticket Integration   <br />\n	-Invoice Management Integration   <br />\n	-Reports Integration   <br />\n	-Portal Integration   <br />\n	-Enhanced Word Plugin Support   <br />\n	-Custom View Integration   <br />\n	<br />\n	Known Issues:   <br />\n	-ABCD   <br />\n	-EFGH   <br />\n	-IJKL   <br />\n	-MNOP   <br />\n	-QRST', 0, 1, 0, 'Contacts'),
('Public', 'Pending Invoices', '', 'Invoices Pending', 'Payment Due', 'name <br />\nstreet, <br />\ncity, <br />\nstate, <br />\n zip) <br />\n  <br />\n Dear <br />\n <br />\n Please check the following invoices that are yet to be paid by you: <br />\n <br />\n No. Date      Amount <br />\n 1   1/1/01    $4000 <br />\n 2   2/2//01   $5000 <br />\n 3   3/3/01    $10000 <br />\n 4   7/4/01    $23560 <br />\n <br />\n Kindly let us know if there are any issues that you feel are pending to be discussed. <br />\n We will be more than happy to give you a call. <br />\n We would like to continue our business with you.', 0, 2, 0, 'Contacts'),
('Public', 'Acceptance Proposal', '', 'Acceptance Proposal', 'Acceptance of Proposal', ' Dear <br />\n <br />\nYour proposal on the project XYZW has been reviewed by us <br />\nand is acceptable in its entirety. <br />\n <br />\nWe are eagerly looking forward to this project <br />\nand are pleased about having the opportunity to work <br />\ntogether. We look forward to a long standing relationship <br />\nwith your esteemed firm. <br />\n<br />\nI would like to take this opportunity to invite you <br />\nto a game of golf on Wednesday morning 9am at the <br />\nCuff Links Ground. We will be waiting for you in the <br />\nExecutive Lounge. <br />\n<br />\nLooking forward to seeing you there.', 0, 3, 0, 'Contacts'),
('Public', 'Goods received acknowledgement', '', 'Goods received acknowledgement', 'Acknowledged Receipt of Goods', ' The undersigned hereby acknowledges receipt and delivery of the goods. <br />\nThe undersigned will release the payment subject to the goods being discovered not satisfactory. <br />\n<br />\nSigned under seal this <date>', 0, 4, 0, 'Contacts'),
('Public', 'Accept Order', '', 'Accept Order', 'Acknowledgement/Acceptance of Order', ' Dear <br />\n         We are in receipt of your order as contained in the <br />\n   purchase order form.We consider this to be final and binding on both sides. <br />\nIf there be any exceptions noted, we shall consider them <br />\nonly if the objection is received within ten days of receipt of <br />\nthis notice. <br />\n <br />\nThank you for your patronage.', 0, 5, 0, 'Contacts'),
('Public', 'Address Change', '', 'Change of Address', 'Address Change', 'Dear <br />\n <br />\nWe are relocating our office to <br />\n11111,XYZDEF Cross, <br />\nUVWWX Circle <br />\nThe telephone number for this new location is (101) 1212-1328. <br />\n<br />\nOur Manufacturing Division will continue operations <br />\nat 3250 Lovedale Square Avenue, in Frankfurt. <br />\n<br />\nWe hope to keep in touch with you all. <br />\nPlease update your addressbooks.', 0, 6, 0, 'Contacts'),
('Public', 'Follow Up', '', 'Follow Up', 'Follow Up of meeting', 'Dear <br />\n<br />\nThank you for extending us the opportunity to meet with <br />\nyou and members of your staff. <br />\n<br />\nI know that John Doe serviced your account <br />\nfor many years and made many friends at your firm. He has personally <br />\ndiscussed with me the deep relationship that he had with your firm. <br />\nWhile his presence will be missed, I can promise that we will <br />\ncontinue to provide the fine service that was accorded by <br />\nJohn to your firm. <br />\n<br />\nI was genuinely touched to receive such fine hospitality. <br />\n<br />\nThank you once again.', 0, 7, 0, 'Contacts'),
('Public', 'Target Crossed!', '', 'Target Crossed!', 'Fantastic Sales Spree!', 'Congratulations! <br />\n<br />\nThe numbers are in and I am proud to inform you that our <br />\ntotal sales for the previous quarter <br />\namounts to $100,000,00.00!. This is the first time <br />\nwe have exceeded the target by almost 30%. <br />\nWe have also beat the previous quarter record by a <br />\nwhopping 75%! <br />\n<br />\nLet us meet at Smoking Joe for a drink in the evening! <br />\n\nC you all there guys!', 0, 8, 0, 'Contacts'),
('Public', 'Thanks Note', '', 'Thanks Note', 'Note of thanks', 'Dear <br />\n<br />\nThank you for your confidence in our ability to serve you. <br />\nWe are glad to be given the chance to serve you.I look <br />\nforward to establishing a long term partnership with you. <br />\nConsider me as a friend. <br />\nShould any need arise,please do give us a call.', 0, 9, 0, 'Contacts'),
('Public', 'Customer Login Details', '', 'Customer Portal Login Details', 'Send Portal login details to customer', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n        <html>\n        <head>\n          <title></title>\n        </head>\n        <body class=\"scayt-enabled\">\n          <!-- <center> -->\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderGrey\" width=\"600px\" style=\"margin-left:0px;\">\n              <tbody>\n                <tr>\n                  <td colspan=\"6\"><!-- Begin Pre header --><!-- // End Pre header \\ --></td>\n                </tr>\n                <tr style=\"height:50px;\">\n                  <td colspan=\"6\" style=\"\n                  font-family: Helvetica,Verdana,sans-serif\">\n                  <div style=\"margin-bottom:10px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br />\n                    Dear $contacts-firstname$ $contacts-lastname$,</div>\n\n                    <div style=\"margin-top:20px;margin-bottom:20px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">As our customer, you can be assured of getting excellent support from our team. I would like to take this opportunity to introduce the portal we have setup for valuable customers like you. You can submit questions/issues via the portal, see past issues and responses. In addition, Portal provides you access to our knowledge base and documents we shared with you in the past.\n                    </div>\n\n                    <div style=\"margin-top:10px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">$URL$ to login to the portal, with the credentials below.</div>\n\n                    <div style=\"margin-top:20px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Your Username: $login_name$</div>\n\n                    <div style=\"margin-bottom:20px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Your Password: $password$</div>\n                    <div class=\"gmail_extra\" style=\"margin-top:10px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Thank you,<br />\n                      $contacts-smownerid$</div>\n\n                    </td>\n                  </tr>\n                  <tr>\n                    <td colspan=\"6\" style=\"font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;\">\n                      <table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\">\n                        <tbody>\n                          <!--copy right data-->\n                          <tr>\n                            <td valign=\"top\" style=\"\n                            padding-left: 0px;\n                            padding-right: 0px;\n                            width:350px\">\n                                <div style=\"margin-top:20px;\"><em>Powered By <a href=\"www.vtiger.com\">Vtiger</a><div>\n                            </td>\n                          </tr>\n                          <!--subscribers links-->\n                        </tbody>\n                      </table>\n                    </td>\n                  </tr>\n                </tbody>\n              </table>\n            <!-- </center> -->\n          </body>\n          </html>', 0, 10, 0, 'Contacts'),
('Public', 'Support end notification before a week', '', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a week of support end date', '<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\">This is just a notification mail regarding your support end.<br /><span style=\"font-weight: bold;\">Priority:</span> Urgent<br />Your Support is going to expire on next week<br />Please contact support@vtiger.com.<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\" href=\"http://www.vtiger.com\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\" href=\"mailto:info@vtiger.com\">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 11, 0, 'Contacts'),
('Public', 'Support end notification before a month', '', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a month of support end date', '<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\">This is just a notification mail regarding your support end.<br /><span style=\"font-weight: bold;\">Priority:</span> Normal<br />Your Support is going to expire on next month.<br />Please contact support@vtiger.com<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a href=\"http://www.vtiger.com\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a href=\"mailto:info@vtiger.com\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 12, 0, 'Contacts'),
('Public', 'Activity Reminder', NULL, 'Reminder', 'Reminder', '<p>This is a reminder notification for the Activity<br/>The details are :<br/> \n							&nbsp; Subject : $events-subject$<br/> \n							&nbsp; Start Date & Time : $events-date_start$<br/>\n							&nbsp; End Date & Time : $events-due_date$<br/> \n							&nbsp; Status : $events-eventstatus$<br/> \n							&nbsp; Location : $events-location$<br/> \n							&nbsp; Description : $events-description$<br/><br/> \n							<p/>', 0, 14, 1, 'Events'),
('Public', 'ToDo Reminder', NULL, 'Activity Reminder', 'Reminder', '<p>This is a reminder notification for the Activity<br/>The details are :<br/>\n								&nbsp; Subject : $calendar-subject$<br/>\n								&nbsp; Start Date & Time : $calendar-date_start$<br/>\n								&nbsp; Due Date : $calendar-due_date$<br/>\n								&nbsp; Status : $calendar-status$<br/>\n								&nbsp; Location : $calendar-location$<br/>\n								&nbsp; Description : $calendar-description$<br/><br/>\n								<p/>', 0, 15, 1, 'Events'),
('Public', 'Invite Users', NULL, 'Invitation', 'Invite Users', '<p>$invitee_name$,<br/><br/>You have been invited for an activity<br/><br/>The details are :<br/>\n								&nbsp; Subject : $events-subject$<br/>\n								&nbsp; Start Date & Time : $events-date_start$<br/> \n								&nbsp; End Date & Time : $events-due_date$<br/>\n								&nbsp; Status : $events-eventstatus$<br/>\n								&nbsp; Priority : $events-priority$<br/>\n								&nbsp; Related To : $events-crmid$<br/>\n								&nbsp; Contact List : $events-contactid$<br/>\n								&nbsp; Location : $events-location$<br/>\n								&nbsp; Description : $events-description$<br/><br/>\n								Thanks & Regards,<br/>\n								$current_user_name$\n								<p/>', 0, 16, 1, 'Events');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailtemplates_seq`
--

CREATE TABLE `vtiger_emailtemplates_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_emailtemplates_seq`
--

INSERT INTO `vtiger_emailtemplates_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_email_access`
--

CREATE TABLE `vtiger_email_access` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `accessdate` date DEFAULT NULL,
  `accesstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_email_track`
--

CREATE TABLE `vtiger_email_track` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  `click_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_entityname`
--

CREATE TABLE `vtiger_entityname` (
  `tabid` int(19) NOT NULL DEFAULT 0,
  `modulename` varchar(100) DEFAULT NULL,
  `tablename` varchar(100) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `entityidfield` varchar(150) NOT NULL,
  `entityidcolumn` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(34, 'PBXManager', 'vtiger_pbxmanager', 'customernumber', 'pbxmanagerid', 'pbxmanagerid'),
(35, 'ServiceContracts', 'vtiger_servicecontracts', 'subject', 'servicecontractsid', 'servicecontractsid'),
(36, 'Services', 'vtiger_service', 'servicename', 'serviceid', 'serviceid'),
(38, 'Assets', 'vtiger_assets', 'assetname', 'assetsid', 'assetsid'),
(42, 'ModComments', 'vtiger_modcomments', 'commentcontent', 'modcommentsid', 'modcommentsid'),
(43, 'ProjectMilestone', 'vtiger_projectmilestone', 'projectmilestonename', 'projectmilestoneid', 'projectmilestoneid'),
(44, 'ProjectTask', 'vtiger_projecttask', 'projecttaskname', 'projecttaskid', 'projecttaskid'),
(45, 'Project', 'vtiger_project', 'projectname', 'projectid', 'projectid'),
(47, 'SMSNotifier', 'vtiger_smsnotifier', 'message', 'smsnotifierid', 'smsnotifierid');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandlers`
--

CREATE TABLE `vtiger_eventhandlers` (
  `eventhandler_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `handler_path` varchar(400) NOT NULL,
  `handler_class` varchar(100) NOT NULL,
  `cond` text NOT NULL,
  `is_active` int(1) NOT NULL,
  `dependent_on` varchar(255) DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_eventhandlers`
--

INSERT INTO `vtiger_eventhandlers` (`eventhandler_id`, `event_name`, `handler_path`, `handler_class`, `cond`, `is_active`, `dependent_on`) VALUES
(1, 'vtiger.entity.aftersave', 'modules/SalesOrder/RecurringInvoiceHandler.php', 'RecurringInvoiceHandler', '', 1, '[]'),
(2, 'vtiger.entity.beforesave', 'data/VTEntityDelta.php', 'VTEntityDelta', '', 1, '[]'),
(3, 'vtiger.entity.aftersave', 'data/VTEntityDelta.php', 'VTEntityDelta', '', 1, '[]'),
(4, 'vtiger.entity.aftersave', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1, '[\"VTEntityDelta\"]'),
(5, 'vtiger.entity.afterrestore', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1, '[]'),
(6, 'vtiger.entity.aftersave.final', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDeskHandler', '', 1, '[]'),
(7, 'vtiger.entity.aftersave.final', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(8, 'vtiger.entity.beforedelete', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(9, 'vtiger.entity.afterrestore', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(16, 'vtiger.entity.beforesave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1, '[]'),
(17, 'vtiger.entity.aftersave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1, '[]'),
(18, 'vtiger.entity.aftersave', 'modules/WSAPP/WorkFlowHandlers/WSAPPAssignToTracker.php', 'WSAPPAssignToTracker', '', 1, '[\"VTEntityDelta\"]'),
(19, 'vtiger.entity.aftersave', 'modules/Invoice/InvoiceHandler.php', 'InvoiceHandler', '', 1, '[]'),
(20, 'vtiger.entity.aftersave', 'modules/PurchaseOrder/PurchaseOrderHandler.php', 'PurchaseOrderHandler', '', 1, '[]'),
(21, 'vtiger.entity.aftersave', 'modules/ModComments/ModCommentsHandler.php', 'ModCommentsHandler', '', 1, '[]'),
(22, 'vtiger.picklist.afterrename', 'modules/Settings/Picklist/handlers/PickListHandler.php', 'PickListHandler', '', 1, '[]'),
(23, 'vtiger.picklist.afterdelete', 'modules/Settings/Picklist/handlers/PickListHandler.php', 'PickListHandler', '', 1, '[]'),
(24, 'vtiger.entity.aftersave', 'modules/Vtiger/handlers/EmailLookupHandler.php', 'EmailLookupHandler', '', 1, '[\"VTEntityDelta\"]'),
(25, 'vtiger.entity.afterdelete', 'modules/Vtiger/handlers/EmailLookupHandler.php', 'EmailLookupHandler', '', 1, '[]'),
(26, 'vtiger.entity.afterrestore', 'modules/Vtiger/handlers/EmailLookupHandler.php', 'EmailLookupHandler', '', 1, '[]'),
(27, 'vtiger.batchevent.save', 'modules/Vtiger/handlers/EmailLookupHandler.php', 'EmailLookupBatchHandler', '', 1, '[]'),
(28, 'vtiger.lead.convertlead', 'modules/Leads/handlers/LeadHandler.php', 'LeadHandler', '', 1, '[]'),
(29, 'vtiger.entity.beforesave', 'modules/Vtiger/handlers/CheckDuplicateHandler.php', 'CheckDuplicateHandler', '', 1, '[]'),
(30, 'vtiger.entity.beforerestore', 'modules/Vtiger/handlers/CheckDuplicateHandler.php', 'CheckDuplicateHandler', '', 1, '[]'),
(31, 'vtiger.entity.aftersave', 'modules/Vtiger/handlers/FollowRecordHandler.php', 'FollowRecordHandler', '', 1, '[]'),
(32, 'vtiger.field.afterdelete', 'modules/Vtiger/handlers/FieldEventHandler.php', 'FieldEventHandler', '', 1, '[]'),
(33, 'vtiger.entity.beforerelate', 'modules/Vtiger/handlers/RelateEntitesHandler.php', 'RelateEntitesHandler', '', 1, '[]'),
(34, 'vtiger.entity.afterrelate', 'modules/Vtiger/handlers/RelateEntitesHandler.php', 'RelateEntitesHandler', '', 1, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandlers_seq`
--

CREATE TABLE `vtiger_eventhandlers_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_eventhandlers_seq`
--

INSERT INTO `vtiger_eventhandlers_seq` (`id`) VALUES
(34);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandler_module`
--

CREATE TABLE `vtiger_eventhandler_module` (
  `eventhandler_module_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_eventhandler_module`
--

INSERT INTO `vtiger_eventhandler_module` (`eventhandler_module_id`, `module_name`, `handler_class`) VALUES
(1, 'ModTracker', 'ModTrackerHandler'),
(2, 'ServiceContracts', 'ServiceContractsHandler'),
(3, 'Invoice', 'InvoiceHandler'),
(4, 'PurchaseOrder', 'PurchaseOrderHandler');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandler_module_seq`
--

CREATE TABLE `vtiger_eventhandler_module_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_eventhandler_module_seq`
--

INSERT INTO `vtiger_eventhandler_module_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventstatus`
--

CREATE TABLE `vtiger_eventstatus` (
  `eventstatusid` int(19) NOT NULL,
  `eventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_eventstatus`
--

INSERT INTO `vtiger_eventstatus` (`eventstatusid`, `eventstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Planned', 0, 38, 0, NULL),
(2, 'Held', 0, 39, 1, NULL),
(3, 'Not Held', 0, 40, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventstatus_seq`
--

CREATE TABLE `vtiger_eventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_eventstatus_seq`
--

INSERT INTO `vtiger_eventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_expectedresponse`
--

CREATE TABLE `vtiger_expectedresponse` (
  `expectedresponseid` int(19) NOT NULL,
  `expectedresponse` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_expectedresponse`
--

INSERT INTO `vtiger_expectedresponse` (`expectedresponseid`, `expectedresponse`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Excellent', 1, 42, 1, NULL),
(3, 'Good', 1, 43, 2, NULL),
(4, 'Average', 1, 44, 3, NULL),
(5, 'Poor', 1, 45, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_expectedresponse_seq`
--

CREATE TABLE `vtiger_expectedresponse_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_expectedresponse_seq`
--

INSERT INTO `vtiger_expectedresponse_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_extnstore_users`
--

CREATE TABLE `vtiger_extnstore_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `instanceurl` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faq`
--

CREATE TABLE `vtiger_faq` (
  `id` int(11) NOT NULL,
  `faq_no` varchar(100) NOT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `category` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcategories`
--

CREATE TABLE `vtiger_faqcategories` (
  `faqcategories_id` int(19) NOT NULL,
  `faqcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_faqcategories`
--

INSERT INTO `vtiger_faqcategories` (`faqcategories_id`, `faqcategories`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'General', 1, 46, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcategories_seq`
--

CREATE TABLE `vtiger_faqcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_faqcategories_seq`
--

INSERT INTO `vtiger_faqcategories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcf`
--

CREATE TABLE `vtiger_faqcf` (
  `faqid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcomments`
--

CREATE TABLE `vtiger_faqcomments` (
  `commentid` int(19) NOT NULL,
  `faqid` int(19) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqstatus`
--

CREATE TABLE `vtiger_faqstatus` (
  `faqstatus_id` int(19) NOT NULL,
  `faqstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_faqstatus`
--

INSERT INTO `vtiger_faqstatus` (`faqstatus_id`, `faqstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Draft', 0, 47, 0, NULL),
(2, 'Reviewed', 0, 48, 1, NULL),
(3, 'Published', 0, 49, 2, NULL),
(4, 'Obsolete', 0, 50, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqstatus_seq`
--

CREATE TABLE `vtiger_faqstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_faqstatus_seq`
--

INSERT INTO `vtiger_faqstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_feedback`
--

CREATE TABLE `vtiger_feedback` (
  `userid` int(19) DEFAULT NULL,
  `dontshow` varchar(19) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_field`
--

CREATE TABLE `vtiger_field` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) NOT NULL,
  `columnname` varchar(30) NOT NULL,
  `tablename` varchar(100) DEFAULT NULL,
  `generatedtype` int(19) NOT NULL DEFAULT 0,
  `uitype` varchar(30) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldlabel` varchar(50) NOT NULL,
  `readonly` int(1) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT 1,
  `defaultvalue` text DEFAULT NULL,
  `maximumlength` int(19) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `block` int(19) DEFAULT NULL,
  `displaytype` int(19) DEFAULT NULL,
  `typeofdata` varchar(100) DEFAULT NULL,
  `quickcreate` int(10) NOT NULL DEFAULT 1,
  `quickcreatesequence` int(19) DEFAULT NULL,
  `info_type` varchar(20) DEFAULT NULL,
  `masseditable` int(10) NOT NULL DEFAULT 1,
  `helpinfo` text DEFAULT NULL,
  `summaryfield` int(10) NOT NULL DEFAULT 0,
  `headerfield` int(1) DEFAULT 0,
  `isunique` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_field`
--

INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`, `headerfield`, `isunique`) VALUES
(6, 1, 'accountname', 'vtiger_account', 1, '2', 'accountname', 'Account Name', 1, 0, '', 100, 1, 9, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 1),
(6, 2, 'account_no', 'vtiger_account', 1, '4', 'account_no', 'Account No', 1, 0, '', 100, 2, 9, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 3, 'phone', 'vtiger_account', 1, '11', 'phone', 'Phone', 1, 2, '', 100, 4, 9, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 0, 1, 0),
(6, 4, 'website', 'vtiger_account', 1, '17', 'website', 'Website', 1, 2, '', 100, 3, 9, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 0, 1, 0),
(6, 5, 'fax', 'vtiger_account', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 6, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 6, 'tickersymbol', 'vtiger_account', 1, '1', 'tickersymbol', 'Ticker Symbol', 1, 2, '', 100, 5, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 7, 'otherphone', 'vtiger_account', 1, '11', 'otherphone', 'Other Phone', 1, 2, '', 100, 8, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 8, 'parentid', 'vtiger_account', 1, '51', 'account_id', 'Member Of', 1, 2, '', 100, 7, 9, 1, 'I~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 9, 'email1', 'vtiger_account', 1, '13', 'email1', 'Email', 1, 2, '', 100, 10, 9, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0, 1, 0),
(6, 10, 'employees', 'vtiger_account', 1, '7', 'employees', 'Employees', 1, 2, '', 100, 9, 9, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 11, 'email2', 'vtiger_account', 1, '13', 'email2', 'Other Email', 1, 2, '', 100, 11, 9, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 12, 'ownership', 'vtiger_account', 1, '1', 'ownership', 'Ownership', 1, 2, '', 100, 12, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 13, 'rating', 'vtiger_account', 1, '15', 'rating', 'Rating', 1, 2, '', 100, 14, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 14, 'industry', 'vtiger_account', 1, '15', 'industry', 'industry', 1, 2, '', 100, 13, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 15, 'siccode', 'vtiger_account', 1, '1', 'siccode', 'SIC Code', 1, 2, '', 100, 16, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 16, 'account_type', 'vtiger_account', 1, '15', 'accounttype', 'Type', 1, 2, '', 100, 15, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 17, 'annualrevenue', 'vtiger_account', 1, '71', 'annual_revenue', 'Annual Revenue', 1, 2, '', 100, 18, 9, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 18, 'emailoptout', 'vtiger_account', 1, '56', 'emailoptout', 'Email Opt Out', 1, 0, '', 100, 17, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 19, 'notify_owner', 'vtiger_account', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, '', 10, 20, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 20, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 19, 9, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1, 0, 0),
(6, 21, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 22, 9, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 22, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 21, 9, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 23, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 23, 9, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 24, 'bill_street', 'vtiger_accountbillads', 1, '21', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 25, 'ship_street', 'vtiger_accountshipads', 1, '21', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 26, 'bill_city', 'vtiger_accountbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(6, 27, 'ship_city', 'vtiger_accountshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 28, 'bill_state', 'vtiger_accountbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 29, 'ship_state', 'vtiger_accountshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 30, 'bill_code', 'vtiger_accountbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 31, 'ship_code', 'vtiger_accountshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 32, 'bill_country', 'vtiger_accountbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(6, 33, 'ship_country', 'vtiger_accountshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 34, 'bill_pobox', 'vtiger_accountbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 35, 'ship_pobox', 'vtiger_accountshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 36, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 12, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 37, 'salutation', 'vtiger_leaddetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, '', 100, 1, 13, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 38, 'firstname', 'vtiger_leaddetails', 1, '55', 'firstname', 'First Name', 1, 0, '', 100, 2, 13, 1, 'V~O', 2, 1, 'BAS', 1, NULL, 1, 0, 0),
(7, 39, 'lead_no', 'vtiger_leaddetails', 1, '4', 'lead_no', 'Lead No', 1, 0, '', 100, 3, 13, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 40, 'phone', 'vtiger_leadaddress', 1, '11', 'phone', 'Phone', 1, 2, '', 100, 5, 13, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 0, 1, 0),
(7, 41, 'lastname', 'vtiger_leaddetails', 1, '255', 'lastname', 'Last Name', 1, 0, '', 100, 4, 13, 1, 'V~M', 0, 2, 'BAS', 1, NULL, 1, 0, 0),
(7, 42, 'mobile', 'vtiger_leadaddress', 1, '11', 'mobile', 'Mobile', 1, 2, '', 100, 7, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 43, 'company', 'vtiger_leaddetails', 1, '2', 'company', 'Company', 1, 2, '', 100, 6, 13, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(7, 44, 'fax', 'vtiger_leadaddress', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 9, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 45, 'designation', 'vtiger_leaddetails', 1, '1', 'designation', 'Designation', 1, 2, '', 100, 8, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 46, 'email', 'vtiger_leaddetails', 1, '13', 'email', 'Email', 1, 2, '', 100, 11, 13, 1, 'E~O', 2, 5, 'BAS', 1, NULL, 0, 1, 0),
(7, 47, 'leadsource', 'vtiger_leaddetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 10, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(7, 48, 'website', 'vtiger_leadsubdetails', 1, '17', 'website', 'Website', 1, 2, '', 100, 13, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 1, 0, 0),
(7, 49, 'industry', 'vtiger_leaddetails', 1, '15', 'industry', 'Industry', 1, 2, '', 100, 12, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 50, 'leadstatus', 'vtiger_leaddetails', 1, '15', 'leadstatus', 'Lead Status', 1, 2, '', 100, 15, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 51, 'annualrevenue', 'vtiger_leaddetails', 1, '71', 'annualrevenue', 'Annual Revenue', 1, 2, '', 100, 14, 13, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 52, 'rating', 'vtiger_leaddetails', 1, '15', 'rating', 'Rating', 1, 2, '', 100, 17, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 53, 'noofemployees', 'vtiger_leaddetails', 1, '1', 'noofemployees', 'No Of Employees', 1, 2, '', 100, 16, 13, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 54, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 19, 13, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1, 0, 0),
(7, 55, 'secondaryemail', 'vtiger_leaddetails', 1, '13', 'secondaryemail', 'Secondary Email', 1, 2, '', 100, 18, 13, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 56, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 21, 13, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 57, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 20, 13, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 58, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 23, 13, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 59, 'lane', 'vtiger_leadaddress', 1, '21', 'lane', 'Street', 1, 2, '', 100, 1, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 60, 'code', 'vtiger_leadaddress', 1, '1', 'code', 'Postal Code', 1, 2, '', 100, 3, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 61, 'city', 'vtiger_leadaddress', 1, '1', 'city', 'City', 1, 2, '', 100, 4, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(7, 62, 'country', 'vtiger_leadaddress', 1, '1', 'country', 'Country', 1, 2, '', 100, 5, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(7, 63, 'state', 'vtiger_leadaddress', 1, '1', 'state', 'State', 1, 2, '', 100, 6, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 64, 'pobox', 'vtiger_leadaddress', 1, '1', 'pobox', 'Po Box', 1, 2, '', 100, 2, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 65, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 16, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 66, 'salutation', 'vtiger_contactdetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, '', 100, 1, 4, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 67, 'firstname', 'vtiger_contactdetails', 1, '55', 'firstname', 'First Name', 1, 0, '', 100, 2, 4, 1, 'V~O', 2, 1, 'BAS', 1, NULL, 1, 0, 0),
(4, 68, 'contact_no', 'vtiger_contactdetails', 1, '4', 'contact_no', 'Contact Id', 1, 0, '', 100, 3, 4, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(4, 69, 'phone', 'vtiger_contactdetails', 1, '11', 'phone', 'Office Phone', 1, 2, '', 100, 5, 4, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 0, 1, 0),
(4, 70, 'lastname', 'vtiger_contactdetails', 1, '255', 'lastname', 'Last Name', 1, 0, '', 100, 4, 4, 1, 'V~M', 0, 2, 'BAS', 1, NULL, 1, 0, 0),
(4, 71, 'mobile', 'vtiger_contactdetails', 1, '11', 'mobile', 'Mobile', 1, 2, '', 100, 7, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 72, 'accountid', 'vtiger_contactdetails', 1, '51', 'account_id', 'Account Name', 1, 0, '', 100, 6, 4, 1, 'I~O', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(4, 73, 'homephone', 'vtiger_contactsubdetails', 1, '11', 'homephone', 'Home Phone', 1, 2, '', 100, 9, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 74, 'leadsource', 'vtiger_contactsubdetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 8, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 75, 'otherphone', 'vtiger_contactsubdetails', 1, '11', 'otherphone', 'Other Phone', 1, 2, '', 100, 11, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 76, 'title', 'vtiger_contactdetails', 1, '1', 'title', 'Title', 1, 2, '', 100, 10, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(4, 77, 'fax', 'vtiger_contactdetails', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 13, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 78, 'department', 'vtiger_contactdetails', 1, '1', 'department', 'Department', 1, 2, '', 100, 12, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 79, 'birthday', 'vtiger_contactsubdetails', 1, '5', 'birthday', 'Birthdate', 1, 2, '', 100, 16, 4, 1, 'D~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 80, 'email', 'vtiger_contactdetails', 1, '13', 'email', 'Email', 1, 2, '', 100, 15, 4, 1, 'E~O', 2, 5, 'BAS', 1, NULL, 0, 1, 0),
(4, 81, 'reportsto', 'vtiger_contactdetails', 1, '57', 'contact_id', 'Reports To', 1, 2, '', 100, 18, 4, 1, 'V~O', 1, NULL, 'ADV', 0, NULL, 0, 0, 0),
(4, 82, 'assistant', 'vtiger_contactsubdetails', 1, '1', 'assistant', 'Assistant', 1, 2, '', 100, 17, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 83, 'secondaryemail', 'vtiger_contactdetails', 1, '13', 'secondaryemail', 'Secondary Email', 1, 2, '', 100, 20, 4, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 84, 'assistantphone', 'vtiger_contactsubdetails', 1, '11', 'assistantphone', 'Assistant Phone', 1, 2, '', 100, 19, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 85, 'donotcall', 'vtiger_contactdetails', 1, '56', 'donotcall', 'Do Not Call', 1, 2, '', 100, 22, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 86, 'emailoptout', 'vtiger_contactdetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 0, '', 100, 21, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 87, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 24, 4, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1, 0, 0),
(4, 88, 'reference', 'vtiger_contactdetails', 1, '56', 'reference', 'Reference', 1, 2, '', 10, 23, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 89, 'notify_owner', 'vtiger_contactdetails', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, '', 10, 26, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 90, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 25, 4, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(4, 91, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 27, 4, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(4, 92, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 28, 4, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(4, 93, 'portal', 'vtiger_customerdetails', 1, '56', 'portal', 'Portal User', 1, 2, '', 100, 1, 6, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 94, 'support_start_date', 'vtiger_customerdetails', 1, '5', 'support_start_date', 'Support Start Date', 1, 2, '', 100, 2, 6, 1, 'D~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 95, 'support_end_date', 'vtiger_customerdetails', 1, '5', 'support_end_date', 'Support End Date', 1, 2, '', 100, 3, 6, 1, 'D~O~OTH~GE~support_start_date~Support Start Date', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 96, 'mailingstreet', 'vtiger_contactaddress', 1, '21', 'mailingstreet', 'Mailing Street', 1, 2, '', 100, 1, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 97, 'otherstreet', 'vtiger_contactaddress', 1, '21', 'otherstreet', 'Other Street', 1, 2, '', 100, 2, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 98, 'mailingcity', 'vtiger_contactaddress', 1, '1', 'mailingcity', 'Mailing City', 1, 2, '', 100, 5, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(4, 99, 'othercity', 'vtiger_contactaddress', 1, '1', 'othercity', 'Other City', 1, 2, '', 100, 6, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 100, 'mailingstate', 'vtiger_contactaddress', 1, '1', 'mailingstate', 'Mailing State', 1, 2, '', 100, 7, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 101, 'otherstate', 'vtiger_contactaddress', 1, '1', 'otherstate', 'Other State', 1, 2, '', 100, 8, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 102, 'mailingzip', 'vtiger_contactaddress', 1, '1', 'mailingzip', 'Mailing Zip', 1, 2, '', 100, 9, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 103, 'otherzip', 'vtiger_contactaddress', 1, '1', 'otherzip', 'Other Zip', 1, 2, '', 100, 10, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 104, 'mailingcountry', 'vtiger_contactaddress', 1, '1', 'mailingcountry', 'Mailing Country', 1, 2, '', 100, 11, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(4, 105, 'othercountry', 'vtiger_contactaddress', 1, '1', 'othercountry', 'Other Country', 1, 2, '', 100, 12, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 106, 'mailingpobox', 'vtiger_contactaddress', 1, '1', 'mailingpobox', 'Mailing Po Box', 1, 2, '', 100, 3, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 107, 'otherpobox', 'vtiger_contactaddress', 1, '1', 'otherpobox', 'Other Po Box', 1, 2, '', 100, 4, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 108, 'imagename', 'vtiger_contactdetails', 1, '69', 'imagename', 'Contact Image', 1, 2, '', 100, 1, 73, 1, 'V~O', 3, NULL, 'ADV', 0, NULL, 0, 0, 0),
(4, 109, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 8, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 110, 'potentialname', 'vtiger_potential', 1, '2', 'potentialname', 'Potential Name', 1, 0, '', 100, 1, 1, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(2, 111, 'potential_no', 'vtiger_potential', 1, '4', 'potential_no', 'Potential No', 1, 0, '', 100, 2, 1, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(2, 112, 'amount', 'vtiger_potential', 1, '71', 'amount', 'Amount', 1, 2, '', 100, 5, 1, 1, 'N~O', 2, 5, 'BAS', 1, NULL, 0, 1, 0),
(2, 113, 'related_to', 'vtiger_potential', 1, '10', 'related_to', 'Related To', 1, 0, '', 100, 3, 1, 1, 'V~O', 0, 2, 'BAS', 1, NULL, 0, 1, 0),
(2, 114, 'closingdate', 'vtiger_potential', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, '', 100, 8, 1, 1, 'D~M', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(2, 115, 'potentialtype', 'vtiger_potential', 1, '15', 'opportunity_type', 'Type', 1, 2, '', 100, 7, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 116, 'nextstep', 'vtiger_potential', 1, '1', 'nextstep', 'Next Step', 1, 2, '', 100, 10, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 117, 'leadsource', 'vtiger_potential', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 9, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 118, 'sales_stage', 'vtiger_potential', 1, '15', 'sales_stage', 'Sales Stage', 1, 2, '', 100, 12, 1, 1, 'V~M', 2, 4, 'BAS', 1, NULL, 0, 1, 0),
(2, 119, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 11, 1, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1, 0, 0),
(2, 120, 'probability', 'vtiger_potential', 1, '9', 'probability', 'Probability', 1, 2, '', 100, 14, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 121, 'campaignid', 'vtiger_potential', 1, '58', 'campaignid', 'Campaign Source', 1, 2, '', 100, 13, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 122, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 16, 1, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(2, 123, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 1, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(2, 124, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 1, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(2, 125, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 3, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 126, 'campaignname', 'vtiger_campaign', 1, '2', 'campaignname', 'Campaign Name', 1, 0, '', 100, 1, 74, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(26, 127, 'campaign_no', 'vtiger_campaign', 1, '4', 'campaign_no', 'Campaign No', 1, 0, '', 100, 2, 74, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 128, 'campaigntype', 'vtiger_campaign', 1, '15', 'campaigntype', 'Campaign Type', 1, 2, '', 100, 5, 74, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(26, 129, 'product_id', 'vtiger_campaign', 1, '59', 'product_id', 'Product', 1, 2, '', 100, 6, 74, 1, 'I~O', 2, 5, 'BAS', 1, NULL, 0, 0, 0),
(26, 130, 'campaignstatus', 'vtiger_campaign', 1, '15', 'campaignstatus', 'Campaign Status', 1, 2, '', 100, 4, 74, 1, 'V~O', 2, 6, 'BAS', 1, NULL, 1, 0, 0),
(26, 131, 'closingdate', 'vtiger_campaign', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, '', 100, 8, 74, 1, 'D~M', 2, 2, 'BAS', 1, NULL, 1, 0, 0),
(26, 132, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 3, 74, 1, 'V~M', 0, 7, 'BAS', 1, NULL, 1, 0, 0),
(26, 133, 'numsent', 'vtiger_campaign', 1, '9', 'numsent', 'Num Sent', 1, 2, '', 100, 12, 74, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 134, 'sponsor', 'vtiger_campaign', 1, '1', 'sponsor', 'Sponsor', 1, 2, '', 100, 9, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 135, 'targetaudience', 'vtiger_campaign', 1, '1', 'targetaudience', 'Target Audience', 1, 2, '', 100, 7, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 136, 'targetsize', 'vtiger_campaign', 1, '1', 'targetsize', 'TargetSize', 1, 2, '', 100, 10, 74, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 137, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 11, 74, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 138, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 13, 74, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 139, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 74, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 140, 'expectedresponse', 'vtiger_campaign', 1, '15', 'expectedresponse', 'Expected Response', 1, 2, '', 100, 3, 76, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 0, 0, 0),
(26, 141, 'expectedrevenue', 'vtiger_campaign', 1, '71', 'expectedrevenue', 'Expected Revenue', 1, 2, '', 100, 4, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(26, 142, 'budgetcost', 'vtiger_campaign', 1, '71', 'budgetcost', 'Budget Cost', 1, 2, '', 100, 1, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 143, 'actualcost', 'vtiger_campaign', 1, '71', 'actualcost', 'Actual Cost', 1, 2, '', 100, 2, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 144, 'expectedresponsecount', 'vtiger_campaign', 1, '1', 'expectedresponsecount', 'Expected Response Count', 1, 2, '', 100, 7, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 145, 'expectedsalescount', 'vtiger_campaign', 1, '1', 'expectedsalescount', 'Expected Sales Count', 1, 2, '', 100, 5, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 146, 'expectedroi', 'vtiger_campaign', 1, '71', 'expectedroi', 'Expected ROI', 1, 2, '', 100, 9, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 147, 'actualresponsecount', 'vtiger_campaign', 1, '1', 'actualresponsecount', 'Actual Response Count', 1, 2, '', 100, 8, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 148, 'actualsalescount', 'vtiger_campaign', 1, '1', 'actualsalescount', 'Actual Sales Count', 1, 2, '', 100, 6, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 149, 'actualroi', 'vtiger_campaign', 1, '71', 'actualroi', 'Actual ROI', 1, 2, '', 100, 10, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 150, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 81, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 151, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 152, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 153, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 154, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 155, 'ticket_no', 'vtiger_troubletickets', 1, '4', 'ticket_no', 'Ticket No', 1, 0, '', 100, 14, 25, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(13, 156, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 5, 25, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1, 0, 0),
(13, 157, 'parent_id', 'vtiger_troubletickets', 1, '10', 'parent_id', 'Related To', 1, 0, '', 100, 2, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(13, 158, 'priority', 'vtiger_troubletickets', 1, '15', 'ticketpriorities', 'Priority', 1, 2, '', 100, 7, 25, 1, 'V~M', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(13, 159, 'product_id', 'vtiger_troubletickets', 1, '59', 'product_id', 'Product Name', 1, 2, '', 100, 6, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(13, 160, 'severity', 'vtiger_troubletickets', 1, '15', 'ticketseverities', 'Severity', 1, 2, '', 100, 9, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(13, 161, 'status', 'vtiger_troubletickets', 1, '15', 'ticketstatus', 'Status', 1, 2, '', 100, 8, 25, 1, 'V~M', 1, 2, 'BAS', 1, NULL, 1, 0, 0),
(13, 162, 'category', 'vtiger_troubletickets', 1, '15', 'ticketcategories', 'Category', 1, 2, '', 100, 11, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(13, 163, 'update_log', 'vtiger_troubletickets', 1, '19', 'update_log', 'Update History', 1, 1, '', 100, 12, 25, 3, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 164, 'hours', 'vtiger_troubletickets', 1, '1', 'hours', 'Hours', 1, 2, '', 100, 10, 25, 1, 'N~O', 1, NULL, 'BAS', 1, 'This gives the estimated hours for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.', 0, 0, 0),
(13, 165, 'days', 'vtiger_troubletickets', 1, '1', 'days', 'Days', 1, 2, '', 100, 11, 25, 1, 'N~O', 1, NULL, 'BAS', 1, 'This gives the estimated days for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.', 0, 0, 0),
(13, 166, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 10, 25, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 167, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 13, 25, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 168, 'from_portal', 'vtiger_ticketcf', 1, '56', 'from_portal', 'From Portal', 1, 0, '', 100, 14, 25, 3, 'C~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 169, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 25, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 170, 'title', 'vtiger_troubletickets', 1, '22', 'ticket_title', 'Title', 1, 0, '', 100, 1, 25, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(13, 171, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 28, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 1, 0, 0),
(13, 172, 'solution', 'vtiger_troubletickets', 1, '19', 'solution', 'Solution', 1, 0, '', 100, 1, 29, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 173, 'comments', 'vtiger_ticketcomments', 1, '19', 'comments', 'Add Comment', 1, 1, '', 100, 1, 30, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(14, 174, 'productname', 'vtiger_products', 1, '2', 'productname', 'Product Name', 1, 0, '', 100, 1, 31, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(14, 175, 'product_no', 'vtiger_products', 1, '4', 'product_no', 'Product No', 1, 0, '', 100, 2, 31, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 1, 0),
(14, 176, 'productcode', 'vtiger_products', 1, '1', 'productcode', 'Part Number', 1, 1, '', 100, 4, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(14, 177, 'discontinued', 'vtiger_products', 1, '56', 'discontinued', 'Product Active', 1, 2, '1', 100, 3, 31, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 0, 1, 0),
(14, 178, 'manufacturer', 'vtiger_products', 1, '15', 'manufacturer', 'Manufacturer', 1, 2, '', 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 179, 'productcategory', 'vtiger_products', 1, '15', 'productcategory', 'Product Category', 1, 2, '', 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 1, 0),
(14, 180, 'sales_start_date', 'vtiger_products', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 1, '', 100, 5, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 181, 'sales_end_date', 'vtiger_products', 1, '5', 'sales_end_date', 'Sales End Date', 1, 1, '', 100, 8, 31, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 182, 'start_date', 'vtiger_products', 1, '5', 'start_date', 'Support Start Date', 1, 1, '', 100, 7, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 183, 'expiry_date', 'vtiger_products', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 1, '', 100, 10, 31, 1, 'D~O~OTH~GE~start_date~Start Date', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 184, 'website', 'vtiger_products', 1, '17', 'website', 'Website', 1, 1, '', 100, 14, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 185, 'vendor_id', 'vtiger_products', 1, '75', 'vendor_id', 'Vendor Name', 1, 1, '', 100, 13, 31, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 186, 'mfr_part_no', 'vtiger_products', 1, '1', 'mfr_part_no', 'Mfr PartNo', 1, 1, '', 100, 16, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 187, 'vendor_part_no', 'vtiger_products', 1, '1', 'vendor_part_no', 'Vendor PartNo', 1, 1, '', 100, 15, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 188, 'serialno', 'vtiger_products', 1, '1', 'serial_no', 'Serial No', 1, 2, '', 100, 18, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 189, 'productsheet', 'vtiger_products', 1, '1', 'productsheet', 'Product Sheet', 1, 1, '', 100, 17, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 190, 'glacct', 'vtiger_products', 1, '15', 'glacct', 'GL Account', 1, 1, '', 100, 20, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 191, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 19, 31, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(14, 192, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 21, 31, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(14, 193, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 31, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(14, 194, 'unit_price', 'vtiger_products', 1, '72', 'unit_price', 'Unit Price', 1, 0, '', 100, 1, 32, 1, 'N~O', 2, 3, 'BAS', 0, NULL, 1, 0, 0),
(14, 195, 'commissionrate', 'vtiger_products', 1, '9', 'commissionrate', 'Commission Rate', 1, 1, '', 100, 2, 32, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(14, 196, 'taxclass', 'vtiger_products', 1, '83', 'taxclass', 'Taxes', 1, 2, '', 100, 4, 32, 1, 'V~O', 2, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 197, 'usageunit', 'vtiger_products', 1, '15', 'usageunit', 'Usage Unit', 1, 2, '', 100, 1, 33, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(14, 198, 'qty_per_unit', 'vtiger_products', 1, '1', 'qty_per_unit', 'Qty/Unit', 1, 2, '', 100, 2, 33, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 1, 0, 0),
(14, 199, 'qtyinstock', 'vtiger_products', 1, '1', 'qtyinstock', 'Qty In Stock', 1, 2, '', 100, 3, 33, 1, 'NN~O', 0, 4, 'ADV', 1, NULL, 0, 1, 0),
(14, 200, 'reorderlevel', 'vtiger_products', 1, '1', 'reorderlevel', 'Reorder Level', 1, 1, '', 100, 4, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(14, 201, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Handler', 1, 0, '', 100, 5, 33, 1, 'V~M', 0, 5, 'BAS', 1, NULL, 0, 0, 0),
(14, 202, 'qtyindemand', 'vtiger_products', 1, '1', 'qtyindemand', 'Qty In Demand', 1, 1, '', 100, 6, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(14, 203, 'imagename', 'vtiger_products', 1, '69', 'imagename', 'Product Image', 1, 2, '', 100, 1, 35, 1, 'V~O', 3, NULL, 'ADV', 0, NULL, 0, 0, 0),
(14, 204, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 36, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(8, 205, 'title', 'vtiger_notes', 1, '2', 'notes_title', 'Title', 1, 0, '', 100, 1, 17, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(8, 206, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 17, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 207, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 17, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(8, 208, 'filename', 'vtiger_notes', 1, '28', 'filename', 'File Name', 1, 2, '', 100, 3, 18, 1, 'V~O', 0, NULL, 'BAS', 0, NULL, 1, 0, 0),
(8, 209, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 4, 17, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 1, 0, 0),
(8, 210, 'notecontent', 'vtiger_notes', 1, '19', 'notecontent', 'Note', 1, 2, '', 100, 1, 84, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 211, 'filetype', 'vtiger_notes', 1, '1', 'filetype', 'File Type', 1, 2, NULL, 100, 5, 18, 2, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 212, 'filesize', 'vtiger_notes', 1, '1', 'filesize', 'File Size', 1, 2, NULL, 100, 4, 18, 2, 'I~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 213, 'filelocationtype', 'vtiger_notes', 1, '27', 'filelocationtype', 'Download Type', 1, 0, NULL, 100, 1, 18, 1, 'V~O', 0, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 214, 'fileversion', 'vtiger_notes', 1, '1', 'fileversion', 'Version', 1, 2, NULL, 100, 6, 18, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(8, 215, 'filestatus', 'vtiger_notes', 1, '56', 'filestatus', 'Active', 1, 2, '1', 100, 2, 18, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(8, 216, 'filedownloadcount', 'vtiger_notes', 1, '1', 'filedownloadcount', 'Download Count', 1, 2, NULL, 100, 7, 18, 2, 'I~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 217, 'folderid', 'vtiger_notes', 1, '26', 'folderid', 'Folder Name', 1, 2, '', 100, 2, 17, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 1, 0, 0),
(8, 218, 'note_no', 'vtiger_notes', 1, '4', 'note_no', 'Document No', 1, 0, '', 100, 3, 17, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 219, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 17, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 220, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Date & Time Sent', 1, 0, '', 100, 1, 21, 1, 'DT~M~time_start~Time Start', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 221, 'semodule', 'vtiger_activity', 1, '2', 'parent_type', 'Sales Enity Module', 1, 0, '', 100, 2, 21, 3, '', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 222, 'activitytype', 'vtiger_activity', 1, '2', 'activitytype', 'Activtiy Type', 1, 0, '', 100, 3, 21, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 223, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 5, 21, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 224, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 23, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 225, 'name', 'vtiger_attachments', 1, '61', 'filename', 'Attachment', 1, 0, '', 100, 2, 23, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 226, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 24, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 227, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 9, 23, 1, 'T~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 228, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 10, 22, 1, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 229, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 11, 21, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 230, 'access_count', 'vtiger_email_track', 1, '25', 'access_count', 'Access Count', 1, 0, '0', 100, 6, 21, 3, 'I~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 231, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 21, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(9, 232, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 19, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(9, 233, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 19, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1, 0, 0),
(9, 234, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, '', 100, 3, 19, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL, 1, 0, 0),
(9, 235, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 4, 19, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 236, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, '', 100, 4, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 237, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'Due Date', 1, 0, '', 100, 5, 19, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 238, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, '', 100, 7, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 239, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, '', 100, 8, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 240, 'status', 'vtiger_activity', 1, '15', 'taskstatus', 'Status', 1, 0, '', 100, 8, 19, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 0, 0, 0),
(9, 241, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, '', 100, 9, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 242, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, '', 100, 10, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 243, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, '', 100, 11, 19, 1, 'C~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 244, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 19, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(9, 245, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 19, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(9, 246, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, '', 100, 16, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 247, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, '', 100, 17, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 248, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 20, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 249, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, '', 100, 17, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 250, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, '', 100, 18, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 251, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, '', 100, 19, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 252, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, '', 100, 1, 120, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 253, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, '', 100, 6, 19, 3, 'O~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 254, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, '', 100, 20, 19, 3, 'C~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 255, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 19, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(16, 256, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 39, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(16, 257, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 39, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1, 0, 0),
(16, 258, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, '', 100, 3, 39, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL, 1, 0, 0),
(16, 259, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 4, 39, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(16, 260, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'End Date', 1, 0, '', 100, 5, 39, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 0, 5, 'BAS', 1, NULL, 1, 0, 0),
(16, 261, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, '', 100, 5, 39, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(16, 262, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, '', 100, 6, 117, 1, 'O~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(16, 263, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, '', 100, 7, 39, 3, 'I~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 264, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, '', 100, 8, 39, 3, 'O~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 265, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, '', 100, 9, 119, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(16, 266, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, '', 100, 10, 39, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 0, 0, 0),
(16, 267, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, '', 100, 11, 39, 1, 'C~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 268, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, '', 100, 12, 39, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1, 0, 0),
(16, 269, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, '', 100, 13, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 270, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 39, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(16, 271, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 39, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(16, 272, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, '', 100, 16, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 273, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, '', 100, 17, 39, 3, 'C~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 274, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, '', 100, 18, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 275, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 39, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(16, 276, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 41, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 277, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, '', 100, 1, 40, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 278, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, '', 100, 1, 119, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(15, 279, 'product_id', 'vtiger_faq', 1, '59', 'product_id', 'Product Name', 1, 2, '', 100, 1, 37, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(15, 280, 'faq_no', 'vtiger_faq', 1, '4', 'faq_no', 'Faq No', 1, 0, '', 100, 2, 37, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(15, 281, 'category', 'vtiger_faq', 1, '15', 'faqcategories', 'Category', 1, 2, '', 100, 4, 37, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(15, 282, 'status', 'vtiger_faq', 1, '15', 'faqstatus', 'Status', 1, 2, '', 100, 3, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(15, 283, 'question', 'vtiger_faq', 1, '20', 'question', 'Question', 1, 2, '', 100, 7, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(15, 284, 'answer', 'vtiger_faq', 1, '20', 'faq_answer', 'Answer', 1, 2, '', 100, 8, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(15, 285, 'comments', 'vtiger_faqcomments', 1, '19', 'comments', 'Add Comment', 1, 1, '', 100, 1, 38, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(15, 286, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 37, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(15, 287, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 37, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(15, 288, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 37, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 289, 'vendorname', 'vtiger_vendor', 1, '2', 'vendorname', 'Vendor Name', 1, 0, '', 100, 1, 42, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(18, 290, 'vendor_no', 'vtiger_vendor', 1, '4', 'vendor_no', 'Vendor No', 1, 0, '', 100, 2, 42, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 291, 'phone', 'vtiger_vendor', 1, '1', 'phone', 'Phone', 1, 2, '', 100, 4, 42, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 0, 1, 0),
(18, 292, 'email', 'vtiger_vendor', 1, '13', 'email', 'Email', 1, 2, '', 100, 3, 42, 1, 'E~O', 2, 3, 'BAS', 1, NULL, 0, 1, 0),
(18, 293, 'website', 'vtiger_vendor', 1, '17', 'website', 'Website', 1, 2, '', 100, 6, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 1, 0),
(18, 294, 'glacct', 'vtiger_vendor', 1, '15', 'glacct', 'GL Account', 1, 2, '', 100, 5, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(18, 295, 'category', 'vtiger_vendor', 1, '1', 'category', 'Category', 1, 2, '', 100, 8, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(18, 296, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 7, 42, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 297, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 9, 42, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 298, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 42, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 299, 'street', 'vtiger_vendor', 1, '21', 'street', 'Street', 1, 2, '', 100, 1, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 300, 'pobox', 'vtiger_vendor', 1, '1', 'pobox', 'Po Box', 1, 2, '', 100, 2, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 301, 'city', 'vtiger_vendor', 1, '1', 'city', 'City', 1, 2, '', 100, 3, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 302, 'state', 'vtiger_vendor', 1, '1', 'state', 'State', 1, 2, '', 100, 4, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 303, 'postalcode', 'vtiger_vendor', 1, '1', 'postalcode', 'Postal Code', 1, 2, '', 100, 5, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 304, 'country', 'vtiger_vendor', 1, '1', 'country', 'Country', 1, 2, '', 100, 6, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 305, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 45, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(19, 306, 'bookname', 'vtiger_pricebook', 1, '2', 'bookname', 'Price Book Name', 1, 0, '', 100, 1, 46, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(19, 307, 'pricebook_no', 'vtiger_pricebook', 1, '4', 'pricebook_no', 'PriceBook No', 1, 0, '', 100, 3, 46, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(19, 308, 'active', 'vtiger_pricebook', 1, '56', 'active', 'Active', 1, 2, '1', 100, 2, 46, 1, 'C~O', 2, 2, 'BAS', 1, NULL, 1, 0, 0),
(19, 309, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 4, 46, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(19, 310, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 5, 46, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(19, 311, 'currency_id', 'vtiger_pricebook', 1, '117', 'currency_id', 'Currency', 1, 0, '', 100, 5, 46, 1, 'I~M', 0, 3, 'BAS', 0, NULL, 0, 0, 0),
(19, 312, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 46, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(19, 313, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 48, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 314, 'quote_no', 'vtiger_quotes', 1, '4', 'quote_no', 'Quote No', 1, 0, '', 100, 3, 49, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(20, 315, 'subject', 'vtiger_quotes', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 49, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(20, 316, 'potentialid', 'vtiger_quotes', 1, '76', 'potential_id', 'Potential Name', 1, 2, '', 100, 2, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(20, 317, 'quotestage', 'vtiger_quotes', 1, '15', 'quotestage', 'Quote Stage', 1, 2, '', 100, 4, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(20, 318, 'validtill', 'vtiger_quotes', 1, '5', 'validtill', 'Valid Till', 1, 2, '', 100, 5, 49, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 319, 'contactid', 'vtiger_quotes', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(20, 320, 'carrier', 'vtiger_quotes', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 8, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 321, 'subtotal', 'vtiger_quotes', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 9, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 322, 'shipping', 'vtiger_quotes', 1, '1', 'shipping', 'Shipping', 1, 2, '', 100, 10, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 323, 'inventorymanager', 'vtiger_quotes', 1, '77', 'assigned_user_id1', 'Inventory Manager', 1, 2, '', 100, 11, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 324, 'adjustment', 'vtiger_quotes', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 20, 49, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 325, 'total', 'vtiger_quotes', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(20, 326, 'taxtype', 'vtiger_quotes', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 14, 49, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 327, 'discount_percent', 'vtiger_quotes', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 14, 116, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 328, 'discount_amount', 'vtiger_quotes', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 2, '', 100, 14, 116, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 329, 's_h_amount', 'vtiger_quotes', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 330, 'accountid', 'vtiger_quotes', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 16, 49, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(20, 331, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 17, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(20, 332, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 18, 49, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(20, 333, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 19, 49, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(20, 334, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 49, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`, `headerfield`, `isunique`) VALUES
(20, 335, 'currency_id', 'vtiger_quotes', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 20, 49, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 336, 'conversion_rate', 'vtiger_quotes', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 21, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 337, 'bill_street', 'vtiger_quotesbillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 338, 'ship_street', 'vtiger_quotesshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 339, 'bill_city', 'vtiger_quotesbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 340, 'ship_city', 'vtiger_quotesshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 341, 'bill_state', 'vtiger_quotesbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 342, 'ship_state', 'vtiger_quotesshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 343, 'bill_code', 'vtiger_quotesbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 344, 'ship_code', 'vtiger_quotesshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 345, 'bill_country', 'vtiger_quotesbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 346, 'ship_country', 'vtiger_quotesshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 347, 'bill_pobox', 'vtiger_quotesbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 348, 'ship_pobox', 'vtiger_quotesshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 349, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 54, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(20, 350, 'terms_conditions', 'vtiger_quotes', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 53, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(21, 351, 'purchaseorder_no', 'vtiger_purchaseorder', 1, '4', 'purchaseorder_no', 'PurchaseOrder No', 1, 0, '', 100, 2, 55, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(21, 352, 'subject', 'vtiger_purchaseorder', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(21, 353, 'vendorid', 'vtiger_purchaseorder', 1, '81', 'vendor_id', 'Vendor Name', 1, 0, '', 100, 3, 55, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(21, 354, 'requisition_no', 'vtiger_purchaseorder', 1, '1', 'requisition_no', 'Requisition No', 1, 1, '', 100, 4, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 355, 'tracking_no', 'vtiger_purchaseorder', 1, '1', 'tracking_no', 'Tracking Number', 1, 1, '', 100, 5, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(21, 356, 'contactid', 'vtiger_purchaseorder', 1, '57', 'contact_id', 'Contact Name', 1, 1, '', 100, 6, 55, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(21, 357, 'duedate', 'vtiger_purchaseorder', 1, '5', 'duedate', 'Due Date', 1, 1, '', 100, 7, 55, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 358, 'carrier', 'vtiger_purchaseorder', 1, '15', 'carrier', 'Carrier', 1, 1, '', 100, 8, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 359, 'adjustment', 'vtiger_purchaseorder', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 10, 55, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 360, 'salescommission', 'vtiger_purchaseorder', 1, '1', 'salescommission', 'Sales Commission', 1, 1, '', 100, 11, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 361, 'exciseduty', 'vtiger_purchaseorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 1, '', 100, 12, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 362, 'total', 'vtiger_purchaseorder', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 13, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(21, 363, 'subtotal', 'vtiger_purchaseorder', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 364, 'taxtype', 'vtiger_purchaseorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 14, 55, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 365, 'discount_percent', 'vtiger_purchaseorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 1, '', 100, 14, 115, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 366, 'discount_amount', 'vtiger_purchaseorder', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 1, '', 100, 14, 115, 5, 'N~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 367, 's_h_amount', 'vtiger_purchaseorder', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 368, 'postatus', 'vtiger_purchaseorder', 1, '15', 'postatus', 'Status', 1, 2, '', 100, 15, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(21, 369, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 16, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(21, 370, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 55, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(21, 371, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 55, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(21, 372, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 55, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(21, 373, 'currency_id', 'vtiger_purchaseorder', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 19, 55, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 374, 'conversion_rate', 'vtiger_purchaseorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 20, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 375, 'bill_street', 'vtiger_pobillads', 1, '24', 'bill_street', 'Billing Address', 1, 1, '', 100, 1, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 376, 'ship_street', 'vtiger_poshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 1, '', 100, 2, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 377, 'bill_city', 'vtiger_pobillads', 1, '1', 'bill_city', 'Billing City', 1, 1, '', 100, 5, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 378, 'ship_city', 'vtiger_poshipads', 1, '1', 'ship_city', 'Shipping City', 1, 1, '', 100, 6, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 379, 'bill_state', 'vtiger_pobillads', 1, '1', 'bill_state', 'Billing State', 1, 1, '', 100, 7, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 380, 'ship_state', 'vtiger_poshipads', 1, '1', 'ship_state', 'Shipping State', 1, 1, '', 100, 8, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 381, 'bill_code', 'vtiger_pobillads', 1, '1', 'bill_code', 'Billing Code', 1, 1, '', 100, 9, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 382, 'ship_code', 'vtiger_poshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 1, '', 100, 10, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 383, 'bill_country', 'vtiger_pobillads', 1, '1', 'bill_country', 'Billing Country', 1, 1, '', 100, 11, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 384, 'ship_country', 'vtiger_poshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 1, '', 100, 12, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 385, 'bill_pobox', 'vtiger_pobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 1, '', 100, 3, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 386, 'ship_pobox', 'vtiger_poshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 1, '', 100, 4, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 387, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 60, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(21, 388, 'terms_conditions', 'vtiger_purchaseorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 1, '', 100, 1, 59, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(22, 389, 'salesorder_no', 'vtiger_salesorder', 1, '4', 'salesorder_no', 'SalesOrder No', 1, 0, '', 100, 4, 61, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(22, 390, 'subject', 'vtiger_salesorder', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(22, 391, 'potentialid', 'vtiger_salesorder', 1, '76', 'potential_id', 'Potential Name', 1, 1, '', 100, 2, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 392, 'customerno', 'vtiger_salesorder', 1, '1', 'customerno', 'Customer No', 1, 2, '', 100, 3, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 393, 'quoteid', 'vtiger_salesorder', 1, '78', 'quote_id', 'Quote Name', 1, 1, '', 100, 5, 61, 1, 'I~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(22, 394, 'purchaseorder', 'vtiger_salesorder', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 1, '', 100, 5, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 395, 'contactid', 'vtiger_salesorder', 1, '57', 'contact_id', 'Contact Name', 1, 1, '', 100, 6, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(22, 396, 'duedate', 'vtiger_salesorder', 1, '5', 'duedate', 'Due Date', 1, 1, '', 100, 8, 61, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 397, 'carrier', 'vtiger_salesorder', 1, '15', 'carrier', 'Carrier', 1, 1, '', 100, 9, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 398, 'pending', 'vtiger_salesorder', 1, '1', 'pending', 'Pending', 1, 1, '', 100, 10, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 399, 'sostatus', 'vtiger_salesorder', 1, '15', 'sostatus', 'Status', 1, 2, '', 100, 11, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(22, 400, 'adjustment', 'vtiger_salesorder', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 12, 61, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 401, 'salescommission', 'vtiger_salesorder', 1, '1', 'salescommission', 'Sales Commission', 1, 1, '', 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 402, 'exciseduty', 'vtiger_salesorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 1, '', 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 403, 'total', 'vtiger_salesorder', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 14, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(22, 404, 'subtotal', 'vtiger_salesorder', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 405, 'taxtype', 'vtiger_salesorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 15, 61, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 406, 'discount_percent', 'vtiger_salesorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 1, '', 100, 15, 114, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 407, 'discount_amount', 'vtiger_salesorder', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 1, '', 100, 15, 114, 5, 'N~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 408, 's_h_amount', 'vtiger_salesorder', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 409, 'accountid', 'vtiger_salesorder', 1, '73', 'account_id', 'Account Name', 1, 1, '', 100, 16, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(22, 410, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 17, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(22, 411, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 18, 61, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 412, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 19, 61, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 413, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 61, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 414, 'currency_id', 'vtiger_salesorder', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 20, 61, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 415, 'conversion_rate', 'vtiger_salesorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 21, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 416, 'bill_street', 'vtiger_sobillads', 1, '24', 'bill_street', 'Billing Address', 1, 1, '', 100, 1, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 417, 'ship_street', 'vtiger_soshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 1, '', 100, 2, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 418, 'bill_city', 'vtiger_sobillads', 1, '1', 'bill_city', 'Billing City', 1, 1, '', 100, 5, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 419, 'ship_city', 'vtiger_soshipads', 1, '1', 'ship_city', 'Shipping City', 1, 1, '', 100, 6, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 420, 'bill_state', 'vtiger_sobillads', 1, '1', 'bill_state', 'Billing State', 1, 1, '', 100, 7, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 421, 'ship_state', 'vtiger_soshipads', 1, '1', 'ship_state', 'Shipping State', 1, 1, '', 100, 8, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 422, 'bill_code', 'vtiger_sobillads', 1, '1', 'bill_code', 'Billing Code', 1, 1, '', 100, 9, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 423, 'ship_code', 'vtiger_soshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 1, '', 100, 10, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 424, 'bill_country', 'vtiger_sobillads', 1, '1', 'bill_country', 'Billing Country', 1, 1, '', 100, 11, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 425, 'ship_country', 'vtiger_soshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 1, '', 100, 12, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 426, 'bill_pobox', 'vtiger_sobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 1, '', 100, 3, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 427, 'ship_pobox', 'vtiger_soshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 1, '', 100, 4, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 428, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 66, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(22, 429, 'terms_conditions', 'vtiger_salesorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 1, '', 100, 1, 65, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(22, 430, 'enable_recurring', 'vtiger_salesorder', 1, '56', 'enable_recurring', 'Enable Recurring', 1, 1, '0', 100, 1, 85, 1, 'C~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 431, 'recurring_frequency', 'vtiger_invoice_recurring_info', 1, '16', 'recurring_frequency', 'Frequency', 1, 1, '', 100, 2, 85, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 432, 'start_period', 'vtiger_invoice_recurring_info', 1, '5', 'start_period', 'Start Period', 1, 1, '', 100, 3, 85, 1, 'D~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 433, 'end_period', 'vtiger_invoice_recurring_info', 1, '5', 'end_period', 'End Period', 1, 1, '', 100, 4, 85, 1, 'D~M~OTH~G~start_period~Start Period', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 434, 'payment_duration', 'vtiger_invoice_recurring_info', 1, '16', 'payment_duration', 'Payment Duration', 1, 1, '', 100, 5, 85, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 435, 'invoice_status', 'vtiger_invoice_recurring_info', 1, '15', 'invoicestatus', 'Invoice Status', 1, 1, '', 100, 6, 85, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(23, 436, 'subject', 'vtiger_invoice', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(23, 437, 'salesorderid', 'vtiger_invoice', 1, '80', 'salesorder_id', 'Sales Order', 1, 2, '', 100, 2, 67, 1, 'I~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(23, 438, 'customerno', 'vtiger_invoice', 1, '1', 'customerno', 'Customer No', 1, 2, '', 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 439, 'contactid', 'vtiger_invoice', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 4, 67, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(23, 440, 'invoicedate', 'vtiger_invoice', 1, '5', 'invoicedate', 'Invoice Date', 1, 2, '', 100, 5, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 441, 'duedate', 'vtiger_invoice', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 6, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 442, 'purchaseorder', 'vtiger_invoice', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, '', 100, 8, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 443, 'adjustment', 'vtiger_invoice', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 9, 67, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 444, 'salescommission', 'vtiger_invoice', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 10, 13, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 445, 'exciseduty', 'vtiger_invoice', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 11, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 446, 'subtotal', 'vtiger_invoice', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 12, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 447, 'total', 'vtiger_invoice', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(23, 448, 'taxtype', 'vtiger_invoice', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 13, 67, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 449, 'discount_percent', 'vtiger_invoice', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 13, 113, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 450, 'discount_amount', 'vtiger_invoice', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 2, '', 100, 13, 113, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 451, 's_h_amount', 'vtiger_invoice', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 69, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 452, 'accountid', 'vtiger_invoice', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 14, 67, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(23, 453, 'invoicestatus', 'vtiger_invoice', 1, '15', 'invoicestatus', 'Status', 1, 2, '', 100, 15, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(23, 454, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 16, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(23, 455, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 67, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(23, 456, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 67, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(23, 457, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 67, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(23, 458, 'currency_id', 'vtiger_invoice', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 19, 67, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 459, 'conversion_rate', 'vtiger_invoice', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 20, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 460, 'bill_street', 'vtiger_invoicebillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 461, 'ship_street', 'vtiger_invoiceshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 462, 'bill_city', 'vtiger_invoicebillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 463, 'ship_city', 'vtiger_invoiceshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 464, 'bill_state', 'vtiger_invoicebillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 465, 'ship_state', 'vtiger_invoiceshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 466, 'bill_code', 'vtiger_invoicebillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 467, 'ship_code', 'vtiger_invoiceshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 468, 'bill_country', 'vtiger_invoicebillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 469, 'ship_country', 'vtiger_invoiceshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 470, 'bill_pobox', 'vtiger_invoicebillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 471, 'ship_pobox', 'vtiger_invoiceshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 472, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 72, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(23, 473, 'terms_conditions', 'vtiger_invoice', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 71, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(23, 474, 'invoice_no', 'vtiger_invoice', 1, '4', 'invoice_no', 'Invoice No', 1, 0, '', 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(29, 475, 'user_name', 'vtiger_users', 1, '106', 'user_name', 'User Name', 1, 0, '', 11, 1, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 476, 'is_admin', 'vtiger_users', 1, '156', 'is_admin', 'Admin', 1, 0, '', 3, 7, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 477, 'user_password', 'vtiger_users', 1, '99', 'user_password', 'Password', 1, 0, '', 30, 5, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 478, 'confirm_password', 'vtiger_users', 1, '99', 'confirm_password', 'Confirm Password', 1, 0, '', 30, 6, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 479, 'first_name', 'vtiger_users', 1, '1', 'first_name', 'First Name', 1, 0, '', 30, 3, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 480, 'last_name', 'vtiger_users', 1, '2', 'last_name', 'Last Name', 1, 0, '', 30, 4, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 481, 'roleid', 'vtiger_user2role', 1, '98', 'roleid', 'Role', 1, 0, '', 200, 8, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 482, 'email1', 'vtiger_users', 1, '104', 'email1', 'Email', 1, 0, '', 100, 2, 77, 1, 'E~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 483, 'status', 'vtiger_users', 1, '115', 'status', 'Status', 1, 0, 'Active', 100, 10, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 484, 'activity_view', 'vtiger_users', 1, '16', 'activity_view', 'Default Activity View', 1, 0, '', 100, 6, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 485, 'lead_view', 'vtiger_users', 1, '16', 'lead_view', 'Default Lead View', 1, 0, '', 100, 9, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 486, 'hour_format', 'vtiger_users', 1, '16', 'hour_format', 'Calendar Hour Format', 1, 0, '12', 100, 4, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 487, 'end_hour', 'vtiger_users', 1, '116', 'end_hour', 'Day ends at', 1, 0, '', 100, 11, 77, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 488, 'start_hour', 'vtiger_users', 1, '16', 'start_hour', 'Day starts at', 1, 0, '', 100, 2, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 489, 'is_owner', 'vtiger_users', 1, '1', 'is_owner', 'Account Owner', 0, 2, '0', 100, 12, 77, 5, 'V~O', 0, 1, 'BAS', 0, NULL, 0, 0, 0),
(29, 490, 'title', 'vtiger_users', 1, '1', 'title', 'Title', 1, 0, '', 50, 1, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 491, 'phone_work', 'vtiger_users', 1, '11', 'phone_work', 'Office Phone', 1, 0, '', 50, 5, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 492, 'department', 'vtiger_users', 1, '1', 'department', 'Department', 1, 0, '', 50, 3, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 493, 'phone_mobile', 'vtiger_users', 1, '11', 'phone_mobile', 'Mobile', 1, 0, '', 50, 7, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 494, 'reports_to_id', 'vtiger_users', 1, '101', 'reports_to_id', 'Reports To', 1, 0, '', 50, 8, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 495, 'phone_other', 'vtiger_users', 1, '11', 'phone_other', 'Other Phone', 1, 0, '', 50, 11, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 496, 'email2', 'vtiger_users', 1, '13', 'email2', 'Other Email', 1, 0, '', 100, 4, 79, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 497, 'phone_fax', 'vtiger_users', 1, '11', 'phone_fax', 'Fax', 1, 0, '', 50, 2, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 498, 'secondaryemail', 'vtiger_users', 1, '13', 'secondaryemail', 'Secondary Email', 1, 0, '', 100, 6, 79, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 499, 'phone_home', 'vtiger_users', 1, '11', 'phone_home', 'Home Phone', 1, 0, '', 50, 9, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 500, 'date_format', 'vtiger_users', 1, '16', 'date_format', 'Date Format', 1, 0, '', 30, 3, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 501, 'signature', 'vtiger_users', 1, '21', 'signature', 'Signature', 1, 0, '', 250, 13, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 502, 'description', 'vtiger_users', 1, '21', 'description', 'Documents', 1, 0, '', 250, 14, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 503, 'address_street', 'vtiger_users', 1, '21', 'address_street', 'Street Address', 1, 0, '', 250, 1, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 504, 'address_city', 'vtiger_users', 1, '1', 'address_city', 'City', 1, 0, '', 100, 3, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 505, 'address_state', 'vtiger_users', 1, '1', 'address_state', 'State', 1, 0, '', 100, 5, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 506, 'address_postalcode', 'vtiger_users', 1, '1', 'address_postalcode', 'Postal Code', 1, 0, '', 100, 4, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 507, 'address_country', 'vtiger_users', 1, '1', 'address_country', 'Country', 1, 0, '', 100, 2, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 508, 'accesskey', 'vtiger_users', 1, '3', 'accesskey', 'Webservice Access Key', 1, 0, '', 100, 2, 83, 2, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 509, 'time_zone', 'vtiger_users', 1, '16', 'time_zone', 'Time Zone', 1, 0, '', 200, 5, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 510, 'currency_id', 'vtiger_users', 1, '117', 'currency_id', 'Currency', 1, 0, '', 100, 1, 78, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 511, 'currency_grouping_pattern', 'vtiger_users', 1, '16', 'currency_grouping_pattern', 'Digit Grouping Pattern', 1, 0, '', 100, 2, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Digit Grouping Pattern</b> <br/><br/>This pattern specifies the format in which the currency separator will be placed.', 0, 0, 0),
(29, 512, 'currency_decimal_separator', 'vtiger_users', 1, '16', 'currency_decimal_separator', 'Decimal Separator', 1, 0, '.', 2, 3, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Decimal Separator</b> <br/><br/>Decimal separator specifies the separator to be used to separate the fractional values from the whole number part. <br/><b>Eg:</b> <br/>. => 123.45 <br/>, => 123,45 <br/>\' => 123\'45 <br/>  => 123 45 <br/>$ => 123$45 <br/>', 0, 0, 0),
(29, 513, 'currency_grouping_separator', 'vtiger_users', 1, '16', 'currency_grouping_separator', 'Digit Grouping Separator', 1, 0, ',', 2, 4, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Grouping Separator</b> <br/><br/>Grouping separator specifies the separator to be used to group the whole number part into hundreds, thousands etc. <br/><b>Eg:</b> <br/>. => 123.456.789 <br/>, => 123,456,789 <br/>\' => 123\'456\'789 <br/>  => 123 456 789 <br/>$ => 123$456$789 <br/>', 0, 0, 0),
(29, 514, 'currency_symbol_placement', 'vtiger_users', 1, '16', 'currency_symbol_placement', 'Symbol Placement', 1, 0, '', 20, 5, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Symbol Placement</b> <br/><br/>Symbol Placement allows you to configure the position of the currency symbol with respect to the currency value.<br/><b>Eg:</b> <br/>$1.0 => $123,456,789.50 <br/>1.0$ => 123,456,789.50$ <br/>', 0, 0, 0),
(29, 515, 'imagename', 'vtiger_users', 1, '105', 'imagename', 'User Image', 1, 0, '', 250, 10, 82, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 516, 'internal_mailer', 'vtiger_users', 1, '56', 'internal_mailer', 'INTERNAL_MAIL_COMPOSER', 1, 0, '', 50, 15, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 517, 'theme', 'vtiger_users', 1, '31', 'theme', 'Theme', 1, 0, 'softed', 100, 16, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 518, 'language', 'vtiger_users', 1, '32', 'language', 'Language', 1, 0, 'en_us', 100, 17, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 519, 'reminder_interval', 'vtiger_users', 1, '16', 'reminder_interval', 'Reminder Interval', 1, 0, '', 100, 11, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 520, 'from_email', 'vtiger_emaildetails', 1, '12', 'from_email', 'From', 1, 2, '', 100, 1, 21, 3, 'V~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 521, 'to_email', 'vtiger_emaildetails', 1, '8', 'saved_toid', 'To', 1, 2, '', 100, 2, 21, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 522, 'cc_email', 'vtiger_emaildetails', 1, '8', 'ccmail', 'CC', 1, 2, '', 1000, 3, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 523, 'bcc_email', 'vtiger_emaildetails', 1, '8', 'bccmail', 'BCC', 1, 2, '', 1000, 4, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 524, 'idlists', 'vtiger_emaildetails', 1, '357', 'parent_id', 'Parent ID', 1, 2, '', 1000, 5, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 525, 'email_flag', 'vtiger_emaildetails', 1, '16', 'email_flag', 'Email Flag', 1, 2, '', 1000, 6, 21, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(34, 526, 'direction', 'vtiger_pbxmanager', 1, '1', 'direction', 'Direction', 1, 2, '', 100, 1, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 527, 'callstatus', 'vtiger_pbxmanager', 1, '1', 'callstatus', 'Call Status', 1, 2, '', 100, 2, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(34, 528, 'starttime', 'vtiger_pbxmanager', 1, '70', 'starttime', 'Start Time', 1, 2, '', 100, 7, 88, 1, 'DT~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(34, 529, 'endtime', 'vtiger_pbxmanager', 1, '70', 'endtime', 'End Time', 1, 2, '', 100, 8, 88, 1, 'DT~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 530, 'totalduration', 'vtiger_pbxmanager', 1, '7', 'totalduration', 'Total Duration', 1, 2, '', 100, 10, 88, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 531, 'billduration', 'vtiger_pbxmanager', 1, '7', 'billduration', 'Bill Duration', 1, 2, '', 100, 11, 88, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 532, 'recordingurl', 'vtiger_pbxmanager', 1, '17', 'recordingurl', 'Recording URL', 1, 2, '', 100, 9, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(34, 533, 'sourceuuid', 'vtiger_pbxmanager', 1, '1', 'sourceuuid', 'Source UUID', 1, 2, '', 100, 12, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 534, 'gateway', 'vtiger_pbxmanager', 1, '1', 'gateway', 'Gateway', 1, 2, '', 100, 13, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 535, 'customer', 'vtiger_pbxmanager', 1, '10', 'customer', 'Customer', 1, 2, '', 100, 3, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(34, 536, 'user', 'vtiger_pbxmanager', 1, '52', 'user', 'User', 1, 2, '', 100, 4, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(34, 537, 'customernumber', 'vtiger_pbxmanager', 1, '11', 'customernumber', 'Customer Number', 1, 2, '', 100, 5, 88, 1, 'V~M', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 538, 'customertype', 'vtiger_pbxmanager', 1, '1', 'customertype', 'Customer Type', 1, 2, '', 100, 6, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 539, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 14, 88, 1, 'V~M', 1, 0, 'BAS', 1, '', 0, 0, 0),
(34, 540, 'createdtime', 'vtiger_crmentity', 1, '70', 'CreatedTime', 'Created Time', 1, 2, '', 100, 15, 88, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(34, 541, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'ModifiedTime', 'Modified Time', 1, 2, '', 100, 16, 88, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(34, 542, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 17, 88, 2, 'V~O', 3, 1, 'BAS', 0, '', 0, 0, 0),
(29, 543, 'phone_crm_extension', 'vtiger_users', 1, '11', 'phone_crm_extension', 'CRM Phone Extension', 1, 2, '', 100, 18, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 544, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 89, 1, 'V~M', 2, 2, 'BAS', 1, '', 1, 0, 0),
(35, 545, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 89, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(35, 546, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 89, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(35, 547, 'start_date', 'vtiger_servicecontracts', 1, '5', 'start_date', 'Start Date', 1, 2, '', 100, 7, 89, 1, 'D~O', 2, 4, 'BAS', 1, '', 0, 0, 0),
(35, 548, 'end_date', 'vtiger_servicecontracts', 1, '5', 'end_date', 'End Date', 1, 2, '', 100, 11, 89, 2, 'D~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(35, 549, 'sc_related_to', 'vtiger_servicecontracts', 1, '10', 'sc_related_to', 'Related to', 1, 2, '', 100, 3, 89, 1, 'V~O', 2, 6, 'BAS', 1, '', 0, 0, 0),
(35, 550, 'tracking_unit', 'vtiger_servicecontracts', 1, '15', 'tracking_unit', 'Tracking Unit', 1, 2, '', 100, 6, 89, 1, 'V~O', 2, 7, 'BAS', 1, '', 0, 0, 0),
(35, 551, 'total_units', 'vtiger_servicecontracts', 1, '7', 'total_units', 'Total Units', 1, 2, '', 100, 8, 89, 1, 'NN~O', 2, 8, 'BAS', 1, '', 1, 0, 0),
(35, 552, 'used_units', 'vtiger_servicecontracts', 1, '7', 'used_units', 'Used Units', 1, 2, '', 100, 10, 89, 1, 'NN~O', 2, 9, 'BAS', 1, '', 1, 0, 0),
(35, 553, 'subject', 'vtiger_servicecontracts', 1, '1', 'subject', 'Subject', 1, 0, '', 100, 1, 89, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(35, 554, 'due_date', 'vtiger_servicecontracts', 1, '23', 'due_date', 'Due date', 1, 2, '', 100, 9, 89, 1, 'D~O', 2, 5, 'BAS', 1, '', 0, 0, 0),
(35, 555, 'planned_duration', 'vtiger_servicecontracts', 1, '1', 'planned_duration', 'Planned Duration', 1, 2, '', 100, 13, 89, 2, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(35, 556, 'actual_duration', 'vtiger_servicecontracts', 1, '1', 'actual_duration', 'Actual Duration', 1, 2, '', 100, 15, 89, 2, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(35, 557, 'contract_status', 'vtiger_servicecontracts', 1, '15', 'contract_status', 'Status', 1, 2, '', 100, 12, 89, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 558, 'priority', 'vtiger_servicecontracts', 1, '15', 'contract_priority', 'Priority', 1, 2, '', 100, 14, 89, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 559, 'contract_type', 'vtiger_servicecontracts', 1, '15', 'contract_type', 'Type', 1, 2, '', 100, 5, 89, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 560, 'progress', 'vtiger_servicecontracts', 1, '9', 'progress', 'Progress', 1, 2, '', 100, 16, 89, 2, 'N~O~2~2', 3, 3, 'BAS', 0, '', 0, 0, 0),
(35, 561, 'contract_no', 'vtiger_servicecontracts', 1, '4', 'contract_no', 'Contract No', 1, 0, '', 100, 2, 89, 1, 'V~O', 3, 0, 'BAS', 0, '', 1, 0, 0),
(35, 562, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 89, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(35, 563, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 19, 89, 2, 'V~O', 3, 10, 'BAS', 0, '', 0, 0, 0),
(35, 564, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 20, 89, 6, 'C~O', 3, 11, 'BAS', 0, '', 0, 0, 0),
(35, 565, 'tags', 'vtiger_servicecontracts', 1, '1', 'tags', 'tags', 1, 2, '', 100, 21, 89, 6, 'V~O', 3, 12, 'BAS', 0, '', 0, 0, 0),
(36, 566, 'servicename', 'vtiger_service', 1, '2', 'servicename', 'Service Name', 1, 0, '', 100, 1, 91, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(36, 567, 'service_no', 'vtiger_service', 1, '4', 'service_no', 'Service No', 1, 0, '', 100, 2, 91, 1, 'V~O', 3, 0, 'BAS', 0, '', 1, 0, 0),
(36, 568, 'discontinued', 'vtiger_service', 1, '56', 'discontinued', 'Service Active', 1, 2, '1', 100, 4, 91, 1, 'V~O', 2, 3, 'BAS', 1, '', 0, 0, 0),
(36, 569, 'sales_start_date', 'vtiger_service', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 2, '', 100, 9, 91, 1, 'D~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 570, 'sales_end_date', 'vtiger_service', 1, '5', 'sales_end_date', 'Sales End Date', 1, 2, '', 100, 10, 91, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 571, 'start_date', 'vtiger_service', 1, '5', 'start_date', 'Support Start Date', 1, 2, '', 100, 11, 91, 1, 'D~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 572, 'expiry_date', 'vtiger_service', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 2, '', 100, 12, 91, 1, 'D~O~OTH~GE~start_date~Start Date', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 573, 'website', 'vtiger_service', 1, '17', 'website', 'Website', 1, 2, '', 100, 6, 91, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 574, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 13, 91, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(36, 575, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 14, 91, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(36, 576, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 91, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(36, 577, 'service_usageunit', 'vtiger_service', 1, '15', 'service_usageunit', 'Usage Unit', 1, 2, '', 100, 3, 91, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 578, 'qty_per_unit', 'vtiger_service', 1, '1', 'qty_per_unit', 'No of Units', 1, 2, '', 100, 5, 91, 1, 'N~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(36, 579, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Owner', 1, 0, '', 100, 8, 91, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 580, 'servicecategory', 'vtiger_service', 1, '15', 'servicecategory', 'Service Category', 1, 2, '', 100, 7, 91, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 581, 'unit_price', 'vtiger_service', 1, '72', 'unit_price', 'Price', 1, 0, '', 100, 1, 92, 1, 'N~O', 2, 2, 'BAS', 0, '', 1, 0, 0),
(36, 582, 'taxclass', 'vtiger_service', 1, '83', 'taxclass', 'Taxes', 1, 2, '', 100, 4, 92, 1, 'V~O', 2, 0, 'BAS', 1, '', 0, 0, 0),
(36, 583, 'commissionrate', 'vtiger_service', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, '', 100, 2, 92, 1, 'N~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(36, 584, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 94, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(36, 585, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 17, 91, 2, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(36, 586, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 18, 91, 6, 'C~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(36, 587, 'tags', 'vtiger_service', 1, '1', 'tags', 'tags', 1, 2, '', 100, 19, 91, 6, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(38, 588, 'asset_no', 'vtiger_assets', 1, '4', 'asset_no', 'Asset No', 1, 0, '', 100, 2, 95, 1, 'V~O', 3, 0, 'BAS', 0, '\n					', 1, 0, 0),
(38, 589, 'product', 'vtiger_assets', 1, '10', 'product', 'Product Name', 1, 2, '', 100, 3, 95, 1, 'V~M', 0, 3, 'BAS', 1, '\n					', 1, 0, 0),
(38, 590, 'serialnumber', 'vtiger_assets', 1, '2', 'serialnumber', 'Serial Number', 1, 2, '', 100, 4, 95, 1, 'V~M', 0, 5, 'BAS', 1, '\n					', 0, 0, 0),
(38, 591, 'datesold', 'vtiger_assets', 1, '5', 'datesold', 'Date Sold', 1, 2, '', 100, 5, 95, 1, 'D~M~OTH~GE~datesold~Date Sold', 0, 0, 'BAS', 1, '\n					', 0, 0, 0),
(38, 592, 'dateinservice', 'vtiger_assets', 1, '5', 'dateinservice', 'Date in Service', 1, 2, '', 100, 6, 95, 1, 'D~M~OTH~GE~dateinservice~Date in Service', 0, 4, 'BAS', 1, '\n					', 0, 0, 0),
(38, 593, 'assetstatus', 'vtiger_assets', 1, '15', 'assetstatus', 'Status', 1, 2, '', 100, 7, 95, 1, 'V~M', 0, 0, 'BAS', 1, '\n					', 0, 0, 0),
(38, 594, 'tagnumber', 'vtiger_assets', 1, '2', 'tagnumber', 'Tag Number', 1, 2, '', 100, 8, 95, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(38, 595, 'invoiceid', 'vtiger_assets', 1, '10', 'invoiceid', 'Invoice Name', 1, 2, '', 100, 9, 95, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(38, 596, 'shippingmethod', 'vtiger_assets', 1, '2', 'shippingmethod', 'Shipping Method', 1, 2, '', 100, 10, 95, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(38, 597, 'shippingtrackingnumber', 'vtiger_assets', 1, '2', 'shippingtrackingnumber', 'Shipping Tracking Number', 1, 2, '', 100, 11, 95, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(38, 598, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 95, 1, 'V~M', 0, 2, 'BAS', 1, '\n					', 0, 0, 0),
(38, 599, 'assetname', 'vtiger_assets', 1, '1', 'assetname', 'Asset Name', 1, 0, '', 100, 12, 95, 1, 'V~M', 0, 6, 'BAS', 1, '\n					', 1, 0, 0),
(38, 600, 'account', 'vtiger_assets', 1, '10', 'account', 'Customer Name', 1, 2, '', 100, 13, 95, 1, 'V~M', 0, 0, 'BAS', 1, '\n					', 1, 0, 0),
(38, 601, 'contact', 'vtiger_assets', 1, '10', 'contact', 'Contact Name', 1, 2, '', 100, 14, 95, 1, 'V~O', 0, 0, 'BAS', 1, '\n					', 0, 0, 0),
(38, 602, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 95, 2, 'DT~O', 3, 0, 'BAS', 0, '\n					', 0, 0, 0),
(38, 603, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 95, 2, 'DT~O', 3, 0, 'BAS', 0, '\n					', 0, 0, 0),
(38, 604, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 95, 3, 'V~O', 3, 0, 'BAS', 0, '\n					', 0, 0, 0),
(38, 605, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Notes', 1, 2, '', 100, 1, 97, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(38, 606, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 17, 95, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(38, 607, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 18, 95, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(38, 608, 'tags', 'vtiger_assets', 1, '1', 'tags', 'tags', 1, 2, '', 100, 19, 95, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(42, 609, 'commentcontent', 'vtiger_modcomments', 1, '19', 'commentcontent', 'Comment', 1, 0, '', 100, 4, 98, 1, 'V~M', 0, 4, 'BAS', 2, '', 1, 0, 0),
(42, 610, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 1, 99, 1, 'V~M', 0, 1, 'BAS', 2, '', 1, 0, 0),
(42, 611, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 99, 2, 'DT~O', 0, 2, 'BAS', 0, '', 0, 0, 0),
(42, 612, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 99, 2, 'DT~O', 0, 3, 'BAS', 0, '', 0, 0, 0),
(42, 613, 'related_to', 'vtiger_modcomments', 1, '10', 'related_to', 'Related To', 1, 2, '', 100, 2, 99, 1, 'V~M', 2, 5, 'BAS', 2, '', 0, 0, 0),
(42, 614, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'creator', 'Creator', 1, 2, '', 100, 4, 99, 2, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(42, 615, 'parent_comments', 'vtiger_modcomments', 1, '10', 'parent_comments', 'Related To Comments', 1, 2, '', 100, 7, 99, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(42, 616, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 5, 98, 2, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(43, 617, 'projectmilestonename', 'vtiger_projectmilestone', 1, '2', 'projectmilestonename', 'Project Milestone Name', 1, 2, '', 100, 1, 101, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(43, 618, 'projectmilestonedate', 'vtiger_projectmilestone', 1, '5', 'projectmilestonedate', 'Milestone Date', 1, 2, '', 100, 5, 101, 1, 'D~O', 0, 3, 'BAS', 1, '', 1, 0, 0),
(43, 619, 'projectid', 'vtiger_projectmilestone', 1, '10', 'projectid', 'Related to', 1, 0, '', 100, 4, 101, 1, 'V~M', 0, 4, 'BAS', 1, '', 0, 0, 0),
(43, 620, 'projectmilestonetype', 'vtiger_projectmilestone', 1, '15', 'projectmilestonetype', 'Type', 1, 2, '', 100, 7, 101, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(43, 621, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 6, 101, 1, 'V~M', 0, 2, 'BAS', 1, '', 0, 0, 0),
(43, 622, 'projectmilestone_no', 'vtiger_projectmilestone', 2, '4', 'projectmilestone_no', 'Project Milestone No', 1, 0, '', 100, 2, 101, 1, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(43, 623, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 1, 102, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(43, 624, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 2, 102, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(43, 625, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 3, 102, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(43, 626, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 103, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(43, 627, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 8, 101, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(43, 628, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 9, 101, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(43, 629, 'tags', 'vtiger_projectmilestone', 1, '1', 'tags', 'tags', 1, 2, '', 100, 10, 101, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(44, 630, 'projecttaskname', 'vtiger_projecttask', 1, '2', 'projecttaskname', 'Project Task Name', 1, 2, '', 100, 1, 104, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(44, 631, 'projecttasktype', 'vtiger_projecttask', 1, '15', 'projecttasktype', 'Type', 1, 2, '', 100, 4, 104, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(44, 632, 'projecttaskpriority', 'vtiger_projecttask', 1, '15', 'projecttaskpriority', 'Priority', 1, 2, '', 100, 3, 104, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(44, 633, 'projectid', 'vtiger_projecttask', 1, '10', 'projectid', 'Related to', 1, 0, '', 100, 6, 104, 1, 'V~M', 0, 5, 'BAS', 1, '', 0, 0, 0),
(44, 634, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 7, 104, 1, 'V~M', 0, 2, 'BAS', 1, '', 1, 0, 0),
(44, 635, 'projecttasknumber', 'vtiger_projecttask', 1, '7', 'projecttasknumber', 'Project Task Number', 1, 2, '', 100, 5, 104, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(44, 636, 'projecttask_no', 'vtiger_projecttask', 2, '4', 'projecttask_no', 'Project Task No', 1, 0, '', 100, 2, 104, 1, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(44, 637, 'projecttaskprogress', 'vtiger_projecttask', 1, '15', 'projecttaskprogress', 'Progress', 1, 2, '', 100, 1, 105, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(44, 638, 'projecttaskhours', 'vtiger_projecttask', 1, '7', 'projecttaskhours', 'Worked Hours', 1, 2, '', 100, 2, 105, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(44, 639, 'startdate', 'vtiger_projecttask', 1, '5', 'startdate', 'Start Date', 1, 2, '', 100, 3, 105, 1, 'D~O', 0, 3, 'BAS', 1, '', 1, 0, 0),
(44, 640, 'enddate', 'vtiger_projecttask', 1, '5', 'enddate', 'End Date', 1, 2, '', 100, 4, 105, 1, 'D~O~OTH~GE~startdate~Start Date', 1, 0, 'BAS', 1, '', 1, 0, 0),
(44, 641, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 5, 105, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(44, 642, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 6, 105, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(44, 643, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 105, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(44, 644, 'description', 'vtiger_crmentity', 1, '19', 'description', 'description', 1, 2, '', 100, 1, 106, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(44, 645, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 8, 104, 2, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(44, 646, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 9, 104, 6, 'C~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(44, 647, 'tags', 'vtiger_projecttask', 1, '1', 'tags', 'tags', 1, 2, '', 100, 10, 104, 6, 'V~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(45, 648, 'projectname', 'vtiger_project', 1, '2', 'projectname', 'Project Name', 1, 2, '', 100, 1, 107, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(45, 649, 'startdate', 'vtiger_project', 1, '23', 'startdate', 'Start Date', 1, 2, '', 100, 3, 107, 1, 'D~O', 0, 3, 'BAS', 1, '', 1, 0, 0),
(45, 650, 'targetenddate', 'vtiger_project', 1, '23', 'targetenddate', 'Target End Date', 1, 2, '', 100, 5, 107, 1, 'D~O~OTH~GE~startdate~Start Date', 0, 4, 'BAS', 1, '', 1, 0, 0),
(45, 651, 'actualenddate', 'vtiger_project', 1, '23', 'actualenddate', 'Actual End Date', 1, 2, '', 100, 6, 107, 1, 'D~O~OTH~GE~startdate~Start Date', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 652, 'projectstatus', 'vtiger_project', 1, '15', 'projectstatus', 'Status', 1, 2, '', 100, 7, 107, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(45, 653, 'projecttype', 'vtiger_project', 1, '15', 'projecttype', 'Type', 1, 2, '', 100, 8, 107, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(45, 654, 'linktoaccountscontacts', 'vtiger_project', 1, '10', 'linktoaccountscontacts', 'Related to', 1, 2, '', 100, 9, 107, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 1, 0),
(45, 655, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 107, 1, 'V~M', 0, 2, 'BAS', 1, '', 1, 0, 0),
(45, 656, 'project_no', 'vtiger_project', 2, '4', 'project_no', 'Project No', 1, 0, '', 100, 2, 107, 1, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(45, 657, 'targetbudget', 'vtiger_project', 1, '7', 'targetbudget', 'Target Budget', 1, 2, '', 100, 1, 108, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 658, 'projecturl', 'vtiger_project', 1, '17', 'projecturl', 'Project Url', 1, 2, '', 100, 2, 108, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 659, 'projectpriority', 'vtiger_project', 1, '15', 'projectpriority', 'Priority', 1, 2, '', 100, 3, 108, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`, `headerfield`, `isunique`) VALUES
(45, 660, 'progress', 'vtiger_project', 1, '15', 'progress', 'Progress', 1, 2, '', 100, 4, 108, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 661, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 5, 108, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(45, 662, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 6, 108, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(45, 663, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 108, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(45, 664, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 109, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 665, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 10, 107, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(45, 666, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 11, 107, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(45, 667, 'tags', 'vtiger_project', 1, '1', 'tags', 'tags', 1, 2, '', 100, 12, 107, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(47, 668, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 110, 1, 'V~M', 1, 0, 'BAS', 1, '', 1, 0, 0),
(47, 669, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 110, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(47, 670, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 110, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(47, 671, 'message', 'vtiger_smsnotifier', 1, '21', 'message', 'message', 1, 0, '', 100, 1, 110, 1, 'V~M', 1, 0, 'BAS', 1, '', 1, 0, 0),
(47, 672, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 110, 3, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(47, 673, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 8, 110, 2, 'V~O', 3, 1, 'BAS', 0, '', 0, 0, 0),
(2, 674, 'forecast_amount', 'vtiger_potential', 1, '71', 'forecast_amount', 'Forecast Amount', 1, 2, '', 100, 18, 1, 1, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(29, 675, 'no_of_currency_decimals', 'vtiger_users', 1, '16', 'no_of_currency_decimals', 'Number Of Currency Decimals', 1, 2, '2', 100, 6, 78, 1, 'V~O', 1, 0, 'BAS', 1, '<b>Currency - Number of Decimal places</b> <br/><br/>Number of decimal places specifies how many number of decimals will be shown after decimal separator.<br/><b>Eg:</b> 123.00', 0, 0, 0),
(23, 676, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 113, 5, 'V~M', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 677, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 678, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 679, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 680, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Item Discount Amount', 0, 2, '', 100, 5, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 681, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 682, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'VAT', 0, 2, '', 100, 7, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 683, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Sales', 0, 2, '', 100, 8, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 684, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Service', 0, 2, '', 100, 9, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 685, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 114, 5, 'V~M', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 686, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 687, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 688, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 689, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Item Discount Amount', 0, 1, '', 100, 5, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 690, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 1, '', 100, 6, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 691, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'VAT', 0, 2, '', 100, 7, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 692, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Sales', 0, 2, '', 100, 8, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 693, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Service', 0, 2, '', 100, 9, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 694, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 115, 5, 'V~M', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 695, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 115, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 696, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 115, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 697, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 698, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Item Discount Amount', 0, 1, '', 100, 5, 115, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 699, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 1, '', 100, 6, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 700, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'VAT', 0, 2, '', 100, 7, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 701, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Sales', 0, 2, '', 100, 8, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 702, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Service', 0, 2, '', 100, 9, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 703, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 116, 5, 'V~M', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 704, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 705, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 706, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 707, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Item Discount Amount', 0, 2, '', 100, 5, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 708, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 709, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'VAT', 0, 2, '', 100, 7, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 710, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Sales', 0, 2, '', 100, 8, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 711, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Service', 0, 2, '', 100, 9, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(29, 712, 'truncate_trailing_zeros', 'vtiger_users', 1, '56', 'truncate_trailing_zeros', 'Truncate Trailing Zeros', 1, 2, '0', 100, 7, 78, 1, 'V~O', 1, 0, 'BAS', 1, '<b> Truncate Trailing Zeros </b> <br/><br/>It truncated trailing 0s in any of Currency, Decimal and Percentage Field types<br/><br/><b>Ex:</b><br/>If value is 89.00000 then <br/>decimal and Percentage fields were shows 89<br/>currency field type - shows 89.00<br/>', 0, 0, 0),
(44, 713, 'projecttaskstatus', 'vtiger_projecttask', 1, '15', 'projecttaskstatus', 'Status', 1, 2, '', 100, 11, 104, 1, 'V~O', 0, 9, 'BAS', 1, '', 0, 0, 0),
(42, 714, 'customer', 'vtiger_modcomments', 1, '10', 'customer', 'Customer', 1, 2, '', 100, 6, 98, 3, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 715, 'dayoftheweek', 'vtiger_users', 1, '16', 'dayoftheweek', 'Starting Day of the week', 1, 2, 'Monday', 100, 1, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 716, 'callduration', 'vtiger_users', 1, '16', 'callduration', 'Default Call Duration', 1, 2, '5', 100, 7, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 717, 'othereventduration', 'vtiger_users', 1, '16', 'othereventduration', 'Other Event Duration', 1, 2, '5', 100, 8, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 718, 'pre_tax_total', 'vtiger_invoice', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 67, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(22, 719, 'pre_tax_total', 'vtiger_salesorder', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 61, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(21, 720, 'pre_tax_total', 'vtiger_purchaseorder', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 55, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(20, 721, 'pre_tax_total', 'vtiger_quotes', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 49, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 722, 'calendarsharedtype', 'vtiger_users', 1, '16', 'calendarsharedtype', 'Calendar Shared Type', 1, 2, 'Public', 100, 12, 118, 3, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(6, 723, 'isconvertedfromlead', 'vtiger_account', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 24, 9, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(4, 724, 'isconvertedfromlead', 'vtiger_contactdetails', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 29, 4, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(2, 725, 'isconvertedfromlead', 'vtiger_potential', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 19, 1, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 726, 'default_record_view', 'vtiger_users', 1, '16', 'default_record_view', 'Default Record View', 1, 2, 'Summary', 100, 19, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 727, 'received', 'vtiger_invoice', 1, '72', 'received', 'Received', 1, 2, '0', 100, 24, 67, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 728, 'balance', 'vtiger_invoice', 1, '72', 'balance', 'Balance', 1, 2, '0', 100, 25, 67, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(21, 729, 'paid', 'vtiger_purchaseorder', 1, '72', 'paid', 'Paid', 1, 2, '0', 100, 24, 55, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(21, 730, 'balance', 'vtiger_purchaseorder', 1, '72', 'balance', 'Balance', 1, 2, '0', 100, 25, 55, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(18, 731, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 13, 42, 1, 'V~M', 1, 0, 'BAS', 1, '', 0, 0, 0),
(7, 732, 'emailoptout', 'vtiger_leaddetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 0, '', 100, 24, 13, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(42, 733, 'userid', 'vtiger_modcomments', 1, '10', 'userid', 'UserId', 1, 2, '', 100, 7, 98, 3, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(42, 734, 'reasontoedit', 'vtiger_modcomments', 1, '19', 'reasontoedit', 'ReasonToEdit', 1, 2, '', 100, 8, 98, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 735, 's_h_percent', 'vtiger_invoice', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 113, 5, 'N~O', 0, 1, 'BAS', 0, '', 0, 0, 0),
(20, 736, 's_h_percent', 'vtiger_quotes', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 116, 5, 'N~O', 0, 1, 'BAS', 0, '', 0, 0, 0),
(21, 737, 's_h_percent', 'vtiger_purchaseorder', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 1, '', 100, 10, 115, 5, 'N~O', 0, 1, 'BAS', 0, '', 0, 0, 0),
(22, 738, 's_h_percent', 'vtiger_salesorder', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 1, '', 100, 10, 114, 5, 'N~O', 0, 1, 'BAS', 0, '', 0, 0, 0),
(29, 739, 'leftpanelhide', 'vtiger_users', 1, '56', 'leftpanelhide', 'Left Panel Hide', 1, 2, '0', 100, 20, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(2, 740, 'contact_id', 'vtiger_potential', 1, '10', 'contact_id', 'Contact Name', 1, 2, '', 100, 4, 1, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(13, 741, 'contact_id', 'vtiger_troubletickets', 1, '10', 'contact_id', 'Contact Name', 1, 2, '', 100, 3, 25, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(29, 742, 'rowheight', 'vtiger_users', 1, '16', 'rowheight', 'Row Height', 1, 2, 'medium', 100, 21, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 743, 'defaulteventstatus', 'vtiger_users', 1, '15', 'defaulteventstatus', 'Default Event Status', 1, 2, 'Planned', 100, 9, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 744, 'defaultactivitytype', 'vtiger_users', 1, '15', 'defaultactivitytype', 'Default Activity Type', 1, 2, 'Call', 100, 10, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 745, 'hidecompletedevents', 'vtiger_users', 1, '56', 'hidecompletedevents', 'LBL_HIDE_COMPLETED_EVENTS', 1, 2, '0', 100, 13, 118, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(14, 772, 'purchase_cost', 'vtiger_products', 1, '71', 'purchase_cost', 'Purchase Cost', 1, 1, '', 100, 5, 32, 1, 'N~M', 2, 0, 'BAS', 1, '', 0, 0, 0),
(36, 773, 'purchase_cost', 'vtiger_service', 1, '71', 'purchase_cost', 'Purchase Cost', 1, 0, '', 100, 5, 92, 1, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 774, 'potential_id', 'vtiger_invoice', 1, '10', 'potential_id', 'Potential Name', 1, 2, '', 100, 26, 67, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 775, 'defaultcalendarview', 'vtiger_users', 1, '16', 'defaultcalendarview', 'Default Calendar View', 1, 0, 'MyCalendar', 100, 14, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 776, 'image', 'vtiger_inventoryproductrel', 1, '56', 'image', 'Image', 0, 1, '', 100, 14, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 777, 'purchase_cost', 'vtiger_inventoryproductrel', 1, '71', 'purchase_cost', 'Purchase Cost', 0, 1, '', 100, 15, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 778, 'margin', 'vtiger_inventoryproductrel', 1, '71', 'margin', 'Margin', 0, 1, '', 100, 16, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 779, 'image', 'vtiger_inventoryproductrel', 1, '56', 'image', 'Image', 0, 1, '', 100, 15, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 780, 'purchase_cost', 'vtiger_inventoryproductrel', 1, '71', 'purchase_cost', 'Purchase Cost', 0, 1, '', 100, 16, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 781, 'margin', 'vtiger_inventoryproductrel', 1, '71', 'margin', 'Margin', 0, 1, '', 100, 17, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 782, 'image', 'vtiger_inventoryproductrel', 1, '56', 'image', 'Image', 0, 1, '', 100, 15, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 783, 'image', 'vtiger_inventoryproductrel', 1, '56', 'image', 'Image', 0, 1, '', 100, 16, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 784, 'purchase_cost', 'vtiger_inventoryproductrel', 1, '71', 'purchase_cost', 'Purchase Cost', 0, 1, '', 100, 17, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 785, 'margin', 'vtiger_inventoryproductrel', 1, '71', 'margin', 'Margin', 0, 1, '', 100, 18, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(42, 786, 'is_private', 'vtiger_modcomments', 1, '7', 'is_private', 'Is Private', 1, 2, '', 100, 9, 98, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(42, 787, 'filename', 'vtiger_modcomments', 1, '61', 'filename', 'Attachment', 1, 0, '', 100, 10, 98, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(42, 788, 'related_email_id', 'vtiger_modcomments', 1, '1', 'related_email_id', 'Related Email Id', 1, 2, '0', 100, 11, 98, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(2, 789, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 20, 1, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(4, 790, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 30, 4, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(6, 791, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 25, 9, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(7, 792, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 25, 13, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(8, 793, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 13, 17, 2, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(9, 794, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 23, 19, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(10, 795, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 13, 21, 2, 'V~O', 3, 1, 'BAS', 0, '', 0, 0, 0),
(13, 796, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 18, 25, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(14, 797, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 23, 31, 2, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(15, 798, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 9, 37, 2, 'V~O', 3, 1, 'BAS', 0, '', 0, 0, 0),
(16, 799, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 23, 39, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(18, 800, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 14, 42, 2, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(19, 801, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 8, 46, 2, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(20, 802, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 24, 49, 2, 'V~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(21, 803, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 26, 55, 2, 'V~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(22, 804, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 24, 61, 2, 'V~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(23, 805, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 27, 67, 2, 'V~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(26, 806, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 17, 74, 2, 'V~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(10, 807, 'click_count', 'vtiger_email_track', 1, '25', 'click_count', 'Click Count', 1, 2, '0', 100, 14, 21, 3, 'I~O', 0, 2, 'BAS', 0, '', 0, 0, 0),
(2, 808, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 21, 1, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(4, 809, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 31, 4, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(6, 810, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 26, 9, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(7, 811, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 26, 13, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(8, 812, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 14, 17, 6, 'C~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(9, 813, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 24, 19, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(10, 814, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 15, 21, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(13, 815, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 19, 25, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(14, 816, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 24, 31, 6, 'C~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(15, 817, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 10, 37, 6, 'C~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(16, 818, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 24, 39, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(18, 819, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 15, 42, 6, 'C~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(19, 820, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 9, 46, 6, 'C~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(20, 821, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 25, 49, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(21, 822, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 27, 55, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(22, 823, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 25, 61, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(23, 824, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 28, 67, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(26, 825, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 18, 74, 6, 'C~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(2, 826, 'tags', 'vtiger_potential', 1, '1', 'tags', 'tags', 1, 2, '', 100, 22, 1, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(4, 827, 'tags', 'vtiger_contactdetails', 1, '1', 'tags', 'tags', 1, 2, '', 100, 32, 4, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(6, 828, 'tags', 'vtiger_account', 1, '1', 'tags', 'tags', 1, 2, '', 100, 27, 9, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(7, 829, 'tags', 'vtiger_leaddetails', 1, '1', 'tags', 'tags', 1, 2, '', 100, 27, 13, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(8, 830, 'tags', 'vtiger_notes', 1, '1', 'tags', 'tags', 1, 2, '', 100, 15, 17, 6, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(9, 831, 'tags', 'vtiger_activity', 1, '1', 'tags', 'tags', 1, 2, '', 100, 25, 19, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(10, 832, 'tags', 'vtiger_activity', 1, '1', 'tags', 'tags', 1, 2, '', 100, 16, 21, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(13, 833, 'tags', 'vtiger_troubletickets', 1, '1', 'tags', 'tags', 1, 2, '', 100, 20, 25, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(14, 834, 'tags', 'vtiger_products', 1, '1', 'tags', 'tags', 1, 2, '', 100, 25, 31, 6, 'V~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(15, 835, 'tags', 'vtiger_faq', 1, '1', 'tags', 'tags', 1, 2, '', 100, 11, 37, 6, 'V~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(16, 836, 'tags', 'vtiger_activity', 1, '1', 'tags', 'tags', 1, 2, '', 100, 25, 39, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(18, 837, 'tags', 'vtiger_vendor', 1, '1', 'tags', 'tags', 1, 2, '', 100, 16, 42, 6, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(19, 838, 'tags', 'vtiger_pricebook', 1, '1', 'tags', 'tags', 1, 2, '', 100, 10, 46, 6, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(20, 839, 'tags', 'vtiger_quotes', 1, '1', 'tags', 'tags', 1, 2, '', 100, 26, 49, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(21, 840, 'tags', 'vtiger_purchaseorder', 1, '1', 'tags', 'tags', 1, 2, '', 100, 28, 55, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(22, 841, 'tags', 'vtiger_salesorder', 1, '1', 'tags', 'tags', 1, 2, '', 100, 26, 61, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(23, 842, 'tags', 'vtiger_invoice', 1, '1', 'tags', 'tags', 1, 2, '', 100, 29, 67, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(26, 843, 'tags', 'vtiger_campaign', 1, '1', 'tags', 'tags', 1, 2, '', 100, 19, 74, 6, 'V~O', 3, 10, 'BAS', 0, '', 0, 0, 0),
(20, 844, 'region_id', 'vtiger_quotes', 1, '16', 'region_id', 'Tax Region', 0, 2, '', 100, 18, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 845, 'region_id', 'vtiger_purchaseorder', 1, '16', 'region_id', 'Tax Region', 0, 1, '', 100, 16, 115, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 846, 'region_id', 'vtiger_salesorder', 1, '16', 'region_id', 'Tax Region', 0, 1, '', 100, 19, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 847, 'region_id', 'vtiger_invoice', 1, '16', 'region_id', 'Tax Region', 0, 2, '', 100, 17, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(45, 848, 'isconvertedfrompotential', 'vtiger_project', 1, '56', 'isconvertedfrompotential', 'Is Converted From Opportunity', 1, 2, '', 100, 13, 107, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 849, 'potentialid', 'vtiger_project', 1, '10', 'potentialid', 'Potential Name', 1, 2, '', 100, 14, 107, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 850, 'defaultlandingpage', 'vtiger_users', 1, '32', 'defaultlandingpage', 'Default Landing Page', 1, 0, 'Home', 100, 22, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(22, 851, 'last_recurring_date', 'vtiger_invoice_recurring_info', 1, '5', 'last_recurring_date', 'Next Invoice Date', 1, 2, '', 100, 7, 85, 2, 'D~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 852, 'userlabel', 'vtiger_users', 1, '1', 'userlabel', 'User Label', 1, 2, '', 100, 23, 79, 3, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_fieldmodulerel`
--

CREATE TABLE `vtiger_fieldmodulerel` (
  `fieldid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relmodule` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_fieldmodulerel`
--

INSERT INTO `vtiger_fieldmodulerel` (`fieldid`, `module`, `relmodule`, `status`, `sequence`) VALUES
(113, 'Potentials', 'Accounts', NULL, 0),
(535, 'PBXManager', 'Leads', NULL, NULL),
(535, 'PBXManager', 'Contacts', NULL, NULL),
(535, 'PBXManager', 'Accounts', NULL, NULL),
(549, 'ServiceContracts', 'Contacts', NULL, NULL),
(549, 'ServiceContracts', 'Accounts', NULL, NULL),
(589, 'Assets', 'Products', NULL, NULL),
(595, 'Assets', 'Invoice', NULL, NULL),
(600, 'Assets', 'Accounts', NULL, NULL),
(601, 'Assets', 'Contacts', NULL, NULL),
(613, 'ModComments', 'Leads', NULL, NULL),
(613, 'ModComments', 'Contacts', NULL, NULL),
(613, 'ModComments', 'Accounts', NULL, NULL),
(615, 'ModComments', 'ModComments', NULL, NULL),
(613, 'ModComments', 'Potentials', NULL, NULL),
(619, 'ProjectMilestone', 'Project', NULL, NULL),
(633, 'ProjectTask', 'Project', NULL, NULL),
(613, 'ModComments', 'ProjectTask', NULL, NULL),
(654, 'Project', 'Accounts', NULL, NULL),
(654, 'Project', 'Contacts', NULL, NULL),
(613, 'ModComments', 'Project', NULL, NULL),
(676, 'Invoice', 'Products', NULL, NULL),
(676, 'Invoice', 'Services', NULL, NULL),
(685, 'SalesOrder', 'Products', NULL, NULL),
(685, 'SalesOrder', 'Services', NULL, NULL),
(694, 'PurchaseOrder', 'Products', NULL, NULL),
(694, 'PurchaseOrder', 'Services', NULL, NULL),
(703, 'Quotes', 'Products', NULL, NULL),
(703, 'Quotes', 'Services', NULL, NULL),
(714, 'ModComments', 'Contacts', NULL, NULL),
(613, 'ModComments', 'HelpDesk', NULL, NULL),
(613, 'ModComments', 'Faq', NULL, NULL),
(740, 'Potentials', 'Contacts', NULL, NULL),
(157, 'HelpDesk', 'Accounts', NULL, NULL),
(741, 'HelpDesk', 'Contacts', NULL, NULL),
(238, 'Accounts', 'Calendar', NULL, NULL),
(238, 'Leads', 'Calendar', NULL, NULL),
(238, 'HelpDesk', 'Calendar', NULL, NULL),
(238, 'Campaigns', 'Calendar', NULL, NULL),
(238, 'Potentials', 'Calendar', NULL, NULL),
(238, 'PurchaseOrder', 'Calendar', NULL, NULL),
(238, 'SalesOrder', 'Calendar', NULL, NULL),
(238, 'Quotes', 'Calendar', NULL, NULL),
(238, 'Invoice', 'Calendar', NULL, NULL),
(239, 'Contacts', 'Calendar', NULL, NULL),
(774, 'Invoice', 'Potentials', NULL, NULL),
(613, 'ModComments', 'Invoice', NULL, NULL),
(613, 'ModComments', 'Quotes', NULL, NULL),
(613, 'ModComments', 'PurchaseOrder', NULL, NULL),
(613, 'ModComments', 'SalesOrder', NULL, NULL),
(849, 'Project', 'Potentials', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_field_seq`
--

CREATE TABLE `vtiger_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_field_seq`
--

INSERT INTO `vtiger_field_seq` (`id`) VALUES
(852);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetagged_objects`
--

CREATE TABLE `vtiger_freetagged_objects` (
  `tag_id` int(20) NOT NULL DEFAULT 0,
  `tagger_id` int(20) NOT NULL DEFAULT 0,
  `object_id` int(20) NOT NULL DEFAULT 0,
  `tagged_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `module` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetags`
--

CREATE TABLE `vtiger_freetags` (
  `id` int(19) NOT NULL,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `raw_tag` varchar(50) NOT NULL DEFAULT '',
  `visibility` varchar(100) NOT NULL DEFAULT 'PRIVATE',
  `owner` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetags_seq`
--

CREATE TABLE `vtiger_freetags_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_freetags_seq`
--

INSERT INTO `vtiger_freetags_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_glacct`
--

CREATE TABLE `vtiger_glacct` (
  `glacctid` int(19) NOT NULL,
  `glacct` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_glacct`
--

INSERT INTO `vtiger_glacct` (`glacctid`, `glacct`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, '300-Sales-Software', 1, 51, 0, NULL),
(2, '301-Sales-Hardware', 1, 52, 1, NULL),
(3, '302-Rental-Income', 1, 53, 2, NULL),
(4, '303-Interest-Income', 1, 54, 3, NULL),
(5, '304-Sales-Software-Support', 1, 55, 4, NULL),
(6, '305-Sales Other', 1, 56, 5, NULL),
(7, '306-Internet Sales', 1, 57, 6, NULL),
(8, '307-Service-Hardware Labor', 1, 58, 7, NULL),
(9, '308-Sales-Books', 1, 59, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_glacct_seq`
--

CREATE TABLE `vtiger_glacct_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_glacct_seq`
--

INSERT INTO `vtiger_glacct_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_event_calendar_mapping`
--

CREATE TABLE `vtiger_google_event_calendar_mapping` (
  `event_id` varchar(255) DEFAULT NULL,
  `calendar_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_oauth2`
--

CREATE TABLE `vtiger_google_oauth2` (
  `service` varchar(20) DEFAULT NULL,
  `access_token` varchar(500) DEFAULT NULL,
  `refresh_token` varchar(500) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_sync_fieldmapping`
--

CREATE TABLE `vtiger_google_sync_fieldmapping` (
  `vtiger_field` varchar(255) DEFAULT NULL,
  `google_field` varchar(255) DEFAULT NULL,
  `google_field_type` varchar(255) DEFAULT NULL,
  `google_custom_label` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_sync_settings`
--

CREATE TABLE `vtiger_google_sync_settings` (
  `user` int(11) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `clientgroup` varchar(255) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `enabled` tinyint(3) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2grouprel`
--

CREATE TABLE `vtiger_group2grouprel` (
  `groupid` int(19) NOT NULL,
  `containsgroupid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2role`
--

CREATE TABLE `vtiger_group2role` (
  `groupid` int(19) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_group2role`
--

INSERT INTO `vtiger_group2role` (`groupid`, `roleid`) VALUES
(2, 'H4'),
(3, 'H2'),
(4, 'H3');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2rs`
--

CREATE TABLE `vtiger_group2rs` (
  `groupid` int(19) NOT NULL,
  `roleandsubid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_group2rs`
--

INSERT INTO `vtiger_group2rs` (`groupid`, `roleandsubid`) VALUES
(2, 'H5'),
(3, 'H3'),
(4, 'H3');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_groups`
--

CREATE TABLE `vtiger_groups` (
  `groupid` int(19) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_groups`
--

INSERT INTO `vtiger_groups` (`groupid`, `groupname`, `description`) VALUES
(2, 'Team Selling', 'Group Related to Sales'),
(3, 'Marketing Group', 'Group Related to Marketing Activities'),
(4, 'Support Group', 'Group Related to providing Support to Customers');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homedashbd`
--

CREATE TABLE `vtiger_homedashbd` (
  `stuffid` int(19) NOT NULL DEFAULT 0,
  `dashbdname` varchar(100) DEFAULT NULL,
  `dashbdtype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homedefault`
--

CREATE TABLE `vtiger_homedefault` (
  `stuffid` int(19) NOT NULL DEFAULT 0,
  `hometype` varchar(30) NOT NULL,
  `maxentries` int(19) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(14, 'LTFAQ', 5, 'Faq');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homemodule`
--

CREATE TABLE `vtiger_homemodule` (
  `stuffid` int(19) NOT NULL,
  `modulename` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL,
  `customviewid` int(19) NOT NULL,
  `setype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homemoduleflds`
--

CREATE TABLE `vtiger_homemoduleflds` (
  `stuffid` int(19) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homereportchart`
--

CREATE TABLE `vtiger_homereportchart` (
  `stuffid` int(11) NOT NULL,
  `reportid` int(19) DEFAULT NULL,
  `reportcharttype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homerss`
--

CREATE TABLE `vtiger_homerss` (
  `stuffid` int(19) NOT NULL DEFAULT 0,
  `url` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homestuff`
--

CREATE TABLE `vtiger_homestuff` (
  `stuffid` int(19) NOT NULL DEFAULT 0,
  `stuffsequence` int(19) NOT NULL DEFAULT 0,
  `stufftype` varchar(100) DEFAULT NULL,
  `userid` int(19) NOT NULL,
  `visible` int(10) NOT NULL DEFAULT 0,
  `stufftitle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_homestuff`
--

INSERT INTO `vtiger_homestuff` (`stuffid`, `stuffsequence`, `stufftype`, `userid`, `visible`, `stufftitle`) VALUES
(1, 1, 'Default', 1, 1, 'Top Accounts'),
(2, 2, 'Default', 1, 1, 'Home Page Dashboard'),
(3, 3, 'Default', 1, 1, 'Top Potentials'),
(4, 4, 'Default', 1, 1, 'Top Quotes'),
(5, 5, 'Default', 1, 1, 'Key Metrics'),
(6, 6, 'Default', 1, 1, 'Top Trouble Tickets'),
(7, 7, 'Default', 1, 1, 'Upcoming Activities'),
(8, 8, 'Default', 1, 1, 'My Group Allocation'),
(9, 9, 'Default', 1, 1, 'Top Sales Orders'),
(10, 10, 'Default', 1, 1, 'Top Invoices'),
(11, 11, 'Default', 1, 1, 'My New Leads'),
(12, 12, 'Default', 1, 1, 'Top Purchase Orders'),
(13, 13, 'Default', 1, 1, 'Pending Activities'),
(14, 14, 'Default', 1, 1, 'My Recent FAQs'),
(15, 15, 'Tag Cloud', 1, 0, 'Tag Cloud');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homestuff_seq`
--

CREATE TABLE `vtiger_homestuff_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_homestuff_seq`
--

INSERT INTO `vtiger_homestuff_seq` (`id`) VALUES
(15);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_home_layout`
--

CREATE TABLE `vtiger_home_layout` (
  `userid` int(19) NOT NULL,
  `layout` int(19) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_hour_format`
--

CREATE TABLE `vtiger_hour_format` (
  `hour_formatid` int(11) NOT NULL,
  `hour_format` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_hour_format`
--

INSERT INTO `vtiger_hour_format` (`hour_formatid`, `hour_format`, `sortorderid`, `presence`) VALUES
(1, '12', 0, 1),
(2, '24', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_hour_format_seq`
--

CREATE TABLE `vtiger_hour_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_hour_format_seq`
--

INSERT INTO `vtiger_hour_format_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_1`
--

CREATE TABLE `vtiger_import_1` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `recordid` int(11) DEFAULT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `product_no` varchar(100) DEFAULT NULL,
  `discontinued` int(1) DEFAULT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  `productcategory` varchar(200) DEFAULT NULL,
  `serial_no` varchar(200) DEFAULT NULL,
  `createdtime` varchar(250) DEFAULT NULL,
  `modifiedby` varchar(250) DEFAULT NULL,
  `unit_price` decimal(25,8) DEFAULT NULL,
  `usageunit` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT NULL,
  `qtyinstock` decimal(25,3) DEFAULT NULL,
  `assigned_user_id` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_import_1`
--

INSERT INTO `vtiger_import_1` (`id`, `status`, `recordid`, `productname`, `product_no`, `discontinued`, `manufacturer`, `productcategory`, `serial_no`, `createdtime`, `modifiedby`, `unit_price`, `usageunit`, `qty_per_unit`, `qtyinstock`, `assigned_user_id`) VALUES
(1, 1, 26, 'FIT L13A URD', 'PRO3', 1, 'Toyota', 'КАТУШИК', '4956', '2023-11-21 17:48:56', 'admin', 10000.00000000, 'ширхэг', 1.00, 42.000, 'admin'),
(2, 1, 27, '2005 TOYOTO', 'PRO4', 1, 'Toyota', 'Бинзэн насос', '10761', '2023-11-21 17:48:57', 'admin', 40000.00000000, 'ширхэг', 1.00, 39.000, 'admin'),
(3, 1, 28, 'CROWN GRS180 BOGINO', 'PRO5', 1, 'Toyota', 'Татуурга хойд', '6983', '2023-11-21 17:48:58', 'admin', 10000.00000000, 'ширхэг', 1.00, 39.000, 'admin'),
(4, 1, 29, 'FIT GD1 2003', 'PRO6', 1, 'Toyota', 'ТЭЛЭГЧ НАКЛАД ХОЙД', '6994', '2023-11-21 17:48:59', 'admin', 10000.00000000, 'ширхэг', 1.00, 36.000, 'admin'),
(5, 1, 30, 'XTRAIL NT30 QR20', 'PRO7', 1, 'Toyota', 'УРД НАКЛАД', '8115', '2023-11-21 17:48:60', 'admin', 10000.00000000, 'ширхэг', 1.00, 28.000, 'admin'),
(6, 1, 31, 'MARK CX115 4WD 2,0cc', 'PRO8', 1, 'Toyota', 'УРД НАКЛАД', '9260', '2023-11-21 17:48:61', 'admin', 15000.00000000, 'ширхэг', 1.00, 27.000, 'admin'),
(7, 1, 32, '2008 COLT 4A90 1,3cc', 'PRO9', 1, 'Toyota', 'СИВЧЭ', '10983', '2023-11-21 17:48:62', 'admin', 15000.00000000, 'ширхэг', 1.00, 24.000, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_locks`
--

CREATE TABLE `vtiger_import_locks` (
  `vtiger_import_lock_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `importid` int(11) NOT NULL,
  `locked_since` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_locks_seq`
--

CREATE TABLE `vtiger_import_locks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_import_locks_seq`
--

INSERT INTO `vtiger_import_locks_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_maps`
--

CREATE TABLE `vtiger_import_maps` (
  `id` int(19) NOT NULL,
  `name` varchar(36) NOT NULL,
  `module` varchar(36) NOT NULL,
  `content` longblob DEFAULT NULL,
  `has_header` int(1) NOT NULL DEFAULT 1,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `date_entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `is_published` varchar(3) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_import_maps`
--

INSERT INTO `vtiger_import_maps` (`id`, `name`, `module`, `content`, `has_header`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `is_published`) VALUES
(1, 'Pro', 'Products', 0x44414e485241443d70726f647563746e616d652650524f323d70726f647563745f6e6f26313d646973636f6e74696e75656426546f796f74613d6d616e75666163747572657226d094d090d09dd0a5d0a0d090d0943d70726f6475637463617465676f727926373535313d73657269616c5f6e6f26323032332d31312d32312031373a34383a35353d6372656174656474696d652661646d696e3d6d6f64696669656462792631303030302e30303d756e69745f707269636526d188d0b8d180d185d18dd0b33d7573616765756e697426312e30303d7174795f7065725f756e69742634342e30303d717479696e73746f636b2661646d696e2832293d61737369676e65645f757365725f6964, 1, 0, '2023-11-21 10:19:54', NULL, '1', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_queue`
--

CREATE TABLE `vtiger_import_queue` (
  `importid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `field_mapping` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `merge_type` int(11) DEFAULT NULL,
  `merge_fields` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `lineitem_currency_id` int(5) DEFAULT NULL,
  `paging` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_queue_seq`
--

CREATE TABLE `vtiger_import_queue_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_import_queue_seq`
--

INSERT INTO `vtiger_import_queue_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_industry`
--

CREATE TABLE `vtiger_industry` (
  `industryid` int(19) NOT NULL,
  `industry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_industry`
--

INSERT INTO `vtiger_industry` (`industryid`, `industry`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Apparel', 1, 61, 1, NULL),
(3, 'Banking', 1, 62, 2, NULL),
(4, 'Biotechnology', 1, 63, 3, NULL),
(5, 'Chemicals', 1, 64, 4, NULL),
(6, 'Communications', 1, 65, 5, NULL),
(7, 'Construction', 1, 66, 6, NULL),
(8, 'Consulting', 1, 67, 7, NULL),
(9, 'Education', 1, 68, 8, NULL),
(10, 'Electronics', 1, 69, 9, NULL),
(11, 'Energy', 1, 70, 10, NULL),
(12, 'Engineering', 1, 71, 11, NULL),
(13, 'Entertainment', 1, 72, 12, NULL),
(14, 'Environmental', 1, 73, 13, NULL),
(15, 'Finance', 1, 74, 14, NULL),
(16, 'Food & Beverage', 1, 75, 15, NULL),
(17, 'Government', 1, 76, 16, NULL),
(18, 'Healthcare', 1, 77, 17, NULL),
(19, 'Hospitality', 1, 78, 18, NULL),
(20, 'Insurance', 1, 79, 19, NULL),
(21, 'Machinery', 1, 80, 20, NULL),
(22, 'Manufacturing', 1, 81, 21, NULL),
(23, 'Media', 1, 82, 22, NULL),
(24, 'Not For Profit', 1, 83, 23, NULL),
(25, 'Recreation', 1, 84, 24, NULL),
(26, 'Retail', 1, 85, 25, NULL),
(27, 'Shipping', 1, 86, 26, NULL),
(28, 'Technology', 1, 87, 27, NULL),
(29, 'Telecommunications', 1, 88, 28, NULL),
(30, 'Transportation', 1, 89, 29, NULL),
(31, 'Utilities', 1, 90, 30, NULL),
(32, 'Other', 1, 91, 31, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_industry_seq`
--

CREATE TABLE `vtiger_industry_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_industry_seq`
--

INSERT INTO `vtiger_industry_seq` (`id`) VALUES
(32);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorycharges`
--

CREATE TABLE `vtiger_inventorycharges` (
  `chargeid` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `format` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `value` decimal(12,5) DEFAULT NULL,
  `regions` text DEFAULT NULL,
  `istaxable` int(1) NOT NULL DEFAULT 1,
  `taxes` varchar(1024) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventorycharges`
--

INSERT INTO `vtiger_inventorycharges` (`chargeid`, `name`, `format`, `type`, `value`, `regions`, `istaxable`, `taxes`, `deleted`) VALUES
(1, 'Shipping & Handling', 'Flat', 'Fixed', NULL, '[]', 1, '[\"1\",\"2\",\"3\"]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorychargesrel`
--

CREATE TABLE `vtiger_inventorychargesrel` (
  `recordid` int(19) NOT NULL,
  `charges` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventorychargesrel`
--

INSERT INTO `vtiger_inventorychargesrel` (`recordid`, `charges`) VALUES
(33, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorynotification`
--

CREATE TABLE `vtiger_inventorynotification` (
  `notificationid` int(19) NOT NULL,
  `notificationname` varchar(200) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_inventorynotification_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventorynotification_seq`
--

INSERT INTO `vtiger_inventorynotification_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryproductrel`
--

CREATE TABLE `vtiger_inventoryproductrel` (
  `id` int(19) DEFAULT NULL,
  `productid` int(19) DEFAULT NULL,
  `sequence_no` int(4) DEFAULT NULL,
  `quantity` decimal(25,3) DEFAULT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `discount_percent` decimal(7,3) DEFAULT NULL,
  `discount_amount` decimal(27,8) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `incrementondel` int(11) NOT NULL DEFAULT 0,
  `lineitem_id` int(11) NOT NULL,
  `tax1` decimal(7,3) DEFAULT NULL,
  `tax2` decimal(7,3) DEFAULT NULL,
  `tax3` decimal(7,3) DEFAULT NULL,
  `image` varchar(2) DEFAULT NULL,
  `purchase_cost` decimal(27,8) DEFAULT NULL,
  `margin` decimal(27,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventoryproductrel`
--

INSERT INTO `vtiger_inventoryproductrel` (`id`, `productid`, `sequence_no`, `quantity`, `listprice`, `discount_percent`, `discount_amount`, `comment`, `description`, `incrementondel`, `lineitem_id`, `tax1`, `tax2`, `tax3`, `image`, `purchase_cost`, `margin`) VALUES
(33, 26, 1, 1.000, 10000.00000000, NULL, NULL, '', NULL, 0, 1, NULL, NULL, NULL, NULL, 0.00000000, 10000.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryproductrel_seq`
--

CREATE TABLE `vtiger_inventoryproductrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventoryproductrel_seq`
--

INSERT INTO `vtiger_inventoryproductrel_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryshippingrel`
--

CREATE TABLE `vtiger_inventoryshippingrel` (
  `id` int(19) DEFAULT NULL,
  `shtax1` decimal(7,3) DEFAULT NULL,
  `shtax2` decimal(7,3) DEFAULT NULL,
  `shtax3` decimal(7,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorysubproductrel`
--

CREATE TABLE `vtiger_inventorysubproductrel` (
  `id` int(19) NOT NULL,
  `sequence_no` int(10) NOT NULL,
  `productid` int(19) NOT NULL,
  `quantity` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorytaxinfo`
--

CREATE TABLE `vtiger_inventorytaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `compoundon` varchar(400) DEFAULT NULL,
  `regions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventorytaxinfo`
--

INSERT INTO `vtiger_inventorytaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`, `method`, `type`, `compoundon`, `regions`) VALUES
(1, 'tax1', 'VAT', 4.500, 1, 'Simple', 'Fixed', '[]', '[]'),
(2, 'tax2', 'Sales', 10.000, 1, 'Simple', 'Fixed', '[]', '[]'),
(3, 'tax3', 'Service', 12.500, 1, 'Simple', 'Fixed', '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorytaxinfo_seq`
--

CREATE TABLE `vtiger_inventorytaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventorytaxinfo_seq`
--

INSERT INTO `vtiger_inventorytaxinfo_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventory_tandc`
--

CREATE TABLE `vtiger_inventory_tandc` (
  `id` int(19) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tandc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventory_tandc`
--

INSERT INTO `vtiger_inventory_tandc` (`id`, `type`, `tandc`) VALUES
(2, 'Invoice', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(3, 'Quotes', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(4, 'PurchaseOrder', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(5, 'SalesOrder', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventory_tandc_seq`
--

CREATE TABLE `vtiger_inventory_tandc_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_inventory_tandc_seq`
--

INSERT INTO `vtiger_inventory_tandc_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invitees`
--

CREATE TABLE `vtiger_invitees` (
  `activityid` int(19) NOT NULL,
  `inviteeid` int(19) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoice`
--

CREATE TABLE `vtiger_invoice` (
  `invoiceid` int(19) NOT NULL DEFAULT 0,
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
  `terms_conditions` text DEFAULT NULL,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT 1.000,
  `compound_taxes_info` text DEFAULT NULL,
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `received` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` decimal(25,8) DEFAULT NULL,
  `potential_id` varchar(100) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `region_id` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicebillads`
--

CREATE TABLE `vtiger_invoicebillads` (
  `invoicebilladdressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicecf`
--

CREATE TABLE `vtiger_invoicecf` (
  `invoiceid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoiceshipads`
--

CREATE TABLE `vtiger_invoiceshipads` (
  `invoiceshipaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatus`
--

CREATE TABLE `vtiger_invoicestatus` (
  `invoicestatusid` int(19) NOT NULL,
  `invoicestatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_invoicestatus`
--

INSERT INTO `vtiger_invoicestatus` (`invoicestatusid`, `invoicestatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'AutoCreated', 0, 92, 0, NULL),
(2, 'Created', 0, 93, 1, NULL),
(3, 'Approved', 0, 94, 2, NULL),
(4, 'Sent', 0, 95, 3, NULL),
(5, 'Credit Invoice', 0, 96, 4, NULL),
(6, 'Paid', 0, 97, 5, NULL),
(7, 'Cancel', 1, 288, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatushistory`
--

CREATE TABLE `vtiger_invoicestatushistory` (
  `historyid` int(19) NOT NULL,
  `invoiceid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatus_seq`
--

CREATE TABLE `vtiger_invoicestatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_invoicestatus_seq`
--

INSERT INTO `vtiger_invoicestatus_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoice_recurring_info`
--

CREATE TABLE `vtiger_invoice_recurring_info` (
  `salesorderid` int(11) NOT NULL,
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `start_period` date DEFAULT NULL,
  `end_period` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `invoice_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_language`
--

CREATE TABLE `vtiger_language` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `isdefault` int(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_language`
--

INSERT INTO `vtiger_language` (`id`, `name`, `prefix`, `label`, `lastupdated`, `sequence`, `isdefault`, `active`) VALUES
(1, 'English', 'en_us', 'US English', '2023-11-17 07:35:41', NULL, 1, 1),
(2, 'Arabic', 'ar_ae', 'Arabic', '2023-11-17 07:36:06', NULL, 0, 1),
(3, 'Brazilian', 'pt_br', 'PT Brasil', '2023-11-17 07:35:59', NULL, 0, 1),
(4, 'British English', 'en_gb', 'British English', '2023-11-17 07:35:53', NULL, 0, 1),
(5, 'Deutsch', 'de_de', 'DE Deutsch', '2023-11-17 07:35:53', NULL, 0, 1),
(6, 'Dutch', 'nl_nl', 'NL-Dutch', '2023-11-17 07:35:53', NULL, 0, 1),
(7, 'Pack de langue français', 'fr_fr', 'Pack de langue français', '2023-11-17 07:35:59', NULL, 0, 1),
(8, 'Hungarian', 'hu_hu', 'HU Magyar', '2023-11-17 07:35:53', NULL, 0, 1),
(9, 'Italian', 'it_it', 'IT Italian', '2023-11-17 07:35:54', NULL, 0, 1),
(10, 'Mexican Spanish', 'es_mx', 'ES Mexico', '2023-11-17 07:35:54', NULL, 0, 1),
(11, 'Język Polski', 'pl_pl', 'Język Polski', '2023-11-17 07:35:59', NULL, 0, 1),
(12, 'Romana', 'ro_ro', 'Romana', '2023-11-17 07:35:59', NULL, 0, 1),
(13, 'Russian', 'ru_ru', 'Russian', '2023-11-17 07:35:57', NULL, 0, 1),
(14, 'Spanish', 'es_es', 'ES Spanish', '2023-11-17 07:35:57', NULL, 0, 1),
(15, 'Swedish', 'sv_se', 'Swedish', '2023-11-17 07:36:06', NULL, 0, 1),
(16, 'Turkce', 'tr_tr', 'Turkce Dil Paketi', '2023-11-17 07:35:57', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_language_seq`
--

CREATE TABLE `vtiger_language_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_language_seq`
--

INSERT INTO `vtiger_language_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadaddress`
--

CREATE TABLE `vtiger_leadaddress` (
  `leadaddressid` int(19) NOT NULL DEFAULT 0,
  `city` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `lane` varchar(250) DEFAULT NULL,
  `leadaddresstype` varchar(30) DEFAULT 'Billing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leaddetails`
--

CREATE TABLE `vtiger_leaddetails` (
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
  `leadstatus` varchar(200) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `converted` int(1) DEFAULT 0,
  `designation` varchar(50) DEFAULT 'SalesMan',
  `licencekeystatus` varchar(50) DEFAULT NULL,
  `space` varchar(250) DEFAULT NULL,
  `comments` text DEFAULT NULL,
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
  `assignleadchk` int(1) DEFAULT 0,
  `emailoptout` varchar(3) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadscf`
--

CREATE TABLE `vtiger_leadscf` (
  `leadid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsource`
--

CREATE TABLE `vtiger_leadsource` (
  `leadsourceid` int(19) NOT NULL,
  `leadsource` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_leadsource`
--

INSERT INTO `vtiger_leadsource` (`leadsourceid`, `leadsource`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Cold Call', 1, 99, 1, NULL),
(3, 'Existing Customer', 1, 100, 2, NULL),
(4, 'Self Generated', 1, 101, 3, NULL),
(5, 'Employee', 1, 102, 4, NULL),
(6, 'Partner', 1, 103, 5, NULL),
(7, 'Public Relations', 1, 104, 6, NULL),
(8, 'Direct Mail', 1, 105, 7, NULL),
(9, 'Conference', 1, 106, 8, NULL),
(10, 'Trade Show', 1, 107, 9, NULL),
(11, 'Web Site', 1, 108, 10, NULL),
(12, 'Word of mouth', 1, 109, 11, NULL),
(13, 'Other', 1, 110, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsource_seq`
--

CREATE TABLE `vtiger_leadsource_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_leadsource_seq`
--

INSERT INTO `vtiger_leadsource_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstage`
--

CREATE TABLE `vtiger_leadstage` (
  `leadstageid` int(19) NOT NULL,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstatus`
--

CREATE TABLE `vtiger_leadstatus` (
  `leadstatusid` int(19) NOT NULL,
  `leadstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_leadstatus`
--

INSERT INTO `vtiger_leadstatus` (`leadstatusid`, `leadstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Attempted to Contact', 1, 112, 1, NULL),
(3, 'Cold', 1, 113, 2, NULL),
(4, 'Contact in Future', 1, 114, 3, NULL),
(5, 'Contacted', 1, 115, 4, NULL),
(6, 'Hot', 1, 116, 5, NULL),
(7, 'Junk Lead', 1, 117, 6, NULL),
(8, 'Lost Lead', 1, 118, 7, NULL),
(9, 'Not Contacted', 1, 119, 8, NULL),
(10, 'Pre Qualified', 1, 120, 9, NULL),
(11, 'Qualified', 1, 121, 10, NULL),
(12, 'Warm', 1, 122, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstatus_seq`
--

CREATE TABLE `vtiger_leadstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_leadstatus_seq`
--

INSERT INTO `vtiger_leadstatus_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsubdetails`
--

CREATE TABLE `vtiger_leadsubdetails` (
  `leadsubscriptionid` int(19) NOT NULL DEFAULT 0,
  `website` varchar(255) DEFAULT NULL,
  `callornot` int(1) DEFAULT 0,
  `readornot` int(1) DEFAULT 0,
  `empct` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_lead_view`
--

CREATE TABLE `vtiger_lead_view` (
  `lead_viewid` int(19) NOT NULL,
  `lead_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_lead_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_lead_view_seq`
--

INSERT INTO `vtiger_lead_view_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_links`
--

CREATE TABLE `vtiger_links` (
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
  `parent_link` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_links`
--

INSERT INTO `vtiger_links` (`linkid`, `tabid`, `linktype`, `linklabel`, `linkurl`, `linkicon`, `sequence`, `handler_path`, `handler_class`, `handler`, `parent_link`) VALUES
(2, 6, 'DETAILVIEW', 'LBL_SHOW_ACCOUNT_HIERARCHY', 'index.php?module=Accounts&action=AccountHierarchy&accountid=$RECORD$', '', 0, NULL, NULL, NULL, NULL),
(11, 7, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(12, 4, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(13, 6, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(14, 2, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(15, 42, 'HEADERSCRIPT', 'ModCommentsCommonHeaderScript', 'modules/ModComments/ModCommentsCommon.js', '', 0, NULL, NULL, NULL, NULL),
(21, 47, 'HEADERSCRIPT', 'SMSNotifierCommonJS', 'modules/SMSNotifier/SMSNotifierCommon.js', '', 0, NULL, NULL, NULL, NULL),
(22, 7, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');', '', 0, NULL, NULL, NULL, NULL),
(23, 7, 'DETAILVIEW', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');', '', 0, NULL, NULL, NULL, NULL),
(24, 4, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');', '', 0, NULL, NULL, NULL, NULL),
(25, 4, 'DETAILVIEW', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');', '', 0, NULL, NULL, NULL, NULL),
(26, 6, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');', '', 0, NULL, NULL, NULL, NULL),
(27, 6, 'DETAILVIEW', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');', '', 0, NULL, NULL, NULL, NULL),
(28, 49, 'HEADERSCRIPT', 'ExtensionStoreCommonHeaderScript', 'modules/ExtensionStore/ExtensionStore.js', '', 0, NULL, NULL, NULL, NULL),
(30, 44, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(31, 45, 'DETAILVIEWBASIC', 'Add Project Task', 'index.php?module=ProjectTask&action=EditView&projectid=$RECORD$&return_module=Project&return_action=DetailView&return_id=$RECORD$', '', 0, 'modules/ProjectTask/ProjectTask.php', 'ProjectTask', 'isLinkPermitted', NULL),
(33, 45, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(34, 2, 'DASHBOARDWIDGET', 'History', 'index.php?module=Potentials&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(35, 2, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Potentials&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(36, 2, 'DASHBOARDWIDGET', 'Funnel', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage', '', 3, NULL, NULL, NULL, NULL),
(37, 2, 'DASHBOARDWIDGET', 'Potentials by Stage', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson', '', 4, NULL, NULL, NULL, NULL),
(38, 2, 'DASHBOARDWIDGET', 'Pipelined Amount', 'index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson', '', 5, NULL, NULL, NULL, NULL),
(39, 2, 'DASHBOARDWIDGET', 'Total Revenue', 'index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson', '', 6, NULL, NULL, NULL, NULL),
(40, 2, 'DASHBOARDWIDGET', 'Top Potentials', 'index.php?module=Potentials&view=ShowWidget&name=TopPotentials', '', 7, NULL, NULL, NULL, NULL),
(41, 2, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Potentials&view=ShowWidget&name=OverdueActivities', '', 9, NULL, NULL, NULL, NULL),
(42, 6, 'DASHBOARDWIDGET', 'History', 'index.php?module=Accounts&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(43, 6, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Accounts&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(44, 6, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Accounts&view=ShowWidget&name=OverdueActivities', '', 3, NULL, NULL, NULL, NULL),
(45, 4, 'DASHBOARDWIDGET', 'History', 'index.php?module=Contacts&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(46, 4, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Contacts&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(47, 4, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Contacts&view=ShowWidget&name=OverdueActivities', '', 3, NULL, NULL, NULL, NULL),
(48, 7, 'DASHBOARDWIDGET', 'History', 'index.php?module=Leads&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(49, 7, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Leads&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(50, 7, 'DASHBOARDWIDGET', 'Leads by Status', 'index.php?module=Leads&view=ShowWidget&name=LeadsByStatus', '', 4, NULL, NULL, NULL, NULL),
(51, 7, 'DASHBOARDWIDGET', 'Leads by Source', 'index.php?module=Leads&view=ShowWidget&name=LeadsBySource', '', 5, NULL, NULL, NULL, NULL),
(52, 7, 'DASHBOARDWIDGET', 'Leads by Industry', 'index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry', '', 6, NULL, NULL, NULL, NULL),
(53, 7, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Leads&view=ShowWidget&name=OverdueActivities', '', 7, NULL, NULL, NULL, NULL),
(54, 13, 'DASHBOARDWIDGET', 'Tickets by Status', 'index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus', '', 1, NULL, NULL, NULL, NULL),
(55, 13, 'DASHBOARDWIDGET', 'Open Tickets', 'index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets', '', 2, NULL, NULL, NULL, NULL),
(56, 3, 'DASHBOARDWIDGET', 'History', 'index.php?module=Home&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(57, 3, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Home&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(58, 3, 'DASHBOARDWIDGET', 'Funnel', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage', '', 3, NULL, NULL, NULL, NULL),
(59, 3, 'DASHBOARDWIDGET', 'Potentials by Stage', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson', '', 4, NULL, NULL, NULL, NULL),
(60, 3, 'DASHBOARDWIDGET', 'Pipelined Amount', 'index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson', '', 5, NULL, NULL, NULL, NULL),
(61, 3, 'DASHBOARDWIDGET', 'Total Revenue', 'index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson', '', 6, NULL, NULL, NULL, NULL),
(62, 3, 'DASHBOARDWIDGET', 'Top Potentials', 'index.php?module=Potentials&view=ShowWidget&name=TopPotentials', '', 7, NULL, NULL, NULL, NULL),
(63, 3, 'DASHBOARDWIDGET', 'Leads by Status', 'index.php?module=Leads&view=ShowWidget&name=LeadsByStatus', '', 10, NULL, NULL, NULL, NULL),
(64, 3, 'DASHBOARDWIDGET', 'Leads by Source', 'index.php?module=Leads&view=ShowWidget&name=LeadsBySource', '', 11, NULL, NULL, NULL, NULL),
(65, 3, 'DASHBOARDWIDGET', 'Leads by Industry', 'index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry', '', 12, NULL, NULL, NULL, NULL),
(66, 3, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Home&view=ShowWidget&name=OverdueActivities', '', 13, NULL, NULL, NULL, NULL),
(67, 3, 'DASHBOARDWIDGET', 'Tickets by Status', 'index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus', '', 13, NULL, NULL, NULL, NULL),
(68, 3, 'DASHBOARDWIDGET', 'Open Tickets', 'index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets', '', 14, NULL, NULL, NULL, NULL),
(69, 13, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(70, 15, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(99, 3, 'DASHBOARDWIDGET', 'Key Metrics', 'index.php?module=Home&view=ShowWidget&name=KeyMetrics', '', 0, NULL, NULL, NULL, NULL),
(100, 3, 'DASHBOARDWIDGET', 'Mini List', 'index.php?module=Home&view=ShowWidget&name=MiniList', '', 0, NULL, NULL, NULL, NULL),
(101, 3, 'DASHBOARDWIDGET', 'Tag Cloud', 'index.php?module=Home&view=ShowWidget&name=TagCloud', '', 0, NULL, NULL, NULL, NULL),
(102, 2, 'DASHBOARDWIDGET', 'Funnel Amount', 'index.php?module=Potentials&view=ShowWidget&name=FunnelAmount', '', 10, NULL, NULL, NULL, NULL),
(103, 3, 'DASHBOARDWIDGET', 'Funnel Amount', 'index.php?module=Potentials&view=ShowWidget&name=FunnelAmount', '', 10, NULL, NULL, NULL, NULL),
(104, 3, 'DASHBOARDWIDGET', 'Notebook', 'index.php?module=Home&view=ShowWidget&name=Notebook', '', 0, NULL, NULL, NULL, NULL),
(105, 25, 'LISTVIEWBASIC', 'LBL_ADD_RECORD', '', '', 0, NULL, NULL, NULL, NULL),
(106, 25, 'LISTVIEWBASIC', 'LBL_DETAIL_REPORT', 'javascript:Reports_List_Js.addReport(\"index.php?module=Reports&view=Edit\")', '', 0, 'modules/Reports/models/Module.php', 'Reports_Module_Model', 'checkLinkAccess', 105),
(107, 25, 'LISTVIEWBASIC', 'LBL_CHARTS', 'javascript:Reports_List_Js.addReport(\"index.php?module=Reports&view=ChartEdit\")', '', 0, 'modules/Reports/models/Module.php', 'Reports_Module_Model', 'checkLinkAccess', 105),
(108, 25, 'LISTVIEWBASIC', 'LBL_ADD_FOLDER', 'javascript:Reports_List_Js.triggerAddFolder(\"index.php?module=Reports&view=EditFolder\")', '', 0, 'modules/Reports/models/Module.php', 'Reports_Module_Model', 'checkLinkAccess', NULL),
(109, 4, 'EXTENSIONLINK', 'Google', 'index.php?module=Contacts&view=Extension&extensionModule=Google&extensionView=Index', '', 0, NULL, NULL, NULL, NULL),
(110, 9, 'EXTENSIONLINK', 'Google', 'index.php?module=Calendar&view=Extension&extensionModule=Google&extensionView=Index', '', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_links_seq`
--

CREATE TABLE `vtiger_links_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_links_seq`
--

INSERT INTO `vtiger_links_seq` (`id`) VALUES
(110);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_loginhistory`
--

CREATE TABLE `vtiger_loginhistory` (
  `login_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_ip` varchar(25) NOT NULL,
  `logout_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `login_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_loginhistory`
--

INSERT INTO `vtiger_loginhistory` (`login_id`, `user_name`, `user_ip`, `logout_time`, `login_time`, `status`) VALUES
(1, 'admin', '::1', '2023-11-16 23:36:27', '2023-11-17 07:36:27', 'Signed in'),
(2, 'admin', '::1', '2023-11-21 23:23:50', '2023-11-22 07:23:50', 'Signed in');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailer_queue`
--

CREATE TABLE `vtiger_mailer_queue` (
  `id` int(11) NOT NULL,
  `fromname` varchar(100) DEFAULT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `mailer` varchar(10) DEFAULT NULL,
  `content_type` varchar(15) DEFAULT NULL,
  `subject` varchar(999) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `relcrmid` int(11) DEFAULT NULL,
  `failed` int(1) NOT NULL DEFAULT 0,
  `failreason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailer_queueattachments`
--

CREATE TABLE `vtiger_mailer_queueattachments` (
  `id` int(11) DEFAULT NULL,
  `path` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `encoding` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailer_queueinfo`
--

CREATE TABLE `vtiger_mailer_queueinfo` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailattachments`
--

CREATE TABLE `vtiger_mailmanager_mailattachments` (
  `userid` int(11) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  `attachid` int(19) NOT NULL,
  `path` varchar(200) NOT NULL,
  `cid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailrecord`
--

CREATE TABLE `vtiger_mailmanager_mailrecord` (
  `userid` int(11) DEFAULT NULL,
  `mfrom` varchar(255) DEFAULT NULL,
  `mto` varchar(255) DEFAULT NULL,
  `mcc` varchar(500) DEFAULT NULL,
  `mbcc` varchar(500) DEFAULT NULL,
  `mdate` varchar(20) DEFAULT NULL,
  `msubject` varchar(500) DEFAULT NULL,
  `mbody` text DEFAULT NULL,
  `mcharset` varchar(10) DEFAULT NULL,
  `misbodyhtml` int(1) DEFAULT NULL,
  `mplainmessage` int(1) DEFAULT NULL,
  `mhtmlmessage` int(1) DEFAULT NULL,
  `muniqueid` varchar(500) DEFAULT NULL,
  `mbodyparsed` int(1) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  `folder` varchar(250) DEFAULT NULL,
  `mfolder` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailrel`
--

CREATE TABLE `vtiger_mailmanager_mailrel` (
  `mailuid` varchar(999) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  `emailid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner`
--

CREATE TABLE `vtiger_mailscanner` (
  `scannerid` int(11) NOT NULL,
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
  `scanfrom` varchar(10) DEFAULT 'ALL',
  `time_zone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_actions`
--

CREATE TABLE `vtiger_mailscanner_actions` (
  `actionid` int(11) NOT NULL,
  `scannerid` int(11) DEFAULT NULL,
  `actiontype` varchar(10) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `lookup` varchar(30) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_folders`
--

CREATE TABLE `vtiger_mailscanner_folders` (
  `folderid` int(11) NOT NULL,
  `scannerid` int(11) DEFAULT NULL,
  `foldername` varchar(255) DEFAULT NULL,
  `lastscan` varchar(30) DEFAULT NULL,
  `rescan` int(1) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_ids`
--

CREATE TABLE `vtiger_mailscanner_ids` (
  `scannerid` int(11) DEFAULT NULL,
  `messageid` varchar(512) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  `refids` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_ruleactions`
--

CREATE TABLE `vtiger_mailscanner_ruleactions` (
  `ruleid` int(11) DEFAULT NULL,
  `actionid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_rules`
--

CREATE TABLE `vtiger_mailscanner_rules` (
  `ruleid` int(11) NOT NULL,
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
  `bcc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mail_accounts`
--

CREATE TABLE `vtiger_mail_accounts` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `mail_protocol` varchar(20) DEFAULT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` text DEFAULT NULL,
  `mail_servername` varchar(50) DEFAULT NULL,
  `box_refresh` int(10) DEFAULT NULL,
  `mails_per_page` int(10) DEFAULT NULL,
  `ssltype` varchar(50) DEFAULT NULL,
  `sslmeth` varchar(50) DEFAULT NULL,
  `int_mailer` int(1) DEFAULT 0,
  `status` varchar(10) DEFAULT NULL,
  `set_default` int(2) DEFAULT NULL,
  `sent_folder` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_manufacturer`
--

CREATE TABLE `vtiger_manufacturer` (
  `manufacturerid` int(19) NOT NULL,
  `manufacturer` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_manufacturer`
--

INSERT INTO `vtiger_manufacturer` (`manufacturerid`, `manufacturer`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Toyota', 1, 124, 1, '#ffffff'),
(3, 'Nissan', 1, 125, 2, '#ffffff'),
(4, 'Honda', 1, 126, 3, '#ffffff'),
(5, 'Mitsubishi', 1, 305, 4, '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_manufacturer_seq`
--

CREATE TABLE `vtiger_manufacturer_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_manufacturer_seq`
--

INSERT INTO `vtiger_manufacturer_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mobile_alerts`
--

CREATE TABLE `vtiger_mobile_alerts` (
  `id` int(11) NOT NULL,
  `handler_path` varchar(500) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_modcomments` (
  `modcommentsid` int(11) DEFAULT NULL,
  `commentcontent` text DEFAULT NULL,
  `related_to` int(19) DEFAULT NULL,
  `parent_comments` int(19) DEFAULT NULL,
  `customer` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `reasontoedit` varchar(100) DEFAULT NULL,
  `is_private` int(1) DEFAULT 0,
  `filename` varchar(255) DEFAULT NULL,
  `related_email_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modcommentscf`
--

CREATE TABLE `vtiger_modcommentscf` (
  `modcommentsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modentity_num`
--

CREATE TABLE `vtiger_modentity_num` (
  `num_id` int(19) NOT NULL,
  `semodule` varchar(100) DEFAULT NULL,
  `prefix` varchar(50) NOT NULL DEFAULT '',
  `start_id` varchar(50) NOT NULL,
  `cur_id` varchar(50) NOT NULL,
  `active` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_modentity_num`
--

INSERT INTO `vtiger_modentity_num` (`num_id`, `semodule`, `prefix`, `start_id`, `cur_id`, `active`) VALUES
(1, 'Leads', 'LEA', '1', '1', '1'),
(2, 'Accounts', 'ACC', '1', '1', '1'),
(3, 'Campaigns', 'CAM', '1', '1', '1'),
(4, 'Contacts', 'CON', '1', '1', '1'),
(5, 'Potentials', 'POT', '1', '1', '1'),
(6, 'HelpDesk', 'TT', '1', '1', '1'),
(7, 'Quotes', 'QUO', '1', '1', '1'),
(8, 'SalesOrder', 'SO', '1', '2', '1'),
(9, 'PurchaseOrder', 'PO', '1', '1', '1'),
(10, 'Invoice', 'INV', '1', '1', '1'),
(11, 'Products', 'PRO', '1', '32', '1'),
(12, 'Vendors', 'VEN', '1', '1', '1'),
(13, 'PriceBooks', 'PB', '1', '1', '1'),
(14, 'Faq', 'FAQ', '1', '1', '1'),
(15, 'Documents', 'DOC', '1', '1', '1'),
(16, 'ServiceContracts', 'SERCON', '1', '1', '1'),
(17, 'Services', 'SER', '1', '1', '1'),
(18, 'Assets', 'ASSET', '1', '1', '1'),
(19, 'ProjectMilestone', 'PM', '1', '1', '1'),
(20, 'ProjectTask', 'PT', '1', '1', '1'),
(21, 'Project', 'PROJ', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modentity_num_seq`
--

CREATE TABLE `vtiger_modentity_num_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_modentity_num_seq`
--

INSERT INTO `vtiger_modentity_num_seq` (`id`) VALUES
(21);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_basic`
--

CREATE TABLE `vtiger_modtracker_basic` (
  `id` int(20) NOT NULL,
  `crmid` int(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `whodid` int(20) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_modtracker_basic`
--

INSERT INTO `vtiger_modtracker_basic` (`id`, `crmid`, `module`, `whodid`, `changedon`, `status`) VALUES
(1, 2, 'Products', 1, '2023-11-21 09:48:55', 2),
(2, 3, 'Products', 1, '2023-11-21 10:07:22', 1),
(3, 4, 'Products', 1, '2023-11-21 10:07:22', 1),
(4, 5, 'Products', 1, '2023-11-21 10:07:22', 1),
(5, 6, 'Products', 1, '2023-11-21 10:07:22', 1),
(6, 7, 'Products', 1, '2023-11-21 10:07:22', 1),
(7, 8, 'Products', 1, '2023-11-21 10:07:22', 1),
(8, 9, 'Products', 1, '2023-11-21 10:07:22', 1),
(9, 10, 'Products', 1, '2023-11-21 10:07:22', 1),
(10, 18, 'Products', 1, '2023-11-21 10:13:55', 1),
(11, 17, 'Products', 1, '2023-11-21 10:13:55', 1),
(12, 16, 'Products', 1, '2023-11-21 10:13:55', 1),
(13, 15, 'Products', 1, '2023-11-21 10:13:55', 1),
(14, 14, 'Products', 1, '2023-11-21 10:13:55', 1),
(15, 13, 'Products', 1, '2023-11-21 10:13:55', 1),
(16, 12, 'Products', 1, '2023-11-21 10:13:55', 1),
(17, 11, 'Products', 1, '2023-11-21 10:13:55', 1),
(18, 19, 'Products', 1, '2023-11-21 10:18:09', 1),
(19, 20, 'Products', 1, '2023-11-21 10:18:09', 1),
(20, 21, 'Products', 1, '2023-11-21 10:18:09', 1),
(21, 22, 'Products', 1, '2023-11-21 10:18:09', 1),
(22, 23, 'Products', 1, '2023-11-21 10:18:09', 1),
(23, 24, 'Products', 1, '2023-11-21 10:18:09', 1),
(24, 25, 'Products', 1, '2023-11-21 10:18:09', 1),
(25, 2, 'Products', 1, '2023-11-21 10:18:09', 1),
(26, 33, 'SalesOrder', 1, '2023-11-22 05:59:21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_basic_seq`
--

CREATE TABLE `vtiger_modtracker_basic_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_modtracker_basic_seq`
--

INSERT INTO `vtiger_modtracker_basic_seq` (`id`) VALUES
(26);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_detail`
--

CREATE TABLE `vtiger_modtracker_detail` (
  `id` int(11) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  `prevalue` text DEFAULT NULL,
  `postvalue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_modtracker_detail`
--

INSERT INTO `vtiger_modtracker_detail` (`id`, `fieldname`, `prevalue`, `postvalue`) VALUES
(1, 'label', NULL, 'CROWN 4GR 2,5cc'),
(1, 'productname', NULL, 'CROWN 4GR 2,5cc'),
(1, 'product_no', NULL, 'PRO1'),
(1, 'discontinued', NULL, '1'),
(1, 'manufacturer', NULL, 'Toyota'),
(1, 'productcategory', NULL, 'КАТУШИК'),
(1, 'serial_no', NULL, '4962'),
(1, 'createdtime', NULL, '2023-11-21 09:48:55'),
(1, 'modifiedby', NULL, '1'),
(1, 'unit_price', NULL, '150000.00000000'),
(1, 'usageunit', NULL, 'ширхэг'),
(1, 'qty_per_unit', NULL, '1.00'),
(1, 'qtyinstock', NULL, '54.000'),
(1, 'assigned_user_id', NULL, '1'),
(1, 'source', NULL, 'CRM'),
(1, 'record_id', NULL, '2'),
(1, 'record_module', NULL, 'Products'),
(26, 'label', NULL, 'Борлуулалт'),
(26, 'salesorder_no', NULL, 'SO1'),
(26, 'subject', NULL, 'Борлуулалт'),
(26, 'customerno', NULL, '45465465'),
(26, 'sostatus', NULL, 'Approved'),
(26, 'txtAdjustment', NULL, '0.00000000'),
(26, 'hdnGrandTotal', NULL, '10000.00000000'),
(26, 'hdnSubTotal', NULL, '10000.00000000'),
(26, 'hdnTaxType', NULL, 'group'),
(26, 'hdnS_H_Amount', NULL, '0.00000000'),
(26, 'assigned_user_id', NULL, '1'),
(26, 'createdtime', NULL, '2023-11-22 05:59:21'),
(26, 'modifiedby', NULL, '1'),
(26, 'currency_id', NULL, '1'),
(26, 'conversion_rate', NULL, '1.000'),
(26, 'productid', NULL, '26'),
(26, 'quantity', NULL, '1.000'),
(26, 'listprice', NULL, '10000.00000000'),
(26, 'pre_tax_total', NULL, '10000.00000000'),
(26, 'source', NULL, 'CRM'),
(26, 'record_id', NULL, '33'),
(26, 'record_module', NULL, 'SalesOrder');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_relations`
--

CREATE TABLE `vtiger_modtracker_relations` (
  `id` int(19) NOT NULL,
  `targetmodule` varchar(100) NOT NULL,
  `targetid` int(19) NOT NULL,
  `changedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_tabs`
--

CREATE TABLE `vtiger_modtracker_tabs` (
  `tabid` int(11) NOT NULL,
  `visible` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(34, 1),
(35, 1),
(36, 1),
(38, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_module_dashboard_widgets`
--

CREATE TABLE `vtiger_module_dashboard_widgets` (
  `id` int(19) NOT NULL,
  `linkid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `filterid` int(19) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `reportid` int(19) DEFAULT NULL,
  `dashboardtabid` int(11) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notebook_contents`
--

CREATE TABLE `vtiger_notebook_contents` (
  `userid` int(19) NOT NULL,
  `notebookid` int(19) NOT NULL,
  `contents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notes`
--

CREATE TABLE `vtiger_notes` (
  `notesid` int(19) NOT NULL DEFAULT 0,
  `note_no` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `notecontent` text DEFAULT NULL,
  `folderid` int(19) NOT NULL DEFAULT 1,
  `filetype` varchar(50) DEFAULT NULL,
  `filelocationtype` varchar(5) DEFAULT NULL,
  `filedownloadcount` int(19) DEFAULT NULL,
  `filestatus` int(19) DEFAULT NULL,
  `filesize` int(19) NOT NULL DEFAULT 0,
  `fileversion` varchar(50) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notescf`
--

CREATE TABLE `vtiger_notescf` (
  `notesid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notificationscheduler`
--

CREATE TABLE `vtiger_notificationscheduler` (
  `schedulednotificationid` int(19) NOT NULL,
  `schedulednotificationname` varchar(200) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_notificationscheduler_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_notificationscheduler_seq`
--

INSERT INTO `vtiger_notificationscheduler_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_no_of_currency_decimals`
--

CREATE TABLE `vtiger_no_of_currency_decimals` (
  `no_of_currency_decimalsid` int(11) NOT NULL,
  `no_of_currency_decimals` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_no_of_currency_decimals`
--

INSERT INTO `vtiger_no_of_currency_decimals` (`no_of_currency_decimalsid`, `no_of_currency_decimals`, `sortorderid`, `presence`) VALUES
(2, '2', 2, 1),
(3, '3', 3, 1),
(4, '4', 4, 1),
(5, '5', 5, 1),
(6, '0', 0, 1),
(7, '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_no_of_currency_decimals_seq`
--

CREATE TABLE `vtiger_no_of_currency_decimals_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_no_of_currency_decimals_seq`
--

INSERT INTO `vtiger_no_of_currency_decimals_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunitystage`
--

CREATE TABLE `vtiger_opportunitystage` (
  `potstageid` int(19) NOT NULL,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1,
  `probability` decimal(3,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunity_type`
--

CREATE TABLE `vtiger_opportunity_type` (
  `opptypeid` int(19) NOT NULL,
  `opportunity_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_opportunity_type`
--

INSERT INTO `vtiger_opportunity_type` (`opptypeid`, `opportunity_type`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Existing Business', 1, 128, 1, NULL),
(3, 'New Business', 1, 129, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunity_type_seq`
--

CREATE TABLE `vtiger_opportunity_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_opportunity_type_seq`
--

INSERT INTO `vtiger_opportunity_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_organizationdetails`
--

CREATE TABLE `vtiger_organizationdetails` (
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
  `logo` text DEFAULT NULL,
  `vatid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_organizationdetails`
--

INSERT INTO `vtiger_organizationdetails` (`organization_id`, `organizationname`, `address`, `city`, `state`, `country`, `code`, `phone`, `fax`, `website`, `logoname`, `logo`, `vatid`) VALUES
(1, 'SS Motors', 'БЗД 4-р хороо, Их засаг их сургуулиас зүүн тийш 300 метр,', 'Улаанбаатар', '', 'Монгол улс', '560010', ' 9905 0526', '', 'https://www.facebook.com/ssmotorsmongolia/', 'download.jpg', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_organizationdetails_seq`
--

CREATE TABLE `vtiger_organizationdetails_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_organizationdetails_seq`
--

INSERT INTO `vtiger_organizationdetails_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_org_share_action2tab`
--

CREATE TABLE `vtiger_org_share_action2tab` (
  `share_action_id` int(19) NOT NULL,
  `tabid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(0, 34),
(0, 35),
(0, 36),
(0, 38),
(0, 42),
(0, 43),
(0, 44),
(0, 45),
(0, 47),
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
(1, 34),
(1, 35),
(1, 36),
(1, 38),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 47),
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
(2, 34),
(2, 35),
(2, 36),
(2, 38),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 47),
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
(3, 34),
(3, 35),
(3, 36),
(3, 38),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
(3, 47);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_org_share_action_mapping`
--

CREATE TABLE `vtiger_org_share_action_mapping` (
  `share_action_id` int(19) NOT NULL,
  `share_action_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_othereventduration` (
  `othereventdurationid` int(11) NOT NULL,
  `othereventduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_othereventduration`
--

INSERT INTO `vtiger_othereventduration` (`othereventdurationid`, `othereventduration`, `sortorderid`, `presence`) VALUES
(1, '5', 0, 1),
(2, '10', 1, 1),
(3, '30', 2, 1),
(4, '60', 3, 1),
(5, '120', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_othereventduration_seq`
--

CREATE TABLE `vtiger_othereventduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_othereventduration_seq`
--

INSERT INTO `vtiger_othereventduration_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_parenttab`
--

CREATE TABLE `vtiger_parenttab` (
  `parenttabid` int(19) NOT NULL,
  `parenttab_label` varchar(100) NOT NULL,
  `sequence` int(10) NOT NULL,
  `visible` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_parenttabrel` (
  `parenttabid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sequence` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(7, 31, 4),
(7, 31, 5),
(7, 34, 6),
(7, 34, 7),
(4, 35, 9),
(4, 35, 10),
(6, 36, 8),
(6, 36, 9),
(6, 38, 10),
(6, 38, 11),
(7, 40, 8),
(7, 40, 9),
(4, 43, 11),
(4, 43, 12),
(4, 44, 13),
(4, 44, 14),
(4, 45, 15),
(4, 45, 16),
(7, 46, 10),
(7, 46, 11),
(3, 47, 12),
(3, 47, 13),
(8, 49, 1),
(8, 49, 2),
(7, 24, 12),
(7, 27, 13),
(7, 40, 14),
(7, 46, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_payment_duration`
--

CREATE TABLE `vtiger_payment_duration` (
  `payment_duration_id` int(11) DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_payment_duration`
--

INSERT INTO `vtiger_payment_duration` (`payment_duration_id`, `payment_duration`, `sortorderid`, `presence`, `color`) VALUES
(1, 'Net 30 days', 6, 1, NULL),
(2, 'Net 45 days', 7, 1, NULL),
(3, 'Net 60 days', 8, 1, NULL),
(4, 'Net 01 day', 1, 1, NULL),
(5, 'Net 05 days', 2, 1, NULL),
(6, 'Net 07 days', 3, 1, NULL),
(7, 'Net 10 days', 4, 1, NULL),
(8, 'Net 15 days', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_payment_duration_seq`
--

CREATE TABLE `vtiger_payment_duration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_payment_duration_seq`
--

INSERT INTO `vtiger_payment_duration_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager`
--

CREATE TABLE `vtiger_pbxmanager` (
  `pbxmanagerid` int(20) NOT NULL,
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
  `customertype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanagercf`
--

CREATE TABLE `vtiger_pbxmanagercf` (
  `pbxmanagerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager_gateway`
--

CREATE TABLE `vtiger_pbxmanager_gateway` (
  `id` int(11) NOT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager_phonelookup`
--

CREATE TABLE `vtiger_pbxmanager_phonelookup` (
  `crmid` int(20) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL,
  `fnumber` varchar(100) DEFAULT NULL,
  `rnumber` varchar(100) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist`
--

CREATE TABLE `vtiger_picklist` (
  `picklistid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(49, 'defaultlandingpage'),
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

CREATE TABLE `vtiger_picklistvalues_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_picklistvalues_seq`
--

INSERT INTO `vtiger_picklistvalues_seq` (`id`) VALUES
(305);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_dependency`
--

CREATE TABLE `vtiger_picklist_dependency` (
  `id` int(11) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sourcefield` varchar(255) DEFAULT NULL,
  `targetfield` varchar(255) DEFAULT NULL,
  `sourcevalue` varchar(100) DEFAULT NULL,
  `targetvalues` text DEFAULT NULL,
  `criteria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_seq`
--

CREATE TABLE `vtiger_picklist_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_picklist_seq`
--

INSERT INTO `vtiger_picklist_seq` (`id`) VALUES
(49);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_transitions`
--

CREATE TABLE `vtiger_picklist_transitions` (
  `fieldname` varchar(255) NOT NULL,
  `module` varchar(100) NOT NULL,
  `transition_data` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pobillads`
--

CREATE TABLE `vtiger_pobillads` (
  `pobilladdressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portal`
--

CREATE TABLE `vtiger_portal` (
  `portalid` int(19) NOT NULL,
  `portalname` varchar(200) NOT NULL,
  `portalurl` varchar(255) NOT NULL,
  `sequence` int(3) NOT NULL,
  `setdefault` int(3) NOT NULL DEFAULT 0,
  `createdtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portalinfo`
--

CREATE TABLE `vtiger_portalinfo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `cryptmode` varchar(20) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_poshipads`
--

CREATE TABLE `vtiger_poshipads` (
  `poshipaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatus`
--

CREATE TABLE `vtiger_postatus` (
  `postatusid` int(19) NOT NULL,
  `postatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_postatus`
--

INSERT INTO `vtiger_postatus` (`postatusid`, `postatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Created', 0, 130, 0, NULL),
(2, 'Approved', 0, 131, 1, NULL),
(3, 'Delivered', 0, 132, 2, NULL),
(4, 'Cancelled', 0, 133, 3, NULL),
(5, 'Received Shipment', 0, 134, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatushistory`
--

CREATE TABLE `vtiger_postatushistory` (
  `historyid` int(19) NOT NULL,
  `purchaseorderid` int(19) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `postatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatus_seq`
--

CREATE TABLE `vtiger_postatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_postatus_seq`
--

INSERT INTO `vtiger_postatus_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potential`
--

CREATE TABLE `vtiger_potential` (
  `potentialid` int(19) NOT NULL DEFAULT 0,
  `potential_no` varchar(100) NOT NULL,
  `related_to` int(19) DEFAULT NULL,
  `potentialname` varchar(120) NOT NULL,
  `amount` decimal(25,8) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `closingdate` date DEFAULT NULL,
  `typeofrevenue` varchar(50) DEFAULT NULL,
  `nextstep` varchar(100) DEFAULT NULL,
  `private` int(1) DEFAULT 0,
  `probability` decimal(7,3) DEFAULT 0.000,
  `campaignid` int(19) DEFAULT NULL,
  `sales_stage` varchar(200) DEFAULT NULL,
  `potentialtype` varchar(200) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `productid` int(50) DEFAULT NULL,
  `productversion` varchar(50) DEFAULT NULL,
  `quotationref` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `runtimefee` int(19) DEFAULT 0,
  `followupdate` date DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `forecastcategory` int(19) DEFAULT 0,
  `outcomeanalysis` int(19) DEFAULT 0,
  `forecast_amount` decimal(25,8) DEFAULT NULL,
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  `contact_id` int(19) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `converted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potentialscf`
--

CREATE TABLE `vtiger_potentialscf` (
  `potentialid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potstagehistory`
--

CREATE TABLE `vtiger_potstagehistory` (
  `historyid` int(19) NOT NULL,
  `potentialid` int(19) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `stage` varchar(100) DEFAULT NULL,
  `probability` decimal(7,3) DEFAULT NULL,
  `expectedrevenue` decimal(10,0) DEFAULT NULL,
  `closedate` date DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebook`
--

CREATE TABLE `vtiger_pricebook` (
  `pricebookid` int(19) NOT NULL DEFAULT 0,
  `pricebook_no` varchar(100) NOT NULL,
  `bookname` varchar(100) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebookcf`
--

CREATE TABLE `vtiger_pricebookcf` (
  `pricebookid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebookproductrel`
--

CREATE TABLE `vtiger_pricebookproductrel` (
  `pricebookid` int(19) NOT NULL,
  `productid` int(19) NOT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `usedcurrency` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_priority`
--

CREATE TABLE `vtiger_priority` (
  `priorityid` int(19) NOT NULL,
  `priority` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcategory`
--

CREATE TABLE `vtiger_productcategory` (
  `productcategoryid` int(19) NOT NULL,
  `productcategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_productcategory`
--

INSERT INTO `vtiger_productcategory` (`productcategoryid`, `productcategory`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Hardware', 1, 136, 1, NULL),
(3, 'Software', 1, 137, 2, NULL),
(4, 'CRM Applications', 1, 138, 3, NULL),
(5, 'УРД ГҮПЭРИЙН ДООД ХОЙД ХААЛТ', 1, 139, 4, NULL),
(6, 'ХОЙД ГҮПЭРИЙН ГЭРЭЛ', 1, 140, 5, NULL),
(7, 'РҮЛИЙН КОМЬЮТЕР', 1, 141, 6, NULL),
(8, 'Шил арчигчны шингэн', 1, 142, 7, NULL),
(9, 'МОТОРЫН АГААР ШҮҮГЧ', 1, 143, 8, NULL),
(10, 'МОТОРЫН МАСЛЫН МЭДРЭГЧ ШИНЭ', 1, 144, 9, NULL),
(11, 'МАСЛЫН ШҮҮР', 1, 145, 10, NULL),
(12, 'АНТИФРИИЗ', 1, 146, 11, NULL),
(13, 'ТОСОЛ', 1, 147, 12, NULL),
(14, 'ЗЭВ АРИЛГАГЧ', 1, 148, 13, NULL),
(15, 'ТОРМАСНЫ ШИНГЭН', 1, 149, 14, NULL),
(16, 'ТОВУД', 1, 150, 15, NULL),
(17, 'КАРБИРЯТОР ЦЭВЭРЛЭГЧ', 1, 151, 16, NULL),
(18, 'хойд салхины шил', 1, 152, 17, NULL),
(19, 'ПАМПЭР ТӨМӨР ХОЙД ГҮПЭРИЙН', 1, 153, 18, NULL),
(20, 'МОТОРЫН РЕМЭН ЧАНГАЛАГЧ ДАМАР', 1, 154, 19, NULL),
(21, 'Багажны хаалганы бариул', 1, 155, 20, NULL),
(22, 'Механик хропний сэрээ', 1, 156, 21, NULL),
(23, 'РҮЛИЙН ЧАГТАН ГОЛ', 1, 157, 22, NULL),
(24, 'МАХВИК АРАА', 1, 158, 23, NULL),
(25, 'ТУРБО', 1, 159, 24, NULL),
(26, 'УРД ТОРМАСНЫ ХАВЧИГЧ АПРАТ', 1, 160, 25, NULL),
(27, 'РҮЛИЙН ШАРНЕР', 1, 161, 26, NULL),
(28, 'МОТОРЫН ДУХНЫ ГИНЖ', 1, 162, 27, NULL),
(29, 'ХОЙД НАКЛАДНЫ ТЭЛЭГЧ ПООРШИН', 1, 163, 28, NULL),
(30, 'БАГАЖНЫ ТОРООС', 1, 164, 29, NULL),
(31, 'КРОПНЫ ХӨРГӨЛТИЙН РАДИОТОР', 1, 165, 30, NULL),
(32, 'СИВЧЭ УТАС', 1, 166, 31, NULL),
(33, 'ХААЛГАНЫ ДОТОР ХАВТАС', 1, 167, 32, NULL),
(34, 'КОНДЭЙШНЫ РЕМЭН', 1, 168, 33, NULL),
(35, 'ХОЙД ПҮРШ', 1, 169, 34, NULL),
(36, 'ХӨГЖМИЙН ХҮРЭЭ', 1, 170, 35, NULL),
(37, 'ШИЛ АРЧИГЧНЫ ЖАНАМ', 1, 171, 36, NULL),
(38, 'АРААНЫ ИРЧАК', 1, 172, 37, NULL),
(39, 'ПААРНЫ РАДИАТОР', 1, 173, 38, NULL),
(40, 'КАРДАН ГОЛ', 1, 174, 39, NULL),
(41, 'БАГААЖНЫ ДАЛБАА', 1, 175, 40, NULL),
(42, 'БАГААЖНЫ КАМЕР', 1, 176, 41, NULL),
(43, 'МОТОРЫН КРИШГНЫ ТАГ', 1, 177, 42, NULL),
(44, 'ГИДРИЙН РЕМЭН', 1, 178, 43, NULL),
(45, 'ЖАНАМНЫ РЕМЭН', 1, 179, 44, NULL),
(46, 'ДЭЭВЭР', 1, 180, 45, NULL),
(47, 'ХОНГО', 1, 181, 46, NULL),
(48, 'ХААЛГАНЫ ЦООЖ', 1, 182, 47, NULL),
(49, 'ХОЙД ТЭВШ', 1, 183, 48, NULL),
(50, 'ГҮПЭРИЙН БУЛАН ХОЙД', 1, 184, 49, NULL),
(51, 'БАГАЖНЫ НУГАС', 1, 185, 50, NULL),
(52, 'БАГАЖНЫ БАРИУЛТАЙ ЦООЖ', 1, 186, 51, NULL),
(53, 'ХОРМОЙ БАГАЖНЫ', 1, 187, 52, NULL),
(54, 'ЦООЖ БАГАЖНЫ', 1, 188, 53, NULL),
(55, 'ДАЛБАА БАГАЖНЫ', 1, 189, 54, NULL),
(56, 'САЛОНЫ УРД ХАЙРЦАГА', 1, 190, 55, NULL),
(57, 'цахилгаан жанам hybrid', 1, 191, 56, NULL),
(58, 'ХӨШИГ БАГАЖНЫ', 1, 192, 57, NULL),
(59, 'ХААЛГАНЫ ГАДНА БАРИУЛ', 1, 193, 58, NULL),
(60, 'ХААЗНЫ ПИДАЛ', 1, 194, 59, NULL),
(61, 'ПААРНЫ УДИРДЛАГА', 1, 195, 60, NULL),
(62, 'КОПУДНЫ НУГАС', 1, 196, 61, NULL),
(63, 'ХЯНАХ САМБАР', 1, 197, 62, NULL),
(64, 'УРД ПЛЯНЗ', 1, 198, 63, NULL),
(65, 'ГЭРЭЛИЙН ӨСГӨГЧ УРД', 1, 199, 64, NULL),
(66, 'ТОСООЛЫН ИЛҮҮДЭЛИЙН САВ', 1, 200, 65, NULL),
(67, 'ХЭВТЭЭ ТЭНЦҮҮЛЭГЧ ХОЙД', 1, 201, 66, NULL),
(68, 'ХОРМОЙ', 1, 202, 67, NULL),
(69, 'УРД ГҮПЭРИЙН НОМЕР ТОГТООГЧ', 1, 203, 68, NULL),
(70, 'ЛАМП', 1, 204, 69, NULL),
(71, 'ТИАГ ШАРНЕР /сэт/', 1, 205, 70, NULL),
(72, 'ПААРНЫ РЕЛЭН', 1, 206, 71, NULL),
(73, 'ЗӨГИЙ ҮҮР /агаар мэдрэгч/', 1, 207, 72, NULL),
(74, 'ФОРСУНКНЫ МЭДРЭГЧ', 1, 208, 73, NULL),
(75, 'ХӨГЖИМНИЙ ӨСГӨГЧ', 1, 209, 74, NULL),
(76, 'МОТОРЫН ТООЛОГЧ', 1, 210, 75, NULL),
(77, 'ХҮРЭЭТЭЙ СЭНС', 1, 211, 76, NULL),
(78, 'НҮҮРСЭН ЯНДАН', 1, 212, 77, NULL),
(79, 'БҮС суудлын хойд', 1, 213, 78, NULL),
(80, 'ТОРМАСНЫ ДЭЭД АППАРАТ ХҮЧЛҮҮРГҮЙ', 1, 214, 79, NULL),
(81, 'ХОЙД НАКЛАД', 1, 215, 80, NULL),
(82, 'СИГНАЛ', 1, 216, 81, NULL),
(83, 'СИГНАЛЫН УЯН', 1, 217, 82, NULL),
(84, 'ХӨГЖИМ', 1, 218, 83, NULL),
(85, 'VVTI МЭДРЭГЧ', 1, 219, 84, NULL),
(86, 'ХААЛГАНЫ ДОТОР БАРИУЛ', 1, 220, 85, NULL),
(87, 'УРД ТЭВШ', 1, 221, 86, NULL),
(88, 'ТОРМАСНЫ ABS АППАРАТ', 1, 222, 87, NULL),
(89, 'КУНДАКТОР', 1, 223, 88, NULL),
(90, 'УРД НАКЛАД', 1, 224, 89, NULL),
(91, 'КАРДАН НАКЛАД ХОЙД', 1, 225, 90, NULL),
(92, 'РҮЛИЙН ДООД АППАРАТ тиаг шарнэргүй', 1, 226, 91, NULL),
(93, 'МОТОРЫН ДООД ХААЛТ', 1, 227, 92, NULL),
(94, 'ХОЙД ИСТҮЦ /цаф/', 1, 228, 93, NULL),
(95, 'КОМЬЮТЕР', 1, 229, 94, NULL),
(96, 'хагас гол хойд', 1, 230, 95, NULL),
(97, 'УРД РЕДҮКТЭР', 1, 231, 96, NULL),
(98, 'КАРКАЗ NUS CAT', 1, 232, 97, NULL),
(99, 'РЕМЭН МОТОРЫН', 1, 233, 98, NULL),
(100, 'КРЫЛОНЫ ТОЛЬ', 1, 234, 99, NULL),
(101, 'УРД ГҮПЕРИЙН ДОХОЙ', 1, 235, 100, NULL),
(102, 'ЯНДАН КҮШИТИЛ', 1, 236, 101, NULL),
(103, 'ЯНДАН ДУНД', 1, 237, 102, NULL),
(104, 'УРД ӨНДӨГ ДООД', 1, 238, 103, NULL),
(105, 'ХОЙД БОСОО ТЭНЦҮҮЛЭГЧ', 1, 239, 104, NULL),
(106, 'УРД БОСОО ТЭНЦҮҮЛЭГЧ', 1, 240, 105, NULL),
(107, 'ХААЛГАНЫ ШИЛ ӨРГӨГЧ ЖАНАМ', 1, 241, 106, NULL),
(108, 'ПАМПЭР ТӨМӨР УРД ГҮПЭРИЙН', 1, 242, 107, NULL),
(109, 'ХӨМСӨГ ГЭРЛИЙН ДООД УРД', 1, 243, 108, NULL),
(110, 'ГҮПЭРИЙН БУЛАН УРД', 1, 244, 109, NULL),
(111, 'ЯНДАН МЭДРЭГЧ', 1, 245, 110, NULL),
(112, 'ГҮПЭР ТОГТООГЧ ХОЙД', 1, 246, 111, NULL),
(113, 'ГҮПЭР ТОГТООГЧ УРД', 1, 247, 112, NULL),
(114, 'Урд гупэрийн сээтэг', 1, 248, 113, NULL),
(115, 'D-4', 1, 249, 115, NULL),
(116, 'АСТАЧЕР МЕХАНИК', 1, 250, 116, NULL),
(117, 'МҮВТ ШАЙРАГА', 1, 251, 117, NULL),
(118, 'ГАН ДИСК', 1, 252, 118, NULL),
(119, 'ПЕРДА ДИСК', 1, 253, 119, NULL),
(120, 'КОНС АПРАТ ДООД', 1, 254, 120, NULL),
(121, 'КОНС АПРАТ ДЭЭД', 1, 255, 121, NULL),
(122, 'СИВЧЭ', 1, 256, 122, NULL),
(123, 'ТЕРМИСТАТ', 1, 257, 123, NULL),
(124, 'ХОЛМИГИЙН ХААЛТ ТОРООСТОЙ', 1, 258, 124, NULL),
(125, 'VVTI', 1, 259, 125, NULL),
(126, 'Форсунк', 1, 260, 126, NULL),
(127, 'Усны помп', 1, 261, 127, NULL),
(128, 'Хойд рэдүктэр', 1, 262, 128, NULL),
(129, 'Battery', 1, 263, 129, NULL),
(130, 'Термомүвт', 1, 264, 130, NULL),
(131, 'Сэнс', 1, 265, 131, NULL),
(132, 'Гэрлийн ирчак', 1, 266, 132, NULL),
(133, 'Шил өргөгчний төв кноп', 1, 267, 133, NULL),
(134, 'Помп орлуулагч', 1, 268, 134, NULL),
(135, 'Хэвтээ тэнцүүлэгч', 1, 269, 135, NULL),
(136, 'Вакумын сав', 1, 270, 136, NULL),
(137, 'Копудны амортизатор', 1, 271, 137, NULL),
(138, 'Багаажны амортизатор', 1, 272, 138, NULL),
(139, 'Цахилгаан помп', 1, 273, 139, NULL),
(140, 'Цахилгаан мотор', 1, 274, 140, NULL),
(141, 'Тормасны дээд аппарат', 1, 275, 141, NULL),
(142, 'ЛАП', 1, 276, 142, NULL),
(143, 'Хойд гар доод', 1, 277, 143, NULL),
(144, 'Татуурга хойд', 1, 278, 144, NULL),
(145, 'ЦАХИЛГААН ХӨРГӨЛТИЙН РАДИАТОР', 1, 279, 145, NULL),
(146, 'ГУРВАЛЖИН ШИЛ', 1, 280, 146, NULL),
(147, 'ДЭЛГЭЦ', 1, 281, 147, NULL),
(148, 'ДАНХРАД', 1, 282, 148, NULL),
(149, 'ГИДРО НАСОС', 1, 283, 149, NULL),
(150, 'ГАР ХОЙД ДЭЭД', 1, 284, 150, NULL),
(151, 'УРД ГАР ДЭЭД', 1, 285, 151, NULL),
(152, 'Бинзэн насос', 1, 286, 152, NULL),
(153, 'Кондэйшны радиатор', 1, 287, 153, NULL),
(154, 'РҮЛИЙН ГОЛ', 1, 288, 154, NULL),
(155, 'ТЭЛЭГЧ НАКЛАД ХОЙД', 1, 289, 155, NULL),
(156, 'Борооны хаалт', 1, 290, 156, NULL),
(157, 'КАТУШИК', 1, 291, 157, NULL),
(158, 'Дохио урд', 1, 292, 158, NULL),
(159, 'БҮС суудалын урд', 1, 293, 159, NULL),
(160, 'Астачер', 1, 294, 160, NULL),
(161, 'Крыло под-L', 1, 295, 161, NULL),
(162, 'Крыло под-r', 1, 296, 162, NULL),
(163, 'холимогын хаалт', 1, 297, 163, NULL),
(164, 'амартизатор хойд', 1, 298, 164, NULL),
(165, 'урд амартизатор', 1, 299, 165, NULL),
(166, 'ХУЛГАЙЧИЙН ШИЛ-R-ХОЙД', 1, 300, 166, NULL),
(167, 'ХУЛГАЙЧИЙН ШИЛ-L-ХОЙД', 1, 301, 167, NULL),
(168, 'ХААЛГАНЫ ШИЛ- R- ХОЙД', 1, 302, 168, NULL),
(169, 'ХААЛГАНЫ ШИЛ- L-ХОЙД', 1, 303, 169, NULL),
(170, 'ХААЛГАНЫ ШИЛ- R-УРД', 1, 304, 170, NULL),
(171, 'ХААЛГАНЫ ШИЛ- L-УРД', 1, 305, 171, NULL),
(172, 'РҮЛИЙН ДООД АППАРАД', 1, 306, 172, NULL),
(173, 'AIR BAG- R', 1, 307, 173, NULL),
(174, 'AIR BAG - L', 1, 308, 174, NULL),
(175, 'НҮҮР', 1, 309, 175, NULL),
(176, 'усны сав', 1, 310, 176, NULL),
(177, 'жанам', 1, 311, 177, NULL),
(178, 'кондейшн жанам', 1, 312, 178, NULL),
(179, 'паарны жанам', 1, 313, 179, NULL),
(180, 'Хойд гэрэл', 1, 314, 180, NULL),
(181, 'Копуд', 1, 315, 181, NULL),
(182, 'Хойд гүүпэр', 1, 316, 182, NULL),
(183, 'Урд цааф', 1, 317, 183, NULL),
(184, 'Радиотор', 1, 318, 184, NULL),
(185, 'Крыло', 1, 319, 185, NULL),
(186, 'Багаажны гэрэл', 1, 320, 186, NULL),
(187, 'Хойд таван бул', 1, 321, 187, NULL),
(188, 'Транбүлүр', 1, 322, 188, NULL),
(189, 'Хойд цааф', 1, 323, 189, NULL),
(190, 'Хойд тэнхлэг', 1, 324, 190, NULL),
(191, 'Хүчлүүр', 1, 325, 191, NULL),
(192, 'Нэмэлт гэрэл', 1, 326, 192, NULL),
(193, 'Багааж', 1, 327, 193, NULL),
(194, 'Мотор', 1, 328, 194, NULL),
(195, 'Багаажны хаалга', 1, 329, 195, NULL),
(196, 'Бензин банк', 1, 330, 196, NULL),
(197, 'Урд гар', 1, 331, 197, NULL),
(198, 'Толь', 1, 332, 198, NULL),
(199, 'Урд гүпэр', 1, 333, 199, NULL),
(200, 'хаалга', 1, 334, 200, NULL),
(201, 'Их гэрэл', 1, 335, 201, NULL),
(202, 'Кроп', 1, 336, 202, NULL),
(203, '5 бул урт', 1, 337, 203, NULL),
(204, '5 бул богино', 1, 338, 204, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcategory_seq`
--

CREATE TABLE `vtiger_productcategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_productcategory_seq`
--

INSERT INTO `vtiger_productcategory_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcf`
--

CREATE TABLE `vtiger_productcf` (
  `productid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcurrencyrel`
--

CREATE TABLE `vtiger_productcurrencyrel` (
  `productid` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `converted_price` decimal(28,8) DEFAULT NULL,
  `actual_price` decimal(28,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_productcurrencyrel`
--

INSERT INTO `vtiger_productcurrencyrel` (`productid`, `currencyid`, `converted_price`, `actual_price`) VALUES
(2, 1, 150000.00000000, 150000.00000000),
(3, 1, 0.00000000, 0.00000000),
(4, 1, 0.00000000, 0.00000000),
(5, 1, 0.00000000, 0.00000000),
(6, 1, 0.00000000, 0.00000000),
(7, 1, 0.00000000, 0.00000000),
(8, 1, 0.00000000, 0.00000000),
(9, 1, 0.00000000, 0.00000000),
(10, 1, 0.00000000, 0.00000000),
(11, 1, 10.00000000, 10.00000000),
(12, 1, 10.00000000, 10.00000000),
(13, 1, 40.00000000, 40.00000000),
(14, 1, 10.00000000, 10.00000000),
(15, 1, 10.00000000, 10.00000000),
(16, 1, 10.00000000, 10.00000000),
(17, 1, 15.00000000, 15.00000000),
(18, 1, 15.00000000, 15.00000000),
(19, 1, 0.00000000, 0.00000000),
(20, 1, 0.00000000, 0.00000000),
(21, 1, 0.00000000, 0.00000000),
(22, 1, 0.00000000, 0.00000000),
(23, 1, 0.00000000, 0.00000000),
(24, 1, 0.00000000, 0.00000000),
(25, 1, 0.00000000, 0.00000000),
(26, 1, 10000.00000000, 10000.00000000),
(27, 1, 40000.00000000, 40000.00000000),
(28, 1, 10000.00000000, 10000.00000000),
(29, 1, 10000.00000000, 10000.00000000),
(30, 1, 10000.00000000, 10000.00000000),
(31, 1, 15000.00000000, 15000.00000000),
(32, 1, 15000.00000000, 15000.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_products`
--

CREATE TABLE `vtiger_products` (
  `productid` int(11) NOT NULL,
  `product_no` varchar(100) NOT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `productcode` varchar(40) DEFAULT NULL,
  `productcategory` varchar(200) DEFAULT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT 0.00,
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
  `discontinued` int(1) NOT NULL DEFAULT 0,
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
  `imagename` text DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `is_subproducts_viewable` int(1) DEFAULT 1,
  `purchase_cost` decimal(27,8) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_products`
--

INSERT INTO `vtiger_products` (`productid`, `product_no`, `productname`, `productcode`, `productcategory`, `manufacturer`, `qty_per_unit`, `unit_price`, `weight`, `pack_size`, `sales_start_date`, `sales_end_date`, `start_date`, `expiry_date`, `cost_factor`, `commissionrate`, `commissionmethod`, `discontinued`, `usageunit`, `reorderlevel`, `website`, `taxclass`, `mfr_part_no`, `vendor_part_no`, `serialno`, `qtyinstock`, `productsheet`, `qtyindemand`, `glacct`, `vendor_id`, `imagename`, `currency_id`, `is_subproducts_viewable`, `purchase_cost`, `tags`) VALUES
(2, 'PRO1', 'CROWN 4GR 2,5cc', NULL, 'КАТУШИК', 'Toyota', 1.00, 150000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '4962', 54.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(3, 'PRO2', 'DANHRAD', NULL, 'ДАНХРАД', 'Toyota', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, '', NULL, NULL, '7551', 0.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(4, 'PRO3', 'FIT L13A URD', NULL, 'КАТУШИК', 'Toyota', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, '', NULL, NULL, '4956', 0.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(5, 'PRO4', '2005 TOYOTO', NULL, 'Бинзэн насос', 'Toyota', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, '', NULL, NULL, '10761', 0.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(6, 'PRO5', 'CROWN GRS180 BOGINO', NULL, 'Татуурга хойд', 'Toyota', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, '', NULL, NULL, '6983', 0.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(7, 'PRO6', 'FIT GD1 2003', NULL, 'ТЭЛЭГЧ НАКЛАД ХОЙД', 'Toyota', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, '', NULL, NULL, '6994', 0.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(8, 'PRO7', 'XTRAIL NT30 QR20', NULL, 'УРД НАКЛАД', 'Toyota', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, '', NULL, NULL, '8115', 0.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(9, 'PRO8', 'MARK CX115 4WD 2,0cc', NULL, 'УРД НАКЛАД', 'Toyota', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, '', NULL, NULL, '9260', 0.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(10, 'PRO9', '2008 COLT 4A90 1,3cc', NULL, 'СИВЧЭ', 'Toyota', 0.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, '', NULL, NULL, '10983', 0.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(11, 'PRO10', 'DANHRAD', NULL, 'ДАНХРАД', 'Toyota', 1.00, 10.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '7551', 44.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(12, 'PRO11', 'FIT L13A URD', NULL, 'КАТУШИК', 'Toyota', 1.00, 10.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '4956', 42.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(13, 'PRO12', '2005 TOYOTO', NULL, 'Бинзэн насос', 'Toyota', 1.00, 40.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '10761', 39.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(14, 'PRO13', 'CROWN GRS180 BOGINO', NULL, 'Татуурга хойд', 'Toyota', 1.00, 10.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '6983', 39.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(15, 'PRO14', 'FIT GD1 2003', NULL, 'ТЭЛЭГЧ НАКЛАД ХОЙД', 'Toyota', 1.00, 10.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '6994', 36.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(16, 'PRO15', 'XTRAIL NT30 QR20', NULL, 'УРД НАКЛАД', 'Toyota', 1.00, 10.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '8115', 28.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(17, 'PRO16', 'MARK CX115 4WD 2,0cc', NULL, 'УРД НАКЛАД', 'Toyota', 1.00, 15.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '9260', 27.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(18, 'PRO17', '2008 COLT 4A90 1,3cc', NULL, 'СИВЧЭ', 'Toyota', 1.00, 15.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '10983', 24.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(19, 'PRO18', 'FIT L13A URD', NULL, 'КАТУШИК', 'Toyota', 1.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '4956', 42.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(20, 'PRO19', '2005 TOYOTO', NULL, 'Бинзэн насос', 'Toyota', 1.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '10761', 39.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(21, 'PRO20', 'CROWN GRS180 BOGINO', NULL, 'Татуурга хойд', 'Toyota', 1.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '6983', 39.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(22, 'PRO21', 'FIT GD1 2003', NULL, 'ТЭЛЭГЧ НАКЛАД ХОЙД', 'Toyota', 1.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '6994', 36.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(23, 'PRO22', 'XTRAIL NT30 QR20', NULL, 'УРД НАКЛАД', 'Toyota', 1.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '8115', 28.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(24, 'PRO23', 'MARK CX115 4WD 2,0cc', NULL, 'УРД НАКЛАД', 'Toyota', 1.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '9260', 27.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(25, 'PRO24', '2008 COLT 4A90 1,3cc', NULL, 'СИВЧЭ', 'Toyota', 1.00, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '10983', 24.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(26, 'PRO25', 'FIT L13A URD', NULL, 'КАТУШИК', 'Toyota', 1.00, 10000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '4956', 42.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(27, 'PRO26', '2005 TOYOTO', NULL, 'Бинзэн насос', 'Toyota', 1.00, 40000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '10761', 39.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(28, 'PRO27', 'CROWN GRS180 BOGINO', NULL, 'Татуурга хойд', 'Toyota', 1.00, 10000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '6983', 39.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(29, 'PRO28', 'FIT GD1 2003', NULL, 'ТЭЛЭГЧ НАКЛАД ХОЙД', 'Toyota', 1.00, 10000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '6994', 36.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(30, 'PRO29', 'XTRAIL NT30 QR20', NULL, 'УРД НАКЛАД', 'Toyota', 1.00, 10000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '8115', 28.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(31, 'PRO30', 'MARK CX115 4WD 2,0cc', NULL, 'УРД НАКЛАД', 'Toyota', 1.00, 15000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '9260', 27.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, ''),
(32, 'PRO31', '2008 COLT 4A90 1,3cc', NULL, 'СИВЧЭ', 'Toyota', 1.00, 15000.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ширхэг', NULL, NULL, '', NULL, NULL, '10983', 24.000, NULL, NULL, NULL, NULL, '', 1, 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_producttaxrel`
--

CREATE TABLE `vtiger_producttaxrel` (
  `productid` int(11) NOT NULL,
  `taxid` int(3) NOT NULL,
  `taxpercentage` decimal(7,3) DEFAULT NULL,
  `regions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile`
--

CREATE TABLE `vtiger_profile` (
  `profileid` int(10) NOT NULL,
  `profilename` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `directly_related_to_role` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_profile`
--

INSERT INTO `vtiger_profile` (`profileid`, `profilename`, `description`, `directly_related_to_role`) VALUES
(1, 'Administrator', 'Admin Profile', 0),
(2, 'Sales Profile', 'Profile Related to Sales', 0),
(3, 'Support Profile', 'Profile Related to Support', 0),
(4, 'Guest Profile', 'Guest Profile for Test Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2field`
--

CREATE TABLE `vtiger_profile2field` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(1, 13, 173, 0, 0),
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
(1, 14, 204, 0, 0),
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
(1, 8, 219, 0, 0),
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
(1, 10, 231, 0, 0),
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
(1, 9, 255, 0, 0),
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
(1, 16, 278, 0, 0),
(1, 15, 279, 0, 0),
(1, 15, 280, 0, 0),
(1, 15, 281, 0, 0),
(1, 15, 282, 0, 0),
(1, 15, 283, 0, 0),
(1, 15, 284, 0, 0),
(1, 15, 285, 0, 0),
(1, 15, 286, 0, 0),
(1, 15, 287, 0, 0),
(1, 15, 288, 0, 0),
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
(1, 18, 305, 0, 0),
(1, 19, 306, 0, 0),
(1, 19, 307, 0, 0),
(1, 19, 308, 0, 0),
(1, 19, 309, 0, 0),
(1, 19, 310, 0, 0),
(1, 19, 311, 0, 0),
(1, 19, 312, 0, 0),
(1, 19, 313, 0, 0),
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
(1, 20, 350, 0, 0),
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
(1, 21, 388, 0, 0),
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
(1, 22, 435, 0, 0),
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
(1, 23, 474, 0, 0),
(1, 10, 520, 0, 0),
(1, 10, 521, 0, 0),
(1, 10, 522, 0, 0),
(1, 10, 523, 0, 0),
(1, 10, 524, 0, 0),
(1, 10, 525, 0, 0),
(1, 34, 526, 0, 0),
(1, 34, 527, 0, 0),
(1, 34, 528, 0, 0),
(1, 34, 529, 0, 0),
(1, 34, 530, 0, 0),
(1, 34, 531, 0, 0),
(1, 34, 532, 0, 0),
(1, 34, 533, 0, 0),
(1, 34, 534, 0, 0),
(1, 34, 535, 0, 0),
(1, 34, 536, 0, 0),
(1, 34, 537, 0, 0),
(1, 34, 538, 0, 0),
(1, 34, 539, 0, 0),
(1, 34, 540, 0, 0),
(1, 34, 541, 0, 0),
(1, 34, 542, 0, 0),
(1, 29, 543, 0, 0),
(1, 35, 544, 0, 0),
(1, 35, 545, 0, 0),
(1, 35, 546, 0, 0),
(1, 35, 547, 0, 0),
(1, 35, 548, 0, 0),
(1, 35, 549, 0, 0),
(1, 35, 550, 0, 0),
(1, 35, 551, 0, 0),
(1, 35, 552, 0, 0),
(1, 35, 553, 0, 0),
(1, 35, 554, 0, 0),
(1, 35, 555, 0, 0),
(1, 35, 556, 0, 0),
(1, 35, 557, 0, 0),
(1, 35, 558, 0, 0),
(1, 35, 559, 0, 0),
(1, 35, 560, 0, 0),
(1, 35, 561, 0, 0),
(1, 35, 562, 0, 0),
(1, 35, 563, 0, 0),
(1, 35, 564, 0, 0),
(1, 35, 565, 0, 0),
(1, 36, 566, 0, 0),
(1, 36, 567, 0, 0),
(1, 36, 568, 0, 0),
(1, 36, 569, 0, 0),
(1, 36, 570, 0, 0),
(1, 36, 571, 0, 0),
(1, 36, 572, 0, 0),
(1, 36, 573, 0, 0),
(1, 36, 574, 0, 0),
(1, 36, 575, 0, 0),
(1, 36, 576, 0, 0),
(1, 36, 577, 0, 0),
(1, 36, 578, 0, 0),
(1, 36, 579, 0, 0),
(1, 36, 580, 0, 0),
(1, 36, 581, 0, 0),
(1, 36, 582, 0, 0),
(1, 36, 583, 0, 0),
(1, 36, 584, 0, 0),
(1, 36, 585, 0, 0),
(1, 36, 586, 0, 0),
(1, 36, 587, 0, 0),
(1, 38, 588, 0, 0),
(1, 38, 589, 0, 0),
(1, 38, 590, 0, 0),
(1, 38, 591, 0, 0),
(1, 38, 592, 0, 0),
(1, 38, 593, 0, 0),
(1, 38, 594, 0, 0),
(1, 38, 595, 0, 0),
(1, 38, 596, 0, 0),
(1, 38, 597, 0, 0),
(1, 38, 598, 0, 0),
(1, 38, 599, 0, 0),
(1, 38, 600, 0, 0),
(1, 38, 601, 0, 0),
(1, 38, 602, 0, 0),
(1, 38, 603, 0, 0),
(1, 38, 604, 0, 0),
(1, 38, 605, 0, 0),
(1, 38, 606, 0, 0),
(1, 38, 607, 0, 0),
(1, 38, 608, 0, 0),
(1, 42, 609, 0, 0),
(1, 42, 610, 0, 0),
(1, 42, 611, 0, 0),
(1, 42, 612, 0, 0),
(1, 42, 613, 0, 0),
(1, 42, 614, 0, 0),
(1, 42, 615, 0, 0),
(1, 42, 616, 0, 0),
(1, 43, 617, 0, 0),
(1, 43, 618, 0, 0),
(1, 43, 619, 0, 0),
(1, 43, 620, 0, 0),
(1, 43, 621, 0, 0),
(1, 43, 622, 0, 0),
(1, 43, 623, 0, 0),
(1, 43, 624, 0, 0),
(1, 43, 625, 0, 0),
(1, 43, 626, 0, 0),
(1, 43, 627, 0, 0),
(1, 43, 628, 0, 0),
(1, 43, 629, 0, 0),
(1, 44, 630, 0, 0),
(1, 44, 631, 0, 0),
(1, 44, 632, 0, 0),
(1, 44, 633, 0, 0),
(1, 44, 634, 0, 0),
(1, 44, 635, 0, 0),
(1, 44, 636, 0, 0),
(1, 44, 637, 0, 0),
(1, 44, 638, 0, 0),
(1, 44, 639, 0, 0),
(1, 44, 640, 0, 0),
(1, 44, 641, 0, 0),
(1, 44, 642, 0, 0),
(1, 44, 643, 0, 0),
(1, 44, 644, 0, 0),
(1, 44, 645, 0, 0),
(1, 44, 646, 0, 0),
(1, 44, 647, 0, 0),
(1, 45, 648, 0, 0),
(1, 45, 649, 0, 0),
(1, 45, 650, 0, 0),
(1, 45, 651, 0, 0),
(1, 45, 652, 0, 0),
(1, 45, 653, 0, 0),
(1, 45, 654, 0, 0),
(1, 45, 655, 0, 0),
(1, 45, 656, 0, 0),
(1, 45, 657, 0, 0),
(1, 45, 658, 0, 0),
(1, 45, 659, 0, 0),
(1, 45, 660, 0, 0),
(1, 45, 661, 0, 0),
(1, 45, 662, 0, 0),
(1, 45, 663, 0, 0),
(1, 45, 664, 0, 0),
(1, 45, 665, 0, 0),
(1, 45, 666, 0, 0),
(1, 45, 667, 0, 0),
(1, 47, 668, 0, 0),
(1, 47, 669, 0, 0),
(1, 47, 670, 0, 0),
(1, 47, 671, 0, 0),
(1, 47, 672, 0, 0),
(1, 47, 673, 0, 0),
(1, 2, 674, 0, 0),
(1, 29, 675, 0, 0),
(1, 23, 676, 0, 0),
(1, 23, 677, 0, 0),
(1, 23, 678, 0, 0),
(1, 23, 679, 0, 0),
(1, 23, 680, 0, 0),
(1, 23, 681, 0, 0),
(1, 23, 682, 0, 0),
(1, 23, 683, 0, 0),
(1, 23, 684, 0, 0),
(1, 22, 685, 0, 0),
(1, 22, 686, 0, 0),
(1, 22, 687, 0, 0),
(1, 22, 688, 0, 0),
(1, 22, 689, 0, 0),
(1, 22, 690, 0, 0),
(1, 22, 691, 0, 0),
(1, 22, 692, 0, 0),
(1, 22, 693, 0, 0),
(1, 21, 694, 0, 0),
(1, 21, 695, 0, 0),
(1, 21, 696, 0, 0),
(1, 21, 697, 0, 0),
(1, 21, 698, 0, 0),
(1, 21, 699, 0, 0),
(1, 21, 700, 0, 0),
(1, 21, 701, 0, 0),
(1, 21, 702, 0, 0),
(1, 20, 703, 0, 0),
(1, 20, 704, 0, 0),
(1, 20, 705, 0, 0),
(1, 20, 706, 0, 0),
(1, 20, 707, 0, 0),
(1, 20, 708, 0, 0),
(1, 20, 709, 0, 0),
(1, 20, 710, 0, 0),
(1, 20, 711, 0, 0),
(1, 29, 712, 0, 0),
(1, 44, 713, 0, 0),
(1, 42, 714, 0, 0),
(1, 29, 715, 0, 0),
(1, 29, 716, 0, 0),
(1, 29, 717, 0, 0),
(1, 23, 718, 0, 0),
(1, 22, 719, 0, 0),
(1, 21, 720, 0, 0),
(1, 20, 721, 0, 0),
(1, 29, 722, 0, 0),
(1, 6, 723, 0, 0),
(1, 4, 724, 0, 0),
(1, 2, 725, 0, 0),
(1, 29, 726, 0, 0),
(1, 23, 727, 0, 0),
(1, 23, 728, 0, 0),
(1, 21, 729, 0, 0),
(1, 21, 730, 0, 0),
(1, 18, 731, 0, 0),
(1, 7, 732, 0, 0),
(1, 42, 733, 0, 0),
(1, 42, 734, 0, 0),
(1, 23, 735, 0, 0),
(1, 20, 736, 0, 0),
(1, 21, 737, 0, 0),
(1, 22, 738, 0, 0),
(1, 29, 739, 0, 0),
(1, 2, 740, 0, 0),
(1, 13, 741, 0, 0),
(1, 29, 742, 0, 0),
(1, 29, 743, 0, 0),
(1, 29, 744, 0, 0),
(1, 29, 745, 0, 0),
(1, 14, 772, 0, 0),
(1, 36, 773, 0, 0),
(1, 23, 774, 0, 0),
(1, 29, 775, 0, 0),
(1, 23, 776, 0, 0),
(1, 23, 777, 0, 0),
(1, 23, 778, 0, 0),
(1, 20, 779, 0, 0),
(1, 20, 780, 0, 0),
(1, 20, 781, 0, 0),
(1, 21, 782, 0, 0),
(1, 22, 783, 0, 0),
(1, 22, 784, 0, 0),
(1, 22, 785, 0, 0),
(1, 42, 786, 0, 0),
(1, 42, 787, 0, 0),
(1, 42, 788, 0, 0),
(1, 2, 789, 0, 0),
(1, 4, 790, 0, 0),
(1, 6, 791, 0, 0),
(1, 7, 792, 0, 0),
(1, 8, 793, 0, 0),
(1, 9, 794, 0, 0),
(1, 10, 795, 0, 0),
(1, 13, 796, 0, 0),
(1, 14, 797, 0, 0),
(1, 15, 798, 0, 0),
(1, 16, 799, 0, 0),
(1, 18, 800, 0, 0),
(1, 19, 801, 0, 0),
(1, 20, 802, 0, 0),
(1, 21, 803, 0, 0),
(1, 22, 804, 0, 0),
(1, 23, 805, 0, 0),
(1, 26, 806, 0, 0),
(1, 10, 807, 0, 0),
(1, 2, 808, 0, 0),
(1, 4, 809, 0, 0),
(1, 6, 810, 0, 0),
(1, 7, 811, 0, 0),
(1, 8, 812, 0, 0),
(1, 9, 813, 0, 0),
(1, 10, 814, 0, 0),
(1, 13, 815, 0, 0),
(1, 14, 816, 0, 0),
(1, 15, 817, 0, 0),
(1, 16, 818, 0, 0),
(1, 18, 819, 0, 0),
(1, 19, 820, 0, 0),
(1, 20, 821, 0, 0),
(1, 21, 822, 0, 0),
(1, 22, 823, 0, 0),
(1, 23, 824, 0, 0),
(1, 26, 825, 0, 0),
(1, 2, 826, 0, 0),
(1, 4, 827, 0, 0),
(1, 6, 828, 0, 0),
(1, 7, 829, 0, 0),
(1, 8, 830, 0, 0),
(1, 9, 831, 0, 0),
(1, 10, 832, 0, 0),
(1, 13, 833, 0, 0),
(1, 14, 834, 0, 0),
(1, 15, 835, 0, 0),
(1, 16, 836, 0, 0),
(1, 18, 837, 0, 0),
(1, 19, 838, 0, 0),
(1, 20, 839, 0, 0),
(1, 21, 840, 0, 0),
(1, 22, 841, 0, 0),
(1, 23, 842, 0, 0),
(1, 26, 843, 0, 0),
(1, 20, 844, 0, 0),
(1, 21, 845, 0, 0),
(1, 22, 846, 0, 0),
(1, 23, 847, 0, 0),
(1, 45, 848, 0, 0),
(1, 45, 849, 0, 0),
(1, 29, 850, 0, 0),
(1, 22, 851, 0, 0),
(1, 29, 852, 0, 0),
(2, 6, 1, 0, 0),
(2, 6, 2, 0, 0),
(2, 6, 3, 0, 0),
(2, 6, 4, 0, 0),
(2, 6, 5, 0, 0),
(2, 6, 6, 0, 0),
(2, 6, 7, 0, 0),
(2, 6, 8, 0, 0),
(2, 6, 9, 0, 0),
(2, 6, 10, 0, 0),
(2, 6, 11, 0, 0),
(2, 6, 12, 0, 0),
(2, 6, 13, 0, 0),
(2, 6, 14, 0, 0),
(2, 6, 15, 0, 0),
(2, 6, 16, 0, 0),
(2, 6, 17, 0, 0),
(2, 6, 18, 0, 0),
(2, 6, 19, 0, 0),
(2, 6, 20, 0, 0),
(2, 6, 21, 0, 0),
(2, 6, 22, 0, 0),
(2, 6, 23, 0, 0),
(2, 6, 24, 0, 0),
(2, 6, 25, 0, 0),
(2, 6, 26, 0, 0),
(2, 6, 27, 0, 0),
(2, 6, 28, 0, 0),
(2, 6, 29, 0, 0),
(2, 6, 30, 0, 0),
(2, 6, 31, 0, 0),
(2, 6, 32, 0, 0),
(2, 6, 33, 0, 0),
(2, 6, 34, 0, 0),
(2, 6, 35, 0, 0),
(2, 6, 36, 0, 0),
(2, 7, 37, 0, 0),
(2, 7, 38, 0, 0),
(2, 7, 39, 0, 0),
(2, 7, 40, 0, 0),
(2, 7, 41, 0, 0),
(2, 7, 42, 0, 0),
(2, 7, 43, 0, 0),
(2, 7, 44, 0, 0),
(2, 7, 45, 0, 0),
(2, 7, 46, 0, 0),
(2, 7, 47, 0, 0),
(2, 7, 48, 0, 0),
(2, 7, 49, 0, 0),
(2, 7, 50, 0, 0),
(2, 7, 51, 0, 0),
(2, 7, 52, 0, 0),
(2, 7, 53, 0, 0),
(2, 7, 54, 0, 0),
(2, 7, 55, 0, 0),
(2, 7, 56, 0, 0),
(2, 7, 57, 0, 0),
(2, 7, 58, 0, 0),
(2, 7, 59, 0, 0),
(2, 7, 60, 0, 0),
(2, 7, 61, 0, 0),
(2, 7, 62, 0, 0),
(2, 7, 63, 0, 0),
(2, 7, 64, 0, 0),
(2, 7, 65, 0, 0),
(2, 4, 66, 0, 0),
(2, 4, 67, 0, 0),
(2, 4, 68, 0, 0),
(2, 4, 69, 0, 0),
(2, 4, 70, 0, 0),
(2, 4, 71, 0, 0),
(2, 4, 72, 0, 0),
(2, 4, 73, 0, 0),
(2, 4, 74, 0, 0),
(2, 4, 75, 0, 0),
(2, 4, 76, 0, 0),
(2, 4, 77, 0, 0),
(2, 4, 78, 0, 0),
(2, 4, 79, 0, 0),
(2, 4, 80, 0, 0),
(2, 4, 81, 0, 0),
(2, 4, 82, 0, 0),
(2, 4, 83, 0, 0),
(2, 4, 84, 0, 0),
(2, 4, 85, 0, 0),
(2, 4, 86, 0, 0),
(2, 4, 87, 0, 0),
(2, 4, 88, 0, 0),
(2, 4, 89, 0, 0),
(2, 4, 90, 0, 0),
(2, 4, 91, 0, 0),
(2, 4, 92, 0, 0),
(2, 4, 93, 0, 0),
(2, 4, 94, 0, 0),
(2, 4, 95, 0, 0),
(2, 4, 96, 0, 0),
(2, 4, 97, 0, 0),
(2, 4, 98, 0, 0),
(2, 4, 99, 0, 0),
(2, 4, 100, 0, 0),
(2, 4, 101, 0, 0),
(2, 4, 102, 0, 0),
(2, 4, 103, 0, 0),
(2, 4, 104, 0, 0),
(2, 4, 105, 0, 0),
(2, 4, 106, 0, 0),
(2, 4, 107, 0, 0),
(2, 4, 108, 0, 0),
(2, 4, 109, 0, 0),
(2, 2, 110, 0, 0),
(2, 2, 111, 0, 0),
(2, 2, 112, 0, 0),
(2, 2, 113, 0, 0),
(2, 2, 114, 0, 0),
(2, 2, 115, 0, 0),
(2, 2, 116, 0, 0),
(2, 2, 117, 0, 0),
(2, 2, 118, 0, 0),
(2, 2, 119, 0, 0),
(2, 2, 120, 0, 0),
(2, 2, 121, 0, 0),
(2, 2, 122, 0, 0),
(2, 2, 123, 0, 0),
(2, 2, 124, 0, 0),
(2, 2, 125, 0, 0),
(2, 26, 126, 0, 0),
(2, 26, 127, 0, 0),
(2, 26, 128, 0, 0),
(2, 26, 129, 0, 0),
(2, 26, 130, 0, 0),
(2, 26, 131, 0, 0),
(2, 26, 132, 0, 0),
(2, 26, 133, 0, 0),
(2, 26, 134, 0, 0),
(2, 26, 135, 0, 0),
(2, 26, 136, 0, 0),
(2, 26, 137, 0, 0),
(2, 26, 138, 0, 0),
(2, 26, 139, 0, 0),
(2, 26, 140, 0, 0),
(2, 26, 141, 0, 0),
(2, 26, 142, 0, 0),
(2, 26, 143, 0, 0),
(2, 26, 144, 0, 0),
(2, 26, 145, 0, 0),
(2, 26, 146, 0, 0),
(2, 26, 147, 0, 0),
(2, 26, 148, 0, 0),
(2, 26, 149, 0, 0),
(2, 26, 150, 0, 0),
(2, 4, 151, 0, 0),
(2, 6, 152, 0, 0),
(2, 7, 153, 0, 0),
(2, 26, 154, 0, 0),
(2, 13, 155, 0, 0),
(2, 13, 156, 0, 0),
(2, 13, 157, 0, 0),
(2, 13, 158, 0, 0),
(2, 13, 159, 0, 0),
(2, 13, 160, 0, 0),
(2, 13, 161, 0, 0),
(2, 13, 162, 0, 0),
(2, 13, 163, 0, 0),
(2, 13, 164, 0, 0),
(2, 13, 165, 0, 0),
(2, 13, 166, 0, 0),
(2, 13, 167, 0, 0),
(2, 13, 168, 0, 0),
(2, 13, 169, 0, 0),
(2, 13, 170, 0, 0),
(2, 13, 171, 0, 0),
(2, 13, 172, 0, 0),
(2, 13, 173, 0, 0),
(2, 14, 174, 0, 0),
(2, 14, 175, 0, 0),
(2, 14, 176, 0, 0),
(2, 14, 177, 0, 0),
(2, 14, 178, 0, 0),
(2, 14, 179, 0, 0),
(2, 14, 180, 0, 0),
(2, 14, 181, 0, 0),
(2, 14, 182, 0, 0),
(2, 14, 183, 0, 0),
(2, 14, 184, 0, 0),
(2, 14, 185, 0, 0),
(2, 14, 186, 0, 0),
(2, 14, 187, 0, 0),
(2, 14, 188, 0, 0),
(2, 14, 189, 0, 0),
(2, 14, 190, 0, 0),
(2, 14, 191, 0, 0),
(2, 14, 192, 0, 0),
(2, 14, 193, 0, 0),
(2, 14, 194, 0, 0),
(2, 14, 195, 0, 0),
(2, 14, 196, 0, 0),
(2, 14, 197, 0, 0),
(2, 14, 198, 0, 0),
(2, 14, 199, 0, 0),
(2, 14, 200, 0, 0),
(2, 14, 201, 0, 0),
(2, 14, 202, 0, 0),
(2, 14, 203, 0, 0),
(2, 14, 204, 0, 0),
(2, 8, 205, 0, 0),
(2, 8, 206, 0, 0),
(2, 8, 207, 0, 0),
(2, 8, 208, 0, 0),
(2, 8, 209, 0, 0),
(2, 8, 210, 0, 0),
(2, 8, 211, 0, 0),
(2, 8, 212, 0, 0),
(2, 8, 213, 0, 0),
(2, 8, 214, 0, 0),
(2, 8, 215, 0, 0),
(2, 8, 216, 0, 0),
(2, 8, 217, 0, 0),
(2, 8, 218, 0, 0),
(2, 8, 219, 0, 0),
(2, 10, 220, 0, 0),
(2, 10, 221, 0, 0),
(2, 10, 222, 0, 0),
(2, 10, 223, 0, 0),
(2, 10, 224, 0, 0),
(2, 10, 225, 0, 0),
(2, 10, 226, 0, 0),
(2, 10, 227, 0, 0),
(2, 10, 228, 0, 0),
(2, 10, 229, 0, 0),
(2, 10, 230, 0, 0),
(2, 10, 231, 0, 0),
(2, 9, 232, 0, 0),
(2, 9, 233, 0, 0),
(2, 9, 234, 0, 0),
(2, 9, 235, 0, 0),
(2, 9, 236, 0, 0),
(2, 9, 237, 0, 0),
(2, 9, 238, 0, 0),
(2, 9, 239, 0, 0),
(2, 9, 240, 0, 0),
(2, 9, 241, 0, 0),
(2, 9, 242, 0, 0),
(2, 9, 243, 0, 0),
(2, 9, 244, 0, 0),
(2, 9, 245, 0, 0),
(2, 9, 246, 0, 0),
(2, 9, 247, 0, 0),
(2, 9, 248, 0, 0),
(2, 9, 249, 0, 0),
(2, 9, 250, 0, 0),
(2, 9, 251, 0, 0),
(2, 9, 252, 0, 0),
(2, 9, 253, 0, 0),
(2, 9, 254, 0, 0),
(2, 9, 255, 0, 0),
(2, 16, 256, 0, 0),
(2, 16, 257, 0, 0),
(2, 16, 258, 0, 0),
(2, 16, 259, 0, 0),
(2, 16, 260, 0, 0),
(2, 16, 261, 0, 0),
(2, 16, 262, 0, 0),
(2, 16, 263, 0, 0),
(2, 16, 264, 0, 0),
(2, 16, 265, 0, 0),
(2, 16, 266, 0, 0),
(2, 16, 267, 0, 0),
(2, 16, 268, 0, 0),
(2, 16, 269, 0, 0),
(2, 16, 270, 0, 0),
(2, 16, 271, 0, 0),
(2, 16, 272, 0, 0),
(2, 16, 273, 0, 0),
(2, 16, 274, 0, 0),
(2, 16, 275, 0, 0),
(2, 16, 276, 0, 0),
(2, 16, 277, 0, 0),
(2, 16, 278, 0, 0),
(2, 15, 279, 0, 0),
(2, 15, 280, 0, 0),
(2, 15, 281, 0, 0),
(2, 15, 282, 0, 0),
(2, 15, 283, 0, 0),
(2, 15, 284, 0, 0),
(2, 15, 285, 0, 0),
(2, 15, 286, 0, 0),
(2, 15, 287, 0, 0),
(2, 15, 288, 0, 0),
(2, 18, 289, 0, 0),
(2, 18, 290, 0, 0),
(2, 18, 291, 0, 0),
(2, 18, 292, 0, 0),
(2, 18, 293, 0, 0),
(2, 18, 294, 0, 0),
(2, 18, 295, 0, 0),
(2, 18, 296, 0, 0),
(2, 18, 297, 0, 0),
(2, 18, 298, 0, 0),
(2, 18, 299, 0, 0),
(2, 18, 300, 0, 0),
(2, 18, 301, 0, 0),
(2, 18, 302, 0, 0),
(2, 18, 303, 0, 0),
(2, 18, 304, 0, 0),
(2, 18, 305, 0, 0),
(2, 19, 306, 0, 0),
(2, 19, 307, 0, 0),
(2, 19, 308, 0, 0),
(2, 19, 309, 0, 0),
(2, 19, 310, 0, 0),
(2, 19, 311, 0, 0),
(2, 19, 312, 0, 0),
(2, 19, 313, 0, 0),
(2, 20, 314, 0, 0),
(2, 20, 315, 0, 0),
(2, 20, 316, 0, 0),
(2, 20, 317, 0, 0),
(2, 20, 318, 0, 0),
(2, 20, 319, 0, 0),
(2, 20, 320, 0, 0),
(2, 20, 321, 0, 0),
(2, 20, 322, 0, 0),
(2, 20, 323, 0, 0),
(2, 20, 324, 0, 0),
(2, 20, 325, 0, 0),
(2, 20, 326, 0, 0),
(2, 20, 327, 0, 0),
(2, 20, 328, 0, 0),
(2, 20, 329, 0, 0),
(2, 20, 330, 0, 0),
(2, 20, 331, 0, 0),
(2, 20, 332, 0, 0),
(2, 20, 333, 0, 0),
(2, 20, 334, 0, 0),
(2, 20, 335, 0, 0),
(2, 20, 336, 0, 0),
(2, 20, 337, 0, 0),
(2, 20, 338, 0, 0),
(2, 20, 339, 0, 0),
(2, 20, 340, 0, 0),
(2, 20, 341, 0, 0),
(2, 20, 342, 0, 0),
(2, 20, 343, 0, 0),
(2, 20, 344, 0, 0),
(2, 20, 345, 0, 0),
(2, 20, 346, 0, 0),
(2, 20, 347, 0, 0),
(2, 20, 348, 0, 0),
(2, 20, 349, 0, 0),
(2, 20, 350, 0, 0),
(2, 21, 351, 0, 0),
(2, 21, 352, 0, 0),
(2, 21, 353, 0, 0),
(2, 21, 354, 0, 0),
(2, 21, 355, 0, 0),
(2, 21, 356, 0, 0),
(2, 21, 357, 0, 0),
(2, 21, 358, 0, 0),
(2, 21, 359, 0, 0),
(2, 21, 360, 0, 0),
(2, 21, 361, 0, 0),
(2, 21, 362, 0, 0),
(2, 21, 363, 0, 0),
(2, 21, 364, 0, 0),
(2, 21, 365, 0, 0),
(2, 21, 366, 0, 0),
(2, 21, 367, 0, 0),
(2, 21, 368, 0, 0),
(2, 21, 369, 0, 0),
(2, 21, 370, 0, 0),
(2, 21, 371, 0, 0),
(2, 21, 372, 0, 0),
(2, 21, 373, 0, 0),
(2, 21, 374, 0, 0),
(2, 21, 375, 0, 0),
(2, 21, 376, 0, 0),
(2, 21, 377, 0, 0),
(2, 21, 378, 0, 0),
(2, 21, 379, 0, 0),
(2, 21, 380, 0, 0),
(2, 21, 381, 0, 0),
(2, 21, 382, 0, 0),
(2, 21, 383, 0, 0),
(2, 21, 384, 0, 0),
(2, 21, 385, 0, 0),
(2, 21, 386, 0, 0),
(2, 21, 387, 0, 0),
(2, 21, 388, 0, 0),
(2, 22, 389, 0, 0),
(2, 22, 390, 0, 0),
(2, 22, 391, 0, 0),
(2, 22, 392, 0, 0),
(2, 22, 393, 0, 0),
(2, 22, 394, 0, 0),
(2, 22, 395, 0, 0),
(2, 22, 396, 0, 0),
(2, 22, 397, 0, 0),
(2, 22, 398, 0, 0),
(2, 22, 399, 0, 0),
(2, 22, 400, 0, 0),
(2, 22, 401, 0, 0),
(2, 22, 402, 0, 0),
(2, 22, 403, 0, 0),
(2, 22, 404, 0, 0),
(2, 22, 405, 0, 0),
(2, 22, 406, 0, 0),
(2, 22, 407, 0, 0),
(2, 22, 408, 0, 0),
(2, 22, 409, 0, 0),
(2, 22, 410, 0, 0),
(2, 22, 411, 0, 0),
(2, 22, 412, 0, 0),
(2, 22, 413, 0, 0),
(2, 22, 414, 0, 0),
(2, 22, 415, 0, 0),
(2, 22, 416, 0, 0),
(2, 22, 417, 0, 0),
(2, 22, 418, 0, 0),
(2, 22, 419, 0, 0),
(2, 22, 420, 0, 0),
(2, 22, 421, 0, 0),
(2, 22, 422, 0, 0),
(2, 22, 423, 0, 0),
(2, 22, 424, 0, 0),
(2, 22, 425, 0, 0),
(2, 22, 426, 0, 0),
(2, 22, 427, 0, 0),
(2, 22, 428, 0, 0),
(2, 22, 429, 0, 0),
(2, 22, 430, 0, 0),
(2, 22, 431, 0, 0),
(2, 22, 432, 0, 0),
(2, 22, 433, 0, 0),
(2, 22, 434, 0, 0),
(2, 22, 435, 0, 0),
(2, 23, 436, 0, 0),
(2, 23, 437, 0, 0),
(2, 23, 438, 0, 0),
(2, 23, 439, 0, 0),
(2, 23, 440, 0, 0),
(2, 23, 441, 0, 0),
(2, 23, 442, 0, 0),
(2, 23, 443, 0, 0),
(2, 23, 444, 0, 0),
(2, 23, 445, 0, 0),
(2, 23, 446, 0, 0),
(2, 23, 447, 0, 0),
(2, 23, 448, 0, 0),
(2, 23, 449, 0, 0),
(2, 23, 450, 0, 0),
(2, 23, 451, 0, 0),
(2, 23, 452, 0, 0),
(2, 23, 453, 0, 0),
(2, 23, 454, 0, 0),
(2, 23, 455, 0, 0),
(2, 23, 456, 0, 0),
(2, 23, 457, 0, 0),
(2, 23, 458, 0, 0),
(2, 23, 459, 0, 0),
(2, 23, 460, 0, 0),
(2, 23, 461, 0, 0),
(2, 23, 462, 0, 0),
(2, 23, 463, 0, 0),
(2, 23, 464, 0, 0),
(2, 23, 465, 0, 0),
(2, 23, 466, 0, 0),
(2, 23, 467, 0, 0),
(2, 23, 468, 0, 0),
(2, 23, 469, 0, 0),
(2, 23, 470, 0, 0),
(2, 23, 471, 0, 0),
(2, 23, 472, 0, 0),
(2, 23, 473, 0, 0),
(2, 23, 474, 0, 0),
(2, 10, 520, 0, 0),
(2, 10, 521, 0, 0),
(2, 10, 522, 0, 0),
(2, 10, 523, 0, 0),
(2, 10, 524, 0, 0),
(2, 10, 525, 0, 0),
(2, 34, 526, 0, 0),
(2, 34, 527, 0, 0),
(2, 34, 528, 0, 0),
(2, 34, 529, 0, 0),
(2, 34, 530, 0, 0),
(2, 34, 531, 0, 0),
(2, 34, 532, 0, 0),
(2, 34, 533, 0, 0),
(2, 34, 534, 0, 0),
(2, 34, 535, 0, 0),
(2, 34, 536, 0, 0),
(2, 34, 537, 0, 0),
(2, 34, 538, 0, 0),
(2, 34, 539, 0, 0),
(2, 34, 540, 0, 0),
(2, 34, 541, 0, 0),
(2, 34, 542, 0, 0),
(2, 29, 543, 0, 0),
(2, 35, 544, 0, 0),
(2, 35, 545, 0, 0),
(2, 35, 546, 0, 0),
(2, 35, 547, 0, 0),
(2, 35, 548, 0, 0),
(2, 35, 549, 0, 0),
(2, 35, 550, 0, 0),
(2, 35, 551, 0, 0),
(2, 35, 552, 0, 0),
(2, 35, 553, 0, 0),
(2, 35, 554, 0, 0),
(2, 35, 555, 0, 0),
(2, 35, 556, 0, 0),
(2, 35, 557, 0, 0),
(2, 35, 558, 0, 0),
(2, 35, 559, 0, 0),
(2, 35, 560, 0, 0),
(2, 35, 561, 0, 0),
(2, 35, 562, 0, 0),
(2, 35, 563, 0, 0),
(2, 35, 564, 0, 0),
(2, 35, 565, 0, 0),
(2, 36, 566, 0, 0),
(2, 36, 567, 0, 0),
(2, 36, 568, 0, 0),
(2, 36, 569, 0, 0),
(2, 36, 570, 0, 0),
(2, 36, 571, 0, 0),
(2, 36, 572, 0, 0),
(2, 36, 573, 0, 0),
(2, 36, 574, 0, 0),
(2, 36, 575, 0, 0),
(2, 36, 576, 0, 0),
(2, 36, 577, 0, 0),
(2, 36, 578, 0, 0),
(2, 36, 579, 0, 0),
(2, 36, 580, 0, 0),
(2, 36, 581, 0, 0),
(2, 36, 582, 0, 0),
(2, 36, 583, 0, 0),
(2, 36, 584, 0, 0),
(2, 36, 585, 0, 0),
(2, 36, 586, 0, 0),
(2, 36, 587, 0, 0),
(2, 38, 588, 0, 0),
(2, 38, 589, 0, 0),
(2, 38, 590, 0, 0),
(2, 38, 591, 0, 0),
(2, 38, 592, 0, 0),
(2, 38, 593, 0, 0),
(2, 38, 594, 0, 0),
(2, 38, 595, 0, 0),
(2, 38, 596, 0, 0),
(2, 38, 597, 0, 0),
(2, 38, 598, 0, 0),
(2, 38, 599, 0, 0),
(2, 38, 600, 0, 0),
(2, 38, 601, 0, 0),
(2, 38, 602, 0, 0),
(2, 38, 603, 0, 0),
(2, 38, 604, 0, 0),
(2, 38, 605, 0, 0),
(2, 38, 606, 0, 0),
(2, 38, 607, 0, 0),
(2, 38, 608, 0, 0),
(2, 42, 609, 0, 0),
(2, 42, 610, 0, 0),
(2, 42, 611, 0, 0),
(2, 42, 612, 0, 0),
(2, 42, 613, 0, 0),
(2, 42, 614, 0, 0),
(2, 42, 615, 0, 0),
(2, 42, 616, 0, 0),
(2, 43, 617, 0, 0),
(2, 43, 618, 0, 0),
(2, 43, 619, 0, 0),
(2, 43, 620, 0, 0),
(2, 43, 621, 0, 0),
(2, 43, 622, 0, 0),
(2, 43, 623, 0, 0),
(2, 43, 624, 0, 0),
(2, 43, 625, 0, 0),
(2, 43, 626, 0, 0),
(2, 43, 627, 0, 0),
(2, 43, 628, 0, 0),
(2, 43, 629, 0, 0),
(2, 44, 630, 0, 0),
(2, 44, 631, 0, 0),
(2, 44, 632, 0, 0),
(2, 44, 633, 0, 0),
(2, 44, 634, 0, 0),
(2, 44, 635, 0, 0),
(2, 44, 636, 0, 0),
(2, 44, 637, 0, 0),
(2, 44, 638, 0, 0),
(2, 44, 639, 0, 0),
(2, 44, 640, 0, 0),
(2, 44, 641, 0, 0),
(2, 44, 642, 0, 0),
(2, 44, 643, 0, 0),
(2, 44, 644, 0, 0),
(2, 44, 645, 0, 0),
(2, 44, 646, 0, 0),
(2, 44, 647, 0, 0),
(2, 45, 648, 0, 0),
(2, 45, 649, 0, 0),
(2, 45, 650, 0, 0),
(2, 45, 651, 0, 0),
(2, 45, 652, 0, 0),
(2, 45, 653, 0, 0),
(2, 45, 654, 0, 0),
(2, 45, 655, 0, 0),
(2, 45, 656, 0, 0),
(2, 45, 657, 0, 0),
(2, 45, 658, 0, 0),
(2, 45, 659, 0, 0),
(2, 45, 660, 0, 0),
(2, 45, 661, 0, 0),
(2, 45, 662, 0, 0),
(2, 45, 663, 0, 0),
(2, 45, 664, 0, 0),
(2, 45, 665, 0, 0),
(2, 45, 666, 0, 0),
(2, 45, 667, 0, 0),
(2, 47, 668, 0, 0),
(2, 47, 669, 0, 0),
(2, 47, 670, 0, 0),
(2, 47, 671, 0, 0),
(2, 47, 672, 0, 0),
(2, 47, 673, 0, 0),
(2, 2, 674, 0, 0),
(2, 29, 675, 0, 0),
(2, 23, 676, 0, 0),
(2, 23, 677, 0, 0),
(2, 23, 678, 0, 0),
(2, 23, 679, 0, 0),
(2, 23, 680, 0, 0),
(2, 23, 681, 0, 0),
(2, 23, 682, 0, 0),
(2, 23, 683, 0, 0),
(2, 23, 684, 0, 0),
(2, 22, 685, 0, 0),
(2, 22, 686, 0, 0),
(2, 22, 687, 0, 0),
(2, 22, 688, 0, 0),
(2, 22, 689, 0, 0),
(2, 22, 690, 0, 0),
(2, 22, 691, 0, 0),
(2, 22, 692, 0, 0),
(2, 22, 693, 0, 0),
(2, 21, 694, 0, 0),
(2, 21, 695, 0, 0),
(2, 21, 696, 0, 0),
(2, 21, 697, 0, 0),
(2, 21, 698, 0, 0),
(2, 21, 699, 0, 0),
(2, 21, 700, 0, 0),
(2, 21, 701, 0, 0),
(2, 21, 702, 0, 0),
(2, 20, 703, 0, 0),
(2, 20, 704, 0, 0),
(2, 20, 705, 0, 0),
(2, 20, 706, 0, 0),
(2, 20, 707, 0, 0),
(2, 20, 708, 0, 0),
(2, 20, 709, 0, 0),
(2, 20, 710, 0, 0),
(2, 20, 711, 0, 0),
(2, 29, 712, 0, 0),
(2, 44, 713, 0, 0),
(2, 42, 714, 0, 0),
(2, 29, 715, 0, 0),
(2, 29, 716, 0, 0),
(2, 29, 717, 0, 0),
(2, 23, 718, 0, 0),
(2, 22, 719, 0, 0),
(2, 21, 720, 0, 0),
(2, 20, 721, 0, 0),
(2, 29, 722, 0, 0),
(2, 6, 723, 0, 0),
(2, 4, 724, 0, 0),
(2, 2, 725, 0, 0),
(2, 29, 726, 0, 0),
(2, 23, 727, 0, 0),
(2, 23, 728, 0, 0),
(2, 21, 729, 0, 0),
(2, 21, 730, 0, 0),
(2, 18, 731, 0, 0),
(2, 7, 732, 0, 0),
(2, 42, 733, 0, 0),
(2, 42, 734, 0, 0),
(2, 23, 735, 0, 0),
(2, 20, 736, 0, 0),
(2, 21, 737, 0, 0),
(2, 22, 738, 0, 0),
(2, 29, 739, 0, 0),
(2, 2, 740, 0, 0),
(2, 13, 741, 0, 0),
(2, 29, 742, 0, 0),
(2, 29, 743, 0, 0),
(2, 29, 744, 0, 0),
(2, 29, 745, 0, 0),
(2, 14, 772, 0, 0),
(2, 36, 773, 0, 0),
(2, 23, 774, 0, 0),
(2, 29, 775, 0, 0),
(2, 23, 776, 0, 0),
(2, 23, 777, 0, 0),
(2, 23, 778, 0, 0),
(2, 20, 779, 0, 0),
(2, 20, 780, 0, 0),
(2, 20, 781, 0, 0),
(2, 21, 782, 0, 0),
(2, 22, 783, 0, 0),
(2, 22, 784, 0, 0),
(2, 22, 785, 0, 0),
(2, 42, 786, 0, 0),
(2, 42, 787, 0, 0),
(2, 42, 788, 0, 0),
(2, 2, 789, 0, 0),
(2, 4, 790, 0, 0),
(2, 6, 791, 0, 0),
(2, 7, 792, 0, 0),
(2, 8, 793, 0, 0),
(2, 9, 794, 0, 0),
(2, 10, 795, 0, 0),
(2, 13, 796, 0, 0),
(2, 14, 797, 0, 0),
(2, 15, 798, 0, 0),
(2, 16, 799, 0, 0),
(2, 18, 800, 0, 0),
(2, 19, 801, 0, 0),
(2, 20, 802, 0, 0),
(2, 21, 803, 0, 0),
(2, 22, 804, 0, 0),
(2, 23, 805, 0, 0),
(2, 26, 806, 0, 0),
(2, 10, 807, 0, 0),
(2, 2, 808, 0, 0),
(2, 4, 809, 0, 0),
(2, 6, 810, 0, 0),
(2, 7, 811, 0, 0),
(2, 8, 812, 0, 0),
(2, 9, 813, 0, 0),
(2, 10, 814, 0, 0),
(2, 13, 815, 0, 0),
(2, 14, 816, 0, 0),
(2, 15, 817, 0, 0),
(2, 16, 818, 0, 0),
(2, 18, 819, 0, 0),
(2, 19, 820, 0, 0),
(2, 20, 821, 0, 0),
(2, 21, 822, 0, 0),
(2, 22, 823, 0, 0),
(2, 23, 824, 0, 0),
(2, 26, 825, 0, 0),
(2, 2, 826, 0, 0),
(2, 4, 827, 0, 0),
(2, 6, 828, 0, 0),
(2, 7, 829, 0, 0),
(2, 8, 830, 0, 0),
(2, 9, 831, 0, 0),
(2, 10, 832, 0, 0),
(2, 13, 833, 0, 0),
(2, 14, 834, 0, 0),
(2, 15, 835, 0, 0),
(2, 16, 836, 0, 0),
(2, 18, 837, 0, 0),
(2, 19, 838, 0, 0),
(2, 20, 839, 0, 0),
(2, 21, 840, 0, 0),
(2, 22, 841, 0, 0),
(2, 23, 842, 0, 0),
(2, 26, 843, 0, 0),
(2, 20, 844, 0, 0),
(2, 21, 845, 0, 0),
(2, 22, 846, 0, 0),
(2, 23, 847, 0, 0),
(2, 45, 848, 0, 0),
(2, 45, 849, 0, 0),
(2, 29, 850, 0, 0),
(2, 22, 851, 0, 0),
(2, 29, 852, 0, 0),
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
(3, 13, 173, 0, 0),
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
(3, 14, 204, 0, 0),
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
(3, 8, 219, 0, 0),
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
(3, 10, 231, 0, 0),
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
(3, 9, 255, 0, 0),
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
(3, 16, 278, 0, 0),
(3, 15, 279, 0, 0),
(3, 15, 280, 0, 0),
(3, 15, 281, 0, 0),
(3, 15, 282, 0, 0),
(3, 15, 283, 0, 0),
(3, 15, 284, 0, 0),
(3, 15, 285, 0, 0),
(3, 15, 286, 0, 0),
(3, 15, 287, 0, 0),
(3, 15, 288, 0, 0),
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
(3, 18, 305, 0, 0),
(3, 19, 306, 0, 0),
(3, 19, 307, 0, 0),
(3, 19, 308, 0, 0),
(3, 19, 309, 0, 0),
(3, 19, 310, 0, 0),
(3, 19, 311, 0, 0),
(3, 19, 312, 0, 0),
(3, 19, 313, 0, 0),
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
(3, 20, 350, 0, 0),
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
(3, 21, 388, 0, 0),
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
(3, 22, 435, 0, 0),
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
(3, 23, 474, 0, 0),
(3, 10, 520, 0, 0),
(3, 10, 521, 0, 0),
(3, 10, 522, 0, 0),
(3, 10, 523, 0, 0),
(3, 10, 524, 0, 0),
(3, 10, 525, 0, 0),
(3, 34, 526, 0, 0),
(3, 34, 527, 0, 0),
(3, 34, 528, 0, 0),
(3, 34, 529, 0, 0),
(3, 34, 530, 0, 0),
(3, 34, 531, 0, 0),
(3, 34, 532, 0, 0),
(3, 34, 533, 0, 0),
(3, 34, 534, 0, 0),
(3, 34, 535, 0, 0),
(3, 34, 536, 0, 0),
(3, 34, 537, 0, 0),
(3, 34, 538, 0, 0),
(3, 34, 539, 0, 0),
(3, 34, 540, 0, 0),
(3, 34, 541, 0, 0),
(3, 34, 542, 0, 0),
(3, 29, 543, 0, 0),
(3, 35, 544, 0, 0),
(3, 35, 545, 0, 0),
(3, 35, 546, 0, 0),
(3, 35, 547, 0, 0),
(3, 35, 548, 0, 0),
(3, 35, 549, 0, 0),
(3, 35, 550, 0, 0),
(3, 35, 551, 0, 0),
(3, 35, 552, 0, 0),
(3, 35, 553, 0, 0),
(3, 35, 554, 0, 0),
(3, 35, 555, 0, 0),
(3, 35, 556, 0, 0),
(3, 35, 557, 0, 0),
(3, 35, 558, 0, 0),
(3, 35, 559, 0, 0),
(3, 35, 560, 0, 0),
(3, 35, 561, 0, 0),
(3, 35, 562, 0, 0),
(3, 35, 563, 0, 0),
(3, 35, 564, 0, 0),
(3, 35, 565, 0, 0),
(3, 36, 566, 0, 0),
(3, 36, 567, 0, 0),
(3, 36, 568, 0, 0),
(3, 36, 569, 0, 0),
(3, 36, 570, 0, 0),
(3, 36, 571, 0, 0),
(3, 36, 572, 0, 0),
(3, 36, 573, 0, 0),
(3, 36, 574, 0, 0),
(3, 36, 575, 0, 0),
(3, 36, 576, 0, 0),
(3, 36, 577, 0, 0),
(3, 36, 578, 0, 0),
(3, 36, 579, 0, 0),
(3, 36, 580, 0, 0),
(3, 36, 581, 0, 0),
(3, 36, 582, 0, 0),
(3, 36, 583, 0, 0),
(3, 36, 584, 0, 0),
(3, 36, 585, 0, 0),
(3, 36, 586, 0, 0),
(3, 36, 587, 0, 0),
(3, 38, 588, 0, 0),
(3, 38, 589, 0, 0),
(3, 38, 590, 0, 0),
(3, 38, 591, 0, 0),
(3, 38, 592, 0, 0),
(3, 38, 593, 0, 0),
(3, 38, 594, 0, 0),
(3, 38, 595, 0, 0),
(3, 38, 596, 0, 0),
(3, 38, 597, 0, 0),
(3, 38, 598, 0, 0),
(3, 38, 599, 0, 0),
(3, 38, 600, 0, 0),
(3, 38, 601, 0, 0),
(3, 38, 602, 0, 0),
(3, 38, 603, 0, 0),
(3, 38, 604, 0, 0),
(3, 38, 605, 0, 0),
(3, 38, 606, 0, 0),
(3, 38, 607, 0, 0),
(3, 38, 608, 0, 0),
(3, 42, 609, 0, 0),
(3, 42, 610, 0, 0),
(3, 42, 611, 0, 0),
(3, 42, 612, 0, 0),
(3, 42, 613, 0, 0),
(3, 42, 614, 0, 0),
(3, 42, 615, 0, 0),
(3, 42, 616, 0, 0),
(3, 43, 617, 0, 0),
(3, 43, 618, 0, 0),
(3, 43, 619, 0, 0),
(3, 43, 620, 0, 0),
(3, 43, 621, 0, 0),
(3, 43, 622, 0, 0),
(3, 43, 623, 0, 0),
(3, 43, 624, 0, 0),
(3, 43, 625, 0, 0),
(3, 43, 626, 0, 0),
(3, 43, 627, 0, 0),
(3, 43, 628, 0, 0),
(3, 43, 629, 0, 0),
(3, 44, 630, 0, 0),
(3, 44, 631, 0, 0),
(3, 44, 632, 0, 0),
(3, 44, 633, 0, 0),
(3, 44, 634, 0, 0),
(3, 44, 635, 0, 0),
(3, 44, 636, 0, 0),
(3, 44, 637, 0, 0),
(3, 44, 638, 0, 0),
(3, 44, 639, 0, 0),
(3, 44, 640, 0, 0),
(3, 44, 641, 0, 0),
(3, 44, 642, 0, 0),
(3, 44, 643, 0, 0),
(3, 44, 644, 0, 0),
(3, 44, 645, 0, 0),
(3, 44, 646, 0, 0),
(3, 44, 647, 0, 0),
(3, 45, 648, 0, 0),
(3, 45, 649, 0, 0),
(3, 45, 650, 0, 0),
(3, 45, 651, 0, 0),
(3, 45, 652, 0, 0),
(3, 45, 653, 0, 0),
(3, 45, 654, 0, 0),
(3, 45, 655, 0, 0),
(3, 45, 656, 0, 0),
(3, 45, 657, 0, 0),
(3, 45, 658, 0, 0),
(3, 45, 659, 0, 0),
(3, 45, 660, 0, 0),
(3, 45, 661, 0, 0),
(3, 45, 662, 0, 0),
(3, 45, 663, 0, 0),
(3, 45, 664, 0, 0),
(3, 45, 665, 0, 0),
(3, 45, 666, 0, 0),
(3, 45, 667, 0, 0),
(3, 47, 668, 0, 0),
(3, 47, 669, 0, 0),
(3, 47, 670, 0, 0),
(3, 47, 671, 0, 0),
(3, 47, 672, 0, 0),
(3, 47, 673, 0, 0),
(3, 2, 674, 0, 0),
(3, 29, 675, 0, 0),
(3, 23, 676, 0, 0),
(3, 23, 677, 0, 0),
(3, 23, 678, 0, 0),
(3, 23, 679, 0, 0),
(3, 23, 680, 0, 0),
(3, 23, 681, 0, 0),
(3, 23, 682, 0, 0),
(3, 23, 683, 0, 0),
(3, 23, 684, 0, 0),
(3, 22, 685, 0, 0),
(3, 22, 686, 0, 0),
(3, 22, 687, 0, 0),
(3, 22, 688, 0, 0),
(3, 22, 689, 0, 0),
(3, 22, 690, 0, 0),
(3, 22, 691, 0, 0),
(3, 22, 692, 0, 0),
(3, 22, 693, 0, 0),
(3, 21, 694, 0, 0),
(3, 21, 695, 0, 0),
(3, 21, 696, 0, 0),
(3, 21, 697, 0, 0),
(3, 21, 698, 0, 0),
(3, 21, 699, 0, 0),
(3, 21, 700, 0, 0),
(3, 21, 701, 0, 0),
(3, 21, 702, 0, 0),
(3, 20, 703, 0, 0),
(3, 20, 704, 0, 0),
(3, 20, 705, 0, 0),
(3, 20, 706, 0, 0),
(3, 20, 707, 0, 0),
(3, 20, 708, 0, 0),
(3, 20, 709, 0, 0),
(3, 20, 710, 0, 0),
(3, 20, 711, 0, 0),
(3, 29, 712, 0, 0),
(3, 44, 713, 0, 0),
(3, 42, 714, 0, 0),
(3, 29, 715, 0, 0),
(3, 29, 716, 0, 0),
(3, 29, 717, 0, 0),
(3, 23, 718, 0, 0),
(3, 22, 719, 0, 0),
(3, 21, 720, 0, 0),
(3, 20, 721, 0, 0),
(3, 29, 722, 0, 0),
(3, 6, 723, 0, 0),
(3, 4, 724, 0, 0),
(3, 2, 725, 0, 0),
(3, 29, 726, 0, 0),
(3, 23, 727, 0, 0),
(3, 23, 728, 0, 0),
(3, 21, 729, 0, 0),
(3, 21, 730, 0, 0),
(3, 18, 731, 0, 0),
(3, 7, 732, 0, 0),
(3, 42, 733, 0, 0),
(3, 42, 734, 0, 0),
(3, 23, 735, 0, 0),
(3, 20, 736, 0, 0),
(3, 21, 737, 0, 0),
(3, 22, 738, 0, 0),
(3, 29, 739, 0, 0),
(3, 2, 740, 0, 0),
(3, 13, 741, 0, 0),
(3, 29, 742, 0, 0),
(3, 29, 743, 0, 0),
(3, 29, 744, 0, 0),
(3, 29, 745, 0, 0),
(3, 14, 772, 0, 0),
(3, 36, 773, 0, 0),
(3, 23, 774, 0, 0),
(3, 29, 775, 0, 0),
(3, 23, 776, 0, 0),
(3, 23, 777, 0, 0),
(3, 23, 778, 0, 0),
(3, 20, 779, 0, 0),
(3, 20, 780, 0, 0),
(3, 20, 781, 0, 0),
(3, 21, 782, 0, 0),
(3, 22, 783, 0, 0),
(3, 22, 784, 0, 0),
(3, 22, 785, 0, 0),
(3, 42, 786, 0, 0),
(3, 42, 787, 0, 0),
(3, 42, 788, 0, 0),
(3, 2, 789, 0, 0),
(3, 4, 790, 0, 0),
(3, 6, 791, 0, 0),
(3, 7, 792, 0, 0),
(3, 8, 793, 0, 0),
(3, 9, 794, 0, 0),
(3, 10, 795, 0, 0),
(3, 13, 796, 0, 0),
(3, 14, 797, 0, 0),
(3, 15, 798, 0, 0),
(3, 16, 799, 0, 0),
(3, 18, 800, 0, 0),
(3, 19, 801, 0, 0),
(3, 20, 802, 0, 0),
(3, 21, 803, 0, 0),
(3, 22, 804, 0, 0),
(3, 23, 805, 0, 0),
(3, 26, 806, 0, 0),
(3, 10, 807, 0, 0),
(3, 2, 808, 0, 0),
(3, 4, 809, 0, 0),
(3, 6, 810, 0, 0),
(3, 7, 811, 0, 0),
(3, 8, 812, 0, 0),
(3, 9, 813, 0, 0),
(3, 10, 814, 0, 0),
(3, 13, 815, 0, 0),
(3, 14, 816, 0, 0),
(3, 15, 817, 0, 0),
(3, 16, 818, 0, 0),
(3, 18, 819, 0, 0),
(3, 19, 820, 0, 0),
(3, 20, 821, 0, 0),
(3, 21, 822, 0, 0),
(3, 22, 823, 0, 0),
(3, 23, 824, 0, 0),
(3, 26, 825, 0, 0),
(3, 2, 826, 0, 0),
(3, 4, 827, 0, 0),
(3, 6, 828, 0, 0),
(3, 7, 829, 0, 0),
(3, 8, 830, 0, 0),
(3, 9, 831, 0, 0),
(3, 10, 832, 0, 0),
(3, 13, 833, 0, 0),
(3, 14, 834, 0, 0),
(3, 15, 835, 0, 0),
(3, 16, 836, 0, 0),
(3, 18, 837, 0, 0),
(3, 19, 838, 0, 0),
(3, 20, 839, 0, 0),
(3, 21, 840, 0, 0),
(3, 22, 841, 0, 0),
(3, 23, 842, 0, 0),
(3, 26, 843, 0, 0),
(3, 20, 844, 0, 0),
(3, 21, 845, 0, 0),
(3, 22, 846, 0, 0),
(3, 23, 847, 0, 0),
(3, 45, 848, 0, 0),
(3, 45, 849, 0, 0),
(3, 29, 850, 0, 0),
(3, 22, 851, 0, 0),
(3, 29, 852, 0, 0),
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
(4, 13, 173, 0, 0),
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
(4, 14, 204, 0, 0),
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
(4, 8, 219, 0, 0),
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
(4, 10, 231, 0, 0),
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
(4, 9, 255, 0, 0),
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
(4, 16, 278, 0, 0),
(4, 15, 279, 0, 0),
(4, 15, 280, 0, 0),
(4, 15, 281, 0, 0),
(4, 15, 282, 0, 0),
(4, 15, 283, 0, 0),
(4, 15, 284, 0, 0),
(4, 15, 285, 0, 0),
(4, 15, 286, 0, 0),
(4, 15, 287, 0, 0),
(4, 15, 288, 0, 0),
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
(4, 18, 305, 0, 0),
(4, 19, 306, 0, 0),
(4, 19, 307, 0, 0),
(4, 19, 308, 0, 0),
(4, 19, 309, 0, 0),
(4, 19, 310, 0, 0),
(4, 19, 311, 0, 0),
(4, 19, 312, 0, 0),
(4, 19, 313, 0, 0),
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
(4, 20, 350, 0, 0),
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
(4, 21, 388, 0, 0),
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
(4, 22, 435, 0, 0),
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
(4, 23, 474, 0, 0),
(4, 10, 520, 0, 0),
(4, 10, 521, 0, 0),
(4, 10, 522, 0, 0),
(4, 10, 523, 0, 0),
(4, 10, 524, 0, 0),
(4, 10, 525, 0, 0),
(4, 34, 526, 0, 0),
(4, 34, 527, 0, 0),
(4, 34, 528, 0, 0),
(4, 34, 529, 0, 0),
(4, 34, 530, 0, 0),
(4, 34, 531, 0, 0),
(4, 34, 532, 0, 0),
(4, 34, 533, 0, 0),
(4, 34, 534, 0, 0),
(4, 34, 535, 0, 0),
(4, 34, 536, 0, 0),
(4, 34, 537, 0, 0),
(4, 34, 538, 0, 0),
(4, 34, 539, 0, 0);
INSERT INTO `vtiger_profile2field` (`profileid`, `tabid`, `fieldid`, `visible`, `readonly`) VALUES
(4, 34, 540, 0, 0),
(4, 34, 541, 0, 0),
(4, 34, 542, 0, 0),
(4, 29, 543, 0, 0),
(4, 35, 544, 0, 0),
(4, 35, 545, 0, 0),
(4, 35, 546, 0, 0),
(4, 35, 547, 0, 0),
(4, 35, 548, 0, 0),
(4, 35, 549, 0, 0),
(4, 35, 550, 0, 0),
(4, 35, 551, 0, 0),
(4, 35, 552, 0, 0),
(4, 35, 553, 0, 0),
(4, 35, 554, 0, 0),
(4, 35, 555, 0, 0),
(4, 35, 556, 0, 0),
(4, 35, 557, 0, 0),
(4, 35, 558, 0, 0),
(4, 35, 559, 0, 0),
(4, 35, 560, 0, 0),
(4, 35, 561, 0, 0),
(4, 35, 562, 0, 0),
(4, 35, 563, 0, 0),
(4, 35, 564, 0, 0),
(4, 35, 565, 0, 0),
(4, 36, 566, 0, 0),
(4, 36, 567, 0, 0),
(4, 36, 568, 0, 0),
(4, 36, 569, 0, 0),
(4, 36, 570, 0, 0),
(4, 36, 571, 0, 0),
(4, 36, 572, 0, 0),
(4, 36, 573, 0, 0),
(4, 36, 574, 0, 0),
(4, 36, 575, 0, 0),
(4, 36, 576, 0, 0),
(4, 36, 577, 0, 0),
(4, 36, 578, 0, 0),
(4, 36, 579, 0, 0),
(4, 36, 580, 0, 0),
(4, 36, 581, 0, 0),
(4, 36, 582, 0, 0),
(4, 36, 583, 0, 0),
(4, 36, 584, 0, 0),
(4, 36, 585, 0, 0),
(4, 36, 586, 0, 0),
(4, 36, 587, 0, 0),
(4, 38, 588, 0, 0),
(4, 38, 589, 0, 0),
(4, 38, 590, 0, 0),
(4, 38, 591, 0, 0),
(4, 38, 592, 0, 0),
(4, 38, 593, 0, 0),
(4, 38, 594, 0, 0),
(4, 38, 595, 0, 0),
(4, 38, 596, 0, 0),
(4, 38, 597, 0, 0),
(4, 38, 598, 0, 0),
(4, 38, 599, 0, 0),
(4, 38, 600, 0, 0),
(4, 38, 601, 0, 0),
(4, 38, 602, 0, 0),
(4, 38, 603, 0, 0),
(4, 38, 604, 0, 0),
(4, 38, 605, 0, 0),
(4, 38, 606, 0, 0),
(4, 38, 607, 0, 0),
(4, 38, 608, 0, 0),
(4, 42, 609, 0, 0),
(4, 42, 610, 0, 0),
(4, 42, 611, 0, 0),
(4, 42, 612, 0, 0),
(4, 42, 613, 0, 0),
(4, 42, 614, 0, 0),
(4, 42, 615, 0, 0),
(4, 42, 616, 0, 0),
(4, 43, 617, 0, 0),
(4, 43, 618, 0, 0),
(4, 43, 619, 0, 0),
(4, 43, 620, 0, 0),
(4, 43, 621, 0, 0),
(4, 43, 622, 0, 0),
(4, 43, 623, 0, 0),
(4, 43, 624, 0, 0),
(4, 43, 625, 0, 0),
(4, 43, 626, 0, 0),
(4, 43, 627, 0, 0),
(4, 43, 628, 0, 0),
(4, 43, 629, 0, 0),
(4, 44, 630, 0, 0),
(4, 44, 631, 0, 0),
(4, 44, 632, 0, 0),
(4, 44, 633, 0, 0),
(4, 44, 634, 0, 0),
(4, 44, 635, 0, 0),
(4, 44, 636, 0, 0),
(4, 44, 637, 0, 0),
(4, 44, 638, 0, 0),
(4, 44, 639, 0, 0),
(4, 44, 640, 0, 0),
(4, 44, 641, 0, 0),
(4, 44, 642, 0, 0),
(4, 44, 643, 0, 0),
(4, 44, 644, 0, 0),
(4, 44, 645, 0, 0),
(4, 44, 646, 0, 0),
(4, 44, 647, 0, 0),
(4, 45, 648, 0, 0),
(4, 45, 649, 0, 0),
(4, 45, 650, 0, 0),
(4, 45, 651, 0, 0),
(4, 45, 652, 0, 0),
(4, 45, 653, 0, 0),
(4, 45, 654, 0, 0),
(4, 45, 655, 0, 0),
(4, 45, 656, 0, 0),
(4, 45, 657, 0, 0),
(4, 45, 658, 0, 0),
(4, 45, 659, 0, 0),
(4, 45, 660, 0, 0),
(4, 45, 661, 0, 0),
(4, 45, 662, 0, 0),
(4, 45, 663, 0, 0),
(4, 45, 664, 0, 0),
(4, 45, 665, 0, 0),
(4, 45, 666, 0, 0),
(4, 45, 667, 0, 0),
(4, 47, 668, 0, 0),
(4, 47, 669, 0, 0),
(4, 47, 670, 0, 0),
(4, 47, 671, 0, 0),
(4, 47, 672, 0, 0),
(4, 47, 673, 0, 0),
(4, 2, 674, 0, 0),
(4, 29, 675, 0, 0),
(4, 23, 676, 0, 0),
(4, 23, 677, 0, 0),
(4, 23, 678, 0, 0),
(4, 23, 679, 0, 0),
(4, 23, 680, 0, 0),
(4, 23, 681, 0, 0),
(4, 23, 682, 0, 0),
(4, 23, 683, 0, 0),
(4, 23, 684, 0, 0),
(4, 22, 685, 0, 0),
(4, 22, 686, 0, 0),
(4, 22, 687, 0, 0),
(4, 22, 688, 0, 0),
(4, 22, 689, 0, 0),
(4, 22, 690, 0, 0),
(4, 22, 691, 0, 0),
(4, 22, 692, 0, 0),
(4, 22, 693, 0, 0),
(4, 21, 694, 0, 0),
(4, 21, 695, 0, 0),
(4, 21, 696, 0, 0),
(4, 21, 697, 0, 0),
(4, 21, 698, 0, 0),
(4, 21, 699, 0, 0),
(4, 21, 700, 0, 0),
(4, 21, 701, 0, 0),
(4, 21, 702, 0, 0),
(4, 20, 703, 0, 0),
(4, 20, 704, 0, 0),
(4, 20, 705, 0, 0),
(4, 20, 706, 0, 0),
(4, 20, 707, 0, 0),
(4, 20, 708, 0, 0),
(4, 20, 709, 0, 0),
(4, 20, 710, 0, 0),
(4, 20, 711, 0, 0),
(4, 29, 712, 0, 0),
(4, 44, 713, 0, 0),
(4, 42, 714, 0, 0),
(4, 29, 715, 0, 0),
(4, 29, 716, 0, 0),
(4, 29, 717, 0, 0),
(4, 23, 718, 0, 0),
(4, 22, 719, 0, 0),
(4, 21, 720, 0, 0),
(4, 20, 721, 0, 0),
(4, 29, 722, 0, 0),
(4, 6, 723, 0, 0),
(4, 4, 724, 0, 0),
(4, 2, 725, 0, 0),
(4, 29, 726, 0, 0),
(4, 23, 727, 0, 0),
(4, 23, 728, 0, 0),
(4, 21, 729, 0, 0),
(4, 21, 730, 0, 0),
(4, 18, 731, 0, 0),
(4, 7, 732, 0, 0),
(4, 42, 733, 0, 0),
(4, 42, 734, 0, 0),
(4, 23, 735, 0, 0),
(4, 20, 736, 0, 0),
(4, 21, 737, 0, 0),
(4, 22, 738, 0, 0),
(4, 29, 739, 0, 0),
(4, 2, 740, 0, 0),
(4, 13, 741, 0, 0),
(4, 29, 742, 0, 0),
(4, 29, 743, 0, 0),
(4, 29, 744, 0, 0),
(4, 29, 745, 0, 0),
(4, 14, 772, 0, 0),
(4, 36, 773, 0, 0),
(4, 23, 774, 0, 0),
(4, 29, 775, 0, 0),
(4, 23, 776, 0, 0),
(4, 23, 777, 0, 0),
(4, 23, 778, 0, 0),
(4, 20, 779, 0, 0),
(4, 20, 780, 0, 0),
(4, 20, 781, 0, 0),
(4, 21, 782, 0, 0),
(4, 22, 783, 0, 0),
(4, 22, 784, 0, 0),
(4, 22, 785, 0, 0),
(4, 42, 786, 0, 0),
(4, 42, 787, 0, 0),
(4, 42, 788, 0, 0),
(4, 2, 789, 0, 0),
(4, 4, 790, 0, 0),
(4, 6, 791, 0, 0),
(4, 7, 792, 0, 0),
(4, 8, 793, 0, 0),
(4, 9, 794, 0, 0),
(4, 10, 795, 0, 0),
(4, 13, 796, 0, 0),
(4, 14, 797, 0, 0),
(4, 15, 798, 0, 0),
(4, 16, 799, 0, 0),
(4, 18, 800, 0, 0),
(4, 19, 801, 0, 0),
(4, 20, 802, 0, 0),
(4, 21, 803, 0, 0),
(4, 22, 804, 0, 0),
(4, 23, 805, 0, 0),
(4, 26, 806, 0, 0),
(4, 10, 807, 0, 0),
(4, 2, 808, 0, 0),
(4, 4, 809, 0, 0),
(4, 6, 810, 0, 0),
(4, 7, 811, 0, 0),
(4, 8, 812, 0, 0),
(4, 9, 813, 0, 0),
(4, 10, 814, 0, 0),
(4, 13, 815, 0, 0),
(4, 14, 816, 0, 0),
(4, 15, 817, 0, 0),
(4, 16, 818, 0, 0),
(4, 18, 819, 0, 0),
(4, 19, 820, 0, 0),
(4, 20, 821, 0, 0),
(4, 21, 822, 0, 0),
(4, 22, 823, 0, 0),
(4, 23, 824, 0, 0),
(4, 26, 825, 0, 0),
(4, 2, 826, 0, 0),
(4, 4, 827, 0, 0),
(4, 6, 828, 0, 0),
(4, 7, 829, 0, 0),
(4, 8, 830, 0, 0),
(4, 9, 831, 0, 0),
(4, 10, 832, 0, 0),
(4, 13, 833, 0, 0),
(4, 14, 834, 0, 0),
(4, 15, 835, 0, 0),
(4, 16, 836, 0, 0),
(4, 18, 837, 0, 0),
(4, 19, 838, 0, 0),
(4, 20, 839, 0, 0),
(4, 21, 840, 0, 0),
(4, 22, 841, 0, 0),
(4, 23, 842, 0, 0),
(4, 26, 843, 0, 0),
(4, 20, 844, 0, 0),
(4, 21, 845, 0, 0),
(4, 22, 846, 0, 0),
(4, 23, 847, 0, 0),
(4, 45, 848, 0, 0),
(4, 45, 849, 0, 0),
(4, 29, 850, 0, 0),
(4, 22, 851, 0, 0),
(4, 29, 852, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2globalpermissions`
--

CREATE TABLE `vtiger_profile2globalpermissions` (
  `profileid` int(19) NOT NULL,
  `globalactionid` int(19) NOT NULL,
  `globalactionpermission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_profile2globalpermissions`
--

INSERT INTO `vtiger_profile2globalpermissions` (`profileid`, `globalactionid`, `globalactionpermission`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 1, 1),
(2, 2, 1),
(3, 1, 1),
(3, 2, 1),
(4, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2standardpermissions`
--

CREATE TABLE `vtiger_profile2standardpermissions` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) NOT NULL,
  `operation` int(10) NOT NULL,
  `permissions` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_profile2standardpermissions`
--

INSERT INTO `vtiger_profile2standardpermissions` (`profileid`, `tabid`, `operation`, `permissions`) VALUES
(1, 2, 0, 0),
(1, 2, 1, 0),
(1, 2, 2, 0),
(1, 2, 3, 0),
(1, 2, 4, 0),
(1, 2, 7, 0),
(1, 4, 0, 0),
(1, 4, 1, 0),
(1, 4, 2, 0),
(1, 4, 3, 0),
(1, 4, 4, 0),
(1, 4, 7, 0),
(1, 6, 0, 0),
(1, 6, 1, 0),
(1, 6, 2, 0),
(1, 6, 3, 0),
(1, 6, 4, 0),
(1, 6, 7, 0),
(1, 7, 0, 0),
(1, 7, 1, 0),
(1, 7, 2, 0),
(1, 7, 3, 0),
(1, 7, 4, 0),
(1, 7, 7, 0),
(1, 8, 0, 0),
(1, 8, 1, 0),
(1, 8, 2, 0),
(1, 8, 3, 0),
(1, 8, 4, 0),
(1, 8, 7, 0),
(1, 9, 0, 0),
(1, 9, 1, 0),
(1, 9, 2, 0),
(1, 9, 3, 0),
(1, 9, 4, 0),
(1, 9, 7, 0),
(1, 10, 0, 0),
(1, 10, 1, 0),
(1, 10, 2, 0),
(1, 10, 4, 0),
(1, 13, 0, 0),
(1, 13, 1, 0),
(1, 13, 2, 0),
(1, 13, 3, 0),
(1, 13, 4, 0),
(1, 13, 7, 0),
(1, 14, 0, 0),
(1, 14, 1, 0),
(1, 14, 2, 0),
(1, 14, 3, 0),
(1, 14, 4, 0),
(1, 14, 7, 0),
(1, 15, 0, 0),
(1, 15, 1, 0),
(1, 15, 2, 0),
(1, 15, 3, 0),
(1, 15, 4, 0),
(1, 15, 7, 0),
(1, 16, 0, 0),
(1, 16, 1, 0),
(1, 16, 2, 0),
(1, 16, 3, 0),
(1, 16, 4, 0),
(1, 16, 7, 0),
(1, 18, 0, 0),
(1, 18, 1, 0),
(1, 18, 2, 0),
(1, 18, 3, 0),
(1, 18, 4, 0),
(1, 18, 7, 0),
(1, 19, 0, 0),
(1, 19, 1, 0),
(1, 19, 2, 0),
(1, 19, 3, 0),
(1, 19, 4, 0),
(1, 19, 7, 0),
(1, 20, 0, 0),
(1, 20, 1, 0),
(1, 20, 2, 0),
(1, 20, 3, 0),
(1, 20, 4, 0),
(1, 20, 7, 0),
(1, 21, 0, 0),
(1, 21, 1, 0),
(1, 21, 2, 0),
(1, 21, 3, 0),
(1, 21, 4, 0),
(1, 21, 7, 0),
(1, 22, 0, 0),
(1, 22, 1, 0),
(1, 22, 2, 0),
(1, 22, 3, 0),
(1, 22, 4, 0),
(1, 22, 7, 0),
(1, 23, 0, 0),
(1, 23, 1, 0),
(1, 23, 2, 0),
(1, 23, 3, 0),
(1, 23, 4, 0),
(1, 23, 7, 0),
(1, 25, 0, 1),
(1, 25, 1, 1),
(1, 25, 2, 1),
(1, 25, 3, 0),
(1, 25, 4, 0),
(1, 25, 7, 1),
(1, 26, 0, 0),
(1, 26, 1, 0),
(1, 26, 2, 0),
(1, 26, 3, 0),
(1, 26, 4, 0),
(1, 26, 7, 0),
(1, 34, 0, 0),
(1, 34, 1, 0),
(1, 34, 2, 0),
(1, 34, 3, 0),
(1, 34, 4, 0),
(1, 34, 7, 0),
(1, 35, 0, 0),
(1, 35, 1, 0),
(1, 35, 2, 0),
(1, 35, 3, 0),
(1, 35, 4, 0),
(1, 35, 7, 0),
(1, 36, 0, 0),
(1, 36, 1, 0),
(1, 36, 2, 0),
(1, 36, 3, 0),
(1, 36, 4, 0),
(1, 36, 7, 0),
(1, 38, 0, 0),
(1, 38, 1, 0),
(1, 38, 2, 0),
(1, 38, 3, 0),
(1, 38, 4, 0),
(1, 38, 7, 0),
(1, 42, 0, 0),
(1, 42, 1, 0),
(1, 42, 2, 0),
(1, 42, 3, 0),
(1, 42, 4, 0),
(1, 42, 7, 0),
(1, 43, 0, 0),
(1, 43, 1, 0),
(1, 43, 2, 0),
(1, 43, 3, 0),
(1, 43, 4, 0),
(1, 43, 7, 0),
(1, 44, 0, 0),
(1, 44, 1, 0),
(1, 44, 2, 0),
(1, 44, 3, 0),
(1, 44, 4, 0),
(1, 44, 7, 0),
(1, 45, 0, 0),
(1, 45, 1, 0),
(1, 45, 2, 0),
(1, 45, 3, 0),
(1, 45, 4, 0),
(1, 45, 7, 0),
(1, 47, 0, 0),
(1, 47, 1, 0),
(1, 47, 2, 0),
(1, 47, 3, 0),
(1, 47, 4, 0),
(1, 47, 7, 0),
(2, 2, 0, 0),
(2, 2, 1, 0),
(2, 2, 2, 0),
(2, 2, 3, 0),
(2, 2, 4, 0),
(2, 2, 7, 0),
(2, 4, 0, 0),
(2, 4, 1, 0),
(2, 4, 2, 0),
(2, 4, 3, 0),
(2, 4, 4, 0),
(2, 4, 7, 0),
(2, 6, 0, 0),
(2, 6, 1, 0),
(2, 6, 2, 0),
(2, 6, 3, 0),
(2, 6, 4, 0),
(2, 6, 7, 0),
(2, 7, 0, 0),
(2, 7, 1, 0),
(2, 7, 2, 0),
(2, 7, 3, 0),
(2, 7, 4, 0),
(2, 7, 7, 0),
(2, 8, 0, 0),
(2, 8, 1, 0),
(2, 8, 2, 0),
(2, 8, 3, 0),
(2, 8, 4, 0),
(2, 8, 7, 0),
(2, 9, 0, 0),
(2, 9, 1, 0),
(2, 9, 2, 0),
(2, 9, 3, 0),
(2, 9, 4, 0),
(2, 9, 7, 0),
(2, 10, 0, 0),
(2, 10, 1, 0),
(2, 10, 2, 0),
(2, 10, 4, 0),
(2, 13, 0, 1),
(2, 13, 1, 1),
(2, 13, 2, 1),
(2, 13, 3, 0),
(2, 13, 4, 0),
(2, 13, 7, 1),
(2, 14, 0, 0),
(2, 14, 1, 0),
(2, 14, 2, 0),
(2, 14, 3, 0),
(2, 14, 4, 0),
(2, 14, 7, 0),
(2, 15, 0, 0),
(2, 15, 1, 0),
(2, 15, 2, 0),
(2, 15, 3, 0),
(2, 15, 4, 0),
(2, 15, 7, 0),
(2, 16, 0, 0),
(2, 16, 1, 0),
(2, 16, 2, 0),
(2, 16, 3, 0),
(2, 16, 4, 0),
(2, 16, 7, 0),
(2, 18, 0, 0),
(2, 18, 1, 0),
(2, 18, 2, 0),
(2, 18, 3, 0),
(2, 18, 4, 0),
(2, 18, 7, 0),
(2, 19, 0, 0),
(2, 19, 1, 0),
(2, 19, 2, 0),
(2, 19, 3, 0),
(2, 19, 4, 0),
(2, 19, 7, 0),
(2, 20, 0, 0),
(2, 20, 1, 0),
(2, 20, 2, 0),
(2, 20, 3, 0),
(2, 20, 4, 0),
(2, 20, 7, 0),
(2, 21, 0, 0),
(2, 21, 1, 0),
(2, 21, 2, 0),
(2, 21, 3, 0),
(2, 21, 4, 0),
(2, 21, 7, 0),
(2, 22, 0, 0),
(2, 22, 1, 0),
(2, 22, 2, 0),
(2, 22, 3, 0),
(2, 22, 4, 0),
(2, 22, 7, 0),
(2, 23, 0, 0),
(2, 23, 1, 0),
(2, 23, 2, 0),
(2, 23, 3, 0),
(2, 23, 4, 0),
(2, 23, 7, 0),
(2, 25, 0, 1),
(2, 25, 1, 1),
(2, 25, 2, 1),
(2, 25, 3, 0),
(2, 25, 4, 0),
(2, 25, 7, 1),
(2, 26, 0, 0),
(2, 26, 1, 0),
(2, 26, 2, 0),
(2, 26, 3, 0),
(2, 26, 4, 0),
(2, 26, 7, 0),
(2, 34, 0, 0),
(2, 34, 1, 0),
(2, 34, 2, 0),
(2, 34, 3, 0),
(2, 34, 4, 0),
(2, 34, 7, 0),
(2, 35, 0, 0),
(2, 35, 1, 0),
(2, 35, 2, 0),
(2, 35, 3, 0),
(2, 35, 4, 0),
(2, 35, 7, 0),
(2, 36, 0, 0),
(2, 36, 1, 0),
(2, 36, 2, 0),
(2, 36, 3, 0),
(2, 36, 4, 0),
(2, 36, 7, 0),
(2, 38, 0, 0),
(2, 38, 1, 0),
(2, 38, 2, 0),
(2, 38, 3, 0),
(2, 38, 4, 0),
(2, 38, 7, 0),
(2, 42, 0, 0),
(2, 42, 1, 0),
(2, 42, 2, 0),
(2, 42, 3, 0),
(2, 42, 4, 0),
(2, 42, 7, 0),
(2, 43, 0, 0),
(2, 43, 1, 0),
(2, 43, 2, 0),
(2, 43, 3, 0),
(2, 43, 4, 0),
(2, 43, 7, 0),
(2, 44, 0, 0),
(2, 44, 1, 0),
(2, 44, 2, 0),
(2, 44, 3, 0),
(2, 44, 4, 0),
(2, 44, 7, 0),
(2, 45, 0, 0),
(2, 45, 1, 0),
(2, 45, 2, 0),
(2, 45, 3, 0),
(2, 45, 4, 0),
(2, 45, 7, 0),
(2, 47, 0, 0),
(2, 47, 1, 0),
(2, 47, 2, 0),
(2, 47, 3, 0),
(2, 47, 4, 0),
(2, 47, 7, 0),
(3, 2, 0, 1),
(3, 2, 1, 1),
(3, 2, 2, 1),
(3, 2, 3, 0),
(3, 2, 4, 0),
(3, 2, 7, 1),
(3, 4, 0, 0),
(3, 4, 1, 0),
(3, 4, 2, 0),
(3, 4, 3, 0),
(3, 4, 4, 0),
(3, 4, 7, 0),
(3, 6, 0, 0),
(3, 6, 1, 0),
(3, 6, 2, 0),
(3, 6, 3, 0),
(3, 6, 4, 0),
(3, 6, 7, 0),
(3, 7, 0, 0),
(3, 7, 1, 0),
(3, 7, 2, 0),
(3, 7, 3, 0),
(3, 7, 4, 0),
(3, 7, 7, 0),
(3, 8, 0, 0),
(3, 8, 1, 0),
(3, 8, 2, 0),
(3, 8, 3, 0),
(3, 8, 4, 0),
(3, 8, 7, 0),
(3, 9, 0, 0),
(3, 9, 1, 0),
(3, 9, 2, 0),
(3, 9, 3, 0),
(3, 9, 4, 0),
(3, 9, 7, 0),
(3, 10, 0, 0),
(3, 10, 1, 0),
(3, 10, 2, 0),
(3, 10, 4, 0),
(3, 13, 0, 0),
(3, 13, 1, 0),
(3, 13, 2, 0),
(3, 13, 3, 0),
(3, 13, 4, 0),
(3, 13, 7, 0),
(3, 14, 0, 0),
(3, 14, 1, 0),
(3, 14, 2, 0),
(3, 14, 3, 0),
(3, 14, 4, 0),
(3, 14, 7, 0),
(3, 15, 0, 0),
(3, 15, 1, 0),
(3, 15, 2, 0),
(3, 15, 3, 0),
(3, 15, 4, 0),
(3, 15, 7, 0),
(3, 16, 0, 0),
(3, 16, 1, 0),
(3, 16, 2, 0),
(3, 16, 3, 0),
(3, 16, 4, 0),
(3, 16, 7, 0),
(3, 18, 0, 0),
(3, 18, 1, 0),
(3, 18, 2, 0),
(3, 18, 3, 0),
(3, 18, 4, 0),
(3, 18, 7, 0),
(3, 19, 0, 0),
(3, 19, 1, 0),
(3, 19, 2, 0),
(3, 19, 3, 0),
(3, 19, 4, 0),
(3, 19, 7, 0),
(3, 20, 0, 0),
(3, 20, 1, 0),
(3, 20, 2, 0),
(3, 20, 3, 0),
(3, 20, 4, 0),
(3, 20, 7, 0),
(3, 21, 0, 0),
(3, 21, 1, 0),
(3, 21, 2, 0),
(3, 21, 3, 0),
(3, 21, 4, 0),
(3, 21, 7, 0),
(3, 22, 0, 0),
(3, 22, 1, 0),
(3, 22, 2, 0),
(3, 22, 3, 0),
(3, 22, 4, 0),
(3, 22, 7, 0),
(3, 23, 0, 0),
(3, 23, 1, 0),
(3, 23, 2, 0),
(3, 23, 3, 0),
(3, 23, 4, 0),
(3, 23, 7, 0),
(3, 25, 0, 1),
(3, 25, 1, 1),
(3, 25, 2, 1),
(3, 25, 3, 0),
(3, 25, 4, 0),
(3, 25, 7, 1),
(3, 26, 0, 0),
(3, 26, 1, 0),
(3, 26, 2, 0),
(3, 26, 3, 0),
(3, 26, 4, 0),
(3, 26, 7, 0),
(3, 34, 0, 0),
(3, 34, 1, 0),
(3, 34, 2, 0),
(3, 34, 3, 0),
(3, 34, 4, 0),
(3, 34, 7, 0),
(3, 35, 0, 0),
(3, 35, 1, 0),
(3, 35, 2, 0),
(3, 35, 3, 0),
(3, 35, 4, 0),
(3, 35, 7, 0),
(3, 36, 0, 0),
(3, 36, 1, 0),
(3, 36, 2, 0),
(3, 36, 3, 0),
(3, 36, 4, 0),
(3, 36, 7, 0),
(3, 38, 0, 0),
(3, 38, 1, 0),
(3, 38, 2, 0),
(3, 38, 3, 0),
(3, 38, 4, 0),
(3, 38, 7, 0),
(3, 42, 0, 0),
(3, 42, 1, 0),
(3, 42, 2, 0),
(3, 42, 3, 0),
(3, 42, 4, 0),
(3, 42, 7, 0),
(3, 43, 0, 0),
(3, 43, 1, 0),
(3, 43, 2, 0),
(3, 43, 3, 0),
(3, 43, 4, 0),
(3, 43, 7, 0),
(3, 44, 0, 0),
(3, 44, 1, 0),
(3, 44, 2, 0),
(3, 44, 3, 0),
(3, 44, 4, 0),
(3, 44, 7, 0),
(3, 45, 0, 0),
(3, 45, 1, 0),
(3, 45, 2, 0),
(3, 45, 3, 0),
(3, 45, 4, 0),
(3, 45, 7, 0),
(3, 47, 0, 0),
(3, 47, 1, 0),
(3, 47, 2, 0),
(3, 47, 3, 0),
(3, 47, 4, 0),
(3, 47, 7, 0),
(4, 2, 0, 1),
(4, 2, 1, 1),
(4, 2, 2, 1),
(4, 2, 3, 0),
(4, 2, 4, 0),
(4, 2, 7, 1),
(4, 4, 0, 1),
(4, 4, 1, 1),
(4, 4, 2, 1),
(4, 4, 3, 0),
(4, 4, 4, 0),
(4, 4, 7, 1),
(4, 6, 0, 1),
(4, 6, 1, 1),
(4, 6, 2, 1),
(4, 6, 3, 0),
(4, 6, 4, 0),
(4, 6, 7, 1),
(4, 7, 0, 1),
(4, 7, 1, 1),
(4, 7, 2, 1),
(4, 7, 3, 0),
(4, 7, 4, 0),
(4, 7, 7, 1),
(4, 8, 0, 1),
(4, 8, 1, 1),
(4, 8, 2, 1),
(4, 8, 3, 0),
(4, 8, 4, 0),
(4, 8, 7, 1),
(4, 9, 0, 1),
(4, 9, 1, 1),
(4, 9, 2, 1),
(4, 9, 3, 0),
(4, 9, 4, 0),
(4, 9, 7, 1),
(4, 10, 0, 0),
(4, 10, 1, 0),
(4, 10, 2, 0),
(4, 10, 4, 0),
(4, 13, 0, 1),
(4, 13, 1, 1),
(4, 13, 2, 1),
(4, 13, 3, 0),
(4, 13, 4, 0),
(4, 13, 7, 1),
(4, 14, 0, 1),
(4, 14, 1, 1),
(4, 14, 2, 1),
(4, 14, 3, 0),
(4, 14, 4, 0),
(4, 14, 7, 1),
(4, 15, 0, 1),
(4, 15, 1, 1),
(4, 15, 2, 1),
(4, 15, 3, 0),
(4, 15, 4, 0),
(4, 15, 7, 1),
(4, 16, 0, 1),
(4, 16, 1, 1),
(4, 16, 2, 1),
(4, 16, 3, 0),
(4, 16, 4, 0),
(4, 16, 7, 1),
(4, 18, 0, 1),
(4, 18, 1, 1),
(4, 18, 2, 1),
(4, 18, 3, 0),
(4, 18, 4, 0),
(4, 18, 7, 1),
(4, 19, 0, 1),
(4, 19, 1, 1),
(4, 19, 2, 1),
(4, 19, 3, 0),
(4, 19, 4, 0),
(4, 19, 7, 1),
(4, 20, 0, 1),
(4, 20, 1, 1),
(4, 20, 2, 1),
(4, 20, 3, 0),
(4, 20, 4, 0),
(4, 20, 7, 1),
(4, 21, 0, 1),
(4, 21, 1, 1),
(4, 21, 2, 1),
(4, 21, 3, 0),
(4, 21, 4, 0),
(4, 21, 7, 1),
(4, 22, 0, 1),
(4, 22, 1, 1),
(4, 22, 2, 1),
(4, 22, 3, 0),
(4, 22, 4, 0),
(4, 22, 7, 1),
(4, 23, 0, 1),
(4, 23, 1, 1),
(4, 23, 2, 1),
(4, 23, 3, 0),
(4, 23, 4, 0),
(4, 23, 7, 1),
(4, 25, 0, 1),
(4, 25, 1, 1),
(4, 25, 2, 1),
(4, 25, 3, 0),
(4, 25, 4, 0),
(4, 25, 7, 1),
(4, 26, 0, 1),
(4, 26, 1, 1),
(4, 26, 2, 1),
(4, 26, 3, 0),
(4, 26, 4, 0),
(4, 26, 7, 1),
(4, 34, 0, 0),
(4, 34, 1, 0),
(4, 34, 2, 0),
(4, 34, 3, 0),
(4, 34, 4, 0),
(4, 34, 7, 0),
(4, 35, 0, 0),
(4, 35, 1, 0),
(4, 35, 2, 0),
(4, 35, 3, 0),
(4, 35, 4, 0),
(4, 35, 7, 0),
(4, 36, 0, 0),
(4, 36, 1, 0),
(4, 36, 2, 0),
(4, 36, 3, 0),
(4, 36, 4, 0),
(4, 36, 7, 0),
(4, 38, 0, 0),
(4, 38, 1, 0),
(4, 38, 2, 0),
(4, 38, 3, 0),
(4, 38, 4, 0),
(4, 38, 7, 0),
(4, 42, 0, 0),
(4, 42, 1, 0),
(4, 42, 2, 0),
(4, 42, 3, 0),
(4, 42, 4, 0),
(4, 42, 7, 0),
(4, 43, 0, 0),
(4, 43, 1, 0),
(4, 43, 2, 0),
(4, 43, 3, 0),
(4, 43, 4, 0),
(4, 43, 7, 0),
(4, 44, 0, 0),
(4, 44, 1, 0),
(4, 44, 2, 0),
(4, 44, 3, 0),
(4, 44, 4, 0),
(4, 44, 7, 0),
(4, 45, 0, 0),
(4, 45, 1, 0),
(4, 45, 2, 0),
(4, 45, 3, 0),
(4, 45, 4, 0),
(4, 45, 7, 0),
(4, 47, 0, 0),
(4, 47, 1, 0),
(4, 47, 2, 0),
(4, 47, 3, 0),
(4, 47, 4, 0),
(4, 47, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2tab`
--

CREATE TABLE `vtiger_profile2tab` (
  `profileid` int(11) DEFAULT NULL,
  `tabid` int(10) DEFAULT NULL,
  `permissions` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 4, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 0),
(2, 13, 0),
(2, 14, 0),
(2, 15, 0),
(2, 16, 0),
(2, 18, 0),
(2, 19, 0),
(2, 20, 0),
(2, 21, 0),
(2, 22, 0),
(2, 23, 0),
(2, 24, 0),
(2, 25, 0),
(2, 26, 0),
(2, 27, 0),
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
(2, 30, 0),
(3, 30, 0),
(4, 30, 0),
(1, 31, 0),
(2, 31, 0),
(3, 31, 0),
(4, 31, 0),
(1, 32, 0),
(2, 32, 0),
(3, 32, 0),
(4, 32, 0),
(1, 33, 0),
(2, 33, 0),
(3, 33, 0),
(4, 33, 0),
(1, 34, 0),
(2, 34, 0),
(3, 34, 0),
(4, 34, 0),
(1, 35, 0),
(2, 35, 0),
(3, 35, 0),
(4, 35, 0),
(1, 36, 0),
(2, 36, 0),
(3, 36, 0),
(4, 36, 0),
(1, 37, 0),
(2, 37, 0),
(3, 37, 0),
(4, 37, 0),
(1, 38, 0),
(2, 38, 0),
(3, 38, 0),
(4, 38, 0),
(1, 39, 0),
(2, 39, 0),
(3, 39, 0),
(4, 39, 0),
(1, 40, 0),
(2, 40, 0),
(3, 40, 0),
(4, 40, 0),
(1, 41, 0),
(2, 41, 0),
(3, 41, 0),
(4, 41, 0),
(1, 42, 0),
(2, 42, 0),
(3, 42, 0),
(4, 42, 0),
(1, 43, 0),
(2, 43, 0),
(3, 43, 0),
(4, 43, 0),
(1, 44, 0),
(2, 44, 0),
(3, 44, 0),
(4, 44, 0),
(1, 45, 0),
(2, 45, 0),
(3, 45, 0),
(4, 45, 0),
(1, 46, 0),
(2, 46, 0),
(3, 46, 0),
(4, 46, 0),
(1, 47, 0),
(2, 47, 0),
(3, 47, 0),
(4, 47, 0),
(1, 48, 0),
(2, 48, 0),
(3, 48, 0),
(4, 48, 0),
(1, 49, 0),
(2, 49, 0),
(3, 49, 0),
(4, 49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2utility`
--

CREATE TABLE `vtiger_profile2utility` (
  `profileid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `permission` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(1, 19, 5, 1),
(1, 19, 6, 1),
(1, 19, 10, 1),
(1, 20, 5, 0),
(1, 20, 6, 0),
(1, 21, 5, 0),
(1, 21, 6, 0),
(1, 22, 5, 0),
(1, 22, 6, 0),
(1, 23, 5, 0),
(1, 23, 6, 0),
(1, 25, 6, 0),
(1, 25, 13, 0),
(1, 34, 11, 1),
(1, 34, 12, 1),
(1, 35, 5, 0),
(1, 35, 6, 0),
(1, 35, 10, 0),
(1, 36, 5, 0),
(1, 36, 6, 0),
(1, 36, 10, 0),
(1, 43, 5, 1),
(1, 43, 6, 1),
(1, 43, 10, 1),
(1, 44, 5, 0),
(1, 44, 6, 0),
(1, 44, 10, 0),
(1, 45, 5, 0),
(1, 45, 6, 0),
(1, 45, 10, 0),
(2, 2, 5, 1),
(2, 2, 6, 1),
(2, 2, 10, 0),
(2, 4, 5, 1),
(2, 4, 6, 1),
(2, 4, 8, 0),
(2, 4, 10, 0),
(2, 6, 5, 1),
(2, 6, 6, 1),
(2, 6, 8, 0),
(2, 6, 10, 0),
(2, 7, 5, 1),
(2, 7, 6, 1),
(2, 7, 8, 0),
(2, 7, 9, 0),
(2, 7, 10, 0),
(2, 8, 6, 1),
(2, 9, 5, 0),
(2, 9, 6, 0),
(2, 13, 5, 1),
(2, 13, 6, 1),
(2, 13, 8, 0),
(2, 13, 10, 0),
(2, 14, 5, 1),
(2, 14, 6, 1),
(2, 14, 10, 0),
(2, 18, 5, 1),
(2, 18, 6, 1),
(2, 18, 10, 0),
(2, 19, 5, 1),
(2, 19, 6, 1),
(2, 19, 10, 1),
(2, 20, 5, 0),
(2, 20, 6, 0),
(2, 21, 5, 0),
(2, 21, 6, 0),
(2, 22, 5, 0),
(2, 22, 6, 0),
(2, 23, 5, 0),
(2, 23, 6, 0),
(2, 25, 6, 0),
(2, 25, 13, 0),
(2, 34, 11, 1),
(2, 34, 12, 1),
(2, 35, 5, 0),
(2, 35, 6, 0),
(2, 35, 10, 0),
(2, 36, 5, 0),
(2, 36, 6, 0),
(2, 36, 10, 0),
(2, 43, 5, 1),
(2, 43, 6, 1),
(2, 43, 10, 1),
(2, 44, 5, 0),
(2, 44, 6, 0),
(2, 44, 10, 0),
(2, 45, 5, 0),
(2, 45, 6, 0),
(2, 45, 10, 0),
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
(3, 19, 5, 1),
(3, 19, 6, 1),
(3, 19, 10, 1),
(3, 20, 5, 0),
(3, 20, 6, 0),
(3, 21, 5, 0),
(3, 21, 6, 0),
(3, 22, 5, 0),
(3, 22, 6, 0),
(3, 23, 5, 0),
(3, 23, 6, 0),
(3, 25, 6, 0),
(3, 25, 13, 0),
(3, 34, 11, 1),
(3, 34, 12, 1),
(3, 35, 5, 0),
(3, 35, 6, 0),
(3, 35, 10, 0),
(3, 36, 5, 0),
(3, 36, 6, 0),
(3, 36, 10, 0),
(3, 43, 5, 1),
(3, 43, 6, 1),
(3, 43, 10, 1),
(3, 44, 5, 0),
(3, 44, 6, 0),
(3, 44, 10, 0),
(3, 45, 5, 0),
(3, 45, 6, 0),
(3, 45, 10, 0),
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
(4, 19, 5, 1),
(4, 19, 6, 1),
(4, 19, 10, 1),
(4, 20, 5, 0),
(4, 20, 6, 0),
(4, 21, 5, 0),
(4, 21, 6, 0),
(4, 22, 5, 0),
(4, 22, 6, 0),
(4, 23, 5, 0),
(4, 23, 6, 0),
(4, 25, 6, 0),
(4, 25, 13, 0),
(4, 34, 11, 1),
(4, 34, 12, 1),
(4, 35, 5, 0),
(4, 35, 6, 0),
(4, 35, 10, 0),
(4, 36, 5, 0),
(4, 36, 6, 0),
(4, 36, 10, 0),
(4, 43, 5, 1),
(4, 43, 6, 1),
(4, 43, 10, 1),
(4, 44, 5, 0),
(4, 44, 6, 0),
(4, 44, 10, 0),
(4, 45, 5, 0),
(4, 45, 6, 0),
(4, 45, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile_seq`
--

CREATE TABLE `vtiger_profile_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_profile_seq`
--

INSERT INTO `vtiger_profile_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_progress`
--

CREATE TABLE `vtiger_progress` (
  `progressid` int(11) NOT NULL,
  `progress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_progress`
--

INSERT INTO `vtiger_progress` (`progressid`, `progress`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, '10%', 1, 278, 2, NULL),
(3, '20%', 1, 279, 3, NULL),
(4, '30%', 1, 280, 4, NULL),
(5, '40%', 1, 281, 5, NULL),
(6, '50%', 1, 282, 6, NULL),
(7, '60%', 1, 283, 7, NULL),
(8, '70%', 1, 284, 8, NULL),
(9, '80%', 1, 285, 9, NULL),
(10, '90%', 1, 286, 10, NULL),
(11, '100%', 1, 287, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_progress_seq`
--

CREATE TABLE `vtiger_progress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_progress_seq`
--

INSERT INTO `vtiger_progress_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_project`
--

CREATE TABLE `vtiger_project` (
  `projectid` int(19) NOT NULL,
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
  `linktoaccountscontacts` varchar(100) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `isconvertedfrompotential` int(1) NOT NULL DEFAULT 0,
  `potentialid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectcf`
--

CREATE TABLE `vtiger_projectcf` (
  `projectid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestone`
--

CREATE TABLE `vtiger_projectmilestone` (
  `projectmilestoneid` int(11) NOT NULL,
  `projectmilestonename` varchar(255) DEFAULT NULL,
  `projectmilestone_no` varchar(100) DEFAULT NULL,
  `projectmilestonedate` varchar(255) DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projectmilestonetype` varchar(100) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonecf`
--

CREATE TABLE `vtiger_projectmilestonecf` (
  `projectmilestoneid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonetype`
--

CREATE TABLE `vtiger_projectmilestonetype` (
  `projectmilestonetypeid` int(11) NOT NULL,
  `projectmilestonetype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projectmilestonetype`
--

INSERT INTO `vtiger_projectmilestonetype` (`projectmilestonetypeid`, `projectmilestonetype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'administrative', 1, 238, 2, NULL),
(3, 'operative', 1, 239, 3, NULL),
(4, 'other', 1, 240, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonetype_seq`
--

CREATE TABLE `vtiger_projectmilestonetype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projectmilestonetype_seq`
--

INSERT INTO `vtiger_projectmilestonetype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectpriority`
--

CREATE TABLE `vtiger_projectpriority` (
  `projectpriorityid` int(11) NOT NULL,
  `projectpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projectpriority`
--

INSERT INTO `vtiger_projectpriority` (`projectpriorityid`, `projectpriority`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'low', 1, 274, 2, NULL),
(3, 'normal', 1, 275, 3, NULL),
(4, 'high', 1, 276, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectpriority_seq`
--

CREATE TABLE `vtiger_projectpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projectpriority_seq`
--

INSERT INTO `vtiger_projectpriority_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectstatus`
--

CREATE TABLE `vtiger_projectstatus` (
  `projectstatusid` int(11) NOT NULL,
  `projectstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projectstatus`
--

INSERT INTO `vtiger_projectstatus` (`projectstatusid`, `projectstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'prospecting', 1, 261, 2, NULL),
(3, 'initiated', 1, 262, 3, NULL),
(4, 'in progress', 1, 263, 4, NULL),
(5, 'waiting for feedback', 1, 264, 5, NULL),
(6, 'on hold', 1, 265, 6, NULL),
(7, 'completed', 1, 266, 7, NULL),
(8, 'delivered', 1, 267, 8, NULL),
(9, 'archived', 1, 268, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectstatus_seq`
--

CREATE TABLE `vtiger_projectstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projectstatus_seq`
--

INSERT INTO `vtiger_projectstatus_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttask`
--

CREATE TABLE `vtiger_projecttask` (
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
  `tags` varchar(1) DEFAULT NULL,
  `projecttaskstatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskcf`
--

CREATE TABLE `vtiger_projecttaskcf` (
  `projecttaskid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskpriority`
--

CREATE TABLE `vtiger_projecttaskpriority` (
  `projecttaskpriorityid` int(11) NOT NULL,
  `projecttaskpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttaskpriority`
--

INSERT INTO `vtiger_projecttaskpriority` (`projecttaskpriorityid`, `projecttaskpriority`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'low', 1, 246, 2, NULL),
(3, 'normal', 1, 247, 3, NULL),
(4, 'high', 1, 248, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskpriority_seq`
--

CREATE TABLE `vtiger_projecttaskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttaskpriority_seq`
--

INSERT INTO `vtiger_projecttaskpriority_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskprogress`
--

CREATE TABLE `vtiger_projecttaskprogress` (
  `projecttaskprogressid` int(11) NOT NULL,
  `projecttaskprogress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttaskprogress`
--

INSERT INTO `vtiger_projecttaskprogress` (`projecttaskprogressid`, `projecttaskprogress`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, '10%', 1, 250, 2, NULL),
(3, '20%', 1, 251, 3, NULL),
(4, '30%', 1, 252, 4, NULL),
(5, '40%', 1, 253, 5, NULL),
(6, '50%', 1, 254, 6, NULL),
(7, '60%', 1, 255, 7, NULL),
(8, '70%', 1, 256, 8, NULL),
(9, '80%', 1, 257, 9, NULL),
(10, '90%', 1, 258, 10, NULL),
(11, '100%', 1, 259, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskprogress_seq`
--

CREATE TABLE `vtiger_projecttaskprogress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttaskprogress_seq`
--

INSERT INTO `vtiger_projecttaskprogress_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskstatus`
--

CREATE TABLE `vtiger_projecttaskstatus` (
  `projecttaskstatusid` int(11) NOT NULL,
  `projecttaskstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttaskstatus`
--

INSERT INTO `vtiger_projecttaskstatus` (`projecttaskstatusid`, `projecttaskstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Open', 0, 290, 2, NULL),
(3, 'In Progress', 0, 291, 3, NULL),
(4, 'Completed', 0, 292, 4, NULL),
(5, 'Deferred', 0, 293, 5, NULL),
(6, 'Canceled ', 0, 294, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskstatus_seq`
--

CREATE TABLE `vtiger_projecttaskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttaskstatus_seq`
--

INSERT INTO `vtiger_projecttaskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttasktype`
--

CREATE TABLE `vtiger_projecttasktype` (
  `projecttasktypeid` int(11) NOT NULL,
  `projecttasktype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttasktype`
--

INSERT INTO `vtiger_projecttasktype` (`projecttasktypeid`, `projecttasktype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'administrative', 1, 242, 2, NULL),
(3, 'operative', 1, 243, 3, NULL),
(4, 'other', 1, 244, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttasktype_seq`
--

CREATE TABLE `vtiger_projecttasktype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttasktype_seq`
--

INSERT INTO `vtiger_projecttasktype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttask_status_color`
--

CREATE TABLE `vtiger_projecttask_status_color` (
  `status` varchar(255) DEFAULT NULL,
  `defaultcolor` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttask_status_color`
--

INSERT INTO `vtiger_projecttask_status_color` (`status`, `defaultcolor`, `color`) VALUES
('Open', '#0099ff', NULL),
('In Progress', '#fdff00', NULL),
('Completed', '#3BBF67', NULL),
('Deferred', '#fbb11e', NULL),
('Canceled', '#660066', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttype`
--

CREATE TABLE `vtiger_projecttype` (
  `projecttypeid` int(11) NOT NULL,
  `projecttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttype`
--

INSERT INTO `vtiger_projecttype` (`projecttypeid`, `projecttype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'administrative', 1, 270, 2, NULL),
(3, 'operative', 1, 271, 3, NULL),
(4, 'other', 1, 272, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttype_seq`
--

CREATE TABLE `vtiger_projecttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_projecttype_seq`
--

INSERT INTO `vtiger_projecttype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_purchaseorder`
--

CREATE TABLE `vtiger_purchaseorder` (
  `purchaseorderid` int(19) NOT NULL DEFAULT 0,
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
  `terms_conditions` text DEFAULT NULL,
  `postatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT 1.000,
  `compound_taxes_info` text DEFAULT NULL,
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `paid` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `region_id` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_purchaseordercf`
--

CREATE TABLE `vtiger_purchaseordercf` (
  `purchaseorderid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotes`
--

CREATE TABLE `vtiger_quotes` (
  `quoteid` int(19) NOT NULL DEFAULT 0,
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
  `terms_conditions` text DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT 1.000,
  `compound_taxes_info` text DEFAULT NULL,
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `region_id` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotesbillads`
--

CREATE TABLE `vtiger_quotesbillads` (
  `quotebilladdressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotescf`
--

CREATE TABLE `vtiger_quotescf` (
  `quoteid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotesshipads`
--

CREATE TABLE `vtiger_quotesshipads` (
  `quoteshipaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestage`
--

CREATE TABLE `vtiger_quotestage` (
  `quotestageid` int(19) NOT NULL,
  `quotestage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_quotestage`
--

INSERT INTO `vtiger_quotestage` (`quotestageid`, `quotestage`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Created', 0, 139, 0, NULL),
(2, 'Delivered', 0, 140, 1, NULL),
(3, 'Reviewed', 0, 141, 2, NULL),
(4, 'Accepted', 0, 142, 3, NULL),
(5, 'Rejected', 0, 143, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestagehistory`
--

CREATE TABLE `vtiger_quotestagehistory` (
  `historyid` int(19) NOT NULL,
  `quoteid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestage_seq`
--

CREATE TABLE `vtiger_quotestage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_quotestage_seq`
--

INSERT INTO `vtiger_quotestage_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rating`
--

CREATE TABLE `vtiger_rating` (
  `rating_id` int(19) NOT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_rating`
--

INSERT INTO `vtiger_rating` (`rating_id`, `rating`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Acquired', 1, 145, 1, NULL),
(3, 'Active', 1, 146, 2, NULL),
(4, 'Market Failed', 1, 147, 3, NULL),
(5, 'Project Cancelled', 1, 148, 4, NULL),
(6, 'Shutdown', 1, 149, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rating_seq`
--

CREATE TABLE `vtiger_rating_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_rating_seq`
--

INSERT INTO `vtiger_rating_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringevents`
--

CREATE TABLE `vtiger_recurringevents` (
  `recurringid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL,
  `recurringdate` date DEFAULT NULL,
  `recurringtype` varchar(30) DEFAULT NULL,
  `recurringfreq` int(19) DEFAULT NULL,
  `recurringinfo` varchar(50) DEFAULT NULL,
  `recurringenddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringtype`
--

CREATE TABLE `vtiger_recurringtype` (
  `recurringeventid` int(19) NOT NULL,
  `recurringtype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_recurringtype`
--

INSERT INTO `vtiger_recurringtype` (`recurringeventid`, `recurringtype`, `sortorderid`, `presence`, `color`) VALUES
(2, 'Daily', 1, 1, NULL),
(3, 'Weekly', 2, 1, NULL),
(4, 'Monthly', 3, 1, NULL),
(5, 'Yearly', 4, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringtype_seq`
--

CREATE TABLE `vtiger_recurringtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_recurringtype_seq`
--

INSERT INTO `vtiger_recurringtype_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurring_frequency`
--

CREATE TABLE `vtiger_recurring_frequency` (
  `recurring_frequency_id` int(11) DEFAULT NULL,
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_recurring_frequency`
--

INSERT INTO `vtiger_recurring_frequency` (`recurring_frequency_id`, `recurring_frequency`, `sortorderid`, `presence`, `color`) VALUES
(2, 'Daily', 1, 1, NULL),
(3, 'Weekly', 2, 1, NULL),
(4, 'Monthly', 3, 1, NULL),
(5, 'Quarterly', 4, 1, NULL),
(6, 'Yearly', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurring_frequency_seq`
--

CREATE TABLE `vtiger_recurring_frequency_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_recurring_frequency_seq`
--

INSERT INTO `vtiger_recurring_frequency_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists`
--

CREATE TABLE `vtiger_relatedlists` (
  `relation_id` int(19) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `related_tabid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `presence` int(10) NOT NULL DEFAULT 0,
  `actions` varchar(50) NOT NULL DEFAULT '',
  `relationfieldid` int(19) DEFAULT NULL,
  `source` varchar(25) DEFAULT NULL,
  `relationtype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_relatedlists`
--

INSERT INTO `vtiger_relatedlists` (`relation_id`, `tabid`, `related_tabid`, `name`, `sequence`, `label`, `presence`, `actions`, `relationfieldid`, `source`, `relationtype`) VALUES
(1, 6, 4, 'get_contacts', 2, 'Contacts', 0, 'add', 72, '', '1:N'),
(2, 6, 2, 'get_opportunities', 3, 'Potentials', 0, 'add', 113, '', '1:N'),
(3, 6, 20, 'get_quotes', 4, 'Quotes', 0, 'add', 330, '', '1:N'),
(4, 6, 22, 'get_salesorder', 5, 'Sales Order', 0, 'add', 409, '', '1:N'),
(5, 6, 23, 'get_invoices', 6, 'Invoice', 0, 'add', 452, '', '1:N'),
(6, 6, 9, 'get_activities', 7, 'Activities', 0, 'add', 238, '', '1:N'),
(7, 6, 10, 'get_emails', 8, 'Emails', 0, 'add', NULL, '', 'N:N'),
(8, 6, 9, 'get_history', 9, 'Activity History', 0, 'add', 238, '', '1:N'),
(9, 6, 8, 'get_attachments', 10, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(10, 6, 13, 'get_tickets', 11, 'HelpDesk', 0, 'add', 157, '', '1:N'),
(11, 6, 14, 'get_products', 12, 'Products', 0, 'select', NULL, '', 'N:N'),
(12, 7, 9, 'get_activities', 2, 'Activities', 0, 'add', 238, '', '1:N'),
(13, 7, 10, 'get_emails', 3, 'Emails', 0, 'add', NULL, '', 'N:N'),
(14, 7, 9, 'get_history', 4, 'Activity History', 0, 'add', 238, '', '1:N'),
(15, 7, 8, 'get_attachments', 5, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(16, 7, 14, 'get_products', 6, 'Products', 0, 'select', NULL, '', 'N:N'),
(17, 7, 26, 'get_campaigns', 7, 'Campaigns', 0, 'select', NULL, '', 'N:N'),
(18, 4, 2, 'get_opportunities', 2, 'Potentials', 0, 'add', 740, '', '1:N'),
(19, 4, 9, 'get_activities', 3, 'Activities', 0, 'add', 239, '', '1:N'),
(20, 4, 10, 'get_emails', 4, 'Emails', 0, 'add', NULL, '', 'N:N'),
(21, 4, 13, 'get_tickets', 5, 'HelpDesk', 0, 'add', 741, '', '1:N'),
(22, 4, 20, 'get_quotes', 6, 'Quotes', 0, 'add', 319, '', '1:N'),
(23, 4, 21, 'get_purchase_orders', 7, 'Purchase Order', 0, 'add', 356, '', '1:N'),
(24, 4, 22, 'get_salesorder', 8, 'Sales Order', 0, 'add', 395, '', '1:N'),
(25, 4, 14, 'get_products', 9, 'Products', 0, 'select', NULL, '', 'N:N'),
(26, 4, 9, 'get_history', 10, 'Activity History', 0, 'add', 239, '', '1:N'),
(27, 4, 8, 'get_attachments', 11, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(28, 4, 26, 'get_campaigns', 12, 'Campaigns', 0, 'select', NULL, '', 'N:N'),
(29, 4, 23, 'get_invoices', 13, 'Invoice', 0, 'add', 439, '', '1:N'),
(30, 2, 9, 'get_activities', 2, 'Activities', 0, 'add', 238, '', '1:N'),
(31, 2, 4, 'get_contacts', 3, 'Contacts', 0, 'select', NULL, '', 'N:N'),
(32, 2, 14, 'get_products', 4, 'Products', 0, 'select', NULL, '', 'N:N'),
(33, 2, 0, 'get_stage_history', 5, 'Sales Stage History', 0, '', NULL, '', 'N:N'),
(34, 2, 8, 'get_attachments', 6, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(35, 2, 20, 'get_Quotes', 7, 'Quotes', 0, 'add', 316, '', '1:N'),
(36, 2, 22, 'get_salesorder', 8, 'Sales Order', 0, 'add', 391, '', '1:N'),
(37, 2, 9, 'get_history', 9, 'Activity History', 0, '', 238, '', '1:N'),
(38, 14, 13, 'get_tickets', 1, 'HelpDesk', 0, 'add', 159, '', '1:N'),
(39, 14, 8, 'get_attachments', 3, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(40, 14, 20, 'get_quotes', 4, 'Quotes', 0, 'add', 703, '', '1:N'),
(41, 14, 21, 'get_purchase_orders', 5, 'Purchase Order', 0, 'add', 694, '', '1:N'),
(42, 14, 22, 'get_salesorder', 6, 'Sales Order', 0, 'add', 685, '', '1:N'),
(43, 14, 23, 'get_invoices', 7, 'Invoice', 0, 'add', 676, '', '1:N'),
(44, 14, 19, 'get_product_pricebooks', 8, 'PriceBooks', 0, 'ADD,SELECT', NULL, '', 'N:N'),
(45, 14, 7, 'get_leads', 9, 'Leads', 0, 'select', NULL, '', 'N:N'),
(46, 14, 6, 'get_accounts', 10, 'Accounts', 0, 'select', NULL, '', 'N:N'),
(47, 14, 4, 'get_contacts', 11, 'Contacts', 0, 'select', NULL, '', 'N:N'),
(48, 14, 2, 'get_opportunities', 12, 'Potentials', 0, 'select', NULL, '', 'N:N'),
(49, 14, 14, 'get_products', 13, 'Product Bundles', 0, 'add,select', NULL, '', 'N:N'),
(50, 14, 14, 'get_parent_products', 14, 'Parent Product', 0, '', NULL, '', 'N:N'),
(51, 10, 4, 'get_contacts', 1, 'Contacts', 0, 'select,bulkmail', NULL, '', 'N:N'),
(52, 10, 0, 'get_users', 2, 'Users', 0, '', NULL, '', 'N:N'),
(53, 10, 8, 'get_attachments', 3, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(54, 13, 9, 'get_activities', 2, 'Activities', 0, 'add', 238, '', '1:N'),
(55, 13, 8, 'get_attachments', 3, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(56, 13, 0, 'get_ticket_history', 4, 'Ticket History', 0, '', NULL, '', 'N:N'),
(57, 13, 9, 'get_history', 5, 'Activity History', 0, 'add', 238, '', '1:N'),
(58, 19, 14, 'get_pricebook_products', 2, 'Products', 0, 'select', NULL, '', 'N:N'),
(59, 18, 14, 'get_products', 1, 'Products', 0, 'add,select', 185, '', '1:N'),
(60, 18, 21, 'get_purchase_orders', 2, 'Purchase Order', 0, 'add', 353, '', '1:N'),
(61, 18, 4, 'get_contacts', 3, 'Contacts', 0, 'select', NULL, '', 'N:N'),
(62, 18, 10, 'get_emails', 4, 'Emails', 0, 'add', NULL, '', 'N:N'),
(63, 20, 22, 'get_salesorder', 1, 'Sales Order', 0, '', 393, '', '1:N'),
(64, 20, 9, 'get_activities', 2, 'Activities', 0, 'add', NULL, '', 'N:N'),
(65, 20, 8, 'get_attachments', 3, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(66, 20, 9, 'get_history', 4, 'Activity History', 0, '', NULL, '', 'N:N'),
(67, 20, 0, 'get_quotestagehistory', 5, 'Quote Stage History', 0, '', NULL, '', 'N:N'),
(68, 21, 9, 'get_activities', 1, 'Activities', 0, 'add', NULL, '', 'N:N'),
(69, 21, 8, 'get_attachments', 2, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(70, 21, 9, 'get_history', 3, 'Activity History', 0, '', NULL, '', 'N:N'),
(71, 21, 0, 'get_postatushistory', 4, 'PurchaseOrder Status History', 0, '', NULL, '', 'N:N'),
(72, 22, 9, 'get_activities', 1, 'Activities', 0, 'add', NULL, '', 'N:N'),
(73, 22, 8, 'get_attachments', 2, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(74, 22, 23, 'get_invoices', 3, 'Invoice', 0, '', 437, '', '1:N'),
(75, 22, 9, 'get_history', 4, 'Activity History', 0, '', NULL, '', 'N:N'),
(76, 22, 0, 'get_sostatushistory', 5, 'SalesOrder Status History', 0, '', NULL, '', 'N:N'),
(77, 23, 9, 'get_activities', 1, 'Activities', 0, 'add', NULL, '', 'N:N'),
(78, 23, 8, 'get_attachments', 2, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(79, 23, 9, 'get_history', 3, 'Activity History', 0, '', NULL, '', 'N:N'),
(80, 23, 0, 'get_invoicestatushistory', 4, 'Invoice Status History', 0, '', NULL, '', 'N:N'),
(81, 9, 0, 'get_users', 1, 'Users', 0, '', NULL, '', 'N:N'),
(82, 9, 4, 'get_contacts', 2, 'Contacts', 0, '', NULL, '', 'N:N'),
(83, 26, 4, 'get_contacts', 1, 'Contacts', 0, 'add,select', NULL, '', 'N:N'),
(84, 26, 7, 'get_leads', 2, 'Leads', 0, 'add,select', NULL, '', 'N:N'),
(85, 26, 2, 'get_opportunities', 3, 'Potentials', 0, 'add', 121, '', '1:N'),
(86, 26, 9, 'get_activities', 4, 'Activities', 0, 'add', 238, '', '1:N'),
(87, 6, 26, 'get_campaigns', 14, 'Campaigns', 0, 'select', NULL, '', 'N:N'),
(88, 26, 6, 'get_accounts', 5, 'Accounts', 0, 'add,select', NULL, '', 'N:N'),
(89, 15, 8, 'get_attachments', 2, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(93, 35, 13, 'get_related_list', 1, 'Service Requests', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(94, 35, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(95, 6, 35, 'get_merged_list', 16, 'Service Contracts', 0, 'ADD', 549, NULL, '1:N'),
(96, 4, 35, 'get_dependents_list', 15, 'Service Contracts', 0, 'ADD', 549, NULL, '1:N'),
(97, 13, 35, 'get_related_list', 6, 'Service Contracts', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(98, 36, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(99, 36, 20, 'get_quotes', 2, 'Quotes', 0, 'ADD', 703, NULL, '1:N'),
(100, 36, 21, 'get_purchase_orders', 3, 'Purchase Order', 0, 'ADD', 694, NULL, '1:N'),
(101, 36, 22, 'get_salesorder', 4, 'Sales Order', 0, 'ADD', 685, NULL, '1:N'),
(102, 36, 23, 'get_invoices', 5, 'Invoice', 0, 'ADD', 676, NULL, '1:N'),
(103, 36, 19, 'get_service_pricebooks', 6, 'PriceBooks', 0, 'ADD', NULL, NULL, 'N:N'),
(104, 36, 7, 'get_related_list', 7, 'Leads', 0, 'SELECT', NULL, NULL, 'N:N'),
(105, 36, 6, 'get_related_list', 8, 'Accounts', 0, 'SELECT', NULL, NULL, 'N:N'),
(106, 36, 4, 'get_related_list', 9, 'Contacts', 0, 'SELECT', NULL, NULL, 'N:N'),
(107, 36, 2, 'get_related_list', 10, 'Potentials', 0, 'SELECT', NULL, NULL, 'N:N'),
(108, 36, 8, 'get_attachments', 11, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(109, 13, 36, 'get_related_list', 7, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(110, 7, 36, 'get_related_list', 9, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(111, 6, 36, 'get_related_list', 17, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(112, 4, 36, 'get_related_list', 16, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(113, 2, 36, 'get_related_list', 10, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(114, 19, 36, 'get_pricebook_services', 3, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(115, 38, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(116, 38, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(117, 6, 38, 'get_merged_list', 18, 'Assets', 0, 'ADD', 600, NULL, '1:N'),
(118, 14, 38, 'get_dependents_list', 15, 'Assets', 0, 'ADD', 589, NULL, '1:N'),
(119, 23, 38, 'get_dependents_list', 5, 'Assets', 0, 'ADD', 595, NULL, '1:N'),
(120, 7, 42, 'get_comments', 10, 'ModComments', 0, '', 613, NULL, '1:N'),
(121, 4, 42, 'get_comments', 17, 'ModComments', 0, '', 613, NULL, '1:N'),
(122, 6, 42, 'get_comments', 19, 'ModComments', 0, '', 613, NULL, '1:N'),
(123, 2, 42, 'get_comments', 11, 'ModComments', 0, '', 613, NULL, '1:N'),
(131, 6, 45, 'get_merged_list', 20, 'Projects', 0, 'add', 654, NULL, '1:N'),
(132, 4, 45, 'get_dependents_list', 18, 'Projects', 0, 'add', 654, NULL, '1:N'),
(133, 13, 45, 'get_related_list', 8, 'Projects', 0, 'SELECT', NULL, NULL, 'N:N'),
(135, 47, 6, 'get_related_list', 1, 'Accounts', 0, ' ', NULL, NULL, 'N:N'),
(136, 47, 4, 'get_related_list', 2, 'Contacts', 0, ' ', NULL, NULL, 'N:N'),
(137, 47, 7, 'get_related_list', 3, 'Leads', 0, ' ', NULL, NULL, 'N:N'),
(138, 44, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(139, 44, 42, 'get_comments', 3, 'ModComments', 0, '', 613, NULL, '1:N'),
(140, 45, 44, 'get_dependents_list', 2, 'Project Tasks', 0, 'ADD', 633, NULL, '1:N'),
(141, 45, 43, 'get_dependents_list', 3, 'Project Milestones', 0, 'ADD', 619, NULL, '1:N'),
(142, 45, 8, 'get_attachments', 4, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(143, 45, 13, 'get_related_list', 5, 'HelpDesk', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(144, 45, 0, 'get_gantt_chart', 6, 'Charts', 0, '', NULL, NULL, 'N:N'),
(145, 45, 42, 'get_comments', 7, 'ModComments', 0, '', 613, NULL, '1:N'),
(146, 13, 42, 'get_comments', 9, 'ModComments', 0, '', 613, NULL, '1:N'),
(147, 15, 42, 'get_comments', 3, 'ModComments', 0, '', 613, NULL, '1:N'),
(148, 4, 38, 'get_dependents_list', 19, 'Assets', 0, 'ADD', 601, NULL, '1:N'),
(149, 4, 18, 'get_vendors', 20, 'Vendors', 0, 'SELECT', NULL, '', 'N:N'),
(150, 2, 23, 'get_dependents_list', 12, 'Invoice', 0, 'ADD', 774, NULL, '1:N'),
(151, 8, 4, 'get_related_list', 1, 'Contacts', 0, '1', NULL, NULL, 'N:N'),
(152, 8, 6, 'get_related_list', 2, 'Accounts', 0, '1', NULL, NULL, 'N:N'),
(153, 8, 2, 'get_related_list', 3, 'Potentials', 0, '1', NULL, NULL, 'N:N'),
(154, 8, 7, 'get_related_list', 4, 'Leads', 0, '1', NULL, NULL, 'N:N'),
(155, 8, 14, 'get_related_list', 5, 'Products', 0, '1', NULL, NULL, 'N:N'),
(156, 8, 36, 'get_related_list', 6, 'Services', 0, '1', NULL, NULL, 'N:N'),
(157, 8, 45, 'get_related_list', 7, 'Project', 0, '1', NULL, NULL, 'N:N'),
(158, 8, 38, 'get_related_list', 8, 'Assets', 0, '1', NULL, NULL, 'N:N'),
(159, 8, 35, 'get_related_list', 9, 'ServiceContracts', 0, '1', NULL, NULL, 'N:N'),
(160, 8, 20, 'get_related_list', 10, 'Quotes', 0, '1', NULL, NULL, 'N:N'),
(161, 8, 23, 'get_related_list', 11, 'Invoice', 0, '1', NULL, NULL, 'N:N'),
(162, 8, 22, 'get_related_list', 12, 'SalesOrder', 0, '1', NULL, NULL, 'N:N'),
(163, 8, 21, 'get_related_list', 13, 'PurchaseOrder', 0, '1', NULL, NULL, 'N:N'),
(164, 8, 13, 'get_related_list', 14, 'HelpDesk', 0, '1', NULL, NULL, 'N:N'),
(165, 8, 15, 'get_related_list', 15, 'Faq', 0, '1', NULL, NULL, 'N:N'),
(166, 45, 10, 'get_emails', 8, 'Emails', 0, 'ADD', NULL, NULL, 'N:N'),
(167, 44, 10, 'get_emails', 4, 'Emails', 0, 'ADD', NULL, NULL, 'N:N'),
(168, 45, 9, 'get_related_list', 9, 'Activities', 0, 'ADD', NULL, NULL, 'N:N'),
(169, 45, 20, 'get_related_list', 10, 'Quotes', 0, 'SELECT', NULL, NULL, 'N:N'),
(170, 14, 21, 'get_purchase_orders', 16, 'PurchaseOrder', 0, 'ADD', NULL, NULL, 'N:N'),
(171, 2, 10, 'get_emails', 13, 'Emails', 0, 'ADD', NULL, NULL, 'N:N'),
(172, 13, 10, 'get_emails', 10, 'Emails', 0, 'ADD', NULL, NULL, 'N:N');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists_rb`
--

CREATE TABLE `vtiger_relatedlists_rb` (
  `entityid` int(19) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `rel_table` varchar(200) DEFAULT NULL,
  `rel_column` varchar(200) DEFAULT NULL,
  `ref_column` varchar(200) DEFAULT NULL,
  `related_crm_ids` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists_seq`
--

CREATE TABLE `vtiger_relatedlists_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_relatedlists_seq`
--

INSERT INTO `vtiger_relatedlists_seq` (`id`) VALUES
(172);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relcriteria`
--

CREATE TABLE `vtiger_relcriteria` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT 1,
  `column_condition` varchar(256) DEFAULT 'and'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_relcriteria`
--

INSERT INTO `vtiger_relcriteria` (`queryid`, `columnindex`, `columnname`, `comparator`, `value`, `groupid`, `column_condition`) VALUES
(1, 0, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V', 'n', '', 1, 'and'),
(2, 0, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V', 'e', '', 1, 'and'),
(3, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V', 'n', '', 1, 'and'),
(7, 0, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'e', 'Closed Won', 1, 'and'),
(12, 0, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V', 'n', 'Closed', 1, 'and'),
(15, 0, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Accepted', 1, 'and'),
(15, 1, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Rejected', 1, 'and'),
(22, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I', 'ny', '', 1, 'and'),
(23, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I', 'ny', '', 1, 'and'),
(24, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I', 'ny', '', 1, 'and'),
(25, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I', 'ny', '', 1, 'and');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relcriteria_grouping`
--

CREATE TABLE `vtiger_relcriteria_grouping` (
  `groupid` int(11) NOT NULL,
  `queryid` int(19) NOT NULL,
  `group_condition` varchar(256) DEFAULT NULL,
  `condition_expression` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_relcriteria_grouping`
--

INSERT INTO `vtiger_relcriteria_grouping` (`groupid`, `queryid`, `group_condition`, `condition_expression`) VALUES
(1, 1, '', '0'),
(1, 2, '', '0'),
(1, 3, '', '0'),
(1, 7, '', '0'),
(1, 12, '', '0'),
(1, 15, '', '0 and 1'),
(1, 22, '', '0'),
(1, 23, '', '0'),
(1, 24, '', '0'),
(1, 25, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reminder_interval`
--

CREATE TABLE `vtiger_reminder_interval` (
  `reminder_intervalid` int(19) NOT NULL,
  `reminder_interval` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL,
  `presence` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_reminder_interval_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_reminder_interval_seq`
--

INSERT INTO `vtiger_reminder_interval_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report`
--

CREATE TABLE `vtiger_report` (
  `reportid` int(19) NOT NULL,
  `folderid` int(19) NOT NULL,
  `reportname` varchar(100) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `reporttype` varchar(50) DEFAULT '',
  `queryid` int(19) NOT NULL DEFAULT 0,
  `state` varchar(50) DEFAULT 'SAVED',
  `customizable` int(1) DEFAULT 1,
  `category` int(11) DEFAULT 1,
  `owner` int(11) DEFAULT 1,
  `sharingtype` varchar(200) DEFAULT 'Private'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_report`
--

INSERT INTO `vtiger_report` (`reportid`, `folderid`, `reportname`, `description`, `reporttype`, `queryid`, `state`, `customizable`, `category`, `owner`, `sharingtype`) VALUES
(1, 1, 'Contacts by Accounts', 'Contacts related to Accounts', 'tabular', 1, 'CUSTOM', 1, 1, 1, 'Public'),
(2, 1, 'Contacts without Accounts', 'Contacts not related to Accounts', 'tabular', 2, 'CUSTOM', 1, 1, 1, 'Public'),
(3, 1, 'Contacts by Potentials', 'Contacts related to Potentials', 'tabular', 3, 'CUSTOM', 1, 1, 1, 'Public'),
(4, 2, 'Lead by Source', 'Lead by Source', 'summary', 4, 'CUSTOM', 1, 1, 1, 'Public'),
(5, 2, 'Lead Status Report', 'Lead Status Report', 'summary', 5, 'CUSTOM', 1, 1, 1, 'Public'),
(6, 3, 'Potential Pipeline', 'Potential Pipeline', 'summary', 6, 'CUSTOM', 1, 1, 1, 'Public'),
(7, 3, 'Closed Potentials', 'Potential that have Won', 'tabular', 7, 'CUSTOM', 1, 1, 1, 'Public'),
(8, 4, 'Last Month Activities', 'Last Month Activities', 'tabular', 8, 'CUSTOM', 1, 1, 1, 'Public'),
(9, 4, 'This Month Activities', 'This Month Activities', 'tabular', 9, 'CUSTOM', 1, 1, 1, 'Public'),
(10, 5, 'Tickets by Products', 'Tickets related to Products', 'tabular', 10, 'CUSTOM', 1, 1, 1, 'Public'),
(11, 5, 'Tickets by Priority', 'Tickets by Priority', 'summary', 11, 'CUSTOM', 1, 1, 1, 'Public'),
(12, 5, 'Open Tickets', 'Tickets that are Open', 'tabular', 12, 'CUSTOM', 1, 1, 1, 'Public'),
(13, 6, 'Product Details', 'Product Detailed Report', 'tabular', 13, 'CUSTOM', 1, 1, 1, 'Public'),
(14, 6, 'Products by Contacts', 'Products related to Contacts', 'tabular', 14, 'CUSTOM', 1, 1, 1, 'Public'),
(15, 7, 'Open Quotes', 'Quotes that are Open', 'tabular', 15, 'CUSTOM', 1, 1, 1, 'Public'),
(16, 7, 'Quotes Detailed Report', 'Quotes Detailed Report', 'tabular', 16, 'CUSTOM', 1, 1, 1, 'Public'),
(17, 8, 'PurchaseOrder by Contacts', 'PurchaseOrder related to Contacts', 'tabular', 17, 'CUSTOM', 1, 1, 1, 'Public'),
(18, 8, 'PurchaseOrder Detailed Report', 'PurchaseOrder Detailed Report', 'tabular', 18, 'CUSTOM', 1, 1, 1, 'Public'),
(19, 9, 'Invoice Detailed Report', 'Invoice Detailed Report', 'tabular', 19, 'CUSTOM', 1, 1, 1, 'Public'),
(20, 10, 'SalesOrder Detailed Report', 'SalesOrder Detailed Report', 'tabular', 20, 'CUSTOM', 1, 1, 1, 'Public'),
(21, 11, 'Campaign Expectations and Actuals', 'Campaign Expectations and Actuals', 'tabular', 21, 'CUSTOM', 1, 1, 1, 'Public'),
(22, 12, 'Contacts Email Report', 'Emails sent to Contacts', 'tabular', 22, 'CUSTOM', 1, 1, 1, 'Public'),
(23, 12, 'Accounts Email Report', 'Emails sent to Organizations', 'tabular', 23, 'CUSTOM', 1, 1, 1, 'Public'),
(24, 12, 'Leads Email Report', 'Emails sent to Leads', 'tabular', 24, 'CUSTOM', 1, 1, 1, 'Public'),
(25, 12, 'Vendors Email Report', 'Emails sent to Vendors', 'tabular', 25, 'CUSTOM', 1, 1, 1, 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportdatefilter`
--

CREATE TABLE `vtiger_reportdatefilter` (
  `datefilterid` int(19) NOT NULL,
  `datecolumnname` varchar(250) DEFAULT '',
  `datefilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_reportfilters` (
  `filterid` int(19) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_reportfolder` (
  `folderid` int(19) NOT NULL,
  `foldername` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `state` varchar(50) DEFAULT 'SAVED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_reportfolder`
--

INSERT INTO `vtiger_reportfolder` (`folderid`, `foldername`, `description`, `state`) VALUES
(1, 'Organization and Contact Reports', 'Account and Contact Reports', 'SAVED'),
(2, 'Lead Reports', 'Lead Reports', 'SAVED'),
(3, 'Opportunity Reports', 'Potential Reports', 'SAVED'),
(4, 'Activity Reports', 'Activity Reports', 'SAVED'),
(5, 'Tickets Reports', 'HelpDesk Reports', 'SAVED'),
(6, 'Product Reports', 'Product Reports', 'SAVED'),
(7, 'Quote Reports', 'Quote Reports', 'SAVED'),
(8, 'Purchase Order Reports', 'PurchaseOrder Reports', 'SAVED'),
(9, 'Invoice Reports', 'Invoice Reports', 'SAVED'),
(10, 'Sales Order Reports', 'SalesOrder Reports', 'SAVED'),
(11, 'Campaign Reports', 'Campaign Reports', 'SAVED'),
(12, 'Email Reports', 'Email Reports', 'SAVED');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportgroupbycolumn`
--

CREATE TABLE `vtiger_reportgroupbycolumn` (
  `reportid` int(19) DEFAULT NULL,
  `sortid` int(19) DEFAULT NULL,
  `sortcolname` varchar(250) DEFAULT NULL,
  `dategroupbycriteria` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportmodules`
--

CREATE TABLE `vtiger_reportmodules` (
  `reportmodulesid` int(19) NOT NULL,
  `primarymodule` varchar(100) DEFAULT NULL,
  `secondarymodules` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(13, 'Products', ''),
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
(25, 'Vendors', 'Emails');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsharing`
--

CREATE TABLE `vtiger_reportsharing` (
  `reportid` int(19) NOT NULL,
  `shareid` int(19) NOT NULL,
  `setype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsortcol`
--

CREATE TABLE `vtiger_reportsortcol` (
  `sortcolid` int(19) NOT NULL,
  `reportid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `sortorder` varchar(250) DEFAULT 'Asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_reportsortcol`
--

INSERT INTO `vtiger_reportsortcol` (`sortcolid`, `reportid`, `columnname`, `sortorder`) VALUES
(1, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V', 'Ascending'),
(1, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V', 'Ascending'),
(1, 6, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'Ascending'),
(1, 11, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V', 'Ascending');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsummary`
--

CREATE TABLE `vtiger_reportsummary` (
  `reportsummaryid` int(19) NOT NULL,
  `summarytype` int(19) NOT NULL,
  `columnname` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reporttype`
--

CREATE TABLE `vtiger_reporttype` (
  `reportid` int(10) NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report_sharegroups`
--

CREATE TABLE `vtiger_report_sharegroups` (
  `reportid` int(25) NOT NULL,
  `groupid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report_sharerole`
--

CREATE TABLE `vtiger_report_sharerole` (
  `reportid` int(25) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report_sharers`
--

CREATE TABLE `vtiger_report_sharers` (
  `reportid` int(25) NOT NULL,
  `rsid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report_shareusers`
--

CREATE TABLE `vtiger_report_shareusers` (
  `reportid` int(25) NOT NULL,
  `userid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role`
--

CREATE TABLE `vtiger_role` (
  `roleid` varchar(255) NOT NULL,
  `rolename` varchar(200) DEFAULT NULL,
  `parentrole` varchar(255) DEFAULT NULL,
  `depth` int(19) DEFAULT NULL,
  `allowassignedrecordsto` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_role`
--

INSERT INTO `vtiger_role` (`roleid`, `rolename`, `parentrole`, `depth`, `allowassignedrecordsto`) VALUES
('H1', 'Organization', 'H1', 0, 1),
('H2', 'CEO', 'H1::H2', 1, 1),
('H3', 'Vice President', 'H1::H2::H3', 2, 1),
('H4', 'Sales Manager', 'H1::H2::H3::H4', 3, 1),
('H5', 'Sales Person', 'H1::H2::H3::H4::H5', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role2picklist`
--

CREATE TABLE `vtiger_role2picklist` (
  `roleid` varchar(255) NOT NULL,
  `picklistvalueid` int(11) NOT NULL,
  `picklistid` int(11) NOT NULL,
  `sortid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
('H1', 51, 10, 0),
('H1', 52, 10, 1),
('H1', 53, 10, 2),
('H1', 54, 10, 3),
('H1', 55, 10, 4),
('H1', 56, 10, 5),
('H1', 57, 10, 6),
('H1', 58, 10, 7),
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
('H1', 200, 30, 6),
('H1', 201, 30, 7),
('H1', 203, 30, 9),
('H1', 208, 30, 14),
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
('H1', 303, 49, 1),
('H1', 304, 49, 2),
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
('H2', 51, 10, 0),
('H2', 52, 10, 1),
('H2', 53, 10, 2),
('H2', 54, 10, 3),
('H2', 55, 10, 4),
('H2', 56, 10, 5),
('H2', 57, 10, 6),
('H2', 58, 10, 7),
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
('H2', 200, 30, 6),
('H2', 201, 30, 7),
('H2', 203, 30, 9),
('H2', 208, 30, 14),
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
('H2', 303, 49, 1),
('H2', 304, 49, 2),
('H2', 305, 15, 4),
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
('H3', 51, 10, 0),
('H3', 52, 10, 1),
('H3', 53, 10, 2),
('H3', 54, 10, 3),
('H3', 55, 10, 4),
('H3', 56, 10, 5),
('H3', 57, 10, 6),
('H3', 58, 10, 7),
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
('H3', 200, 30, 6),
('H3', 201, 30, 7),
('H3', 203, 30, 9),
('H3', 208, 30, 14),
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
('H3', 303, 49, 1),
('H3', 304, 49, 2),
('H3', 305, 15, 4),
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
('H4', 51, 10, 0),
('H4', 52, 10, 1),
('H4', 53, 10, 2),
('H4', 54, 10, 3),
('H4', 55, 10, 4),
('H4', 56, 10, 5),
('H4', 57, 10, 6),
('H4', 58, 10, 7),
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
('H4', 200, 30, 6),
('H4', 201, 30, 7),
('H4', 203, 30, 9),
('H4', 208, 30, 14),
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
('H4', 303, 49, 1),
('H4', 304, 49, 2),
('H4', 305, 15, 4),
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
('H5', 51, 10, 0),
('H5', 52, 10, 1),
('H5', 53, 10, 2),
('H5', 54, 10, 3),
('H5', 55, 10, 4),
('H5', 56, 10, 5),
('H5', 57, 10, 6),
('H5', 58, 10, 7),
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
('H5', 200, 30, 6),
('H5', 201, 30, 7),
('H5', 203, 30, 9),
('H5', 208, 30, 14),
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
('H5', 303, 49, 1),
('H5', 304, 49, 2),
('H5', 305, 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role2profile`
--

CREATE TABLE `vtiger_role2profile` (
  `roleid` varchar(255) NOT NULL,
  `profileid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_role2profile`
--

INSERT INTO `vtiger_role2profile` (`roleid`, `profileid`) VALUES
('H2', 1),
('H3', 2),
('H4', 2),
('H5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role_seq`
--

CREATE TABLE `vtiger_role_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_role_seq`
--

INSERT INTO `vtiger_role_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rollupcomments_settings`
--

CREATE TABLE `vtiger_rollupcomments_settings` (
  `rollupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `rollup_status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rowheight`
--

CREATE TABLE `vtiger_rowheight` (
  `rowheightid` int(11) NOT NULL,
  `rowheight` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_rowheight`
--

INSERT INTO `vtiger_rowheight` (`rowheightid`, `rowheight`, `sortorderid`, `presence`) VALUES
(1, 'wide', 0, 1),
(2, 'medium', 1, 1),
(3, 'narrow', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rowheight_seq`
--

CREATE TABLE `vtiger_rowheight_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_rowheight_seq`
--

INSERT INTO `vtiger_rowheight_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rss`
--

CREATE TABLE `vtiger_rss` (
  `rssid` int(19) NOT NULL,
  `rssurl` varchar(200) NOT NULL DEFAULT '',
  `rsstitle` varchar(200) DEFAULT NULL,
  `rsstype` int(10) DEFAULT 0,
  `starred` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanactivityrel`
--

CREATE TABLE `vtiger_salesmanactivityrel` (
  `smid` int(19) NOT NULL DEFAULT 0,
  `activityid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanattachmentsrel`
--

CREATE TABLE `vtiger_salesmanattachmentsrel` (
  `smid` int(19) NOT NULL DEFAULT 0,
  `attachmentsid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanticketrel`
--

CREATE TABLE `vtiger_salesmanticketrel` (
  `smid` int(19) NOT NULL DEFAULT 0,
  `id` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesorder`
--

CREATE TABLE `vtiger_salesorder` (
  `salesorderid` int(19) NOT NULL DEFAULT 0,
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
  `terms_conditions` text DEFAULT NULL,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT 1.000,
  `enable_recurring` int(11) DEFAULT 0,
  `compound_taxes_info` text DEFAULT NULL,
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `region_id` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_salesorder`
--

INSERT INTO `vtiger_salesorder` (`salesorderid`, `subject`, `potentialid`, `customerno`, `salesorder_no`, `quoteid`, `vendorterms`, `contactid`, `vendorid`, `duedate`, `carrier`, `pending`, `type`, `adjustment`, `salescommission`, `exciseduty`, `total`, `subtotal`, `taxtype`, `discount_percent`, `discount_amount`, `s_h_amount`, `accountid`, `terms_conditions`, `purchaseorder`, `sostatus`, `currency_id`, `conversion_rate`, `enable_recurring`, `compound_taxes_info`, `pre_tax_total`, `s_h_percent`, `tags`, `region_id`) VALUES
(33, 'Борлуулалт', NULL, '45465465', 'SO1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, NULL, NULL, 10000.00000000, 10000.00000000, 'group', NULL, NULL, 0.00000000, NULL, NULL, NULL, 'Approved', 1, 1.000, 0, '[]', 10000.00000000, 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesordercf`
--

CREATE TABLE `vtiger_salesordercf` (
  `salesorderid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_salesordercf`
--

INSERT INTO `vtiger_salesordercf` (`salesorderid`) VALUES
(33);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sales_stage`
--

CREATE TABLE `vtiger_sales_stage` (
  `sales_stage_id` int(19) NOT NULL,
  `sales_stage` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_sales_stage`
--

INSERT INTO `vtiger_sales_stage` (`sales_stage_id`, `sales_stage`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Prospecting', 1, 150, 0, NULL),
(2, 'Qualification', 1, 151, 1, NULL),
(3, 'Needs Analysis', 1, 152, 2, NULL),
(4, 'Value Proposition', 1, 153, 3, NULL),
(5, 'Id. Decision Makers', 1, 154, 4, NULL),
(6, 'Perception Analysis', 1, 155, 5, NULL),
(7, 'Proposal or Price Quote', 1, 156, 6, NULL),
(8, 'Negotiation or Review', 1, 157, 7, NULL),
(9, 'Closed Won', 0, 158, 8, NULL),
(10, 'Closed Lost', 0, 159, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sales_stage_seq`
--

CREATE TABLE `vtiger_sales_stage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_sales_stage_seq`
--

INSERT INTO `vtiger_sales_stage_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salutationtype`
--

CREATE TABLE `vtiger_salutationtype` (
  `salutationid` int(19) NOT NULL,
  `salutationtype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_salutationtype`
--

INSERT INTO `vtiger_salutationtype` (`salutationid`, `salutationtype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Mr.', 1, 161, 1, NULL),
(3, 'Ms.', 1, 162, 2, NULL),
(4, 'Mrs.', 1, 163, 3, NULL),
(5, 'Dr.', 1, 164, 4, NULL),
(6, 'Prof.', 1, 165, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salutationtype_seq`
--

CREATE TABLE `vtiger_salutationtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_salutationtype_seq`
--

INSERT INTO `vtiger_salutationtype_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_scheduled_reports`
--

CREATE TABLE `vtiger_scheduled_reports` (
  `reportid` int(11) NOT NULL,
  `recipients` text DEFAULT NULL,
  `schedule` text DEFAULT NULL,
  `format` varchar(10) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_schedulereports`
--

CREATE TABLE `vtiger_schedulereports` (
  `reportid` int(10) DEFAULT NULL,
  `scheduleid` int(3) DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `schdate` varchar(20) DEFAULT NULL,
  `schtime` time DEFAULT NULL,
  `schdayoftheweek` varchar(100) DEFAULT NULL,
  `schdayofthemonth` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(500) DEFAULT NULL,
  `specificemails` varchar(500) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `fileformat` varchar(10) DEFAULT 'CSV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seactivityrel`
--

CREATE TABLE `vtiger_seactivityrel` (
  `crmid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seactivityrel_seq`
--

CREATE TABLE `vtiger_seactivityrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_seactivityrel_seq`
--

INSERT INTO `vtiger_seactivityrel_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seattachmentsrel`
--

CREATE TABLE `vtiger_seattachmentsrel` (
  `crmid` int(19) NOT NULL DEFAULT 0,
  `attachmentsid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectcolumn`
--

CREATE TABLE `vtiger_selectcolumn` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL DEFAULT 0,
  `columnname` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(13, 1, 'vtiger_products:productcode:Products_Product_Code:productcode:V'),
(13, 2, 'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),
(13, 3, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(13, 4, 'vtiger_products:website:Products_Website:website:V'),
(13, 5, 'vtiger_vendorRelProducts:vendorname:Products_Vendor_Name:vendor_id:I'),
(13, 6, 'vtiger_products:mfr_part_no:Products_Mfr_PartNo:mfr_part_no:V'),
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
(22, 3, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I'),
(23, 0, 'vtiger_account:accountname:Accounts_Account_Name:accountname:V'),
(23, 1, 'vtiger_account:phone:Accounts_Phone:phone:V'),
(23, 2, 'vtiger_account:email1:Accounts_Email:email1:E'),
(23, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(23, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I'),
(24, 0, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(24, 1, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(24, 2, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(24, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(24, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I'),
(25, 0, 'vtiger_vendor:vendorname:Vendors_Vendor_Name:vendorname:V'),
(25, 1, 'vtiger_vendor:glacct:Vendors_GL_Account:glacct:V'),
(25, 2, 'vtiger_vendor:email:Vendors_Email:email:E'),
(25, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(25, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectquery`
--

CREATE TABLE `vtiger_selectquery` (
  `queryid` int(19) NOT NULL,
  `startindex` int(19) DEFAULT 0,
  `numofobjects` int(19) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_selectquery`
--

INSERT INTO `vtiger_selectquery` (`queryid`, `startindex`, `numofobjects`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectquery_seq`
--

CREATE TABLE `vtiger_selectquery_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_selectquery_seq`
--

INSERT INTO `vtiger_selectquery_seq` (`id`) VALUES
(25);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_senotesrel`
--

CREATE TABLE `vtiger_senotesrel` (
  `crmid` int(19) NOT NULL DEFAULT 0,
  `notesid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seproductsrel`
--

CREATE TABLE `vtiger_seproductsrel` (
  `crmid` int(19) NOT NULL DEFAULT 0,
  `productid` int(19) NOT NULL DEFAULT 0,
  `setype` varchar(30) NOT NULL,
  `quantity` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service`
--

CREATE TABLE `vtiger_service` (
  `serviceid` int(11) NOT NULL,
  `service_no` varchar(100) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `servicecategory` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT 0.00,
  `unit_price` decimal(25,8) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT 0,
  `service_usageunit` varchar(200) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `commissionrate` decimal(7,3) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `purchase_cost` decimal(27,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecategory`
--

CREATE TABLE `vtiger_servicecategory` (
  `servicecategoryid` int(11) NOT NULL,
  `servicecategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_servicecategory`
--

INSERT INTO `vtiger_servicecategory` (`servicecategoryid`, `servicecategory`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Support', 1, 230, 2, NULL),
(3, 'Installation', 1, 231, 3, NULL),
(4, 'Migration', 1, 232, 4, NULL),
(5, 'Customization', 1, 233, 5, NULL),
(6, 'Training', 1, 234, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecategory_seq`
--

CREATE TABLE `vtiger_servicecategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_servicecategory_seq`
--

INSERT INTO `vtiger_servicecategory_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecf`
--

CREATE TABLE `vtiger_servicecf` (
  `serviceid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecontracts`
--

CREATE TABLE `vtiger_servicecontracts` (
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
  `contract_no` varchar(100) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecontractscf`
--

CREATE TABLE `vtiger_servicecontractscf` (
  `servicecontractsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service_usageunit`
--

CREATE TABLE `vtiger_service_usageunit` (
  `service_usageunitid` int(11) NOT NULL,
  `service_usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_service_usageunit`
--

INSERT INTO `vtiger_service_usageunit` (`service_usageunitid`, `service_usageunit`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Hours', 1, 226, 1, NULL),
(2, 'Days', 1, 227, 2, NULL),
(3, 'Incidents', 1, 228, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service_usageunit_seq`
--

CREATE TABLE `vtiger_service_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_service_usageunit_seq`
--

INSERT INTO `vtiger_service_usageunit_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seticketsrel`
--

CREATE TABLE `vtiger_seticketsrel` (
  `crmid` int(19) NOT NULL DEFAULT 0,
  `ticketid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_blocks`
--

CREATE TABLE `vtiger_settings_blocks` (
  `blockid` int(19) NOT NULL,
  `label` varchar(250) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_settings_blocks`
--

INSERT INTO `vtiger_settings_blocks` (`blockid`, `label`, `sequence`) VALUES
(1, 'LBL_USER_MANAGEMENT', 1),
(4, 'LBL_OTHER_SETTINGS', 10),
(5, 'LBL_MODULE_MANAGER', 2),
(6, 'LBL_INTEGRATION', 8),
(7, 'LBL_AUTOMATION', 3),
(8, 'LBL_CONFIGURATION', 4),
(9, 'LBL_MARKETING_SALES', 5),
(10, 'LBL_INVENTORY', 6),
(11, 'LBL_MY_PREFERENCES', 7),
(12, 'LBL_EXTENSIONS', 9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_blocks_seq`
--

CREATE TABLE `vtiger_settings_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_settings_blocks_seq`
--

INSERT INTO `vtiger_settings_blocks_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_field`
--

CREATE TABLE `vtiger_settings_field` (
  `fieldid` int(19) NOT NULL,
  `blockid` int(19) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `iconpath` varchar(300) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `linkto` text DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `active` int(19) DEFAULT 0,
  `pinned` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_settings_field`
--

INSERT INTO `vtiger_settings_field` (`fieldid`, `blockid`, `name`, `iconpath`, `description`, `linkto`, `sequence`, `active`, `pinned`) VALUES
(1, 1, 'LBL_USERS', 'ico-users.gif', 'LBL_USER_DESCRIPTION', 'index.php?module=Users&parent=Settings&view=List', 1, 0, 1),
(2, 1, 'LBL_ROLES', 'ico-roles.gif', 'LBL_ROLE_DESCRIPTION', 'index.php?module=Roles&parent=Settings&view=Index', 2, 0, 0),
(3, 1, 'LBL_PROFILES', 'ico-profile.gif', 'LBL_PROFILE_DESCRIPTION', 'index.php?module=Profiles&parent=Settings&view=List', 3, 0, 0),
(4, 1, 'USERGROUPLIST', 'ico-groups.gif', 'LBL_GROUP_DESCRIPTION', 'index.php?module=Groups&parent=Settings&view=List', 5, 0, 0),
(5, 1, 'LBL_SHARING_ACCESS', 'shareaccess.gif', 'LBL_SHARING_ACCESS_DESCRIPTION', 'index.php?module=SharingAccess&parent=Settings&view=Index', 4, 0, 0),
(7, 1, 'LBL_LOGIN_HISTORY_DETAILS', 'set-IcoLoginHistory.gif', 'LBL_LOGIN_HISTORY_DESCRIPTION', 'index.php?module=LoginHistory&parent=Settings&view=List', 6, 0, 0),
(8, 5, 'VTLIB_LBL_MODULE_MANAGER', 'vtlib_modmng.gif', 'VTLIB_LBL_MODULE_MANAGER_DESCRIPTION', 'index.php?module=ModuleManager&parent=Settings&view=List', 1, 0, 1),
(9, 8, 'LBL_PICKLIST_EDITOR', 'picklist.gif', 'LBL_PICKLIST_DESCRIPTION', 'index.php?parent=Settings&module=Picklist&view=Index', 6, 0, 1),
(10, 8, 'LBL_PICKLIST_DEPENDENCY', 'picklistdependency.gif', 'LBL_PICKLIST_DEPENDENCY_DESCRIPTION', 'index.php?parent=Settings&module=PickListDependency&view=List', 7, 0, 0),
(11, 8, 'LBL_MENU_EDITOR', 'menueditor.png', 'LBL_MENU_DESC', 'index.php?module=MenuEditor&parent=Settings&view=Index', 8, 0, 0),
(14, 8, 'LBL_COMPANY_DETAILS', 'company.gif', 'LBL_COMPANY_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=CompanyDetails', 1, 0, 0),
(15, 8, 'LBL_MAIL_SERVER_SETTINGS', 'ogmailserver.gif', 'LBL_MAIL_SERVER_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=OutgoingServerDetail', 4, 0, 0),
(16, 8, 'LBL_CURRENCY_SETTINGS', 'currency.gif', 'LBL_CURRENCY_DESCRIPTION', 'index.php?parent=Settings&module=Currency&view=List', 3, 0, 0),
(17, 10, 'LBL_TAX_SETTINGS', 'taxConfiguration.gif', 'LBL_TAX_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=TaxIndex', 1, 0, 0),
(18, 4, 'LBL_SYSTEM_INFO', 'system.gif', 'LBL_SYSTEM_DESCRIPTION', 'index.php?module=Settings&submodule=Server&view=ProxyConfig', 6, 1, 0),
(20, 4, 'LBL_DEFAULT_MODULE_VIEW', 'set-IcoTwoTabConfig.gif', 'LBL_DEFAULT_MODULE_VIEW_DESC', 'index.php?module=Settings&action=DefModuleView&parenttab=Settings', 2, 0, 0),
(21, 10, 'INVENTORYTERMSANDCONDITIONS', 'terms.gif', 'LBL_INV_TANDC_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=TermsAndConditionsEdit', 2, 0, 0),
(22, 5, 'LBL_CUSTOMIZE_MODENT_NUMBER', 'settingsInvNumber.gif', 'LBL_CUSTOMIZE_MODENT_NUMBER_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=CustomRecordNumbering', 4, 0, 0),
(23, 4, 'LBL_MAIL_SCANNER', 'mailScanner.gif', 'LBL_MAIL_SCANNER_DESCRIPTION', 'index.php?parent=Settings&module=MailConverter&view=List', 5, 0, 0),
(24, 7, 'LBL_LIST_WORKFLOWS', 'settingsWorkflow.png', 'LBL_LIST_WORKFLOWS_DESCRIPTION', 'index.php?module=Workflows&parent=Settings&view=List', 3, 0, 1),
(25, 8, 'Configuration Editor', 'migrate.gif', 'LBL_CONFIG_EDITOR_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=ConfigEditorDetail', 5, 0, 0),
(26, 7, 'Scheduler', 'Cron.png', 'Allows you to Configure Cron Task', 'index.php?module=CronTasks&parent=Settings&view=List', 2, 0, 0),
(28, 4, 'ModTracker', 'set-IcoLoginHistory.gif', 'LBL_MODTRACKER_DESCRIPTION', 'index.php?module=ModTracker&action=BasicSettings&parenttab=Settings&formodule=ModTracker', 9, 0, 0),
(30, 8, 'LBL_CUSTOMER_PORTAL', 'portal_icon.png', 'PORTAL_EXTENSION_DESCRIPTION', 'index.php?module=CustomerPortal&parent=Settings&view=Index', 2, 0, 0),
(31, 7, 'Webforms', 'modules/Webforms/img/Webform.png', 'LBL_WEBFORMS_DESCRIPTION', 'index.php?module=Webforms&parent=Settings&view=List', 1, 1, 0),
(32, 5, 'LBL_EDIT_FIELDS', '', 'LBL_LAYOUT_EDITOR_DESCRIPTION', 'index.php?module=LayoutEditor&parent=Settings&view=Index', 2, 0, 0),
(33, 9, 'LBL_LEAD_MAPPING', 'NULL', 'NULL', 'index.php?parent=Settings&module=Leads&view=MappingDetail', 1, 0, 1),
(34, 9, 'LBL_OPPORTUNITY_MAPPING', 'NULL', 'NULL', 'index.php?parent=Settings&module=Potentials&view=MappingDetail', 2, 0, 1),
(35, 11, 'My Preferences', 'NULL', 'NULL', 'index.php?module=Users&view=PreferenceDetail&parent=Settings&record=1', 1, 0, 1),
(36, 11, 'Calendar Settings', 'NULL', 'NULL', 'index.php?module=Users&parent=Settings&view=Calendar&record=1', 2, 0, 1),
(37, 11, 'LBL_MY_TAGS', 'NULL', 'NULL', 'index.php?module=Tags&parent=Settings&view=List&record=1', 3, 0, 1),
(38, 12, 'LBL_EXTENSION_STORE', 'NULL', 'NULL', 'index.php?module=ExtensionStore&parent=Settings&view=ExtensionStore', 1, 0, 1),
(39, 12, 'LBL_GOOGLE', 'NULL', 'NULL', 'index.php?module=Contacts&parent=Settings&view=Extension&extensionModule=Google&extensionView=Index&mode=settings', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_field_seq`
--

CREATE TABLE `vtiger_settings_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_settings_field_seq`
--

INSERT INTO `vtiger_settings_field_seq` (`id`) VALUES
(39);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sharedcalendar`
--

CREATE TABLE `vtiger_sharedcalendar` (
  `userid` int(19) NOT NULL,
  `sharedid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shareduserinfo`
--

CREATE TABLE `vtiger_shareduserinfo` (
  `userid` int(19) NOT NULL DEFAULT 0,
  `shareduserid` int(19) NOT NULL DEFAULT 0,
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shippingtaxinfo`
--

CREATE TABLE `vtiger_shippingtaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `compoundon` varchar(400) DEFAULT NULL,
  `regions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_shippingtaxinfo`
--

INSERT INTO `vtiger_shippingtaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`, `method`, `type`, `compoundon`, `regions`) VALUES
(1, 'shtax1', 'VAT', 4.500, 0, 'Simple', 'Fixed', '[]', '[]'),
(2, 'shtax2', 'Sales', 10.000, 1, 'Simple', 'Fixed', '[]', '[]'),
(3, 'shtax3', 'Service', 12.500, 1, 'Simple', 'Fixed', '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shippingtaxinfo_seq`
--

CREATE TABLE `vtiger_shippingtaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_shippingtaxinfo_seq`
--

INSERT INTO `vtiger_shippingtaxinfo_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shorturls`
--

CREATE TABLE `vtiger_shorturls` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `handler_path` varchar(400) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL,
  `handler_function` varchar(100) DEFAULT NULL,
  `handler_data` varchar(255) DEFAULT NULL,
  `onetime` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier`
--

CREATE TABLE `vtiger_smsnotifier` (
  `smsnotifierid` int(19) NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifiercf`
--

CREATE TABLE `vtiger_smsnotifiercf` (
  `smsnotifierid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier_servers`
--

CREATE TABLE `vtiger_smsnotifier_servers` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL,
  `providertype` varchar(50) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier_status`
--

CREATE TABLE `vtiger_smsnotifier_status` (
  `smsnotifierid` int(19) DEFAULT NULL,
  `tonumber` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `smsmessageid` varchar(50) DEFAULT NULL,
  `needlookup` int(1) DEFAULT 1,
  `statusid` int(11) NOT NULL,
  `statusmessage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_soapservice`
--

CREATE TABLE `vtiger_soapservice` (
  `id` int(19) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `sessionid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sobillads`
--

CREATE TABLE `vtiger_sobillads` (
  `sobilladdressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_sobillads`
--

INSERT INTO `vtiger_sobillads` (`sobilladdressid`, `bill_city`, `bill_code`, `bill_country`, `bill_state`, `bill_street`, `bill_pobox`) VALUES
(33, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_soshipads`
--

CREATE TABLE `vtiger_soshipads` (
  `soshipaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_soshipads`
--

INSERT INTO `vtiger_soshipads` (`soshipaddressid`, `ship_city`, `ship_code`, `ship_country`, `ship_state`, `ship_street`, `ship_pobox`) VALUES
(33, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatus`
--

CREATE TABLE `vtiger_sostatus` (
  `sostatusid` int(19) NOT NULL,
  `sostatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_sostatus`
--

INSERT INTO `vtiger_sostatus` (`sostatusid`, `sostatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Created', 0, 166, 0, NULL),
(2, 'Approved', 0, 167, 1, NULL),
(3, 'Delivered', 0, 168, 2, NULL),
(4, 'Cancelled', 0, 169, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatushistory`
--

CREATE TABLE `vtiger_sostatushistory` (
  `historyid` int(19) NOT NULL,
  `salesorderid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatus_seq`
--

CREATE TABLE `vtiger_sostatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_sostatus_seq`
--

INSERT INTO `vtiger_sostatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sqltimelog`
--

CREATE TABLE `vtiger_sqltimelog` (
  `id` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `started` decimal(20,6) DEFAULT NULL,
  `ended` decimal(20,6) DEFAULT NULL,
  `loggedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_start_hour`
--

CREATE TABLE `vtiger_start_hour` (
  `start_hourid` int(11) NOT NULL,
  `start_hour` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_start_hour`
--

INSERT INTO `vtiger_start_hour` (`start_hourid`, `start_hour`, `sortorderid`, `presence`) VALUES
(1, '00:00', 0, 1),
(2, '01:00', 1, 1),
(3, '02:00', 2, 1),
(4, '03:00', 3, 1),
(5, '04:00', 4, 1),
(6, '05:00', 5, 1),
(7, '06:00', 6, 1),
(8, '07:00', 7, 1),
(9, '08:00', 8, 1),
(10, '09:00', 9, 1),
(11, '10:00', 10, 1),
(12, '11:00', 11, 1),
(13, '12:00', 12, 1),
(14, '13:00', 13, 1),
(15, '14:00', 14, 1),
(16, '15:00', 15, 1),
(17, '16:00', 16, 1),
(18, '17:00', 17, 1),
(19, '18:00', 18, 1),
(20, '19:00', 19, 1),
(21, '20:00', 20, 1),
(22, '21:00', 21, 1),
(23, '22:00', 22, 1),
(24, '23:00', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_start_hour_seq`
--

CREATE TABLE `vtiger_start_hour_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_start_hour_seq`
--

INSERT INTO `vtiger_start_hour_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_status`
--

CREATE TABLE `vtiger_status` (
  `statusid` int(19) NOT NULL,
  `status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_status_seq`
--

INSERT INTO `vtiger_status_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_systems`
--

CREATE TABLE `vtiger_systems` (
  `id` int(19) NOT NULL,
  `server` varchar(100) DEFAULT NULL,
  `server_port` int(19) DEFAULT NULL,
  `server_username` varchar(100) DEFAULT NULL,
  `server_password` text DEFAULT NULL,
  `server_type` varchar(20) DEFAULT NULL,
  `smtp_auth` varchar(5) DEFAULT NULL,
  `server_path` varchar(256) DEFAULT NULL,
  `from_email_field` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tab`
--

CREATE TABLE `vtiger_tab` (
  `tabid` int(19) NOT NULL DEFAULT 0,
  `name` varchar(25) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT 1,
  `tabsequence` int(10) DEFAULT NULL,
  `tablabel` varchar(100) DEFAULT NULL,
  `modifiedby` int(19) DEFAULT NULL,
  `modifiedtime` int(19) DEFAULT NULL,
  `customized` int(19) DEFAULT NULL,
  `ownedby` int(19) DEFAULT NULL,
  `isentitytype` int(11) NOT NULL DEFAULT 1,
  `trial` int(1) NOT NULL DEFAULT 0,
  `version` varchar(10) DEFAULT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `source` varchar(255) DEFAULT 'custom',
  `issyncable` tinyint(1) DEFAULT 0,
  `allowduplicates` tinyint(1) DEFAULT 1,
  `sync_action_for_duplicates` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_tab`
--

INSERT INTO `vtiger_tab` (`tabid`, `name`, `presence`, `tabsequence`, `tablabel`, `modifiedby`, `modifiedtime`, `customized`, `ownedby`, `isentitytype`, `trial`, `version`, `parent`, `source`, `issyncable`, `allowduplicates`, `sync_action_for_duplicates`) VALUES
(1, 'Dashboard', 0, 12, 'Dashboards', NULL, NULL, 0, 1, 0, 0, NULL, 'Analytics', NULL, 1, 1, 1),
(2, 'Potentials', 1, 7, 'Potentials', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(3, 'Home', 0, 1, 'Home', NULL, NULL, 0, 1, 0, 0, NULL, NULL, NULL, 1, 1, 1),
(4, 'Contacts', 1, 6, 'Contacts', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(6, 'Accounts', 1, 5, 'Accounts', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 0, 1),
(7, 'Leads', 1, 4, 'Leads', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(8, 'Documents', 1, 9, 'Documents', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools', NULL, 1, 1, 1),
(9, 'Calendar', 1, 3, 'Calendar', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools', NULL, 1, 1, 1),
(10, 'Emails', 1, 10, 'Emails', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools', NULL, 1, 1, 1),
(13, 'HelpDesk', 1, 11, 'HelpDesk', NULL, NULL, 0, 0, 1, 0, NULL, 'Support', NULL, 1, 1, 1),
(14, 'Products', 0, 8, 'Products', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory', NULL, 1, 1, 1),
(15, 'Faq', 1, -1, 'Faq', NULL, NULL, 0, 1, 1, 0, NULL, 'Support', NULL, 1, 1, 1),
(16, 'Events', 2, -1, 'Events', NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 1),
(18, 'Vendors', 0, -1, 'Vendors', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory', NULL, 1, 1, 1),
(19, 'PriceBooks', 1, -1, 'PriceBooks', NULL, NULL, 0, 1, 1, 0, NULL, 'Inventory', NULL, 1, 1, 1),
(20, 'Quotes', 1, -1, 'Quotes', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(21, 'PurchaseOrder', 0, -1, 'PurchaseOrder', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory', NULL, 1, 1, 1),
(22, 'SalesOrder', 0, -1, 'SalesOrder', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(23, 'Invoice', 1, -1, 'Invoice', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(24, 'Rss', 1, -1, 'Rss', NULL, NULL, 0, 1, 0, 0, NULL, 'Tools', NULL, 1, 1, 1),
(25, 'Reports', 0, -1, 'Reports', NULL, NULL, 0, 1, 0, 0, NULL, 'Analytics', NULL, 1, 1, 1),
(26, 'Campaigns', 1, -1, 'Campaigns', NULL, NULL, 0, 0, 1, 0, NULL, 'Marketing', NULL, 1, 1, 1),
(27, 'Portal', 1, -1, 'Portal', NULL, NULL, 0, 1, 0, 0, NULL, 'Tools', NULL, 1, 1, 1),
(28, 'Webmails', 1, -1, 'Webmails', NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL, 1, 1, 1),
(29, 'Users', 0, -1, 'Users', NULL, NULL, 0, 1, 0, 0, NULL, NULL, NULL, 1, 1, 1),
(30, 'Import', 0, -1, 'Import', NULL, NULL, 1, 0, 0, 0, '1.7', '', NULL, 1, 1, 1),
(31, 'MailManager', 1, -1, 'MailManager', NULL, NULL, 1, 0, 0, 0, '1.9', 'Tools', NULL, 1, 1, 1),
(32, 'Mobile', 0, -1, 'Mobile', NULL, NULL, 1, 0, 0, 0, '2.0', '', NULL, 1, 1, 1),
(33, 'ModTracker', 0, -1, 'ModTracker', NULL, NULL, 0, 0, 0, 0, '1.2', '', NULL, 1, 1, 1),
(34, 'PBXManager', 1, -1, 'PBXManager', NULL, NULL, 1, 0, 1, 0, '2.2', 'Tools', NULL, 1, 1, 1),
(35, 'ServiceContracts', 1, -1, 'Service Contracts', NULL, NULL, 0, 0, 1, 0, '2.4', 'Support', NULL, 1, 1, 1),
(36, 'Services', 1, -1, 'Services', NULL, NULL, 0, 0, 1, 0, '2.6', 'Inventory', NULL, 1, 1, 1),
(37, 'WSAPP', 0, -1, 'WSAPP', NULL, NULL, 1, 0, 0, 0, '3.4.4', '', NULL, 1, 1, 1),
(38, 'Assets', 1, -1, 'Assets', NULL, NULL, 0, 0, 1, 0, '2.0', 'Inventory', NULL, 1, 1, 1),
(39, 'CustomerPortal', 1, -1, 'CustomerPortal', NULL, NULL, 0, 0, 0, 0, '1.4', '', NULL, 1, 1, 1),
(40, 'EmailTemplates', 0, -1, 'Email Templates', NULL, NULL, 1, 0, 0, 0, '1.0', 'Tools', NULL, 1, 1, 1),
(41, 'Google', 1, -1, 'Google', NULL, NULL, 0, 0, 0, 0, '1.5', '', NULL, 1, 1, 1),
(42, 'ModComments', 0, -1, 'Comments', NULL, NULL, 0, 0, 1, 0, '2.1', '', NULL, 1, 1, 1),
(43, 'ProjectMilestone', 1, -1, 'ProjectMilestone', NULL, NULL, 0, 0, 1, 0, '3.0', 'Support', NULL, 1, 1, 1),
(44, 'ProjectTask', 1, -1, 'ProjectTask', NULL, NULL, 0, 0, 1, 0, '3.1', 'Support', NULL, 1, 1, 1),
(45, 'Project', 1, -1, 'Project', NULL, NULL, 0, 0, 1, 0, '3.3', 'Support', NULL, 1, 1, 1),
(46, 'RecycleBin', 1, -1, 'Recycle Bin', NULL, NULL, 0, 0, 0, 0, '1.5', 'Tools', NULL, 1, 1, 1),
(47, 'SMSNotifier', 1, -1, 'SMSNotifier', NULL, NULL, 0, 0, 1, 0, '2.1', 'Sales', NULL, 1, 1, 1),
(48, 'Webforms', 1, -1, 'Webforms', NULL, NULL, 0, 0, 0, 0, '1.6', '', NULL, 1, 1, 1),
(49, 'ExtensionStore', 0, -1, 'Extension Store', NULL, NULL, 1, 0, 0, 0, '1.2', NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tab_info`
--

CREATE TABLE `vtiger_tab_info` (
  `tabid` int(19) DEFAULT NULL,
  `prefname` varchar(256) DEFAULT NULL,
  `prefvalue` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_tab_info`
--

INSERT INTO `vtiger_tab_info` (`tabid`, `prefname`, `prefvalue`) VALUES
(30, 'vtiger_min_version', '6.0.0rc'),
(30, 'vtiger_max_version', '8.*'),
(31, 'vtiger_min_version', '6.0.0RC'),
(32, 'vtiger_min_version', '6.0.0rc'),
(33, 'vtiger_min_version', '6.0.0rc'),
(34, 'vtiger_min_version', '6.0.0'),
(34, 'vtiger_max_version', '8.*'),
(35, 'vtiger_min_version', '6.0.0rc'),
(36, 'vtiger_min_version', '6.0.0rc'),
(36, 'vtiger_max_version', '8.*'),
(37, 'vtiger_min_version', '6.0.0rc'),
(38, 'vtiger_min_version', '6.0.0rc'),
(38, 'vtiger_max_version', '8.*'),
(39, 'vtiger_min_version', '6.0.0rc'),
(39, 'vtiger_max_version', '8.*'),
(40, 'vtiger_min_version', '6.0.0rc'),
(40, 'vtiger_max_version', '8.*'),
(41, 'vtiger_min_version', '6.0.0rc'),
(41, 'vtiger_max_version', '8.*'),
(42, 'vtiger_min_version', '6.0.0rc'),
(42, 'vtiger_max_version', '8.*'),
(43, 'vtiger_min_version', '6.0.0rc'),
(43, 'vtiger_max_version', '8.*'),
(44, 'vtiger_min_version', '6.0.0rc'),
(45, 'vtiger_min_version', '6.0.0rc'),
(46, 'vtiger_min_version', '6.0.0rc'),
(46, 'vtiger_max_version', '8.*'),
(47, 'vtiger_min_version', '6.0.0'),
(47, 'vtiger_max_version', '8.*'),
(48, 'vtiger_min_version', '6.0.0rc'),
(48, 'vtiger_max_version', '8.*'),
(49, 'vtiger_min_version', '6.0.0'),
(49, 'vtiger_max_version', '8.*');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskpriority`
--

CREATE TABLE `vtiger_taskpriority` (
  `taskpriorityid` int(19) NOT NULL,
  `taskpriority` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_taskpriority`
--

INSERT INTO `vtiger_taskpriority` (`taskpriorityid`, `taskpriority`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'High', 1, 170, 0, NULL),
(2, 'Medium', 1, 171, 1, NULL),
(3, 'Low', 1, 172, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskpriority_seq`
--

CREATE TABLE `vtiger_taskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_taskpriority_seq`
--

INSERT INTO `vtiger_taskpriority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskstatus`
--

CREATE TABLE `vtiger_taskstatus` (
  `taskstatusid` int(19) NOT NULL,
  `taskstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_taskstatus`
--

INSERT INTO `vtiger_taskstatus` (`taskstatusid`, `taskstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Not Started', 0, 173, 0, NULL),
(2, 'In Progress', 0, 174, 1, NULL),
(3, 'Completed', 0, 175, 2, NULL),
(4, 'Pending Input', 0, 176, 3, NULL),
(5, 'Deferred', 0, 177, 4, NULL),
(6, 'Planned', 0, 178, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskstatus_seq`
--

CREATE TABLE `vtiger_taskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_taskstatus_seq`
--

INSERT INTO `vtiger_taskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxclass`
--

CREATE TABLE `vtiger_taxclass` (
  `taxclassid` int(19) NOT NULL,
  `taxclass` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_taxclass_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_taxclass_seq`
--

INSERT INTO `vtiger_taxclass_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxregions`
--

CREATE TABLE `vtiger_taxregions` (
  `regionid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcategories`
--

CREATE TABLE `vtiger_ticketcategories` (
  `ticketcategories_id` int(19) NOT NULL,
  `ticketcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 0,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ticketcategories`
--

INSERT INTO `vtiger_ticketcategories` (`ticketcategories_id`, `ticketcategories`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Big Problem', 1, 179, 0, NULL),
(2, 'Small Problem', 1, 180, 1, NULL),
(3, 'Other Problem', 1, 181, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcategories_seq`
--

CREATE TABLE `vtiger_ticketcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ticketcategories_seq`
--

INSERT INTO `vtiger_ticketcategories_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcf`
--

CREATE TABLE `vtiger_ticketcf` (
  `ticketid` int(19) NOT NULL DEFAULT 0,
  `from_portal` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcomments`
--

CREATE TABLE `vtiger_ticketcomments` (
  `commentid` int(19) NOT NULL,
  `ticketid` int(19) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `ownerid` int(19) NOT NULL DEFAULT 0,
  `ownertype` varchar(10) DEFAULT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketpriorities`
--

CREATE TABLE `vtiger_ticketpriorities` (
  `ticketpriorities_id` int(19) NOT NULL,
  `ticketpriorities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 0,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ticketpriorities`
--

INSERT INTO `vtiger_ticketpriorities` (`ticketpriorities_id`, `ticketpriorities`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Low', 1, 182, 0, NULL),
(2, 'Normal', 1, 183, 1, NULL),
(3, 'High', 1, 184, 2, NULL),
(4, 'Urgent', 1, 185, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketpriorities_seq`
--

CREATE TABLE `vtiger_ticketpriorities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ticketpriorities_seq`
--

INSERT INTO `vtiger_ticketpriorities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketseverities`
--

CREATE TABLE `vtiger_ticketseverities` (
  `ticketseverities_id` int(19) NOT NULL,
  `ticketseverities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 0,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ticketseverities`
--

INSERT INTO `vtiger_ticketseverities` (`ticketseverities_id`, `ticketseverities`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Minor', 1, 186, 0, NULL),
(2, 'Major', 1, 187, 1, NULL),
(3, 'Feature', 1, 188, 2, NULL),
(4, 'Critical', 1, 189, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketseverities_seq`
--

CREATE TABLE `vtiger_ticketseverities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ticketseverities_seq`
--

INSERT INTO `vtiger_ticketseverities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketstatus`
--

CREATE TABLE `vtiger_ticketstatus` (
  `ticketstatus_id` int(19) NOT NULL,
  `ticketstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 0,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ticketstatus`
--

INSERT INTO `vtiger_ticketstatus` (`ticketstatus_id`, `ticketstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Open', 0, 190, 0, NULL),
(2, 'In Progress', 0, 191, 1, NULL),
(3, 'Wait For Response', 0, 192, 2, NULL),
(4, 'Closed', 0, 193, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketstatus_seq`
--

CREATE TABLE `vtiger_ticketstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ticketstatus_seq`
--

INSERT INTO `vtiger_ticketstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_time_zone`
--

CREATE TABLE `vtiger_time_zone` (
  `time_zoneid` int(19) NOT NULL,
  `time_zone` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_time_zone`
--

INSERT INTO `vtiger_time_zone` (`time_zoneid`, `time_zone`, `sortorderid`, `presence`) VALUES
(1, 'Pacific/Midway', 1, 1),
(2, 'Pacific/Samoa', 0, 1),
(3, 'Pacific/Honolulu', 2, 1),
(4, 'America/Anchorage', 3, 1),
(5, 'America/Los_Angeles', 5, 1),
(6, 'America/Tijuana', 4, 1),
(7, 'America/Denver', 6, 1),
(8, 'America/Chihuahua', 8, 1),
(9, 'America/Mazatlan', 7, 1),
(10, 'America/Phoenix', 9, 1),
(11, 'America/Regina', 10, 1),
(12, 'America/Tegucigalpa', 14, 1),
(13, 'America/Chicago', 13, 1),
(14, 'America/Mexico_City', 12, 1),
(15, 'America/Monterrey', 11, 1),
(16, 'America/New_York', 18, 1),
(17, 'America/Bogota', 19, 1),
(18, 'America/Lima', 16, 1),
(19, 'America/Rio_Branco', 15, 1),
(20, 'America/Indiana/Indianapolis', 17, 1),
(21, 'America/Caracas', 20, 1),
(22, 'America/Halifax', 25, 1),
(23, 'America/Manaus', 22, 1),
(24, 'America/Santiago', 21, 1),
(25, 'America/La_Paz', 23, 1),
(26, 'America/Cuiaba', 24, 1),
(27, 'America/Asuncion', 26, 1),
(28, 'America/St_Johns', 27, 1),
(29, 'America/Argentina/Buenos_Aires', 30, 1),
(30, 'America/Sao_Paulo', 31, 1),
(31, 'America/Godthab', 29, 1),
(32, 'America/Montevideo', 28, 1),
(33, 'Atlantic/South_Georgia', 32, 1),
(34, 'Atlantic/Azores', 34, 1),
(35, 'Atlantic/Cape_Verde', 33, 1),
(36, 'Europe/London', 37, 1),
(37, 'UTC', 36, 1),
(38, 'Africa/Monrovia', 38, 1),
(39, 'Africa/Casablanca', 35, 1),
(40, 'Europe/Belgrade', 40, 1),
(41, 'Europe/Sarajevo', 42, 1),
(42, 'Europe/Brussels', 41, 1),
(43, 'Africa/Algiers', 43, 1),
(44, 'Europe/Amsterdam', 39, 1),
(45, 'Europe/Minsk', 52, 1),
(46, 'Africa/Cairo', 47, 1),
(47, 'Europe/Helsinki', 49, 1),
(48, 'Europe/Athens', 45, 1),
(49, 'Europe/Istanbul', 50, 1),
(50, 'Asia/Jerusalem', 51, 1),
(51, 'Asia/Amman', 44, 1),
(52, 'Asia/Beirut', 46, 1),
(53, 'Africa/Windhoek', 53, 1),
(54, 'Africa/Harare', 48, 1),
(55, 'Asia/Kuwait', 55, 1),
(56, 'Asia/Baghdad', 54, 1),
(57, 'Africa/Nairobi', 57, 1),
(58, 'Asia/Tehran', 58, 1),
(59, 'Asia/Tbilisi', 61, 1),
(60, 'Europe/Moscow', 56, 1),
(61, 'Asia/Muscat', 59, 1),
(62, 'Asia/Baku', 60, 1),
(63, 'Asia/Yerevan', 62, 1),
(64, 'Asia/Karachi', 63, 1),
(65, 'Asia/Tashkent', 64, 1),
(66, 'Asia/Kolkata', 65, 1),
(67, 'Asia/Colombo', 66, 1),
(68, 'Asia/Katmandu', 67, 1),
(69, 'Asia/Dhaka', 69, 1),
(70, 'Asia/Almaty', 68, 1),
(71, 'Asia/Yekaterinburg', 70, 1),
(72, 'Asia/Rangoon', 71, 1),
(73, 'Asia/Novosibirsk', 73, 1),
(74, 'Asia/Bangkok', 72, 1),
(75, 'Asia/Brunei', 74, 1),
(76, 'Asia/Krasnoyarsk', 75, 1),
(77, 'Asia/Ulaanbaatar', 79, 1),
(78, 'Asia/Kuala_Lumpur', 76, 1),
(79, 'Asia/Taipei', 78, 1),
(80, 'Australia/Perth', 77, 1),
(81, 'Asia/Irkutsk', 80, 1),
(82, 'Asia/Seoul', 81, 1),
(83, 'Asia/Tokyo', 82, 1),
(84, 'Australia/Darwin', 84, 1),
(85, 'Australia/Adelaide', 83, 1),
(86, 'Australia/Canberra', 86, 1),
(87, 'Australia/Brisbane', 85, 1),
(88, 'Australia/Hobart', 88, 1),
(89, 'Asia/Vladivostok', 89, 1),
(90, 'Pacific/Guam', 87, 1),
(91, 'Asia/Yakutsk', 90, 1),
(92, 'Pacific/Fiji', 93, 1),
(93, 'Asia/Kamchatka', 94, 1),
(94, 'Pacific/Auckland', 92, 1),
(95, 'Asia/Magadan', 95, 1),
(96, 'Pacific/Tongatapu', 96, 1),
(97, 'Etc/GMT-11', 91, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_time_zone_seq`
--

CREATE TABLE `vtiger_time_zone_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_time_zone_seq`
--

INSERT INTO `vtiger_time_zone_seq` (`id`) VALUES
(96);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_group_rel_sharing_per`
--

CREATE TABLE `vtiger_tmp_read_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_group_sharing_per`
--

CREATE TABLE `vtiger_tmp_read_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_user_rel_sharing_per`
--

CREATE TABLE `vtiger_tmp_read_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_user_sharing_per`
--

CREATE TABLE `vtiger_tmp_read_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_group_rel_sharing_per`
--

CREATE TABLE `vtiger_tmp_write_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_group_sharing_per`
--

CREATE TABLE `vtiger_tmp_write_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_user_rel_sharing_per`
--

CREATE TABLE `vtiger_tmp_write_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_user_sharing_per`
--

CREATE TABLE `vtiger_tmp_write_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracker`
--

CREATE TABLE `vtiger_tracker` (
  `id` int(11) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(25) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracking_unit`
--

CREATE TABLE `vtiger_tracking_unit` (
  `tracking_unitid` int(11) NOT NULL,
  `tracking_unit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_tracking_unit`
--

INSERT INTO `vtiger_tracking_unit` (`tracking_unitid`, `tracking_unit`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Hours', 1, 211, 2, NULL),
(3, 'Days', 1, 212, 3, NULL),
(4, 'Incidents', 1, 213, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracking_unit_seq`
--

CREATE TABLE `vtiger_tracking_unit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_tracking_unit_seq`
--

INSERT INTO `vtiger_tracking_unit_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_troubletickets`
--

CREATE TABLE `vtiger_troubletickets` (
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
  `solution` text DEFAULT NULL,
  `update_log` text DEFAULT NULL,
  `version_id` int(11) DEFAULT NULL,
  `hours` decimal(25,8) DEFAULT NULL,
  `days` decimal(25,8) DEFAULT NULL,
  `contact_id` int(19) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_usageunit`
--

CREATE TABLE `vtiger_usageunit` (
  `usageunitid` int(19) NOT NULL,
  `usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_usageunit`
--

INSERT INTO `vtiger_usageunit` (`usageunitid`, `usageunit`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(7, 'литр', 1, 200, 6, '#ffffff'),
(8, 'метр', 1, 201, 7, '#ffffff'),
(10, 'хайрцаг', 1, 203, 9, '#ffffff'),
(15, 'ширхэг', 1, 208, 14, '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_usageunit_seq`
--

CREATE TABLE `vtiger_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_usageunit_seq`
--

INSERT INTO `vtiger_usageunit_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user2mergefields`
--

CREATE TABLE `vtiger_user2mergefields` (
  `userid` int(11) DEFAULT NULL,
  `tabid` int(19) DEFAULT NULL,
  `fieldid` int(19) DEFAULT NULL,
  `visible` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user2role`
--

CREATE TABLE `vtiger_user2role` (
  `userid` int(11) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_user2role`
--

INSERT INTO `vtiger_user2role` (`userid`, `roleid`) VALUES
(1, 'H2');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users`
--

CREATE TABLE `vtiger_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `cal_color` varchar(25) DEFAULT '#E6FAD8',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `reports_to_id` varchar(36) DEFAULT NULL,
  `is_admin` varchar(3) DEFAULT '0',
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modified` datetime DEFAULT NULL,
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
  `signature` text DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(25) DEFAULT NULL,
  `address_postalcode` varchar(9) DEFAULT NULL,
  `user_preferences` text DEFAULT NULL,
  `tz` varchar(30) DEFAULT NULL,
  `holidays` varchar(60) DEFAULT NULL,
  `namedays` varchar(60) DEFAULT NULL,
  `workdays` varchar(30) DEFAULT NULL,
  `weekstart` int(11) DEFAULT NULL,
  `date_format` varchar(200) DEFAULT NULL,
  `hour_format` varchar(30) DEFAULT 'am/pm',
  `start_hour` varchar(30) DEFAULT '10:00',
  `end_hour` varchar(30) DEFAULT '23:00',
  `is_owner` varchar(100) DEFAULT '0',
  `activity_view` varchar(200) DEFAULT 'Today',
  `lead_view` varchar(200) DEFAULT 'Today',
  `imagename` varchar(250) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
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
  `userlabel` varchar(255) DEFAULT NULL,
  `defaultlandingpage` varchar(200) DEFAULT NULL,
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
  `hidecompletedevents` int(11) DEFAULT NULL,
  `defaultcalendarview` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_users`
--

INSERT INTO `vtiger_users` (`id`, `user_name`, `user_password`, `cal_color`, `first_name`, `last_name`, `reports_to_id`, `is_admin`, `currency_id`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `secondaryemail`, `status`, `signature`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `user_preferences`, `tz`, `holidays`, `namedays`, `workdays`, `weekstart`, `date_format`, `hour_format`, `start_hour`, `end_hour`, `is_owner`, `activity_view`, `lead_view`, `imagename`, `deleted`, `confirm_password`, `internal_mailer`, `reminder_interval`, `reminder_next_time`, `crypt_type`, `accesskey`, `theme`, `language`, `time_zone`, `currency_grouping_pattern`, `currency_decimal_separator`, `currency_grouping_separator`, `currency_symbol_placement`, `userlabel`, `defaultlandingpage`, `phone_crm_extension`, `no_of_currency_decimals`, `truncate_trailing_zeros`, `dayoftheweek`, `callduration`, `othereventduration`, `calendarsharedtype`, `default_record_view`, `leftpanelhide`, `rowheight`, `defaulteventstatus`, `defaultactivitytype`, `hidecompletedevents`, `defaultcalendarview`) VALUES
(1, 'admin', '$2y$10$j5YU10SHBk5XTgCr3.Lsqu2UDKxCzlWtbkLfx90NCVqe38O40jkiy', '#E6FAD8', 'Sugar', 'SSMotors', '', 'on', 1, '', '2023-11-21 10:50:25', NULL, NULL, '', '', '', '', '', '', '', 'info@alchemist.mn', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', '12', '00:00', '23:00', '1', 'This Week', 'Today', '', 0, '$2y$10$RNzuLL7lutzuv55wpcW3z.GzM/kebUwlqKqtMtxpukpLMjLbiuxpu', '1', '1 Minute', NULL, 'PHASH', 'stQbpEy5QOeO3oON', 'alphagrey', 'en_us', 'Asia/Ulaanbaatar', '123,456,789', '.', ',', '1.0$', 'Sugar SSMotors', 'Products', '', '0', '1', 'Sunday', '5', '5', 'public', 'Summary', '0', '', 'Planned', 'Call', 0, 'MyCalendar');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users2group`
--

CREATE TABLE `vtiger_users2group` (
  `groupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_users2group`
--

INSERT INTO `vtiger_users2group` (`groupid`, `userid`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users_last_import`
--

CREATE TABLE `vtiger_users_last_import` (
  `id` int(36) NOT NULL,
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users_seq`
--

CREATE TABLE `vtiger_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_users_seq`
--

INSERT INTO `vtiger_users_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user_module_preferences`
--

CREATE TABLE `vtiger_user_module_preferences` (
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `default_cvid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_user_module_preferences`
--

INSERT INTO `vtiger_user_module_preferences` (`userid`, `tabid`, `default_cvid`) VALUES
(1, 14, 50);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendor`
--

CREATE TABLE `vtiger_vendor` (
  `vendorid` int(19) NOT NULL DEFAULT 0,
  `vendor_no` varchar(100) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `street` text DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `postalcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendorcf`
--

CREATE TABLE `vtiger_vendorcf` (
  `vendorid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendorcontactrel`
--

CREATE TABLE `vtiger_vendorcontactrel` (
  `vendorid` int(19) NOT NULL DEFAULT 0,
  `contactid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_version`
--

CREATE TABLE `vtiger_version` (
  `id` int(11) NOT NULL,
  `old_version` varchar(30) DEFAULT NULL,
  `current_version` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_version`
--

INSERT INTO `vtiger_version` (`id`, `old_version`, `current_version`) VALUES
(1, '8.0.0', '8.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_version_seq`
--

CREATE TABLE `vtiger_version_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_version_seq`
--

INSERT INTO `vtiger_version_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_visibility`
--

CREATE TABLE `vtiger_visibility` (
  `visibilityid` int(19) NOT NULL,
  `visibility` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_visibility`
--

INSERT INTO `vtiger_visibility` (`visibilityid`, `visibility`, `sortorderid`, `presence`, `color`) VALUES
(1, 'Private', 0, 1, NULL),
(2, 'Public', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_visibility_seq`
--

CREATE TABLE `vtiger_visibility_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_visibility_seq`
--

INSERT INTO `vtiger_visibility_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_webforms`
--

CREATE TABLE `vtiger_webforms` (
  `id` int(19) NOT NULL,
  `name` varchar(100) NOT NULL,
  `publicid` varchar(100) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT 1,
  `targetmodule` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `ownerid` int(19) NOT NULL,
  `returnurl` varchar(250) DEFAULT NULL,
  `captcha` int(1) NOT NULL DEFAULT 0,
  `roundrobin` int(1) NOT NULL DEFAULT 0,
  `roundrobin_userid` varchar(256) DEFAULT NULL,
  `roundrobin_logic` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_webforms_field`
--

CREATE TABLE `vtiger_webforms_field` (
  `id` int(19) NOT NULL,
  `webformid` int(19) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `neutralizedfield` varchar(50) NOT NULL,
  `defaultvalue` text DEFAULT NULL,
  `required` int(10) NOT NULL DEFAULT 0,
  `sequence` int(10) DEFAULT NULL,
  `hidden` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_webform_file_fields`
--

CREATE TABLE `vtiger_webform_file_fields` (
  `id` int(19) NOT NULL,
  `webformid` int(19) NOT NULL,
  `fieldname` varchar(100) NOT NULL,
  `fieldlabel` varchar(100) NOT NULL,
  `required` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wordtemplates`
--

CREATE TABLE `vtiger_wordtemplates` (
  `templateid` int(19) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `module` varchar(30) NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `parent_type` varchar(50) NOT NULL,
  `data` longblob NOT NULL,
  `description` text DEFAULT NULL,
  `filesize` varchar(50) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp`
--

CREATE TABLE `vtiger_wsapp` (
  `appid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `appkey` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_wsapp`
--

INSERT INTO `vtiger_wsapp` (`appid`, `name`, `appkey`, `type`) VALUES
(1, 'vtigerCRM', '655717d845f16', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_handlerdetails`
--

CREATE TABLE `vtiger_wsapp_handlerdetails` (
  `type` varchar(200) NOT NULL,
  `handlerclass` varchar(100) DEFAULT NULL,
  `handlerpath` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_wsapp_handlerdetails`
--

INSERT INTO `vtiger_wsapp_handlerdetails` (`type`, `handlerclass`, `handlerpath`) VALUES
('Outlook', 'OutlookHandler', 'modules/WSAPP/Handlers/OutlookHandler.php'),
('vtigerCRM', 'vtigerCRMHandler', 'modules/WSAPP/Handlers/vtigerCRMHandler.php'),
('vtigerSyncLib', 'WSAPP_VtigerSyncEventHandler', 'modules/WSAPP/synclib/handlers/VtigerSyncEventHandler.php'),
('Google_vtigerHandler', 'Google_Vtiger_Handler', 'modules/Google/handlers/Vtiger.php'),
('Google_vtigerSyncHandler', 'Google_VtigerSync_Handler', 'modules/Google/handlers/VtigerSync.php');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_logs_basic`
--

CREATE TABLE `vtiger_wsapp_logs_basic` (
  `id` int(25) NOT NULL,
  `extensiontabid` int(19) DEFAULT NULL,
  `module` varchar(50) NOT NULL,
  `sync_datetime` datetime NOT NULL,
  `app_create_count` int(11) DEFAULT NULL,
  `app_update_count` int(11) DEFAULT NULL,
  `app_delete_count` int(11) DEFAULT NULL,
  `app_skip_count` int(11) DEFAULT NULL,
  `vt_create_count` int(11) DEFAULT NULL,
  `vt_update_count` int(11) DEFAULT NULL,
  `vt_delete_count` int(11) DEFAULT NULL,
  `vt_skip_count` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_logs_details`
--

CREATE TABLE `vtiger_wsapp_logs_details` (
  `id` int(25) NOT NULL,
  `app_create_ids` mediumtext DEFAULT NULL,
  `app_update_ids` mediumtext DEFAULT NULL,
  `app_delete_ids` mediumtext DEFAULT NULL,
  `app_skip_info` mediumtext DEFAULT NULL,
  `vt_create_ids` mediumtext DEFAULT NULL,
  `vt_update_ids` mediumtext DEFAULT NULL,
  `vt_delete_ids` mediumtext DEFAULT NULL,
  `vt_skip_info` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_queuerecords`
--

CREATE TABLE `vtiger_wsapp_queuerecords` (
  `syncserverid` int(19) DEFAULT NULL,
  `details` varchar(300) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `appid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_recordmapping`
--

CREATE TABLE `vtiger_wsapp_recordmapping` (
  `id` int(19) NOT NULL,
  `serverid` varchar(10) DEFAULT NULL,
  `clientid` varchar(255) DEFAULT NULL,
  `clientmodifiedtime` datetime DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `servermodifiedtime` datetime DEFAULT NULL,
  `serverappid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_sync_state`
--

CREATE TABLE `vtiger_wsapp_sync_state` (
  `id` int(19) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `stateencodedvalues` varchar(300) NOT NULL,
  `userid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity`
--

CREATE TABLE `vtiger_ws_entity` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_class` varchar(64) NOT NULL,
  `ismodule` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(14, 'Products', 'include/Webservices/VtigerProductOperation.php', 'VtigerProductOperation', 1),
(15, 'Documents', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(16, 'Emails', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(17, 'HelpDesk', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(18, 'Events', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(19, 'Users', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(20, 'Groups', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(21, 'Currency', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(22, 'DocumentFolders', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(23, 'CompanyDetails', 'include/Webservices/VtigerCompanyDetails.php', 'VtigerCompanyDetails', 0),
(24, 'PBXManager', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(25, 'ServiceContracts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(26, 'Services', 'include/Webservices/VtigerProductOperation.php', 'VtigerProductOperation', 1),
(27, 'Assets', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(28, 'ModComments', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(29, 'ProjectMilestone', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(30, 'ProjectTask', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(31, 'Project', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(32, 'SMSNotifier', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(33, 'LineItem', 'include/Webservices/LineItem/VtigerLineItemOperation.php', 'VtigerLineItemOperation', 0),
(34, 'Tax', 'include/Webservices/LineItem/VtigerTaxOperation.php', 'VtigerTaxOperation', 0),
(35, 'ProductTaxes', 'include/Webservices/LineItem/VtigerProductTaxesOperation.php', 'VtigerProductTaxesOperation', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_fieldtype`
--

CREATE TABLE `vtiger_ws_entity_fieldtype` (
  `fieldtypeid` int(19) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `fieldtype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_ws_entity_fieldtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype_seq`
--

INSERT INTO `vtiger_ws_entity_fieldtype_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_name`
--

CREATE TABLE `vtiger_ws_entity_name` (
  `entity_id` int(11) NOT NULL,
  `name_fields` varchar(50) NOT NULL,
  `index_field` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_ws_entity_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_ws_entity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ws_entity_seq`
--

INSERT INTO `vtiger_ws_entity_seq` (`id`) VALUES
(35);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_tables`
--

CREATE TABLE `vtiger_ws_entity_tables` (
  `webservice_entity_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `vtiger_ws_fieldinfo` (
  `id` varchar(64) NOT NULL,
  `property_name` varchar(32) DEFAULT NULL,
  `property_value` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ws_fieldinfo`
--

INSERT INTO `vtiger_ws_fieldinfo` (`id`, `property_name`, `property_value`) VALUES
('vtiger_organizationdetails.organization_id', 'upload.path', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_fieldtype`
--

CREATE TABLE `vtiger_ws_fieldtype` (
  `fieldtypeid` int(19) NOT NULL,
  `uitype` varchar(30) NOT NULL,
  `fieldtype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(39, '10', 'reference'),
(40, '98', 'reference'),
(41, '69', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation`
--

CREATE TABLE `vtiger_ws_operation` (
  `operationid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_method` varchar(64) NOT NULL,
  `type` varchar(8) NOT NULL,
  `prelogin` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(33, 'retrieve_inventory', 'include/Webservices/LineItem/RetrieveInventory.php', 'vtws_retrieve_inventory', 'GET', 0),
(34, 'relatedtypes', 'include/Webservices/RelatedTypes.php', 'vtws_relatedtypes', 'GET', 0),
(35, 'retrieve_related', 'include/Webservices/RetrieveRelated.php', 'vtws_retrieve_related', 'GET', 0),
(36, 'query_related', 'include/Webservices/QueryRelated.php', 'vtws_query_related', 'GET', 0),
(37, 'add_related', 'include/Webservices/AddRelated.php', 'vtws_add_related', 'POST', 0),
(38, 'files_retrieve', 'include/Webservices/FileRetrieve.php', 'vtws_file_retrieve', 'GET', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation_parameters`
--

CREATE TABLE `vtiger_ws_operation_parameters` (
  `operationid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(13, 'element', 'encoded', 1),
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
(33, 'id', 'String', 1),
(34, 'elementType', 'string', 1),
(35, 'id', 'string', 1),
(35, 'relatedLabel', 'string', 3),
(35, 'relatedType', 'string', 2),
(36, 'id', 'string', 2),
(36, 'query', 'string', 1),
(36, 'relatedLabel', 'string', 3),
(37, 'relatedRecordId', 'string', 2),
(37, 'relationIdLabel', 'string', 3),
(37, 'sourceRecordId', 'string', 1),
(38, 'id', 'string', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation_seq`
--

CREATE TABLE `vtiger_ws_operation_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vtiger_ws_operation_seq`
--

INSERT INTO `vtiger_ws_operation_seq` (`id`) VALUES
(38);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_referencetype`
--

CREATE TABLE `vtiger_ws_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(34, 'Invoice'),
(34, 'Leads'),
(34, 'Potentials'),
(34, 'PurchaseOrder'),
(34, 'Quotes'),
(34, 'SalesOrder'),
(35, 'Users'),
(36, 'Accounts'),
(36, 'Contacts'),
(37, 'Currency'),
(38, 'DocumentFolders');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_userauthtoken`
--

CREATE TABLE `vtiger_ws_userauthtoken` (
  `userid` int(19) NOT NULL,
  `token` varchar(36) NOT NULL,
  `expiretime` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `com_vtiger_workflows`
--
ALTER TABLE `com_vtiger_workflows`
  ADD PRIMARY KEY (`workflow_id`),
  ADD UNIQUE KEY `com_vtiger_workflows_idx` (`workflow_id`);

--
-- Indexes for table `com_vtiger_workflowtasks`
--
ALTER TABLE `com_vtiger_workflowtasks`
  ADD PRIMARY KEY (`task_id`),
  ADD UNIQUE KEY `com_vtiger_workflowtasks_idx` (`task_id`);

--
-- Indexes for table `com_vtiger_workflowtasks_entitymethod`
--
ALTER TABLE `com_vtiger_workflowtasks_entitymethod`
  ADD PRIMARY KEY (`workflowtasks_entitymethod_id`),
  ADD UNIQUE KEY `com_vtiger_workflowtasks_entitymethod_idx` (`workflowtasks_entitymethod_id`);

--
-- Indexes for table `com_vtiger_workflowtemplates`
--
ALTER TABLE `com_vtiger_workflowtemplates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `com_vtiger_workflow_activatedonce`
--
ALTER TABLE `com_vtiger_workflow_activatedonce`
  ADD PRIMARY KEY (`workflow_id`,`entity_id`);

--
-- Indexes for table `vtiger_account`
--
ALTER TABLE `vtiger_account`
  ADD PRIMARY KEY (`accountid`),
  ADD KEY `account_account_type_idx` (`account_type`),
  ADD KEY `email_idx` (`email1`,`email2`);

--
-- Indexes for table `vtiger_accountbillads`
--
ALTER TABLE `vtiger_accountbillads`
  ADD PRIMARY KEY (`accountaddressid`);

--
-- Indexes for table `vtiger_accountrating`
--
ALTER TABLE `vtiger_accountrating`
  ADD PRIMARY KEY (`accountratingid`),
  ADD UNIQUE KEY `accountrating_rating_idx` (`rating`);

--
-- Indexes for table `vtiger_accountscf`
--
ALTER TABLE `vtiger_accountscf`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `vtiger_accountshipads`
--
ALTER TABLE `vtiger_accountshipads`
  ADD PRIMARY KEY (`accountaddressid`);

--
-- Indexes for table `vtiger_accounttype`
--
ALTER TABLE `vtiger_accounttype`
  ADD PRIMARY KEY (`accounttypeid`),
  ADD UNIQUE KEY `accounttype_accounttype_idx` (`accounttype`);

--
-- Indexes for table `vtiger_actionmapping`
--
ALTER TABLE `vtiger_actionmapping`
  ADD PRIMARY KEY (`actionid`,`actionname`);

--
-- Indexes for table `vtiger_activity`
--
ALTER TABLE `vtiger_activity`
  ADD PRIMARY KEY (`activityid`),
  ADD KEY `activity_activityid_subject_idx` (`activityid`,`subject`),
  ADD KEY `activity_activitytype_date_start_idx` (`activitytype`,`date_start`),
  ADD KEY `activity_date_start_due_date_idx` (`date_start`,`due_date`),
  ADD KEY `activity_date_start_time_start_idx` (`date_start`,`time_start`),
  ADD KEY `activity_eventstatus_idx` (`eventstatus`),
  ADD KEY `activity_status_idx` (`status`);

--
-- Indexes for table `vtiger_activitycf`
--
ALTER TABLE `vtiger_activitycf`
  ADD PRIMARY KEY (`activityid`);

--
-- Indexes for table `vtiger_activityproductrel`
--
ALTER TABLE `vtiger_activityproductrel`
  ADD PRIMARY KEY (`activityid`,`productid`),
  ADD KEY `activityproductrel_activityid_idx` (`activityid`),
  ADD KEY `activityproductrel_productid_idx` (`productid`);

--
-- Indexes for table `vtiger_activitytype`
--
ALTER TABLE `vtiger_activitytype`
  ADD PRIMARY KEY (`activitytypeid`),
  ADD UNIQUE KEY `activitytype_activitytype_idx` (`activitytype`);

--
-- Indexes for table `vtiger_activity_reminder`
--
ALTER TABLE `vtiger_activity_reminder`
  ADD PRIMARY KEY (`activity_id`,`recurringid`);

--
-- Indexes for table `vtiger_activity_reminder_popup`
--
ALTER TABLE `vtiger_activity_reminder_popup`
  ADD PRIMARY KEY (`reminderid`);

--
-- Indexes for table `vtiger_activity_view`
--
ALTER TABLE `vtiger_activity_view`
  ADD PRIMARY KEY (`activity_viewid`);

--
-- Indexes for table `vtiger_announcement`
--
ALTER TABLE `vtiger_announcement`
  ADD PRIMARY KEY (`creatorid`),
  ADD KEY `announcement_creatorid_idx` (`creatorid`);

--
-- Indexes for table `vtiger_app2tab`
--
ALTER TABLE `vtiger_app2tab`
  ADD KEY `vtiger_app2tab_fk_tab` (`tabid`);

--
-- Indexes for table `vtiger_assets`
--
ALTER TABLE `vtiger_assets`
  ADD PRIMARY KEY (`assetsid`);

--
-- Indexes for table `vtiger_assetscf`
--
ALTER TABLE `vtiger_assetscf`
  ADD PRIMARY KEY (`assetsid`);

--
-- Indexes for table `vtiger_assetstatus`
--
ALTER TABLE `vtiger_assetstatus`
  ADD PRIMARY KEY (`assetstatusid`);

--
-- Indexes for table `vtiger_asteriskincomingevents`
--
ALTER TABLE `vtiger_asteriskincomingevents`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vtiger_attachments`
--
ALTER TABLE `vtiger_attachments`
  ADD PRIMARY KEY (`attachmentsid`),
  ADD KEY `attachments_attachmentsid_idx` (`attachmentsid`);

--
-- Indexes for table `vtiger_attachmentsfolder`
--
ALTER TABLE `vtiger_attachmentsfolder`
  ADD PRIMARY KEY (`folderid`);

--
-- Indexes for table `vtiger_audit_trial`
--
ALTER TABLE `vtiger_audit_trial`
  ADD PRIMARY KEY (`auditid`);

--
-- Indexes for table `vtiger_blocks`
--
ALTER TABLE `vtiger_blocks`
  ADD PRIMARY KEY (`blockid`),
  ADD KEY `block_tabid_idx` (`tabid`);

--
-- Indexes for table `vtiger_calendarsharedtype`
--
ALTER TABLE `vtiger_calendarsharedtype`
  ADD PRIMARY KEY (`calendarsharedtypeid`);

--
-- Indexes for table `vtiger_calendar_default_activitytypes`
--
ALTER TABLE `vtiger_calendar_default_activitytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_calendar_user_activitytypes`
--
ALTER TABLE `vtiger_calendar_user_activitytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_callduration`
--
ALTER TABLE `vtiger_callduration`
  ADD PRIMARY KEY (`calldurationid`);

--
-- Indexes for table `vtiger_campaign`
--
ALTER TABLE `vtiger_campaign`
  ADD PRIMARY KEY (`campaignid`),
  ADD KEY `campaign_campaignstatus_idx` (`campaignstatus`),
  ADD KEY `campaign_campaignname_idx` (`campaignname`),
  ADD KEY `campaign_campaignid_idx` (`campaignid`);

--
-- Indexes for table `vtiger_campaigncontrel`
--
ALTER TABLE `vtiger_campaigncontrel`
  ADD PRIMARY KEY (`campaignid`,`contactid`,`campaignrelstatusid`),
  ADD KEY `campaigncontrel_contractid_idx` (`contactid`);

--
-- Indexes for table `vtiger_campaignleadrel`
--
ALTER TABLE `vtiger_campaignleadrel`
  ADD PRIMARY KEY (`campaignid`,`leadid`,`campaignrelstatusid`),
  ADD KEY `campaignleadrel_leadid_campaignid_idx` (`leadid`,`campaignid`);

--
-- Indexes for table `vtiger_campaignscf`
--
ALTER TABLE `vtiger_campaignscf`
  ADD PRIMARY KEY (`campaignid`);

--
-- Indexes for table `vtiger_campaignstatus`
--
ALTER TABLE `vtiger_campaignstatus`
  ADD PRIMARY KEY (`campaignstatusid`),
  ADD KEY `campaignstatus_campaignstatus_idx` (`campaignstatus`);

--
-- Indexes for table `vtiger_campaigntype`
--
ALTER TABLE `vtiger_campaigntype`
  ADD PRIMARY KEY (`campaigntypeid`),
  ADD UNIQUE KEY `campaigntype_campaigntype_idx` (`campaigntype`);

--
-- Indexes for table `vtiger_carrier`
--
ALTER TABLE `vtiger_carrier`
  ADD PRIMARY KEY (`carrierid`),
  ADD UNIQUE KEY `carrier_carrier_idx` (`carrier`);

--
-- Indexes for table `vtiger_cntactivityrel`
--
ALTER TABLE `vtiger_cntactivityrel`
  ADD PRIMARY KEY (`contactid`,`activityid`),
  ADD KEY `cntactivityrel_contactid_idx` (`contactid`),
  ADD KEY `cntactivityrel_activityid_idx` (`activityid`);

--
-- Indexes for table `vtiger_contactaddress`
--
ALTER TABLE `vtiger_contactaddress`
  ADD PRIMARY KEY (`contactaddressid`);

--
-- Indexes for table `vtiger_contactdetails`
--
ALTER TABLE `vtiger_contactdetails`
  ADD PRIMARY KEY (`contactid`),
  ADD KEY `contactdetails_accountid_idx` (`accountid`),
  ADD KEY `email_idx` (`email`);

--
-- Indexes for table `vtiger_contactscf`
--
ALTER TABLE `vtiger_contactscf`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `vtiger_contactsubdetails`
--
ALTER TABLE `vtiger_contactsubdetails`
  ADD PRIMARY KEY (`contactsubscriptionid`);

--
-- Indexes for table `vtiger_contpotentialrel`
--
ALTER TABLE `vtiger_contpotentialrel`
  ADD PRIMARY KEY (`contactid`,`potentialid`),
  ADD KEY `contpotentialrel_potentialid_idx` (`potentialid`),
  ADD KEY `contpotentialrel_contactid_idx` (`contactid`);

--
-- Indexes for table `vtiger_contract_priority`
--
ALTER TABLE `vtiger_contract_priority`
  ADD PRIMARY KEY (`contract_priorityid`);

--
-- Indexes for table `vtiger_contract_status`
--
ALTER TABLE `vtiger_contract_status`
  ADD PRIMARY KEY (`contract_statusid`);

--
-- Indexes for table `vtiger_contract_type`
--
ALTER TABLE `vtiger_contract_type`
  ADD PRIMARY KEY (`contract_typeid`);

--
-- Indexes for table `vtiger_convertleadmapping`
--
ALTER TABLE `vtiger_convertleadmapping`
  ADD PRIMARY KEY (`cfmid`);

--
-- Indexes for table `vtiger_convertpotentialmapping`
--
ALTER TABLE `vtiger_convertpotentialmapping`
  ADD PRIMARY KEY (`cfmid`);

--
-- Indexes for table `vtiger_crmentity`
--
ALTER TABLE `vtiger_crmentity`
  ADD PRIMARY KEY (`crmid`),
  ADD KEY `crmentity_smcreatorid_idx` (`smcreatorid`),
  ADD KEY `crmentity_modifiedby_idx` (`modifiedby`),
  ADD KEY `crmentity_deleted_idx` (`deleted`),
  ADD KEY `crm_ownerid_del_setype_idx` (`smownerid`,`deleted`,`setype`),
  ADD KEY `vtiger_crmentity_labelidx` (`label`);

--
-- Indexes for table `vtiger_crmentityrel`
--
ALTER TABLE `vtiger_crmentityrel`
  ADD KEY `crmid_idx` (`crmid`),
  ADD KEY `relcrmid_idx` (`relcrmid`);

--
-- Indexes for table `vtiger_crmentity_user_field`
--
ALTER TABLE `vtiger_crmentity_user_field`
  ADD KEY `record_user_idx` (`recordid`,`userid`);

--
-- Indexes for table `vtiger_cron_task`
--
ALTER TABLE `vtiger_cron_task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `handler_file` (`handler_file`);

--
-- Indexes for table `vtiger_currencies`
--
ALTER TABLE `vtiger_currencies`
  ADD PRIMARY KEY (`currencyid`);

--
-- Indexes for table `vtiger_currency`
--
ALTER TABLE `vtiger_currency`
  ADD PRIMARY KEY (`currencyid`),
  ADD UNIQUE KEY `currency_currency_idx` (`currency`);

--
-- Indexes for table `vtiger_currency_decimal_separator`
--
ALTER TABLE `vtiger_currency_decimal_separator`
  ADD PRIMARY KEY (`currency_decimal_separatorid`);

--
-- Indexes for table `vtiger_currency_grouping_pattern`
--
ALTER TABLE `vtiger_currency_grouping_pattern`
  ADD PRIMARY KEY (`currency_grouping_patternid`);

--
-- Indexes for table `vtiger_currency_grouping_separator`
--
ALTER TABLE `vtiger_currency_grouping_separator`
  ADD PRIMARY KEY (`currency_grouping_separatorid`);

--
-- Indexes for table `vtiger_currency_info`
--
ALTER TABLE `vtiger_currency_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_currency_symbol_placement`
--
ALTER TABLE `vtiger_currency_symbol_placement`
  ADD PRIMARY KEY (`currency_symbol_placementid`);

--
-- Indexes for table `vtiger_customaction`
--
ALTER TABLE `vtiger_customaction`
  ADD KEY `customaction_cvid_idx` (`cvid`);

--
-- Indexes for table `vtiger_customerdetails`
--
ALTER TABLE `vtiger_customerdetails`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `vtiger_customerportal_fields`
--
ALTER TABLE `vtiger_customerportal_fields`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_customerportal_prefs`
--
ALTER TABLE `vtiger_customerportal_prefs`
  ADD PRIMARY KEY (`tabid`,`prefkey`);

--
-- Indexes for table `vtiger_customerportal_relatedmoduleinfo`
--
ALTER TABLE `vtiger_customerportal_relatedmoduleinfo`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_customerportal_tabs`
--
ALTER TABLE `vtiger_customerportal_tabs`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_customview`
--
ALTER TABLE `vtiger_customview`
  ADD PRIMARY KEY (`cvid`),
  ADD KEY `customview_entitytype_idx` (`entitytype`);

--
-- Indexes for table `vtiger_cv2group`
--
ALTER TABLE `vtiger_cv2group`
  ADD KEY `vtiger_cv2group_ibfk_1` (`cvid`),
  ADD KEY `vtiger_groups_ibfk_1` (`groupid`);

--
-- Indexes for table `vtiger_cv2role`
--
ALTER TABLE `vtiger_cv2role`
  ADD KEY `vtiger_cv2role_ibfk_1` (`cvid`),
  ADD KEY `vtiger_role_ibfk_1` (`roleid`);

--
-- Indexes for table `vtiger_cv2rs`
--
ALTER TABLE `vtiger_cv2rs`
  ADD KEY `vtiger_cv2role_ibfk_1` (`cvid`),
  ADD KEY `vtiger_rolesd_ibfk_1` (`rsid`);

--
-- Indexes for table `vtiger_cv2users`
--
ALTER TABLE `vtiger_cv2users`
  ADD KEY `vtiger_cv2users_ibfk_1` (`cvid`),
  ADD KEY `vtiger_users_ibfk_1` (`userid`);

--
-- Indexes for table `vtiger_cvadvfilter`
--
ALTER TABLE `vtiger_cvadvfilter`
  ADD PRIMARY KEY (`cvid`,`columnindex`),
  ADD KEY `cvadvfilter_cvid_idx` (`cvid`);

--
-- Indexes for table `vtiger_cvadvfilter_grouping`
--
ALTER TABLE `vtiger_cvadvfilter_grouping`
  ADD PRIMARY KEY (`groupid`,`cvid`);

--
-- Indexes for table `vtiger_cvcolumnlist`
--
ALTER TABLE `vtiger_cvcolumnlist`
  ADD PRIMARY KEY (`cvid`,`columnindex`),
  ADD KEY `cvcolumnlist_columnindex_idx` (`columnindex`),
  ADD KEY `cvcolumnlist_cvid_idx` (`cvid`);

--
-- Indexes for table `vtiger_cvstdfilter`
--
ALTER TABLE `vtiger_cvstdfilter`
  ADD KEY `cvstdfilter_cvid_idx` (`cvid`);

--
-- Indexes for table `vtiger_dashboard_tabs`
--
ALTER TABLE `vtiger_dashboard_tabs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tabname` (`tabname`,`userid`),
  ADD KEY `vtiger_dashboard_tabs_ibfk_1` (`userid`);

--
-- Indexes for table `vtiger_datashare_grp2grp`
--
ALTER TABLE `vtiger_datashare_grp2grp`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_grp2grp_share_groupid_idx` (`share_groupid`),
  ADD KEY `datashare_grp2grp_to_groupid_idx` (`to_groupid`);

--
-- Indexes for table `vtiger_datashare_grp2role`
--
ALTER TABLE `vtiger_datashare_grp2role`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `idx_datashare_grp2role_share_groupid` (`share_groupid`),
  ADD KEY `idx_datashare_grp2role_to_roleid` (`to_roleid`);

--
-- Indexes for table `vtiger_datashare_grp2rs`
--
ALTER TABLE `vtiger_datashare_grp2rs`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_grp2rs_share_groupid_idx` (`share_groupid`),
  ADD KEY `datashare_grp2rs_to_roleandsubid_idx` (`to_roleandsubid`);

--
-- Indexes for table `vtiger_datashare_module_rel`
--
ALTER TABLE `vtiger_datashare_module_rel`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `idx_datashare_module_rel_tabid` (`tabid`);

--
-- Indexes for table `vtiger_datashare_relatedmodules`
--
ALTER TABLE `vtiger_datashare_relatedmodules`
  ADD PRIMARY KEY (`datashare_relatedmodule_id`),
  ADD KEY `datashare_relatedmodules_tabid_idx` (`tabid`),
  ADD KEY `datashare_relatedmodules_relatedto_tabid_idx` (`relatedto_tabid`);

--
-- Indexes for table `vtiger_datashare_relatedmodule_permission`
--
ALTER TABLE `vtiger_datashare_relatedmodule_permission`
  ADD PRIMARY KEY (`shareid`,`datashare_relatedmodule_id`),
  ADD KEY `datashare_relatedmodule_permission_shareid_permissions_idx` (`shareid`,`permission`);

--
-- Indexes for table `vtiger_datashare_role2group`
--
ALTER TABLE `vtiger_datashare_role2group`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `idx_datashare_role2group_share_roleid` (`share_roleid`),
  ADD KEY `idx_datashare_role2group_to_groupid` (`to_groupid`);

--
-- Indexes for table `vtiger_datashare_role2role`
--
ALTER TABLE `vtiger_datashare_role2role`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_role2role_share_roleid_idx` (`share_roleid`),
  ADD KEY `datashare_role2role_to_roleid_idx` (`to_roleid`);

--
-- Indexes for table `vtiger_datashare_role2rs`
--
ALTER TABLE `vtiger_datashare_role2rs`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_role2s_share_roleid_idx` (`share_roleid`),
  ADD KEY `datashare_role2s_to_roleandsubid_idx` (`to_roleandsubid`);

--
-- Indexes for table `vtiger_datashare_rs2grp`
--
ALTER TABLE `vtiger_datashare_rs2grp`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_rs2grp_share_roleandsubid_idx` (`share_roleandsubid`),
  ADD KEY `datashare_rs2grp_to_groupid_idx` (`to_groupid`);

--
-- Indexes for table `vtiger_datashare_rs2role`
--
ALTER TABLE `vtiger_datashare_rs2role`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_rs2role_share_roleandsubid_idx` (`share_roleandsubid`),
  ADD KEY `datashare_rs2role_to_roleid_idx` (`to_roleid`);

--
-- Indexes for table `vtiger_datashare_rs2rs`
--
ALTER TABLE `vtiger_datashare_rs2rs`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_rs2rs_share_roleandsubid_idx` (`share_roleandsubid`),
  ADD KEY `idx_datashare_rs2rs_to_roleandsubid_idx` (`to_roleandsubid`);

--
-- Indexes for table `vtiger_date_format`
--
ALTER TABLE `vtiger_date_format`
  ADD PRIMARY KEY (`date_formatid`);

--
-- Indexes for table `vtiger_dayoftheweek`
--
ALTER TABLE `vtiger_dayoftheweek`
  ADD PRIMARY KEY (`dayoftheweekid`);

--
-- Indexes for table `vtiger_defaultactivitytype`
--
ALTER TABLE `vtiger_defaultactivitytype`
  ADD PRIMARY KEY (`defaultactivitytypeid`);

--
-- Indexes for table `vtiger_defaultcalendarview`
--
ALTER TABLE `vtiger_defaultcalendarview`
  ADD PRIMARY KEY (`defaultcalendarviewid`);

--
-- Indexes for table `vtiger_defaultcv`
--
ALTER TABLE `vtiger_defaultcv`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_defaulteventstatus`
--
ALTER TABLE `vtiger_defaulteventstatus`
  ADD PRIMARY KEY (`defaulteventstatusid`);

--
-- Indexes for table `vtiger_defaultlandingpage`
--
ALTER TABLE `vtiger_defaultlandingpage`
  ADD PRIMARY KEY (`defaultlandingpageid`);

--
-- Indexes for table `vtiger_default_record_view`
--
ALTER TABLE `vtiger_default_record_view`
  ADD PRIMARY KEY (`default_record_viewid`);

--
-- Indexes for table `vtiger_def_org_field`
--
ALTER TABLE `vtiger_def_org_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `def_org_field_tabid_fieldid_idx` (`tabid`,`fieldid`),
  ADD KEY `def_org_field_tabid_idx` (`tabid`),
  ADD KEY `def_org_field_visible_fieldid_idx` (`visible`,`fieldid`);

--
-- Indexes for table `vtiger_def_org_share`
--
ALTER TABLE `vtiger_def_org_share`
  ADD PRIMARY KEY (`ruleid`),
  ADD KEY `fk_1_vtiger_def_org_share` (`permission`);

--
-- Indexes for table `vtiger_durationhrs`
--
ALTER TABLE `vtiger_durationhrs`
  ADD PRIMARY KEY (`hrsid`);

--
-- Indexes for table `vtiger_durationmins`
--
ALTER TABLE `vtiger_durationmins`
  ADD PRIMARY KEY (`minsid`);

--
-- Indexes for table `vtiger_duration_minutes`
--
ALTER TABLE `vtiger_duration_minutes`
  ADD PRIMARY KEY (`minutesid`);

--
-- Indexes for table `vtiger_emaildetails`
--
ALTER TABLE `vtiger_emaildetails`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `vtiger_emailslookup`
--
ALTER TABLE `vtiger_emailslookup`
  ADD UNIQUE KEY `emailslookup_crmid_setype_fieldname_uk` (`crmid`,`setype`,`fieldid`),
  ADD KEY `emailslookup_fieldid_setype_idx` (`fieldid`,`setype`);

--
-- Indexes for table `vtiger_emails_recipientprefs`
--
ALTER TABLE `vtiger_emails_recipientprefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_emailtemplates`
--
ALTER TABLE `vtiger_emailtemplates`
  ADD PRIMARY KEY (`templateid`),
  ADD KEY `emailtemplates_foldernamd_templatename_subject_idx` (`foldername`,`templatename`,`subject`);

--
-- Indexes for table `vtiger_email_track`
--
ALTER TABLE `vtiger_email_track`
  ADD UNIQUE KEY `link_tabidtype_idx` (`crmid`,`mailid`);

--
-- Indexes for table `vtiger_entityname`
--
ALTER TABLE `vtiger_entityname`
  ADD PRIMARY KEY (`tabid`),
  ADD KEY `entityname_tabid_idx` (`tabid`);

--
-- Indexes for table `vtiger_eventhandlers`
--
ALTER TABLE `vtiger_eventhandlers`
  ADD PRIMARY KEY (`eventhandler_id`,`event_name`,`handler_class`),
  ADD UNIQUE KEY `eventhandler_idx` (`eventhandler_id`);

--
-- Indexes for table `vtiger_eventhandler_module`
--
ALTER TABLE `vtiger_eventhandler_module`
  ADD PRIMARY KEY (`eventhandler_module_id`);

--
-- Indexes for table `vtiger_eventstatus`
--
ALTER TABLE `vtiger_eventstatus`
  ADD PRIMARY KEY (`eventstatusid`);

--
-- Indexes for table `vtiger_expectedresponse`
--
ALTER TABLE `vtiger_expectedresponse`
  ADD PRIMARY KEY (`expectedresponseid`),
  ADD UNIQUE KEY `CampaignExpRes_UK01` (`expectedresponse`);

--
-- Indexes for table `vtiger_extnstore_users`
--
ALTER TABLE `vtiger_extnstore_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_faq`
--
ALTER TABLE `vtiger_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_id_idx` (`id`);

--
-- Indexes for table `vtiger_faqcategories`
--
ALTER TABLE `vtiger_faqcategories`
  ADD PRIMARY KEY (`faqcategories_id`);

--
-- Indexes for table `vtiger_faqcf`
--
ALTER TABLE `vtiger_faqcf`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `vtiger_faqcomments`
--
ALTER TABLE `vtiger_faqcomments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `faqcomments_faqid_idx` (`faqid`);

--
-- Indexes for table `vtiger_faqstatus`
--
ALTER TABLE `vtiger_faqstatus`
  ADD PRIMARY KEY (`faqstatus_id`);

--
-- Indexes for table `vtiger_field`
--
ALTER TABLE `vtiger_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `field_tabid_idx` (`tabid`),
  ADD KEY `field_fieldname_idx` (`fieldname`),
  ADD KEY `field_block_idx` (`block`),
  ADD KEY `field_displaytype_idx` (`displaytype`);

--
-- Indexes for table `vtiger_freetagged_objects`
--
ALTER TABLE `vtiger_freetagged_objects`
  ADD PRIMARY KEY (`tag_id`,`tagger_id`,`object_id`),
  ADD KEY `freetagged_objects_tag_id_tagger_id_object_id_idx` (`tag_id`,`tagger_id`,`object_id`);

--
-- Indexes for table `vtiger_freetags`
--
ALTER TABLE `vtiger_freetags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_glacct`
--
ALTER TABLE `vtiger_glacct`
  ADD PRIMARY KEY (`glacctid`),
  ADD UNIQUE KEY `glacct_glacct_idx` (`glacct`);

--
-- Indexes for table `vtiger_group2grouprel`
--
ALTER TABLE `vtiger_group2grouprel`
  ADD PRIMARY KEY (`groupid`,`containsgroupid`);

--
-- Indexes for table `vtiger_group2role`
--
ALTER TABLE `vtiger_group2role`
  ADD PRIMARY KEY (`groupid`,`roleid`),
  ADD KEY `fk_2_vtiger_group2role` (`roleid`);

--
-- Indexes for table `vtiger_group2rs`
--
ALTER TABLE `vtiger_group2rs`
  ADD PRIMARY KEY (`groupid`,`roleandsubid`),
  ADD KEY `fk_2_vtiger_group2rs` (`roleandsubid`);

--
-- Indexes for table `vtiger_groups`
--
ALTER TABLE `vtiger_groups`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `groups_groupname_idx` (`groupname`);

--
-- Indexes for table `vtiger_homedashbd`
--
ALTER TABLE `vtiger_homedashbd`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homedefault`
--
ALTER TABLE `vtiger_homedefault`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homemodule`
--
ALTER TABLE `vtiger_homemodule`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homemoduleflds`
--
ALTER TABLE `vtiger_homemoduleflds`
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homereportchart`
--
ALTER TABLE `vtiger_homereportchart`
  ADD PRIMARY KEY (`stuffid`);

--
-- Indexes for table `vtiger_homerss`
--
ALTER TABLE `vtiger_homerss`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homestuff`
--
ALTER TABLE `vtiger_homestuff`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`),
  ADD KEY `fk_1_vtiger_homestuff` (`userid`);

--
-- Indexes for table `vtiger_home_layout`
--
ALTER TABLE `vtiger_home_layout`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `vtiger_hour_format`
--
ALTER TABLE `vtiger_hour_format`
  ADD PRIMARY KEY (`hour_formatid`);

--
-- Indexes for table `vtiger_import_1`
--
ALTER TABLE `vtiger_import_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_import_locks`
--
ALTER TABLE `vtiger_import_locks`
  ADD PRIMARY KEY (`vtiger_import_lock_id`);

--
-- Indexes for table `vtiger_import_maps`
--
ALTER TABLE `vtiger_import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_maps_assigned_user_id_module_name_deleted_idx` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `vtiger_import_queue`
--
ALTER TABLE `vtiger_import_queue`
  ADD PRIMARY KEY (`importid`);

--
-- Indexes for table `vtiger_industry`
--
ALTER TABLE `vtiger_industry`
  ADD PRIMARY KEY (`industryid`),
  ADD UNIQUE KEY `industry_industry_idx` (`industry`);

--
-- Indexes for table `vtiger_inventorycharges`
--
ALTER TABLE `vtiger_inventorycharges`
  ADD PRIMARY KEY (`chargeid`);

--
-- Indexes for table `vtiger_inventorychargesrel`
--
ALTER TABLE `vtiger_inventorychargesrel`
  ADD KEY `record_idx` (`recordid`);

--
-- Indexes for table `vtiger_inventorynotification`
--
ALTER TABLE `vtiger_inventorynotification`
  ADD PRIMARY KEY (`notificationid`);

--
-- Indexes for table `vtiger_inventoryproductrel`
--
ALTER TABLE `vtiger_inventoryproductrel`
  ADD PRIMARY KEY (`lineitem_id`),
  ADD KEY `inventoryproductrel_id_idx` (`id`),
  ADD KEY `inventoryproductrel_productid_idx` (`productid`);

--
-- Indexes for table `vtiger_inventoryshippingrel`
--
ALTER TABLE `vtiger_inventoryshippingrel`
  ADD KEY `inventoryishippingrel_id_idx` (`id`);

--
-- Indexes for table `vtiger_inventorytaxinfo`
--
ALTER TABLE `vtiger_inventorytaxinfo`
  ADD PRIMARY KEY (`taxid`),
  ADD KEY `inventorytaxinfo_taxname_idx` (`taxname`);

--
-- Indexes for table `vtiger_inventory_tandc`
--
ALTER TABLE `vtiger_inventory_tandc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_invitees`
--
ALTER TABLE `vtiger_invitees`
  ADD PRIMARY KEY (`activityid`,`inviteeid`);

--
-- Indexes for table `vtiger_invoice`
--
ALTER TABLE `vtiger_invoice`
  ADD PRIMARY KEY (`invoiceid`),
  ADD KEY `invoice_purchaseorderid_idx` (`invoiceid`),
  ADD KEY `fk_2_vtiger_invoice` (`salesorderid`);

--
-- Indexes for table `vtiger_invoicebillads`
--
ALTER TABLE `vtiger_invoicebillads`
  ADD PRIMARY KEY (`invoicebilladdressid`);

--
-- Indexes for table `vtiger_invoicecf`
--
ALTER TABLE `vtiger_invoicecf`
  ADD PRIMARY KEY (`invoiceid`);

--
-- Indexes for table `vtiger_invoiceshipads`
--
ALTER TABLE `vtiger_invoiceshipads`
  ADD PRIMARY KEY (`invoiceshipaddressid`);

--
-- Indexes for table `vtiger_invoicestatus`
--
ALTER TABLE `vtiger_invoicestatus`
  ADD PRIMARY KEY (`invoicestatusid`),
  ADD UNIQUE KEY `invoicestatus_invoiestatus_idx` (`invoicestatus`);

--
-- Indexes for table `vtiger_invoicestatushistory`
--
ALTER TABLE `vtiger_invoicestatushistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `invoicestatushistory_invoiceid_idx` (`invoiceid`);

--
-- Indexes for table `vtiger_invoice_recurring_info`
--
ALTER TABLE `vtiger_invoice_recurring_info`
  ADD PRIMARY KEY (`salesorderid`);

--
-- Indexes for table `vtiger_language`
--
ALTER TABLE `vtiger_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_leadaddress`
--
ALTER TABLE `vtiger_leadaddress`
  ADD PRIMARY KEY (`leadaddressid`);

--
-- Indexes for table `vtiger_leaddetails`
--
ALTER TABLE `vtiger_leaddetails`
  ADD PRIMARY KEY (`leadid`),
  ADD KEY `leaddetails_converted_leadstatus_idx` (`converted`,`leadstatus`),
  ADD KEY `email_idx` (`email`);

--
-- Indexes for table `vtiger_leadscf`
--
ALTER TABLE `vtiger_leadscf`
  ADD PRIMARY KEY (`leadid`);

--
-- Indexes for table `vtiger_leadsource`
--
ALTER TABLE `vtiger_leadsource`
  ADD PRIMARY KEY (`leadsourceid`);

--
-- Indexes for table `vtiger_leadstage`
--
ALTER TABLE `vtiger_leadstage`
  ADD PRIMARY KEY (`leadstageid`),
  ADD UNIQUE KEY `leadstage_stage_idx` (`stage`);

--
-- Indexes for table `vtiger_leadstatus`
--
ALTER TABLE `vtiger_leadstatus`
  ADD PRIMARY KEY (`leadstatusid`);

--
-- Indexes for table `vtiger_leadsubdetails`
--
ALTER TABLE `vtiger_leadsubdetails`
  ADD PRIMARY KEY (`leadsubscriptionid`);

--
-- Indexes for table `vtiger_lead_view`
--
ALTER TABLE `vtiger_lead_view`
  ADD PRIMARY KEY (`lead_viewid`);

--
-- Indexes for table `vtiger_links`
--
ALTER TABLE `vtiger_links`
  ADD PRIMARY KEY (`linkid`),
  ADD KEY `link_tabidtype_idx` (`tabid`,`linktype`);

--
-- Indexes for table `vtiger_loginhistory`
--
ALTER TABLE `vtiger_loginhistory`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `vtiger_mailer_queue`
--
ALTER TABLE `vtiger_mailer_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_mailmanager_mailattachments`
--
ALTER TABLE `vtiger_mailmanager_mailattachments`
  ADD KEY `userid_muid_idx` (`userid`,`muid`);

--
-- Indexes for table `vtiger_mailmanager_mailrecord`
--
ALTER TABLE `vtiger_mailmanager_mailrecord`
  ADD KEY `userid_lastsavedtime_idx` (`userid`,`lastsavedtime`),
  ADD KEY `userid_muid_idx` (`userid`,`muid`);

--
-- Indexes for table `vtiger_mailscanner`
--
ALTER TABLE `vtiger_mailscanner`
  ADD PRIMARY KEY (`scannerid`);

--
-- Indexes for table `vtiger_mailscanner_actions`
--
ALTER TABLE `vtiger_mailscanner_actions`
  ADD PRIMARY KEY (`actionid`);

--
-- Indexes for table `vtiger_mailscanner_folders`
--
ALTER TABLE `vtiger_mailscanner_folders`
  ADD PRIMARY KEY (`folderid`),
  ADD KEY `folderid_idx` (`folderid`);

--
-- Indexes for table `vtiger_mailscanner_ids`
--
ALTER TABLE `vtiger_mailscanner_ids`
  ADD KEY `scanner_message_ids_idx` (`scannerid`,`messageid`),
  ADD KEY `messageids_crmid_idx` (`crmid`);

--
-- Indexes for table `vtiger_mailscanner_rules`
--
ALTER TABLE `vtiger_mailscanner_rules`
  ADD PRIMARY KEY (`ruleid`);

--
-- Indexes for table `vtiger_mail_accounts`
--
ALTER TABLE `vtiger_mail_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `vtiger_manufacturer`
--
ALTER TABLE `vtiger_manufacturer`
  ADD PRIMARY KEY (`manufacturerid`),
  ADD UNIQUE KEY `manufacturer_manufacturer_idx` (`manufacturer`);

--
-- Indexes for table `vtiger_mobile_alerts`
--
ALTER TABLE `vtiger_mobile_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_modcomments`
--
ALTER TABLE `vtiger_modcomments`
  ADD KEY `relatedto_idx` (`related_to`),
  ADD KEY `fk_crmid_vtiger_modcomments` (`modcommentsid`);

--
-- Indexes for table `vtiger_modcommentscf`
--
ALTER TABLE `vtiger_modcommentscf`
  ADD PRIMARY KEY (`modcommentsid`);

--
-- Indexes for table `vtiger_modentity_num`
--
ALTER TABLE `vtiger_modentity_num`
  ADD PRIMARY KEY (`num_id`),
  ADD UNIQUE KEY `num_idx` (`num_id`),
  ADD KEY `semodule_active_idx` (`semodule`,`active`);

--
-- Indexes for table `vtiger_modtracker_basic`
--
ALTER TABLE `vtiger_modtracker_basic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crmidx` (`crmid`),
  ADD KEY `idx` (`id`);

--
-- Indexes for table `vtiger_modtracker_detail`
--
ALTER TABLE `vtiger_modtracker_detail`
  ADD KEY `idx` (`id`);

--
-- Indexes for table `vtiger_modtracker_relations`
--
ALTER TABLE `vtiger_modtracker_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_modtracker_tabs`
--
ALTER TABLE `vtiger_modtracker_tabs`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_module_dashboard_widgets`
--
ALTER TABLE `vtiger_module_dashboard_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboardtabid` (`dashboardtabid`);

--
-- Indexes for table `vtiger_notes`
--
ALTER TABLE `vtiger_notes`
  ADD PRIMARY KEY (`notesid`),
  ADD KEY `notes_title_idx` (`title`),
  ADD KEY `notes_notesid_idx` (`notesid`);

--
-- Indexes for table `vtiger_notescf`
--
ALTER TABLE `vtiger_notescf`
  ADD PRIMARY KEY (`notesid`);

--
-- Indexes for table `vtiger_notificationscheduler`
--
ALTER TABLE `vtiger_notificationscheduler`
  ADD PRIMARY KEY (`schedulednotificationid`),
  ADD UNIQUE KEY `notificationscheduler_schedulednotificationname_idx` (`schedulednotificationname`);

--
-- Indexes for table `vtiger_no_of_currency_decimals`
--
ALTER TABLE `vtiger_no_of_currency_decimals`
  ADD PRIMARY KEY (`no_of_currency_decimalsid`);

--
-- Indexes for table `vtiger_opportunitystage`
--
ALTER TABLE `vtiger_opportunitystage`
  ADD PRIMARY KEY (`potstageid`),
  ADD UNIQUE KEY `opportunitystage_stage_idx` (`stage`);

--
-- Indexes for table `vtiger_opportunity_type`
--
ALTER TABLE `vtiger_opportunity_type`
  ADD PRIMARY KEY (`opptypeid`),
  ADD UNIQUE KEY `opportunity_type_opportunity_type_idx` (`opportunity_type`);

--
-- Indexes for table `vtiger_organizationdetails`
--
ALTER TABLE `vtiger_organizationdetails`
  ADD PRIMARY KEY (`organization_id`);

--
-- Indexes for table `vtiger_org_share_action2tab`
--
ALTER TABLE `vtiger_org_share_action2tab`
  ADD PRIMARY KEY (`share_action_id`,`tabid`),
  ADD KEY `fk_2_vtiger_org_share_action2tab` (`tabid`);

--
-- Indexes for table `vtiger_org_share_action_mapping`
--
ALTER TABLE `vtiger_org_share_action_mapping`
  ADD PRIMARY KEY (`share_action_id`);

--
-- Indexes for table `vtiger_othereventduration`
--
ALTER TABLE `vtiger_othereventduration`
  ADD PRIMARY KEY (`othereventdurationid`);

--
-- Indexes for table `vtiger_parenttab`
--
ALTER TABLE `vtiger_parenttab`
  ADD PRIMARY KEY (`parenttabid`),
  ADD KEY `parenttab_parenttabid_parenttabl_label_visible_idx` (`parenttabid`,`parenttab_label`,`visible`);

--
-- Indexes for table `vtiger_parenttabrel`
--
ALTER TABLE `vtiger_parenttabrel`
  ADD KEY `parenttabrel_tabid_parenttabid_idx` (`tabid`,`parenttabid`),
  ADD KEY `fk_2_vtiger_parenttabrel` (`parenttabid`);

--
-- Indexes for table `vtiger_pbxmanager`
--
ALTER TABLE `vtiger_pbxmanager`
  ADD PRIMARY KEY (`pbxmanagerid`),
  ADD KEY `index_sourceuuid` (`sourceuuid`),
  ADD KEY `index_pbxmanager_id` (`pbxmanagerid`);

--
-- Indexes for table `vtiger_pbxmanagercf`
--
ALTER TABLE `vtiger_pbxmanagercf`
  ADD PRIMARY KEY (`pbxmanagerid`);

--
-- Indexes for table `vtiger_pbxmanager_gateway`
--
ALTER TABLE `vtiger_pbxmanager_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_pbxmanager_phonelookup`
--
ALTER TABLE `vtiger_pbxmanager_phonelookup`
  ADD UNIQUE KEY `unique_key` (`crmid`,`setype`,`fieldname`),
  ADD KEY `index_phone_number` (`fnumber`,`rnumber`);

--
-- Indexes for table `vtiger_picklist`
--
ALTER TABLE `vtiger_picklist`
  ADD PRIMARY KEY (`picklistid`),
  ADD UNIQUE KEY `picklist_name_idx` (`name`);

--
-- Indexes for table `vtiger_picklist_dependency`
--
ALTER TABLE `vtiger_picklist_dependency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_picklist_transitions`
--
ALTER TABLE `vtiger_picklist_transitions`
  ADD PRIMARY KEY (`fieldname`);

--
-- Indexes for table `vtiger_pobillads`
--
ALTER TABLE `vtiger_pobillads`
  ADD PRIMARY KEY (`pobilladdressid`);

--
-- Indexes for table `vtiger_portal`
--
ALTER TABLE `vtiger_portal`
  ADD PRIMARY KEY (`portalid`),
  ADD KEY `portal_portalname_idx` (`portalname`);

--
-- Indexes for table `vtiger_portalinfo`
--
ALTER TABLE `vtiger_portalinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_poshipads`
--
ALTER TABLE `vtiger_poshipads`
  ADD PRIMARY KEY (`poshipaddressid`);

--
-- Indexes for table `vtiger_postatus`
--
ALTER TABLE `vtiger_postatus`
  ADD PRIMARY KEY (`postatusid`),
  ADD UNIQUE KEY `postatus_postatus_idx` (`postatus`);

--
-- Indexes for table `vtiger_postatushistory`
--
ALTER TABLE `vtiger_postatushistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `postatushistory_purchaseorderid_idx` (`purchaseorderid`);

--
-- Indexes for table `vtiger_potential`
--
ALTER TABLE `vtiger_potential`
  ADD PRIMARY KEY (`potentialid`),
  ADD KEY `potential_relatedto_idx` (`related_to`),
  ADD KEY `potentail_sales_stage_idx` (`sales_stage`),
  ADD KEY `potentail_sales_stage_amount_idx` (`amount`,`sales_stage`);

--
-- Indexes for table `vtiger_potentialscf`
--
ALTER TABLE `vtiger_potentialscf`
  ADD PRIMARY KEY (`potentialid`);

--
-- Indexes for table `vtiger_potstagehistory`
--
ALTER TABLE `vtiger_potstagehistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `potstagehistory_potentialid_idx` (`potentialid`);

--
-- Indexes for table `vtiger_pricebook`
--
ALTER TABLE `vtiger_pricebook`
  ADD PRIMARY KEY (`pricebookid`);

--
-- Indexes for table `vtiger_pricebookcf`
--
ALTER TABLE `vtiger_pricebookcf`
  ADD PRIMARY KEY (`pricebookid`);

--
-- Indexes for table `vtiger_pricebookproductrel`
--
ALTER TABLE `vtiger_pricebookproductrel`
  ADD PRIMARY KEY (`pricebookid`,`productid`),
  ADD KEY `pricebookproductrel_pricebookid_idx` (`pricebookid`),
  ADD KEY `pricebookproductrel_productid_idx` (`productid`);

--
-- Indexes for table `vtiger_priority`
--
ALTER TABLE `vtiger_priority`
  ADD PRIMARY KEY (`priorityid`),
  ADD UNIQUE KEY `priority_priority_idx` (`priority`);

--
-- Indexes for table `vtiger_productcategory`
--
ALTER TABLE `vtiger_productcategory`
  ADD PRIMARY KEY (`productcategoryid`),
  ADD UNIQUE KEY `productcategory_productcategory_idx` (`productcategory`);

--
-- Indexes for table `vtiger_productcf`
--
ALTER TABLE `vtiger_productcf`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `vtiger_products`
--
ALTER TABLE `vtiger_products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `vtiger_producttaxrel`
--
ALTER TABLE `vtiger_producttaxrel`
  ADD KEY `producttaxrel_productid_idx` (`productid`),
  ADD KEY `producttaxrel_taxid_idx` (`taxid`);

--
-- Indexes for table `vtiger_profile`
--
ALTER TABLE `vtiger_profile`
  ADD PRIMARY KEY (`profileid`);

--
-- Indexes for table `vtiger_profile2field`
--
ALTER TABLE `vtiger_profile2field`
  ADD PRIMARY KEY (`profileid`,`fieldid`),
  ADD KEY `profile2field_profileid_tabid_fieldname_idx` (`profileid`,`tabid`),
  ADD KEY `profile2field_tabid_profileid_idx` (`tabid`,`profileid`),
  ADD KEY `profile2field_visible_profileid_idx` (`visible`,`profileid`);

--
-- Indexes for table `vtiger_profile2globalpermissions`
--
ALTER TABLE `vtiger_profile2globalpermissions`
  ADD PRIMARY KEY (`profileid`,`globalactionid`),
  ADD KEY `idx_profile2globalpermissions` (`profileid`,`globalactionid`);

--
-- Indexes for table `vtiger_profile2standardpermissions`
--
ALTER TABLE `vtiger_profile2standardpermissions`
  ADD PRIMARY KEY (`profileid`,`tabid`,`operation`),
  ADD KEY `profile2standardpermissions_profileid_tabid_operation_idx` (`profileid`,`tabid`,`operation`);

--
-- Indexes for table `vtiger_profile2tab`
--
ALTER TABLE `vtiger_profile2tab`
  ADD KEY `profile2tab_profileid_tabid_idx` (`profileid`,`tabid`);

--
-- Indexes for table `vtiger_profile2utility`
--
ALTER TABLE `vtiger_profile2utility`
  ADD PRIMARY KEY (`profileid`,`tabid`,`activityid`),
  ADD KEY `profile2utility_profileid_tabid_activityid_idx` (`profileid`,`tabid`,`activityid`);

--
-- Indexes for table `vtiger_progress`
--
ALTER TABLE `vtiger_progress`
  ADD PRIMARY KEY (`progressid`);

--
-- Indexes for table `vtiger_project`
--
ALTER TABLE `vtiger_project`
  ADD PRIMARY KEY (`projectid`);

--
-- Indexes for table `vtiger_projectcf`
--
ALTER TABLE `vtiger_projectcf`
  ADD PRIMARY KEY (`projectid`);

--
-- Indexes for table `vtiger_projectmilestone`
--
ALTER TABLE `vtiger_projectmilestone`
  ADD PRIMARY KEY (`projectmilestoneid`);

--
-- Indexes for table `vtiger_projectmilestonecf`
--
ALTER TABLE `vtiger_projectmilestonecf`
  ADD PRIMARY KEY (`projectmilestoneid`);

--
-- Indexes for table `vtiger_projectmilestonetype`
--
ALTER TABLE `vtiger_projectmilestonetype`
  ADD PRIMARY KEY (`projectmilestonetypeid`);

--
-- Indexes for table `vtiger_projectpriority`
--
ALTER TABLE `vtiger_projectpriority`
  ADD PRIMARY KEY (`projectpriorityid`);

--
-- Indexes for table `vtiger_projectstatus`
--
ALTER TABLE `vtiger_projectstatus`
  ADD PRIMARY KEY (`projectstatusid`);

--
-- Indexes for table `vtiger_projecttask`
--
ALTER TABLE `vtiger_projecttask`
  ADD PRIMARY KEY (`projecttaskid`);

--
-- Indexes for table `vtiger_projecttaskcf`
--
ALTER TABLE `vtiger_projecttaskcf`
  ADD PRIMARY KEY (`projecttaskid`);

--
-- Indexes for table `vtiger_projecttaskpriority`
--
ALTER TABLE `vtiger_projecttaskpriority`
  ADD PRIMARY KEY (`projecttaskpriorityid`);

--
-- Indexes for table `vtiger_projecttaskprogress`
--
ALTER TABLE `vtiger_projecttaskprogress`
  ADD PRIMARY KEY (`projecttaskprogressid`);

--
-- Indexes for table `vtiger_projecttaskstatus`
--
ALTER TABLE `vtiger_projecttaskstatus`
  ADD PRIMARY KEY (`projecttaskstatusid`);

--
-- Indexes for table `vtiger_projecttasktype`
--
ALTER TABLE `vtiger_projecttasktype`
  ADD PRIMARY KEY (`projecttasktypeid`);

--
-- Indexes for table `vtiger_projecttask_status_color`
--
ALTER TABLE `vtiger_projecttask_status_color`
  ADD UNIQUE KEY `status` (`status`);

--
-- Indexes for table `vtiger_projecttype`
--
ALTER TABLE `vtiger_projecttype`
  ADD PRIMARY KEY (`projecttypeid`);

--
-- Indexes for table `vtiger_purchaseorder`
--
ALTER TABLE `vtiger_purchaseorder`
  ADD PRIMARY KEY (`purchaseorderid`),
  ADD KEY `purchaseorder_vendorid_idx` (`vendorid`),
  ADD KEY `purchaseorder_quoteid_idx` (`quoteid`),
  ADD KEY `purchaseorder_contactid_idx` (`contactid`);

--
-- Indexes for table `vtiger_purchaseordercf`
--
ALTER TABLE `vtiger_purchaseordercf`
  ADD PRIMARY KEY (`purchaseorderid`);

--
-- Indexes for table `vtiger_quotes`
--
ALTER TABLE `vtiger_quotes`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `quote_quotestage_idx` (`quotestage`),
  ADD KEY `quotes_potentialid_idx` (`potentialid`),
  ADD KEY `quotes_contactid_idx` (`contactid`);

--
-- Indexes for table `vtiger_quotesbillads`
--
ALTER TABLE `vtiger_quotesbillads`
  ADD PRIMARY KEY (`quotebilladdressid`);

--
-- Indexes for table `vtiger_quotescf`
--
ALTER TABLE `vtiger_quotescf`
  ADD PRIMARY KEY (`quoteid`);

--
-- Indexes for table `vtiger_quotesshipads`
--
ALTER TABLE `vtiger_quotesshipads`
  ADD PRIMARY KEY (`quoteshipaddressid`);

--
-- Indexes for table `vtiger_quotestage`
--
ALTER TABLE `vtiger_quotestage`
  ADD PRIMARY KEY (`quotestageid`),
  ADD UNIQUE KEY `quotestage_quotestage_idx` (`quotestage`);

--
-- Indexes for table `vtiger_quotestagehistory`
--
ALTER TABLE `vtiger_quotestagehistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `quotestagehistory_quoteid_idx` (`quoteid`);

--
-- Indexes for table `vtiger_rating`
--
ALTER TABLE `vtiger_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `vtiger_recurringevents`
--
ALTER TABLE `vtiger_recurringevents`
  ADD PRIMARY KEY (`recurringid`),
  ADD KEY `fk_1_vtiger_recurringevents` (`activityid`);

--
-- Indexes for table `vtiger_recurringtype`
--
ALTER TABLE `vtiger_recurringtype`
  ADD PRIMARY KEY (`recurringeventid`),
  ADD UNIQUE KEY `recurringtype_status_idx` (`recurringtype`);

--
-- Indexes for table `vtiger_relatedlists`
--
ALTER TABLE `vtiger_relatedlists`
  ADD PRIMARY KEY (`relation_id`),
  ADD KEY `relatedlists_relation_id_idx` (`relation_id`);

--
-- Indexes for table `vtiger_relcriteria`
--
ALTER TABLE `vtiger_relcriteria`
  ADD PRIMARY KEY (`queryid`,`columnindex`),
  ADD KEY `relcriteria_queryid_idx` (`queryid`);

--
-- Indexes for table `vtiger_relcriteria_grouping`
--
ALTER TABLE `vtiger_relcriteria_grouping`
  ADD PRIMARY KEY (`groupid`,`queryid`);

--
-- Indexes for table `vtiger_reminder_interval`
--
ALTER TABLE `vtiger_reminder_interval`
  ADD PRIMARY KEY (`reminder_intervalid`);

--
-- Indexes for table `vtiger_report`
--
ALTER TABLE `vtiger_report`
  ADD PRIMARY KEY (`reportid`),
  ADD KEY `report_queryid_idx` (`queryid`),
  ADD KEY `report_folderid_idx` (`folderid`);

--
-- Indexes for table `vtiger_reportdatefilter`
--
ALTER TABLE `vtiger_reportdatefilter`
  ADD PRIMARY KEY (`datefilterid`),
  ADD KEY `reportdatefilter_datefilterid_idx` (`datefilterid`);

--
-- Indexes for table `vtiger_reportfolder`
--
ALTER TABLE `vtiger_reportfolder`
  ADD PRIMARY KEY (`folderid`);

--
-- Indexes for table `vtiger_reportgroupbycolumn`
--
ALTER TABLE `vtiger_reportgroupbycolumn`
  ADD KEY `fk_1_vtiger_reportgroupbycolumn` (`reportid`);

--
-- Indexes for table `vtiger_reportmodules`
--
ALTER TABLE `vtiger_reportmodules`
  ADD PRIMARY KEY (`reportmodulesid`);

--
-- Indexes for table `vtiger_reportsortcol`
--
ALTER TABLE `vtiger_reportsortcol`
  ADD PRIMARY KEY (`sortcolid`,`reportid`),
  ADD KEY `fk_1_vtiger_reportsortcol` (`reportid`);

--
-- Indexes for table `vtiger_reportsummary`
--
ALTER TABLE `vtiger_reportsummary`
  ADD PRIMARY KEY (`reportsummaryid`,`summarytype`,`columnname`),
  ADD KEY `reportsummary_reportsummaryid_idx` (`reportsummaryid`);

--
-- Indexes for table `vtiger_reporttype`
--
ALTER TABLE `vtiger_reporttype`
  ADD PRIMARY KEY (`reportid`);

--
-- Indexes for table `vtiger_report_sharegroups`
--
ALTER TABLE `vtiger_report_sharegroups`
  ADD KEY `vtiger_report_sharegroups_ibfk_1` (`reportid`),
  ADD KEY `vtiger_groups_groupid_ibfk_1` (`groupid`);

--
-- Indexes for table `vtiger_report_sharerole`
--
ALTER TABLE `vtiger_report_sharerole`
  ADD KEY `vtiger_report_sharerole_ibfk_1` (`reportid`),
  ADD KEY `vtiger_role_roleid_ibfk_1` (`roleid`);

--
-- Indexes for table `vtiger_report_sharers`
--
ALTER TABLE `vtiger_report_sharers`
  ADD KEY `vtiger_report_sharers_ibfk_1` (`reportid`),
  ADD KEY `vtiger_rolesd_rsid_ibfk_1` (`rsid`);

--
-- Indexes for table `vtiger_report_shareusers`
--
ALTER TABLE `vtiger_report_shareusers`
  ADD KEY `vtiger_report_shareusers_ibfk_1` (`reportid`),
  ADD KEY `vtiger_users_userid_ibfk_1` (`userid`);

--
-- Indexes for table `vtiger_role`
--
ALTER TABLE `vtiger_role`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `vtiger_role2picklist`
--
ALTER TABLE `vtiger_role2picklist`
  ADD PRIMARY KEY (`roleid`,`picklistvalueid`,`picklistid`),
  ADD KEY `role2picklist_roleid_picklistid_idx` (`roleid`,`picklistid`,`picklistvalueid`),
  ADD KEY `fk_2_vtiger_role2picklist` (`picklistid`);

--
-- Indexes for table `vtiger_role2profile`
--
ALTER TABLE `vtiger_role2profile`
  ADD PRIMARY KEY (`roleid`,`profileid`),
  ADD KEY `role2profile_roleid_profileid_idx` (`roleid`,`profileid`);

--
-- Indexes for table `vtiger_rollupcomments_settings`
--
ALTER TABLE `vtiger_rollupcomments_settings`
  ADD PRIMARY KEY (`rollupid`);

--
-- Indexes for table `vtiger_rowheight`
--
ALTER TABLE `vtiger_rowheight`
  ADD PRIMARY KEY (`rowheightid`);

--
-- Indexes for table `vtiger_rss`
--
ALTER TABLE `vtiger_rss`
  ADD PRIMARY KEY (`rssid`);

--
-- Indexes for table `vtiger_salesmanactivityrel`
--
ALTER TABLE `vtiger_salesmanactivityrel`
  ADD PRIMARY KEY (`smid`,`activityid`),
  ADD KEY `salesmanactivityrel_activityid_idx` (`activityid`),
  ADD KEY `salesmanactivityrel_smid_idx` (`smid`);

--
-- Indexes for table `vtiger_salesmanattachmentsrel`
--
ALTER TABLE `vtiger_salesmanattachmentsrel`
  ADD PRIMARY KEY (`smid`,`attachmentsid`),
  ADD KEY `salesmanattachmentsrel_smid_idx` (`smid`),
  ADD KEY `salesmanattachmentsrel_attachmentsid_idx` (`attachmentsid`);

--
-- Indexes for table `vtiger_salesmanticketrel`
--
ALTER TABLE `vtiger_salesmanticketrel`
  ADD PRIMARY KEY (`smid`,`id`),
  ADD KEY `salesmanticketrel_smid_idx` (`smid`),
  ADD KEY `salesmanticketrel_id_idx` (`id`);

--
-- Indexes for table `vtiger_salesorder`
--
ALTER TABLE `vtiger_salesorder`
  ADD PRIMARY KEY (`salesorderid`),
  ADD KEY `salesorder_vendorid_idx` (`vendorid`),
  ADD KEY `salesorder_contactid_idx` (`contactid`);

--
-- Indexes for table `vtiger_salesordercf`
--
ALTER TABLE `vtiger_salesordercf`
  ADD PRIMARY KEY (`salesorderid`);

--
-- Indexes for table `vtiger_sales_stage`
--
ALTER TABLE `vtiger_sales_stage`
  ADD PRIMARY KEY (`sales_stage_id`);

--
-- Indexes for table `vtiger_salutationtype`
--
ALTER TABLE `vtiger_salutationtype`
  ADD PRIMARY KEY (`salutationid`);

--
-- Indexes for table `vtiger_scheduled_reports`
--
ALTER TABLE `vtiger_scheduled_reports`
  ADD PRIMARY KEY (`reportid`);

--
-- Indexes for table `vtiger_seactivityrel`
--
ALTER TABLE `vtiger_seactivityrel`
  ADD PRIMARY KEY (`crmid`,`activityid`),
  ADD KEY `seactivityrel_activityid_idx` (`activityid`),
  ADD KEY `seactivityrel_crmid_idx` (`crmid`);

--
-- Indexes for table `vtiger_seattachmentsrel`
--
ALTER TABLE `vtiger_seattachmentsrel`
  ADD PRIMARY KEY (`crmid`,`attachmentsid`),
  ADD KEY `seattachmentsrel_attachmentsid_idx` (`attachmentsid`),
  ADD KEY `seattachmentsrel_crmid_idx` (`crmid`),
  ADD KEY `seattachmentsrel_attachmentsid_crmid_idx` (`attachmentsid`,`crmid`);

--
-- Indexes for table `vtiger_selectcolumn`
--
ALTER TABLE `vtiger_selectcolumn`
  ADD PRIMARY KEY (`queryid`,`columnindex`),
  ADD KEY `selectcolumn_queryid_idx` (`queryid`);

--
-- Indexes for table `vtiger_selectquery`
--
ALTER TABLE `vtiger_selectquery`
  ADD PRIMARY KEY (`queryid`),
  ADD KEY `selectquery_queryid_idx` (`queryid`);

--
-- Indexes for table `vtiger_senotesrel`
--
ALTER TABLE `vtiger_senotesrel`
  ADD PRIMARY KEY (`crmid`,`notesid`),
  ADD KEY `senotesrel_notesid_idx` (`notesid`),
  ADD KEY `senotesrel_crmid_idx` (`crmid`);

--
-- Indexes for table `vtiger_seproductsrel`
--
ALTER TABLE `vtiger_seproductsrel`
  ADD PRIMARY KEY (`crmid`,`productid`),
  ADD KEY `seproductsrel_productid_idx` (`productid`),
  ADD KEY `seproductrel_crmid_idx` (`crmid`);

--
-- Indexes for table `vtiger_service`
--
ALTER TABLE `vtiger_service`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `vtiger_servicecategory`
--
ALTER TABLE `vtiger_servicecategory`
  ADD PRIMARY KEY (`servicecategoryid`);

--
-- Indexes for table `vtiger_servicecf`
--
ALTER TABLE `vtiger_servicecf`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `vtiger_servicecontracts`
--
ALTER TABLE `vtiger_servicecontracts`
  ADD KEY `fk_crmid_vtiger_servicecontracts` (`servicecontractsid`);

--
-- Indexes for table `vtiger_servicecontractscf`
--
ALTER TABLE `vtiger_servicecontractscf`
  ADD PRIMARY KEY (`servicecontractsid`);

--
-- Indexes for table `vtiger_service_usageunit`
--
ALTER TABLE `vtiger_service_usageunit`
  ADD PRIMARY KEY (`service_usageunitid`);

--
-- Indexes for table `vtiger_seticketsrel`
--
ALTER TABLE `vtiger_seticketsrel`
  ADD PRIMARY KEY (`crmid`,`ticketid`),
  ADD KEY `seticketsrel_crmid_idx` (`crmid`),
  ADD KEY `seticketsrel_ticketid_idx` (`ticketid`);

--
-- Indexes for table `vtiger_settings_blocks`
--
ALTER TABLE `vtiger_settings_blocks`
  ADD PRIMARY KEY (`blockid`);

--
-- Indexes for table `vtiger_settings_field`
--
ALTER TABLE `vtiger_settings_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `fk_1_vtiger_settings_field` (`blockid`);

--
-- Indexes for table `vtiger_sharedcalendar`
--
ALTER TABLE `vtiger_sharedcalendar`
  ADD PRIMARY KEY (`userid`,`sharedid`);

--
-- Indexes for table `vtiger_shippingtaxinfo`
--
ALTER TABLE `vtiger_shippingtaxinfo`
  ADD PRIMARY KEY (`taxid`),
  ADD KEY `shippingtaxinfo_taxname_idx` (`taxname`);

--
-- Indexes for table `vtiger_shorturls`
--
ALTER TABLE `vtiger_shorturls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `vtiger_smsnotifier`
--
ALTER TABLE `vtiger_smsnotifier`
  ADD PRIMARY KEY (`smsnotifierid`);

--
-- Indexes for table `vtiger_smsnotifiercf`
--
ALTER TABLE `vtiger_smsnotifiercf`
  ADD PRIMARY KEY (`smsnotifierid`);

--
-- Indexes for table `vtiger_smsnotifier_servers`
--
ALTER TABLE `vtiger_smsnotifier_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_smsnotifier_status`
--
ALTER TABLE `vtiger_smsnotifier_status`
  ADD PRIMARY KEY (`statusid`);

--
-- Indexes for table `vtiger_sobillads`
--
ALTER TABLE `vtiger_sobillads`
  ADD PRIMARY KEY (`sobilladdressid`);

--
-- Indexes for table `vtiger_soshipads`
--
ALTER TABLE `vtiger_soshipads`
  ADD PRIMARY KEY (`soshipaddressid`);

--
-- Indexes for table `vtiger_sostatus`
--
ALTER TABLE `vtiger_sostatus`
  ADD PRIMARY KEY (`sostatusid`),
  ADD UNIQUE KEY `sostatus_sostatus_idx` (`sostatus`);

--
-- Indexes for table `vtiger_sostatushistory`
--
ALTER TABLE `vtiger_sostatushistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `sostatushistory_salesorderid_idx` (`salesorderid`);

--
-- Indexes for table `vtiger_start_hour`
--
ALTER TABLE `vtiger_start_hour`
  ADD PRIMARY KEY (`start_hourid`);

--
-- Indexes for table `vtiger_status`
--
ALTER TABLE `vtiger_status`
  ADD PRIMARY KEY (`statusid`);

--
-- Indexes for table `vtiger_systems`
--
ALTER TABLE `vtiger_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_tab`
--
ALTER TABLE `vtiger_tab`
  ADD PRIMARY KEY (`tabid`),
  ADD UNIQUE KEY `tab_name_idx` (`name`),
  ADD KEY `tab_modifiedby_idx` (`modifiedby`),
  ADD KEY `tab_tabid_idx` (`tabid`);

--
-- Indexes for table `vtiger_tab_info`
--
ALTER TABLE `vtiger_tab_info`
  ADD KEY `fk_1_vtiger_tab_info` (`tabid`);

--
-- Indexes for table `vtiger_taskpriority`
--
ALTER TABLE `vtiger_taskpriority`
  ADD PRIMARY KEY (`taskpriorityid`);

--
-- Indexes for table `vtiger_taskstatus`
--
ALTER TABLE `vtiger_taskstatus`
  ADD PRIMARY KEY (`taskstatusid`);

--
-- Indexes for table `vtiger_taxclass`
--
ALTER TABLE `vtiger_taxclass`
  ADD PRIMARY KEY (`taxclassid`),
  ADD UNIQUE KEY `taxclass_carrier_idx` (`taxclass`);

--
-- Indexes for table `vtiger_taxregions`
--
ALTER TABLE `vtiger_taxregions`
  ADD PRIMARY KEY (`regionid`);

--
-- Indexes for table `vtiger_ticketcategories`
--
ALTER TABLE `vtiger_ticketcategories`
  ADD PRIMARY KEY (`ticketcategories_id`);

--
-- Indexes for table `vtiger_ticketcf`
--
ALTER TABLE `vtiger_ticketcf`
  ADD PRIMARY KEY (`ticketid`);

--
-- Indexes for table `vtiger_ticketcomments`
--
ALTER TABLE `vtiger_ticketcomments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `ticketcomments_ticketid_idx` (`ticketid`);

--
-- Indexes for table `vtiger_ticketpriorities`
--
ALTER TABLE `vtiger_ticketpriorities`
  ADD PRIMARY KEY (`ticketpriorities_id`);

--
-- Indexes for table `vtiger_ticketseverities`
--
ALTER TABLE `vtiger_ticketseverities`
  ADD PRIMARY KEY (`ticketseverities_id`);

--
-- Indexes for table `vtiger_ticketstatus`
--
ALTER TABLE `vtiger_ticketstatus`
  ADD PRIMARY KEY (`ticketstatus_id`);

--
-- Indexes for table `vtiger_time_zone`
--
ALTER TABLE `vtiger_time_zone`
  ADD PRIMARY KEY (`time_zoneid`);

--
-- Indexes for table `vtiger_tmp_read_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  ADD KEY `tmp_read_group_rel_sharing_per_userid_sharedgroupid_tabid` (`userid`,`sharedgroupid`,`tabid`);

--
-- Indexes for table `vtiger_tmp_read_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  ADD KEY `tmp_read_group_sharing_per_userid_sharedgroupid_idx` (`userid`,`sharedgroupid`);

--
-- Indexes for table `vtiger_tmp_read_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  ADD KEY `tmp_read_user_rel_sharing_per_userid_shared_reltabid_idx` (`userid`,`shareduserid`,`relatedtabid`);

--
-- Indexes for table `vtiger_tmp_read_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  ADD KEY `tmp_read_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`);

--
-- Indexes for table `vtiger_tmp_write_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  ADD KEY `tmp_write_group_rel_sharing_per_userid_sharedgroupid_tabid_idx` (`userid`,`sharedgroupid`,`tabid`);

--
-- Indexes for table `vtiger_tmp_write_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  ADD KEY `tmp_write_group_sharing_per_UK1` (`userid`,`sharedgroupid`);

--
-- Indexes for table `vtiger_tmp_write_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  ADD KEY `tmp_write_user_rel_sharing_per_userid_sharduserid_tabid_idx` (`userid`,`shareduserid`,`tabid`);

--
-- Indexes for table `vtiger_tmp_write_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  ADD KEY `tmp_write_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`);

--
-- Indexes for table `vtiger_tracker`
--
ALTER TABLE `vtiger_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_tracking_unit`
--
ALTER TABLE `vtiger_tracking_unit`
  ADD PRIMARY KEY (`tracking_unitid`);

--
-- Indexes for table `vtiger_troubletickets`
--
ALTER TABLE `vtiger_troubletickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `troubletickets_ticketid_idx` (`ticketid`),
  ADD KEY `troubletickets_status_idx` (`status`);

--
-- Indexes for table `vtiger_usageunit`
--
ALTER TABLE `vtiger_usageunit`
  ADD PRIMARY KEY (`usageunitid`),
  ADD UNIQUE KEY `usageunit_usageunit_idx` (`usageunit`);

--
-- Indexes for table `vtiger_user2mergefields`
--
ALTER TABLE `vtiger_user2mergefields`
  ADD KEY `userid_tabid_idx` (`userid`,`tabid`);

--
-- Indexes for table `vtiger_user2role`
--
ALTER TABLE `vtiger_user2role`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `user2role_roleid_idx` (`roleid`);

--
-- Indexes for table `vtiger_users`
--
ALTER TABLE `vtiger_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_user_name_idx` (`user_name`),
  ADD KEY `user_user_password_idx` (`user_password`);

--
-- Indexes for table `vtiger_users2group`
--
ALTER TABLE `vtiger_users2group`
  ADD PRIMARY KEY (`groupid`,`userid`),
  ADD KEY `users2group_groupname_uerid_idx` (`groupid`,`userid`),
  ADD KEY `fk_2_vtiger_users2group` (`userid`);

--
-- Indexes for table `vtiger_users_last_import`
--
ALTER TABLE `vtiger_users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `vtiger_user_module_preferences`
--
ALTER TABLE `vtiger_user_module_preferences`
  ADD PRIMARY KEY (`userid`,`tabid`),
  ADD KEY `fk_2_vtiger_user_module_preferences` (`tabid`);

--
-- Indexes for table `vtiger_vendor`
--
ALTER TABLE `vtiger_vendor`
  ADD PRIMARY KEY (`vendorid`);

--
-- Indexes for table `vtiger_vendorcf`
--
ALTER TABLE `vtiger_vendorcf`
  ADD PRIMARY KEY (`vendorid`);

--
-- Indexes for table `vtiger_vendorcontactrel`
--
ALTER TABLE `vtiger_vendorcontactrel`
  ADD PRIMARY KEY (`vendorid`,`contactid`),
  ADD KEY `vendorcontactrel_vendorid_idx` (`vendorid`),
  ADD KEY `vendorcontactrel_contact_idx` (`contactid`);

--
-- Indexes for table `vtiger_version`
--
ALTER TABLE `vtiger_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_visibility`
--
ALTER TABLE `vtiger_visibility`
  ADD PRIMARY KEY (`visibilityid`),
  ADD UNIQUE KEY `visibility_visibility_idx` (`visibility`);

--
-- Indexes for table `vtiger_webforms`
--
ALTER TABLE `vtiger_webforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `webformname` (`name`),
  ADD UNIQUE KEY `publicid` (`id`),
  ADD KEY `webforms_webforms_id_idx` (`id`);

--
-- Indexes for table `vtiger_webforms_field`
--
ALTER TABLE `vtiger_webforms_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webforms_webforms_field_idx` (`id`),
  ADD KEY `fk_1_vtiger_webforms_field` (`webformid`),
  ADD KEY `fk_2_vtiger_webforms_field` (`fieldname`);

--
-- Indexes for table `vtiger_webform_file_fields`
--
ALTER TABLE `vtiger_webform_file_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vtiger_webforms` (`webformid`);

--
-- Indexes for table `vtiger_wordtemplates`
--
ALTER TABLE `vtiger_wordtemplates`
  ADD PRIMARY KEY (`templateid`);

--
-- Indexes for table `vtiger_wsapp`
--
ALTER TABLE `vtiger_wsapp`
  ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `vtiger_wsapp_logs_basic`
--
ALTER TABLE `vtiger_wsapp_logs_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_wsapp_logs_details`
--
ALTER TABLE `vtiger_wsapp_logs_details`
  ADD KEY `vtiger_wsapp_logs_basic_ibfk_1` (`id`);

--
-- Indexes for table `vtiger_wsapp_recordmapping`
--
ALTER TABLE `vtiger_wsapp_recordmapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_wsapp_sync_state`
--
ALTER TABLE `vtiger_wsapp_sync_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_ws_entity`
--
ALTER TABLE `vtiger_ws_entity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_ws_entity_fieldtype`
--
ALTER TABLE `vtiger_ws_entity_fieldtype`
  ADD PRIMARY KEY (`fieldtypeid`),
  ADD UNIQUE KEY `vtiger_idx_1_tablename_fieldname` (`table_name`,`field_name`);

--
-- Indexes for table `vtiger_ws_entity_name`
--
ALTER TABLE `vtiger_ws_entity_name`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `vtiger_ws_entity_referencetype`
--
ALTER TABLE `vtiger_ws_entity_referencetype`
  ADD PRIMARY KEY (`fieldtypeid`,`type`);

--
-- Indexes for table `vtiger_ws_entity_tables`
--
ALTER TABLE `vtiger_ws_entity_tables`
  ADD PRIMARY KEY (`webservice_entity_id`,`table_name`);

--
-- Indexes for table `vtiger_ws_fieldinfo`
--
ALTER TABLE `vtiger_ws_fieldinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_ws_fieldtype`
--
ALTER TABLE `vtiger_ws_fieldtype`
  ADD PRIMARY KEY (`fieldtypeid`),
  ADD UNIQUE KEY `uitype_idx` (`uitype`);

--
-- Indexes for table `vtiger_ws_operation`
--
ALTER TABLE `vtiger_ws_operation`
  ADD PRIMARY KEY (`operationid`);

--
-- Indexes for table `vtiger_ws_operation_parameters`
--
ALTER TABLE `vtiger_ws_operation_parameters`
  ADD PRIMARY KEY (`operationid`,`name`);

--
-- Indexes for table `vtiger_ws_referencetype`
--
ALTER TABLE `vtiger_ws_referencetype`
  ADD PRIMARY KEY (`fieldtypeid`,`type`);

--
-- Indexes for table `vtiger_ws_userauthtoken`
--
ALTER TABLE `vtiger_ws_userauthtoken`
  ADD PRIMARY KEY (`userid`,`expiretime`),
  ADD UNIQUE KEY `userid_idx` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `com_vtiger_workflows`
--
ALTER TABLE `com_vtiger_workflows`
  MODIFY `workflow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `com_vtiger_workflowtasks`
--
ALTER TABLE `com_vtiger_workflowtasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `com_vtiger_workflowtemplates`
--
ALTER TABLE `com_vtiger_workflowtemplates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_accountrating`
--
ALTER TABLE `vtiger_accountrating`
  MODIFY `accountratingid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_accounttype`
--
ALTER TABLE `vtiger_accounttype`
  MODIFY `accounttypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtiger_activitytype`
--
ALTER TABLE `vtiger_activitytype`
  MODIFY `activitytypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_activity_reminder_popup`
--
ALTER TABLE `vtiger_activity_reminder_popup`
  MODIFY `reminderid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_activity_view`
--
ALTER TABLE `vtiger_activity_view`
  MODIFY `activity_viewid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_assetstatus`
--
ALTER TABLE `vtiger_assetstatus`
  MODIFY `assetstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_attachmentsfolder`
--
ALTER TABLE `vtiger_attachmentsfolder`
  MODIFY `folderid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_calendarsharedtype`
--
ALTER TABLE `vtiger_calendarsharedtype`
  MODIFY `calendarsharedtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_callduration`
--
ALTER TABLE `vtiger_callduration`
  MODIFY `calldurationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_campaignstatus`
--
ALTER TABLE `vtiger_campaignstatus`
  MODIFY `campaignstatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_campaigntype`
--
ALTER TABLE `vtiger_campaigntype`
  MODIFY `campaigntypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vtiger_carrier`
--
ALTER TABLE `vtiger_carrier`
  MODIFY `carrierid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_contract_priority`
--
ALTER TABLE `vtiger_contract_priority`
  MODIFY `contract_priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_contract_status`
--
ALTER TABLE `vtiger_contract_status`
  MODIFY `contract_statusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_contract_type`
--
ALTER TABLE `vtiger_contract_type`
  MODIFY `contract_typeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_convertleadmapping`
--
ALTER TABLE `vtiger_convertleadmapping`
  MODIFY `cfmid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vtiger_convertpotentialmapping`
--
ALTER TABLE `vtiger_convertpotentialmapping`
  MODIFY `cfmid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_cron_task`
--
ALTER TABLE `vtiger_cron_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_currencies`
--
ALTER TABLE `vtiger_currencies`
  MODIFY `currencyid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `vtiger_currency`
--
ALTER TABLE `vtiger_currency`
  MODIFY `currencyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_currency_decimal_separator`
--
ALTER TABLE `vtiger_currency_decimal_separator`
  MODIFY `currency_decimal_separatorid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_currency_grouping_pattern`
--
ALTER TABLE `vtiger_currency_grouping_pattern`
  MODIFY `currency_grouping_patternid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_currency_grouping_separator`
--
ALTER TABLE `vtiger_currency_grouping_separator`
  MODIFY `currency_grouping_separatorid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_currency_info`
--
ALTER TABLE `vtiger_currency_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_currency_symbol_placement`
--
ALTER TABLE `vtiger_currency_symbol_placement`
  MODIFY `currency_symbol_placementid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_dashboard_tabs`
--
ALTER TABLE `vtiger_dashboard_tabs`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_date_format`
--
ALTER TABLE `vtiger_date_format`
  MODIFY `date_formatid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_dayoftheweek`
--
ALTER TABLE `vtiger_dayoftheweek`
  MODIFY `dayoftheweekid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_defaultactivitytype`
--
ALTER TABLE `vtiger_defaultactivitytype`
  MODIFY `defaultactivitytypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_defaultcalendarview`
--
ALTER TABLE `vtiger_defaultcalendarview`
  MODIFY `defaultcalendarviewid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_defaulteventstatus`
--
ALTER TABLE `vtiger_defaulteventstatus`
  MODIFY `defaulteventstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_defaultlandingpage`
--
ALTER TABLE `vtiger_defaultlandingpage`
  MODIFY `defaultlandingpageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_default_record_view`
--
ALTER TABLE `vtiger_default_record_view`
  MODIFY `default_record_viewid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_def_org_share`
--
ALTER TABLE `vtiger_def_org_share`
  MODIFY `ruleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vtiger_durationhrs`
--
ALTER TABLE `vtiger_durationhrs`
  MODIFY `hrsid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_durationmins`
--
ALTER TABLE `vtiger_durationmins`
  MODIFY `minsid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_duration_minutes`
--
ALTER TABLE `vtiger_duration_minutes`
  MODIFY `minutesid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_emails_recipientprefs`
--
ALTER TABLE `vtiger_emails_recipientprefs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_emailtemplates`
--
ALTER TABLE `vtiger_emailtemplates`
  MODIFY `templateid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vtiger_eventhandlers`
--
ALTER TABLE `vtiger_eventhandlers`
  MODIFY `eventhandler_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `vtiger_eventhandler_module`
--
ALTER TABLE `vtiger_eventhandler_module`
  MODIFY `eventhandler_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_eventstatus`
--
ALTER TABLE `vtiger_eventstatus`
  MODIFY `eventstatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_expectedresponse`
--
ALTER TABLE `vtiger_expectedresponse`
  MODIFY `expectedresponseid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_extnstore_users`
--
ALTER TABLE `vtiger_extnstore_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_faq`
--
ALTER TABLE `vtiger_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_faqcategories`
--
ALTER TABLE `vtiger_faqcategories`
  MODIFY `faqcategories_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_faqcomments`
--
ALTER TABLE `vtiger_faqcomments`
  MODIFY `commentid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_faqstatus`
--
ALTER TABLE `vtiger_faqstatus`
  MODIFY `faqstatus_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_field`
--
ALTER TABLE `vtiger_field`
  MODIFY `fieldid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=853;

--
-- AUTO_INCREMENT for table `vtiger_glacct`
--
ALTER TABLE `vtiger_glacct`
  MODIFY `glacctid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vtiger_hour_format`
--
ALTER TABLE `vtiger_hour_format`
  MODIFY `hour_formatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_import_1`
--
ALTER TABLE `vtiger_import_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_import_maps`
--
ALTER TABLE `vtiger_import_maps`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_industry`
--
ALTER TABLE `vtiger_industry`
  MODIFY `industryid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vtiger_inventorycharges`
--
ALTER TABLE `vtiger_inventorycharges`
  MODIFY `chargeid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_inventorynotification`
--
ALTER TABLE `vtiger_inventorynotification`
  MODIFY `notificationid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_inventoryproductrel`
--
ALTER TABLE `vtiger_inventoryproductrel`
  MODIFY `lineitem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_invoicestatus`
--
ALTER TABLE `vtiger_invoicestatus`
  MODIFY `invoicestatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_invoicestatushistory`
--
ALTER TABLE `vtiger_invoicestatushistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_language`
--
ALTER TABLE `vtiger_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vtiger_leadsource`
--
ALTER TABLE `vtiger_leadsource`
  MODIFY `leadsourceid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vtiger_leadstage`
--
ALTER TABLE `vtiger_leadstage`
  MODIFY `leadstageid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_leadstatus`
--
ALTER TABLE `vtiger_leadstatus`
  MODIFY `leadstatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vtiger_lead_view`
--
ALTER TABLE `vtiger_lead_view`
  MODIFY `lead_viewid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_loginhistory`
--
ALTER TABLE `vtiger_loginhistory`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_mailscanner`
--
ALTER TABLE `vtiger_mailscanner`
  MODIFY `scannerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_mailscanner_actions`
--
ALTER TABLE `vtiger_mailscanner_actions`
  MODIFY `actionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_mailscanner_folders`
--
ALTER TABLE `vtiger_mailscanner_folders`
  MODIFY `folderid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_mailscanner_rules`
--
ALTER TABLE `vtiger_mailscanner_rules`
  MODIFY `ruleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_manufacturer`
--
ALTER TABLE `vtiger_manufacturer`
  MODIFY `manufacturerid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_mobile_alerts`
--
ALTER TABLE `vtiger_mobile_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_module_dashboard_widgets`
--
ALTER TABLE `vtiger_module_dashboard_widgets`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_notificationscheduler`
--
ALTER TABLE `vtiger_notificationscheduler`
  MODIFY `schedulednotificationid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vtiger_no_of_currency_decimals`
--
ALTER TABLE `vtiger_no_of_currency_decimals`
  MODIFY `no_of_currency_decimalsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_opportunitystage`
--
ALTER TABLE `vtiger_opportunitystage`
  MODIFY `potstageid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_opportunity_type`
--
ALTER TABLE `vtiger_opportunity_type`
  MODIFY `opptypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_othereventduration`
--
ALTER TABLE `vtiger_othereventduration`
  MODIFY `othereventdurationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_pbxmanager`
--
ALTER TABLE `vtiger_pbxmanager`
  MODIFY `pbxmanagerid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vtiger_pbxmanager_gateway`
--
ALTER TABLE `vtiger_pbxmanager_gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_picklist`
--
ALTER TABLE `vtiger_picklist`
  MODIFY `picklistid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `vtiger_postatus`
--
ALTER TABLE `vtiger_postatus`
  MODIFY `postatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_postatushistory`
--
ALTER TABLE `vtiger_postatushistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_potstagehistory`
--
ALTER TABLE `vtiger_potstagehistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_priority`
--
ALTER TABLE `vtiger_priority`
  MODIFY `priorityid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_productcategory`
--
ALTER TABLE `vtiger_productcategory`
  MODIFY `productcategoryid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `vtiger_profile`
--
ALTER TABLE `vtiger_profile`
  MODIFY `profileid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_progress`
--
ALTER TABLE `vtiger_progress`
  MODIFY `progressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtiger_projectmilestonetype`
--
ALTER TABLE `vtiger_projectmilestonetype`
  MODIFY `projectmilestonetypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_projectpriority`
--
ALTER TABLE `vtiger_projectpriority`
  MODIFY `projectpriorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_projectstatus`
--
ALTER TABLE `vtiger_projectstatus`
  MODIFY `projectstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vtiger_projecttaskpriority`
--
ALTER TABLE `vtiger_projecttaskpriority`
  MODIFY `projecttaskpriorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_projecttaskprogress`
--
ALTER TABLE `vtiger_projecttaskprogress`
  MODIFY `projecttaskprogressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtiger_projecttaskstatus`
--
ALTER TABLE `vtiger_projecttaskstatus`
  MODIFY `projecttaskstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_projecttasktype`
--
ALTER TABLE `vtiger_projecttasktype`
  MODIFY `projecttasktypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_projecttype`
--
ALTER TABLE `vtiger_projecttype`
  MODIFY `projecttypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_quotestage`
--
ALTER TABLE `vtiger_quotestage`
  MODIFY `quotestageid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_quotestagehistory`
--
ALTER TABLE `vtiger_quotestagehistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_rating`
--
ALTER TABLE `vtiger_rating`
  MODIFY `rating_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_recurringevents`
--
ALTER TABLE `vtiger_recurringevents`
  MODIFY `recurringid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_recurringtype`
--
ALTER TABLE `vtiger_recurringtype`
  MODIFY `recurringeventid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_reminder_interval`
--
ALTER TABLE `vtiger_reminder_interval`
  MODIFY `reminder_intervalid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vtiger_reportfolder`
--
ALTER TABLE `vtiger_reportfolder`
  MODIFY `folderid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vtiger_rollupcomments_settings`
--
ALTER TABLE `vtiger_rollupcomments_settings`
  MODIFY `rollupid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_rowheight`
--
ALTER TABLE `vtiger_rowheight`
  MODIFY `rowheightid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_sales_stage`
--
ALTER TABLE `vtiger_sales_stage`
  MODIFY `sales_stage_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vtiger_salutationtype`
--
ALTER TABLE `vtiger_salutationtype`
  MODIFY `salutationid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_servicecategory`
--
ALTER TABLE `vtiger_servicecategory`
  MODIFY `servicecategoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_service_usageunit`
--
ALTER TABLE `vtiger_service_usageunit`
  MODIFY `service_usageunitid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_shorturls`
--
ALTER TABLE `vtiger_shorturls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_smsnotifier_servers`
--
ALTER TABLE `vtiger_smsnotifier_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_smsnotifier_status`
--
ALTER TABLE `vtiger_smsnotifier_status`
  MODIFY `statusid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_sostatus`
--
ALTER TABLE `vtiger_sostatus`
  MODIFY `sostatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_sostatushistory`
--
ALTER TABLE `vtiger_sostatushistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_start_hour`
--
ALTER TABLE `vtiger_start_hour`
  MODIFY `start_hourid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vtiger_status`
--
ALTER TABLE `vtiger_status`
  MODIFY `statusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_taskpriority`
--
ALTER TABLE `vtiger_taskpriority`
  MODIFY `taskpriorityid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_taskstatus`
--
ALTER TABLE `vtiger_taskstatus`
  MODIFY `taskstatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_taxclass`
--
ALTER TABLE `vtiger_taxclass`
  MODIFY `taxclassid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_taxregions`
--
ALTER TABLE `vtiger_taxregions`
  MODIFY `regionid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_ticketcategories`
--
ALTER TABLE `vtiger_ticketcategories`
  MODIFY `ticketcategories_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_ticketcomments`
--
ALTER TABLE `vtiger_ticketcomments`
  MODIFY `commentid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_ticketpriorities`
--
ALTER TABLE `vtiger_ticketpriorities`
  MODIFY `ticketpriorities_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_ticketseverities`
--
ALTER TABLE `vtiger_ticketseverities`
  MODIFY `ticketseverities_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_ticketstatus`
--
ALTER TABLE `vtiger_ticketstatus`
  MODIFY `ticketstatus_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_time_zone`
--
ALTER TABLE `vtiger_time_zone`
  MODIFY `time_zoneid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `vtiger_tracker`
--
ALTER TABLE `vtiger_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_tracking_unit`
--
ALTER TABLE `vtiger_tracking_unit`
  MODIFY `tracking_unitid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_usageunit`
--
ALTER TABLE `vtiger_usageunit`
  MODIFY `usageunitid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vtiger_users`
--
ALTER TABLE `vtiger_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_users_last_import`
--
ALTER TABLE `vtiger_users_last_import`
  MODIFY `id` int(36) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_version`
--
ALTER TABLE `vtiger_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_visibility`
--
ALTER TABLE `vtiger_visibility`
  MODIFY `visibilityid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_webforms`
--
ALTER TABLE `vtiger_webforms`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_webforms_field`
--
ALTER TABLE `vtiger_webforms_field`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_webform_file_fields`
--
ALTER TABLE `vtiger_webform_file_fields`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_wsapp`
--
ALTER TABLE `vtiger_wsapp`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_wsapp_logs_basic`
--
ALTER TABLE `vtiger_wsapp_logs_basic`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_wsapp_recordmapping`
--
ALTER TABLE `vtiger_wsapp_recordmapping`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_wsapp_sync_state`
--
ALTER TABLE `vtiger_wsapp_sync_state`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_ws_entity`
--
ALTER TABLE `vtiger_ws_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `vtiger_ws_entity_fieldtype`
--
ALTER TABLE `vtiger_ws_entity_fieldtype`
  MODIFY `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vtiger_ws_fieldtype`
--
ALTER TABLE `vtiger_ws_fieldtype`
  MODIFY `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `vtiger_ws_operation`
--
ALTER TABLE `vtiger_ws_operation`
  MODIFY `operationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `vtiger_ws_operation_parameters`
--
ALTER TABLE `vtiger_ws_operation_parameters`
  MODIFY `operationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vtiger_account`
--
ALTER TABLE `vtiger_account`
  ADD CONSTRAINT `fk_1_vtiger_account` FOREIGN KEY (`accountid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_accountbillads`
--
ALTER TABLE `vtiger_accountbillads`
  ADD CONSTRAINT `fk_1_vtiger_accountbillads` FOREIGN KEY (`accountaddressid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_accountscf`
--
ALTER TABLE `vtiger_accountscf`
  ADD CONSTRAINT `fk_1_vtiger_accountscf` FOREIGN KEY (`accountid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_accountshipads`
--
ALTER TABLE `vtiger_accountshipads`
  ADD CONSTRAINT `fk_1_vtiger_accountshipads` FOREIGN KEY (`accountaddressid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_activity`
--
ALTER TABLE `vtiger_activity`
  ADD CONSTRAINT `fk_1_vtiger_activity` FOREIGN KEY (`activityid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_activitycf`
--
ALTER TABLE `vtiger_activitycf`
  ADD CONSTRAINT `fk_activityid_vtiger_activitycf` FOREIGN KEY (`activityid`) REFERENCES `vtiger_activity` (`activityid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_activityproductrel`
--
ALTER TABLE `vtiger_activityproductrel`
  ADD CONSTRAINT `fk_2_vtiger_activityproductrel` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_activity_reminder`
--
ALTER TABLE `vtiger_activity_reminder`
  ADD CONSTRAINT `fk_activityid_vtiger_activity_reminder` FOREIGN KEY (`activity_id`) REFERENCES `vtiger_activity` (`activityid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_app2tab`
--
ALTER TABLE `vtiger_app2tab`
  ADD CONSTRAINT `vtiger_app2tab_fk_tab` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_assets`
--
ALTER TABLE `vtiger_assets`
  ADD CONSTRAINT `fk_1_vtiger_assets` FOREIGN KEY (`assetsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_assetscf`
--
ALTER TABLE `vtiger_assetscf`
  ADD CONSTRAINT `fk_assetsid_vtiger_assetscf` FOREIGN KEY (`assetsid`) REFERENCES `vtiger_assets` (`assetsid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_attachments`
--
ALTER TABLE `vtiger_attachments`
  ADD CONSTRAINT `fk_1_vtiger_attachments` FOREIGN KEY (`attachmentsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_blocks`
--
ALTER TABLE `vtiger_blocks`
  ADD CONSTRAINT `fk_1_vtiger_blocks` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_campaign`
--
ALTER TABLE `vtiger_campaign`
  ADD CONSTRAINT `fk_crmid_vtiger_campaign` FOREIGN KEY (`campaignid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_campaigncontrel`
--
ALTER TABLE `vtiger_campaigncontrel`
  ADD CONSTRAINT `fk_2_vtiger_campaigncontrel` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_campaignleadrel`
--
ALTER TABLE `vtiger_campaignleadrel`
  ADD CONSTRAINT `fk_2_vtiger_campaignleadrel` FOREIGN KEY (`leadid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_campaignscf`
--
ALTER TABLE `vtiger_campaignscf`
  ADD CONSTRAINT `fk_1_vtiger_campaignscf` FOREIGN KEY (`campaignid`) REFERENCES `vtiger_campaign` (`campaignid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cntactivityrel`
--
ALTER TABLE `vtiger_cntactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_cntactivityrel` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contactaddress`
--
ALTER TABLE `vtiger_contactaddress`
  ADD CONSTRAINT `fk_1_vtiger_contactaddress` FOREIGN KEY (`contactaddressid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contactdetails`
--
ALTER TABLE `vtiger_contactdetails`
  ADD CONSTRAINT `fk_1_vtiger_contactdetails` FOREIGN KEY (`contactid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contactscf`
--
ALTER TABLE `vtiger_contactscf`
  ADD CONSTRAINT `fk_1_vtiger_contactscf` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contactsubdetails`
--
ALTER TABLE `vtiger_contactsubdetails`
  ADD CONSTRAINT `fk_1_vtiger_contactsubdetails` FOREIGN KEY (`contactsubscriptionid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contpotentialrel`
--
ALTER TABLE `vtiger_contpotentialrel`
  ADD CONSTRAINT `fk_2_vtiger_contpotentialrel` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_crmentity_user_field`
--
ALTER TABLE `vtiger_crmentity_user_field`
  ADD CONSTRAINT `fk_vtiger_crmentity_user_field_recordid` FOREIGN KEY (`recordid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_customaction`
--
ALTER TABLE `vtiger_customaction`
  ADD CONSTRAINT `fk_1_vtiger_customaction` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_customerdetails`
--
ALTER TABLE `vtiger_customerdetails`
  ADD CONSTRAINT `fk_1_vtiger_customerdetails` FOREIGN KEY (`customerid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_customview`
--
ALTER TABLE `vtiger_customview`
  ADD CONSTRAINT `fk_1_vtiger_customview` FOREIGN KEY (`entitytype`) REFERENCES `vtiger_tab` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cv2group`
--
ALTER TABLE `vtiger_cv2group`
  ADD CONSTRAINT `vtiger_customview_ibfk_2` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_groups_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cv2role`
--
ALTER TABLE `vtiger_cv2role`
  ADD CONSTRAINT `vtiger_customview_ibfk_3` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_role_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cv2rs`
--
ALTER TABLE `vtiger_cv2rs`
  ADD CONSTRAINT `vtiger_customview_ibfk_4` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_rolesd_ibfk_1` FOREIGN KEY (`rsid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cv2users`
--
ALTER TABLE `vtiger_cv2users`
  ADD CONSTRAINT `vtiger_customview_ibfk_1` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_users_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cvadvfilter`
--
ALTER TABLE `vtiger_cvadvfilter`
  ADD CONSTRAINT `fk_1_vtiger_cvadvfilter` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cvcolumnlist`
--
ALTER TABLE `vtiger_cvcolumnlist`
  ADD CONSTRAINT `fk_1_vtiger_cvcolumnlist` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cvstdfilter`
--
ALTER TABLE `vtiger_cvstdfilter`
  ADD CONSTRAINT `fk_1_vtiger_cvstdfilter` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_dashboard_tabs`
--
ALTER TABLE `vtiger_dashboard_tabs`
  ADD CONSTRAINT `vtiger_dashboard_tabs_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_grp2grp`
--
ALTER TABLE `vtiger_datashare_grp2grp`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2grp` FOREIGN KEY (`to_groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_grp2role`
--
ALTER TABLE `vtiger_datashare_grp2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_grp2rs`
--
ALTER TABLE `vtiger_datashare_grp2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_module_rel`
--
ALTER TABLE `vtiger_datashare_module_rel`
  ADD CONSTRAINT `fk_1_vtiger_datashare_module_rel` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_relatedmodules`
--
ALTER TABLE `vtiger_datashare_relatedmodules`
  ADD CONSTRAINT `fk_2_vtiger_datashare_relatedmodules` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_role2group`
--
ALTER TABLE `vtiger_datashare_role2group`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2group` FOREIGN KEY (`share_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_role2role`
--
ALTER TABLE `vtiger_datashare_role2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_role2rs`
--
ALTER TABLE `vtiger_datashare_role2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_rs2grp`
--
ALTER TABLE `vtiger_datashare_rs2grp`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2grp` FOREIGN KEY (`share_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_rs2role`
--
ALTER TABLE `vtiger_datashare_rs2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_rs2rs`
--
ALTER TABLE `vtiger_datashare_rs2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_defaultcv`
--
ALTER TABLE `vtiger_defaultcv`
  ADD CONSTRAINT `fk_1_vtiger_defaultcv` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_def_org_share`
--
ALTER TABLE `vtiger_def_org_share`
  ADD CONSTRAINT `fk_1_vtiger_def_org_share` FOREIGN KEY (`permission`) REFERENCES `vtiger_org_share_action_mapping` (`share_action_id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_emailslookup`
--
ALTER TABLE `vtiger_emailslookup`
  ADD CONSTRAINT `emailslookup_crmid_fk` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_entityname`
--
ALTER TABLE `vtiger_entityname`
  ADD CONSTRAINT `fk_1_vtiger_entityname` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_faq`
--
ALTER TABLE `vtiger_faq`
  ADD CONSTRAINT `fk_1_vtiger_faq` FOREIGN KEY (`id`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_faqcf`
--
ALTER TABLE `vtiger_faqcf`
  ADD CONSTRAINT `fk_1_vtiger_faqcf` FOREIGN KEY (`faqid`) REFERENCES `vtiger_faq` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_faqcomments`
--
ALTER TABLE `vtiger_faqcomments`
  ADD CONSTRAINT `fk_1_vtiger_faqcomments` FOREIGN KEY (`faqid`) REFERENCES `vtiger_faq` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_field`
--
ALTER TABLE `vtiger_field`
  ADD CONSTRAINT `fk_1_vtiger_field` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_group2grouprel`
--
ALTER TABLE `vtiger_group2grouprel`
  ADD CONSTRAINT `fk_2_vtiger_group2grouprel` FOREIGN KEY (`groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vtiger_group2role`
--
ALTER TABLE `vtiger_group2role`
  ADD CONSTRAINT `fk_2_vtiger_group2role` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_group2rs`
--
ALTER TABLE `vtiger_group2rs`
  ADD CONSTRAINT `fk_2_vtiger_group2rs` FOREIGN KEY (`roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homedashbd`
--
ALTER TABLE `vtiger_homedashbd`
  ADD CONSTRAINT `fk_1_vtiger_homedashbd` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homedefault`
--
ALTER TABLE `vtiger_homedefault`
  ADD CONSTRAINT `fk_1_vtiger_homedefault` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homemodule`
--
ALTER TABLE `vtiger_homemodule`
  ADD CONSTRAINT `fk_1_vtiger_homemodule` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homemoduleflds`
--
ALTER TABLE `vtiger_homemoduleflds`
  ADD CONSTRAINT `fk_1_vtiger_homemoduleflds` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homemodule` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homerss`
--
ALTER TABLE `vtiger_homerss`
  ADD CONSTRAINT `fk_1_vtiger_homerss` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homestuff`
--
ALTER TABLE `vtiger_homestuff`
  ADD CONSTRAINT `fk_1_vtiger_homestuff` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_inventoryproductrel`
--
ALTER TABLE `vtiger_inventoryproductrel`
  ADD CONSTRAINT `fk_crmid_vtiger_inventoryproductrel` FOREIGN KEY (`id`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoice`
--
ALTER TABLE `vtiger_invoice`
  ADD CONSTRAINT `fk_2_vtiger_invoice` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_crmid_vtiger_invoice` FOREIGN KEY (`invoiceid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoicebillads`
--
ALTER TABLE `vtiger_invoicebillads`
  ADD CONSTRAINT `fk_1_vtiger_invoicebillads` FOREIGN KEY (`invoicebilladdressid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoicecf`
--
ALTER TABLE `vtiger_invoicecf`
  ADD CONSTRAINT `fk_1_vtiger_invoicecf` FOREIGN KEY (`invoiceid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoiceshipads`
--
ALTER TABLE `vtiger_invoiceshipads`
  ADD CONSTRAINT `fk_1_vtiger_invoiceshipads` FOREIGN KEY (`invoiceshipaddressid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoicestatushistory`
--
ALTER TABLE `vtiger_invoicestatushistory`
  ADD CONSTRAINT `fk_1_vtiger_invoicestatushistory` FOREIGN KEY (`invoiceid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoice_recurring_info`
--
ALTER TABLE `vtiger_invoice_recurring_info`
  ADD CONSTRAINT `fk_salesorderid_vtiger_invoice_recurring_info` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_leadaddress`
--
ALTER TABLE `vtiger_leadaddress`
  ADD CONSTRAINT `fk_1_vtiger_leadaddress` FOREIGN KEY (`leadaddressid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_leaddetails`
--
ALTER TABLE `vtiger_leaddetails`
  ADD CONSTRAINT `fk_1_vtiger_leaddetails` FOREIGN KEY (`leadid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_leadscf`
--
ALTER TABLE `vtiger_leadscf`
  ADD CONSTRAINT `fk_1_vtiger_leadscf` FOREIGN KEY (`leadid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_leadsubdetails`
--
ALTER TABLE `vtiger_leadsubdetails`
  ADD CONSTRAINT `fk_1_vtiger_leadsubdetails` FOREIGN KEY (`leadsubscriptionid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_modcomments`
--
ALTER TABLE `vtiger_modcomments`
  ADD CONSTRAINT `fk_crmid_vtiger_modcomments` FOREIGN KEY (`modcommentsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_modcommentscf`
--
ALTER TABLE `vtiger_modcommentscf`
  ADD CONSTRAINT `fk_modcommentsid_vtiger_modcommentscf` FOREIGN KEY (`modcommentsid`) REFERENCES `vtiger_modcomments` (`modcommentsid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_module_dashboard_widgets`
--
ALTER TABLE `vtiger_module_dashboard_widgets`
  ADD CONSTRAINT `vtiger_module_dashboard_widgets_ibfk_1` FOREIGN KEY (`dashboardtabid`) REFERENCES `vtiger_dashboard_tabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_notes`
--
ALTER TABLE `vtiger_notes`
  ADD CONSTRAINT `fk_1_vtiger_notes` FOREIGN KEY (`notesid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_notescf`
--
ALTER TABLE `vtiger_notescf`
  ADD CONSTRAINT `fk_notesid_vtiger_notescf` FOREIGN KEY (`notesid`) REFERENCES `vtiger_notes` (`notesid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_org_share_action2tab`
--
ALTER TABLE `vtiger_org_share_action2tab`
  ADD CONSTRAINT `fk_2_vtiger_org_share_action2tab` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_parenttabrel`
--
ALTER TABLE `vtiger_parenttabrel`
  ADD CONSTRAINT `fk_1_vtiger_parenttabrel` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2_vtiger_parenttabrel` FOREIGN KEY (`parenttabid`) REFERENCES `vtiger_parenttab` (`parenttabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pbxmanager`
--
ALTER TABLE `vtiger_pbxmanager`
  ADD CONSTRAINT `fk_crmid_vtiger_pbxmanager` FOREIGN KEY (`pbxmanagerid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pbxmanagercf`
--
ALTER TABLE `vtiger_pbxmanagercf`
  ADD CONSTRAINT `fk_pbxmanagerid_vtiger_pbxmanagercf` FOREIGN KEY (`pbxmanagerid`) REFERENCES `vtiger_pbxmanager` (`pbxmanagerid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pbxmanager_phonelookup`
--
ALTER TABLE `vtiger_pbxmanager_phonelookup`
  ADD CONSTRAINT `vtiger_pbxmanager_phonelookup_ibfk_1` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pobillads`
--
ALTER TABLE `vtiger_pobillads`
  ADD CONSTRAINT `fk_1_vtiger_pobillads` FOREIGN KEY (`pobilladdressid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_portalinfo`
--
ALTER TABLE `vtiger_portalinfo`
  ADD CONSTRAINT `fk_1_vtiger_portalinfo` FOREIGN KEY (`id`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_poshipads`
--
ALTER TABLE `vtiger_poshipads`
  ADD CONSTRAINT `fk_1_vtiger_poshipads` FOREIGN KEY (`poshipaddressid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_postatushistory`
--
ALTER TABLE `vtiger_postatushistory`
  ADD CONSTRAINT `fk_1_vtiger_postatushistory` FOREIGN KEY (`purchaseorderid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_potential`
--
ALTER TABLE `vtiger_potential`
  ADD CONSTRAINT `fk_1_vtiger_potential` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_potentialscf`
--
ALTER TABLE `vtiger_potentialscf`
  ADD CONSTRAINT `fk_1_vtiger_potentialscf` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_potstagehistory`
--
ALTER TABLE `vtiger_potstagehistory`
  ADD CONSTRAINT `fk_1_vtiger_potstagehistory` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pricebook`
--
ALTER TABLE `vtiger_pricebook`
  ADD CONSTRAINT `fk_1_vtiger_pricebook` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pricebookcf`
--
ALTER TABLE `vtiger_pricebookcf`
  ADD CONSTRAINT `fk_1_vtiger_pricebookcf` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_pricebook` (`pricebookid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pricebookproductrel`
--
ALTER TABLE `vtiger_pricebookproductrel`
  ADD CONSTRAINT `fk_1_vtiger_pricebookproductrel` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_pricebook` (`pricebookid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_productcf`
--
ALTER TABLE `vtiger_productcf`
  ADD CONSTRAINT `fk_1_vtiger_productcf` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_products`
--
ALTER TABLE `vtiger_products`
  ADD CONSTRAINT `fk_1_vtiger_products` FOREIGN KEY (`productid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_producttaxrel`
--
ALTER TABLE `vtiger_producttaxrel`
  ADD CONSTRAINT `fk_crmid_vtiger_producttaxrel` FOREIGN KEY (`productid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_profile2globalpermissions`
--
ALTER TABLE `vtiger_profile2globalpermissions`
  ADD CONSTRAINT `fk_1_vtiger_profile2globalpermissions` FOREIGN KEY (`profileid`) REFERENCES `vtiger_profile` (`profileid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_project`
--
ALTER TABLE `vtiger_project`
  ADD CONSTRAINT `fk_crmid_vtiger_project` FOREIGN KEY (`projectid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projectcf`
--
ALTER TABLE `vtiger_projectcf`
  ADD CONSTRAINT `fk_projectid_vtiger_projectcf` FOREIGN KEY (`projectid`) REFERENCES `vtiger_project` (`projectid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projectmilestone`
--
ALTER TABLE `vtiger_projectmilestone`
  ADD CONSTRAINT `fk_crmid_vtiger_projectmilestone` FOREIGN KEY (`projectmilestoneid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projectmilestonecf`
--
ALTER TABLE `vtiger_projectmilestonecf`
  ADD CONSTRAINT `fk_projectmilestoneid_vtiger_projectmilestonecf` FOREIGN KEY (`projectmilestoneid`) REFERENCES `vtiger_projectmilestone` (`projectmilestoneid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projecttask`
--
ALTER TABLE `vtiger_projecttask`
  ADD CONSTRAINT `fk_crmid_vtiger_projecttask` FOREIGN KEY (`projecttaskid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projecttaskcf`
--
ALTER TABLE `vtiger_projecttaskcf`
  ADD CONSTRAINT `fk_projecttaskid_vtiger_projecttaskcf` FOREIGN KEY (`projecttaskid`) REFERENCES `vtiger_projecttask` (`projecttaskid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_purchaseorder`
--
ALTER TABLE `vtiger_purchaseorder`
  ADD CONSTRAINT `fk_4_vtiger_purchaseorder` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_crmid_vtiger_purchaseorder` FOREIGN KEY (`purchaseorderid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_purchaseordercf`
--
ALTER TABLE `vtiger_purchaseordercf`
  ADD CONSTRAINT `fk_1_vtiger_purchaseordercf` FOREIGN KEY (`purchaseorderid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotes`
--
ALTER TABLE `vtiger_quotes`
  ADD CONSTRAINT `fk_3_vtiger_quotes` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_crmid_vtiger_quotes` FOREIGN KEY (`quoteid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotesbillads`
--
ALTER TABLE `vtiger_quotesbillads`
  ADD CONSTRAINT `fk_1_vtiger_quotesbillads` FOREIGN KEY (`quotebilladdressid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotescf`
--
ALTER TABLE `vtiger_quotescf`
  ADD CONSTRAINT `fk_1_vtiger_quotescf` FOREIGN KEY (`quoteid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotesshipads`
--
ALTER TABLE `vtiger_quotesshipads`
  ADD CONSTRAINT `fk_1_vtiger_quotesshipads` FOREIGN KEY (`quoteshipaddressid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotestagehistory`
--
ALTER TABLE `vtiger_quotestagehistory`
  ADD CONSTRAINT `fk_1_vtiger_quotestagehistory` FOREIGN KEY (`quoteid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_recurringevents`
--
ALTER TABLE `vtiger_recurringevents`
  ADD CONSTRAINT `fk_1_vtiger_recurringevents` FOREIGN KEY (`activityid`) REFERENCES `vtiger_activity` (`activityid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_relcriteria`
--
ALTER TABLE `vtiger_relcriteria`
  ADD CONSTRAINT `fk_1_vtiger_relcriteria` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report`
--
ALTER TABLE `vtiger_report`
  ADD CONSTRAINT `fk_2_vtiger_report` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportdatefilter`
--
ALTER TABLE `vtiger_reportdatefilter`
  ADD CONSTRAINT `fk_1_vtiger_reportdatefilter` FOREIGN KEY (`datefilterid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportgroupbycolumn`
--
ALTER TABLE `vtiger_reportgroupbycolumn`
  ADD CONSTRAINT `fk_1_vtiger_reportgroupbycolumn` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportmodules`
--
ALTER TABLE `vtiger_reportmodules`
  ADD CONSTRAINT `fk_1_vtiger_reportmodules` FOREIGN KEY (`reportmodulesid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportsortcol`
--
ALTER TABLE `vtiger_reportsortcol`
  ADD CONSTRAINT `fk_1_vtiger_reportsortcol` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportsummary`
--
ALTER TABLE `vtiger_reportsummary`
  ADD CONSTRAINT `fk_1_vtiger_reportsummary` FOREIGN KEY (`reportsummaryid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reporttype`
--
ALTER TABLE `vtiger_reporttype`
  ADD CONSTRAINT `fk_1_vtiger_reporttype` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report_sharegroups`
--
ALTER TABLE `vtiger_report_sharegroups`
  ADD CONSTRAINT `vtiger_groups_groupid_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_report_reportid_ibfk_2` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report_sharerole`
--
ALTER TABLE `vtiger_report_sharerole`
  ADD CONSTRAINT `vtiger_report_reportid_ibfk_3` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_role_roleid_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report_sharers`
--
ALTER TABLE `vtiger_report_sharers`
  ADD CONSTRAINT `vtiger_report_reportid_ibfk_4` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_rolesd_rsid_ibfk_1` FOREIGN KEY (`rsid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report_shareusers`
--
ALTER TABLE `vtiger_report_shareusers`
  ADD CONSTRAINT `vtiger_reports_reportid_ibfk_1` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_users_userid_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_role2picklist`
--
ALTER TABLE `vtiger_role2picklist`
  ADD CONSTRAINT `fk_1_vtiger_role2picklist` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2_vtiger_role2picklist` FOREIGN KEY (`picklistid`) REFERENCES `vtiger_picklist` (`picklistid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesmanactivityrel`
--
ALTER TABLE `vtiger_salesmanactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanactivityrel` FOREIGN KEY (`smid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesmanattachmentsrel`
--
ALTER TABLE `vtiger_salesmanattachmentsrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanattachmentsrel` FOREIGN KEY (`attachmentsid`) REFERENCES `vtiger_attachments` (`attachmentsid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesmanticketrel`
--
ALTER TABLE `vtiger_salesmanticketrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanticketrel` FOREIGN KEY (`smid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesorder`
--
ALTER TABLE `vtiger_salesorder`
  ADD CONSTRAINT `fk_3_vtiger_salesorder` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_crmid_vtiger_salesorder` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesordercf`
--
ALTER TABLE `vtiger_salesordercf`
  ADD CONSTRAINT `fk_1_vtiger_salesordercf` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_seactivityrel`
--
ALTER TABLE `vtiger_seactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_seactivityrel` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_seattachmentsrel`
--
ALTER TABLE `vtiger_seattachmentsrel`
  ADD CONSTRAINT `fk_2_vtiger_seattachmentsrel` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_selectcolumn`
--
ALTER TABLE `vtiger_selectcolumn`
  ADD CONSTRAINT `fk_1_vtiger_selectcolumn` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_senotesrel`
--
ALTER TABLE `vtiger_senotesrel`
  ADD CONSTRAINT `fk1_crmid` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2_vtiger_senotesrel` FOREIGN KEY (`notesid`) REFERENCES `vtiger_notes` (`notesid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_seproductsrel`
--
ALTER TABLE `vtiger_seproductsrel`
  ADD CONSTRAINT `fk_2_vtiger_seproductsrel` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_service`
--
ALTER TABLE `vtiger_service`
  ADD CONSTRAINT `fk_1_vtiger_service` FOREIGN KEY (`serviceid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_servicecf`
--
ALTER TABLE `vtiger_servicecf`
  ADD CONSTRAINT `fk_serviceid_vtiger_servicecf` FOREIGN KEY (`serviceid`) REFERENCES `vtiger_service` (`serviceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_servicecontracts`
--
ALTER TABLE `vtiger_servicecontracts`
  ADD CONSTRAINT `fk_crmid_vtiger_servicecontracts` FOREIGN KEY (`servicecontractsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_servicecontractscf`
--
ALTER TABLE `vtiger_servicecontractscf`
  ADD CONSTRAINT `fk_servicecontractsid_vtiger_servicecontractscf` FOREIGN KEY (`servicecontractsid`) REFERENCES `vtiger_servicecontracts` (`servicecontractsid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_seticketsrel`
--
ALTER TABLE `vtiger_seticketsrel`
  ADD CONSTRAINT `fk_2_vtiger_seticketsrel` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_settings_field`
--
ALTER TABLE `vtiger_settings_field`
  ADD CONSTRAINT `fk_1_vtiger_settings_field` FOREIGN KEY (`blockid`) REFERENCES `vtiger_settings_blocks` (`blockid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_smsnotifier`
--
ALTER TABLE `vtiger_smsnotifier`
  ADD CONSTRAINT `fk_crmid_vtiger_smsnotifier` FOREIGN KEY (`smsnotifierid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_smsnotifiercf`
--
ALTER TABLE `vtiger_smsnotifiercf`
  ADD CONSTRAINT `fk_smsnotifierid_vtiger_smsnotifiercf` FOREIGN KEY (`smsnotifierid`) REFERENCES `vtiger_smsnotifier` (`smsnotifierid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_sobillads`
--
ALTER TABLE `vtiger_sobillads`
  ADD CONSTRAINT `fk_1_vtiger_sobillads` FOREIGN KEY (`sobilladdressid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_soshipads`
--
ALTER TABLE `vtiger_soshipads`
  ADD CONSTRAINT `fk_1_vtiger_soshipads` FOREIGN KEY (`soshipaddressid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_sostatushistory`
--
ALTER TABLE `vtiger_sostatushistory`
  ADD CONSTRAINT `fk_1_vtiger_sostatushistory` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tab_info`
--
ALTER TABLE `vtiger_tab_info`
  ADD CONSTRAINT `fk_1_vtiger_tab_info` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vtiger_ticketcf`
--
ALTER TABLE `vtiger_ticketcf`
  ADD CONSTRAINT `fk_1_vtiger_ticketcf` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_ticketcomments`
--
ALTER TABLE `vtiger_ticketcomments`
  ADD CONSTRAINT `fk_1_vtiger_ticketcomments` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_read_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_read_group_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_read_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_read_group_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_read_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_read_user_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_read_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_read_user_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_write_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_write_group_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_write_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_write_group_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_write_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_write_user_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_write_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_write_user_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_troubletickets`
--
ALTER TABLE `vtiger_troubletickets`
  ADD CONSTRAINT `fk_1_vtiger_troubletickets` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_user2role`
--
ALTER TABLE `vtiger_user2role`
  ADD CONSTRAINT `fk_2_vtiger_user2role` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_users2group`
--
ALTER TABLE `vtiger_users2group`
  ADD CONSTRAINT `fk_2_vtiger_users2group` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_user_module_preferences`
--
ALTER TABLE `vtiger_user_module_preferences`
  ADD CONSTRAINT `fk_2_vtiger_user_module_preferences` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vtiger_vendor`
--
ALTER TABLE `vtiger_vendor`
  ADD CONSTRAINT `fk_1_vtiger_vendor` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_vendorcf`
--
ALTER TABLE `vtiger_vendorcf`
  ADD CONSTRAINT `fk_1_vtiger_vendorcf` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_vendorcontactrel`
--
ALTER TABLE `vtiger_vendorcontactrel`
  ADD CONSTRAINT `fk_2_vtiger_vendorcontactrel` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_webforms_field`
--
ALTER TABLE `vtiger_webforms_field`
  ADD CONSTRAINT `fk_1_vtiger_webforms_field` FOREIGN KEY (`webformid`) REFERENCES `vtiger_webforms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_3_vtiger_webforms_field` FOREIGN KEY (`fieldname`) REFERENCES `vtiger_field` (`fieldname`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_webform_file_fields`
--
ALTER TABLE `vtiger_webform_file_fields`
  ADD CONSTRAINT `fk_vtiger_webforms` FOREIGN KEY (`webformid`) REFERENCES `vtiger_webforms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_wsapp_logs_details`
--
ALTER TABLE `vtiger_wsapp_logs_details`
  ADD CONSTRAINT `vtiger_wsapp_logs_basic_ibfk_1` FOREIGN KEY (`id`) REFERENCES `vtiger_wsapp_logs_basic` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_ws_entity_referencetype`
--
ALTER TABLE `vtiger_ws_entity_referencetype`
  ADD CONSTRAINT `vtiger_fk_1_actors_referencetype` FOREIGN KEY (`fieldtypeid`) REFERENCES `vtiger_ws_entity_fieldtype` (`fieldtypeid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_ws_entity_tables`
--
ALTER TABLE `vtiger_ws_entity_tables`
  ADD CONSTRAINT `fk_1_vtiger_ws_actor_tables` FOREIGN KEY (`webservice_entity_id`) REFERENCES `vtiger_ws_entity` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_ws_referencetype`
--
ALTER TABLE `vtiger_ws_referencetype`
  ADD CONSTRAINT `fk_1_vtiger_referencetype` FOREIGN KEY (`fieldtypeid`) REFERENCES `vtiger_ws_fieldtype` (`fieldtypeid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : ustbar

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-04-25 04:09:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ustbar`
-- ----------------------------
DROP TABLE IF EXISTS `ustbar`;
CREATE TABLE `ustbar` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Link` text NOT NULL,
  `Text` text,
  `Domain` text,
  `SnapShot` text,
  `Tags` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of ustbar
-- ----------------------------
INSERT INTO `ustbar` VALUES ('1', 'Link', 'Text', 'Domain', 'SnapShot', 'Tags');
INSERT INTO `ustbar` VALUES ('2', 'https://sisprod.psft.ust.hk/psp/SISPROD/EMPLOYEE/HRMS/c/SA_LEARNER_SERVICES.SSS_STUDENT_CENTER.GBL?pslnkid=Z_HC_SSS_STUDENT_CENTER_LNK&FolderPath=PORTAL_ROOT_OBJECT.Z_HC_SSS_STUDENT_CENTER_LNK&IsFolder=false&IgnoreParamTempl=FolderPath%2cIsFolder', 'Student Center', 'sisprod.psft.ust.hk', 'https^^^sisprod.psft.ust.hk^psp^SISPROD^EMPLOYEE^H.jpg', '');
INSERT INTO `ustbar` VALUES ('3', 'https://ss.ust.hk/ssea/courseApprovalRequest.do', 'Class Enrollment Request', 'ss.ust.hk', 'https^^^ss.ust.hk^ssea^courseApprovalRequest.do.jpg', '');
INSERT INTO `ustbar` VALUES ('4', 'https://w5.ab.ust.hk/wcq/cgi-bin/', 'HKUST Class Schedule & Quota', 'w5.ab.ust.hk', 'https^^^w5.ab.ust.hk^wcq^cgi-bin^.jpg', '');
INSERT INTO `ustbar` VALUES ('5', 'https://w6.ab.ust.hk/jr_ta/ta_stdt_main.jsp', 'Student Time Table Assistant', 'w6.ab.ust.hk', 'https^^^w6.ab.ust.hk^jr_ta^ta_stdt_main.jsp.jpg', '');
INSERT INTO `ustbar` VALUES ('6', 'http://lmes2.ust.hk/', 'Learning Management & Evaluation System (LMES)', 'lmes2.ust.hk', 'lmes2.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('7', 'http://ustlib.ust.hk/', 'Library Catalog', 'ustlib.ust.hk', 'ustlib.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('8', 'https://w5.ab.ust.hk/cgi-bin/std_cgi.sh/WService=broker_ba_p/prg/ba_stdt_main.r', 'Textbook Services', 'w5.ab.ust.hk', 'https^^^w5.ab.ust.hk^cgi-bin^std_cgi.sh^WService=b.jpg', '');
INSERT INTO `ustbar` VALUES ('9', 'https://w5.ab.ust.hk/cgi-bin/std_cgi.sh/WService=broker_ph_p/prg/ph_stdt_main.r', 'Healthy Lifestyle Course', 'w5.ab.ust.hk', 'https^^^w5.ab.ust.hk^cgi-bin^std_cgi.sh^WService=b.jpg', '');
INSERT INTO `ustbar` VALUES ('10', 'http://www.ust.hk/provost/calendar_dates/dates12-13confirmed.pdf', 'Calendar Dates', 'www.ust.hk', 'www.ust.hk^provost^calendar_dates^dates12-13confir.jpg', '');
INSERT INTO `ustbar` VALUES ('11', 'https://www.ab.ust.hk/as/as_admin_serv.htm', 'Admin Info & Services for Students', 'www.ab.ust.hk', 'https^^^www.ab.ust.hk^as^as_admin_serv.htm.jpg', '');
INSERT INTO `ustbar` VALUES ('12', 'https://w5.ab.ust.hk/cgi-bin/std_nem_cgi.sh/WService=broker_ua_p/prg/uc_ch_nd_main.r', 'Manage My HKUST Card', 'w5.ab.ust.hk', 'https^^^w5.ab.ust.hk^cgi-bin^std_nem_cgi.sh^WServi.jpg', '');
INSERT INTO `ustbar` VALUES ('13', 'https://www.ab.ust.hk/fo/StudentPayment.pdf', 'Payment procedure for Tuition,Hall, and Other Fees', 'www.ab.ust.hk', 'https^^^www.ab.ust.hk^fo^StudentPayment.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('14', 'https://www.ab.ust.hk/ielts', 'Claims for IELTS-CEPAS Test Fee', 'www.ab.ust.hk', 'https^^^www.ab.ust.hk^ielts.jpg', '');
INSERT INTO `ustbar` VALUES ('15', 'https://sao.ust.hk/studentlife/scholarships.html', 'Scholarships & Financial Aid', 'sao.ust.hk', 'https^^^sao.ust.hk^studentlife^scholarships.html.jpg', '');
INSERT INTO `ustbar` VALUES ('16', 'https://w5.ab.ust.hk/cgi-bin/std_cgi.sh/WService=broker_ak_p/prg/ak_rpg_stdt_main.r', 'PG Research Progress Report', 'w5.ab.ust.hk', 'https^^^w5.ab.ust.hk^cgi-bin^std_cgi.sh^WService=b.jpg', '');
INSERT INTO `ustbar` VALUES ('17', 'https://www.ab.ust.hk/rentgown', 'Graduation Services', 'www.ab.ust.hk', 'https^^^www.ab.ust.hk^rentgown.jpg', '');
INSERT INTO `ustbar` VALUES ('18', 'https://www.ab.ust.hk/apply_transcript', 'Apply for Transcript of Studies', 'www.ab.ust.hk', 'https^^^www.ab.ust.hk^apply_transcript.jpg', '');
INSERT INTO `ustbar` VALUES ('19', 'https://cams.ust.hk/cgi-bin/account/chgpasswd/form.pl', 'Change Network Password', 'cams.ust.hk', 'https^^^cams.ust.hk^cgi-bin^account^chgpasswd^form.jpg', '');
INSERT INTO `ustbar` VALUES ('20', 'https://pmt.ust.hk:8443/epurse/printbudget_cas/Purchase.jsp', 'Purchase Print Budget', 'pmt.ust.hk', 'https^^^pmt.ust.hk^8443^epurse^printbudget_cas^Pur.jpg', '');
INSERT INTO `ustbar` VALUES ('21', 'http://netprint.ust.hk/', 'Check Print Budget Balance', 'netprint.ust.hk', 'netprint.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('22', 'https://sqmail.ust.hk/src/login.php', 'Webmail', 'sqmail.ust.hk', 'https^^^sqmail.ust.hk^src^login.php.jpg', '');
INSERT INTO `ustbar` VALUES ('23', 'http://www.ust.hk/itsc/email/cas-imail/logon.pl', 'iMail Personal Settings', 'www.ust.hk', 'www.ust.hk^itsc^email^cas-imail^logon.pl.jpg', '');
INSERT INTO `ustbar` VALUES ('24', 'http://www.ust.hk/itsc/computerbarn/snapshots/allbarn.html', 'Snapshot of Computer Barn', 'www.ust.hk', 'www.ust.hk^itsc^computerbarn^snapshots^allbarn.htm.jpg', '');
INSERT INTO `ustbar` VALUES ('25', 'http://pathadvisor.ust.hk/', 'Path Advisor', 'pathadvisor.ust.hk', 'pathadvisor.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('26', 'http://www.ust.hk/itsc/', 'www.ust.hk/itsc/', 'www.ust.hk', 'www.ust.hk^itsc^.jpg', '');
INSERT INTO `ustbar` VALUES ('27', 'http://www.ust.hk/eng/news/index.php', 'University News', 'www.ust.hk', 'www.ust.hk^eng^news^index.php.jpg', '');
INSERT INTO `ustbar` VALUES ('28', 'http://www.ust.hk/eng/events/week.php', 'Upcoming Events', 'www.ust.hk', 'www.ust.hk^eng^events^week.php.jpg', '');
INSERT INTO `ustbar` VALUES ('29', 'http://www.ust.hk/eng/administration/op_pm.htm', 'President\'s Messages', 'www.ust.hk', 'www.ust.hk^eng^administration^op_pm.htm.jpg', '');
INSERT INTO `ustbar` VALUES ('30', 'http://www.ust.hk/semcal', 'Seminar & Thesis Defenses', 'www.ust.hk', 'www.ust.hk^semcal.jpg', '');
INSERT INTO `ustbar` VALUES ('31', 'http://www.ust.hk/eng/events/week.php', 'Calendar of Events', 'www.ust.hk', 'www.ust.hk^eng^events^week.php.jpg', '');
INSERT INTO `ustbar` VALUES ('32', 'http://www3.ust.hk/~webust/eng/events/ST_Calendar/admin/login.php', 'Post a Seminar (including Lecture) & Thesis Defenses', 'www3.ust.hk', 'www3.ust.hk^~webust^eng^events^ST_Calendar^admin^l.jpg', '');
INSERT INTO `ustbar` VALUES ('33', 'http://www.ust.hk/eng/cgi-bin/events_create_form.php', 'Post other events', 'www.ust.hk', 'www.ust.hk^eng^cgi-bin^events_create_form.php.jpg', '');
INSERT INTO `ustbar` VALUES ('34', 'http://www.ust.hk/cgi-bin/cgiwrap/~alumni/magazine.pl', 'Alumni Newsletter', 'www.ust.hk', 'www.ust.hk^cgi-bin^cgiwrap^~alumni^magazine.pl.jpg', '');
INSERT INTO `ustbar` VALUES ('35', 'http://www.bm.ust.hk/newsletter/', 'Business School Newsletter', 'www.bm.ust.hk', 'www.bm.ust.hk^newsletter^.jpg', '');
INSERT INTO `ustbar` VALUES ('36', 'http://www.ust.hk/itsc/channel/', 'ITSC Channel', 'www.ust.hk', 'www.ust.hk^itsc^channel^.jpg', '');
INSERT INTO `ustbar` VALUES ('37', 'http://www.seng.ust.hk/web/eng/publication.php', 'Engineering School Newsletter', 'www.seng.ust.hk', 'www.seng.ust.hk^web^eng^publication.php.jpg', '');
INSERT INTO `ustbar` VALUES ('38', 'http://newsletter.ust.hk/', 'Genesis HKUST Newsletter', 'newsletter.ust.hk', 'newsletter.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('39', 'http://www.ust.hk/healthmatters/', 'Health and Hygiene Matters', 'www.ust.hk', 'www.ust.hk^healthmatters^.jpg', '');
INSERT INTO `ustbar` VALUES ('40', 'http://library.ust.hk/info/notes/notes.html', 'Library Newsletter', 'library.ust.hk', 'library.ust.hk^info^notes^notes.html.jpg', '');
INSERT INTO `ustbar` VALUES ('41', 'http://www.ust.hk/provost/pg/newsletter/newsletter.html', 'PG Update', 'www.ust.hk', 'www.ust.hk^provost^pg^newsletter^newsletter.html.jpg', '');
INSERT INTO `ustbar` VALUES ('42', 'http://www.ab.ust.hk/hseo/sftywise.htm', 'HSEO Safety Wise', 'www.ab.ust.hk', 'www.ab.ust.hk^hseo^sftywise.htm.jpg.target.13.jpg\"', '');
INSERT INTO `ustbar` VALUES ('43', 'http://arr.ust.hk/', 'ARRO Homepage', 'arr.ust.hk', 'arr.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('44', 'http://lc.ust.hk/', 'LC Home', 'lc.ust.hk', 'lc.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('45', 'http://lc.ust.hk/~material/pinyin/', 'Hanyu PinYin', 'lc.ust.hk', 'lc.ust.hk^~material^pinyin^.jpg', '');
INSERT INTO `ustbar` VALUES ('46', 'http://mws.ust.hk/mw/account/login.php', 'My Word', 'mws.ust.hk', 'mws.ust.hk^mw^account^login.php.jpg', '');
INSERT INTO `ustbar` VALUES ('47', 'http://lc.ust.hk/~sac/', 'Self Access Center', 'lc.ust.hk', 'lc.ust.hk^~sac^.jpg', '');
INSERT INTO `ustbar` VALUES ('48', 'http://vela.ust.hk/', 'Virtural English Learning Advisor (VELA)', 'vela.ust.hk', 'vela.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('49', 'http://www.ust.hk/provost/', 'Provost Homepage', 'www.ust.hk', 'www.ust.hk^provost^.jpg', '');
INSERT INTO `ustbar` VALUES ('50', 'http://publish.ust.hk/prog_crs_ar/index.html', 'Academic Programs', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^index.html.jpg', '');
INSERT INTO `ustbar` VALUES ('51', 'http://publish.ust.hk/prog_crs_ar/ugreg/index.html', 'Academic Regulations', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^ugreg^index.html.jpg', '');
INSERT INTO `ustbar` VALUES ('52', 'http://www.ust.hk/provost/ug-guide/', 'UG Student Guide', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^.jpg', '');
INSERT INTO `ustbar` VALUES ('53', 'http://ptc.ust.hk/', 'PTC Homepage', 'ptc.ust.hk', 'ptc.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('54', 'http://photogallery.ust.hk/AlbumPage.aspx?album=all', 'UST Photo Catalog', 'photogallery.ust.hk', 'photogallery.ust.hk^AlbumPage.aspx^album=all.jpg', '');
INSERT INTO `ustbar` VALUES ('55', 'http://ptc.ust.hk/ecard2002/index.html', 'Send E-card', 'ptc.ust.hk', 'ptc.ust.hk^ecard2002^index.html.jpg', '');
INSERT INTO `ustbar` VALUES ('56', 'https://sao.ust.hk/', 'SAO Homepage', 'sao.ust.hk', 'https^^^sao.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('57', 'https://www.ab.ust.hk/applyhall', 'Apply / Accept Offer for On-campus Accommodation', 'www.ab.ust.hk', 'https^^^www.ab.ust.hk^applyhall.jpg', '');
INSERT INTO `ustbar` VALUES ('58', 'https://w5.ab.ust.hk/cgi-bin/std_nem_cgi.sh/WService=broker_gn_p/prg/gn_ac_main.r', 'Charge Up Air-Cond Money', 'w5.ab.ust.hk', 'https^^^w5.ab.ust.hk^cgi-bin^std_nem_cgi.sh^WServi.jpg', '');
INSERT INTO `ustbar` VALUES ('59', 'http://www.ab.ust.hk/hseo/Clinic/clinic.htm', 'Clinical Service', 'www.ab.ust.hk', 'www.ab.ust.hk^hseo^Clinic^clinic.htm.jpg', '');
INSERT INTO `ustbar` VALUES ('60', 'https://w3.ab.ust.hk/hkustcard/uc_epurse_explain.htm ', 'e-Purse Recharge Information', 'w3.ab.ust.hk', 'https^^^w3.ab.ust.hk^hkustcard^uc_epurse_explain.h.jpg', '');
INSERT INTO `ustbar` VALUES ('61', 'http://www.ust.hk/itsc/ResNet/', 'ResNet', 'www.ust.hk', 'www.ust.hk^itsc^ResNet^.jpg', '');
INSERT INTO `ustbar` VALUES ('62', 'http://www.ust.hk/itsc/wireless/hkust/smobilenet.html', 'sMobileNet (Wireless Network in Hall)', 'www.ust.hk', 'www.ust.hk^itsc^wireless^hkust^smobilenet.html.jpg', '');
INSERT INTO `ustbar` VALUES ('63', 'http://www.ust.hk/orientation/', 'UG Orientation', 'www.ust.hk', 'www.ust.hk^orientation^.jpg', '');
INSERT INTO `ustbar` VALUES ('64', 'http://www.ust.hk/cfa/', 'Center for the Arts', 'www.ust.hk', 'www.ust.hk^cfa^.jpg', '');
INSERT INTO `ustbar` VALUES ('65', 'http://www.ust.hk/~webccshs/', 'Center for Cultural Studies', 'www.ust.hk', 'www.ust.hk^~webccshs^.jpg', '');
INSERT INTO `ustbar` VALUES ('66', 'https://www.ab.ust.hk/fo/StudentPayment.pdf', 'Procedures for Payment of Tuition, Hall and Other Fees', 'www.ab.ust.hk', 'https^^^www.ab.ust.hk^fo^StudentPayment.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('67', 'http://www.eoc.org.hk:8080/shoncampus', 'Sexual Harassment Training Module', 'www.eoc.org.hk', 'www.eoc.org.hk^8080^shoncampus.jpg', '');
INSERT INTO `ustbar` VALUES ('68', 'http://ihome.ust.hk/~su_ucoun/link.html', 'Student Society Web', 'ihome.ust.hk', 'ihome.ust.hk^~su_ucoun^link.html.jpg', '');
INSERT INTO `ustbar` VALUES ('69', 'http://www.ust.hk/provost/announcements/news_announcements_ug4.html', ' Calendar Dates 2013-14 (Provisional)', 'www.ust.hk', 'www.ust.hk^provost^announcements^news_announcement.jpg', '');
INSERT INTO `ustbar` VALUES ('70', 'http://www.ust.hk/provost/announcements/news_announcements_ug3.html', ' Academic Integrity and Good Learning Environment', 'www.ust.hk', 'www.ust.hk^provost^announcements^news_announcement.jpg', '');
INSERT INTO `ustbar` VALUES ('71', 'http://www.ust.hk/provost/announcements/news_announcements_ug1.html', ' Important Dates in 2012-13, Program & Course Catalogs, Academic Regulations', 'www.ust.hk', 'www.ust.hk^provost^announcements^news_announcement.jpg', '');
INSERT INTO `ustbar` VALUES ('72', 'http://arr.ust.hk/reg/an/an_std_announce/cepas.html', 'Common English Proficiency Assessment Scheme ( CEPAS ) for 2012-13', 'arr.ust.hk', 'arr.ust.hk^reg^an^an_std_announce^cepas.html.jpg', '');
INSERT INTO `ustbar` VALUES ('73', 'http://arr.ust.hk/reg/an/an_std_announce/ielts.html', 'IELTS Test Fee Reimbursement under CEPAS 2012-13', 'arr.ust.hk', 'arr.ust.hk^reg^an^an_std_announce^ielts.html.jpg', '');
INSERT INTO `ustbar` VALUES ('74', 'http://arr.ust.hk/reg/an/an_std_announce/hippo.html', 'Help with IELTS Preparation and Practice On-line (HIPPO)', 'arr.ust.hk', 'arr.ust.hk^reg^an^an_std_announce^hippo.html.jpg', '');
INSERT INTO `ustbar` VALUES ('75', 'http://arr.ust.hk/reg/an/an_std_announce/personal-data.html', 'Personal Information Collection Statement', 'arr.ust.hk', 'arr.ust.hk^reg^an^an_std_announce^personal-data.ht.jpg', '');
INSERT INTO `ustbar` VALUES ('76', 'http://publish.ust.hk/prog_crs_ar/ugreg/index.html', 'Academic Regulations', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^ugreg^index.html.jpg', '');
INSERT INTO `ustbar` VALUES ('77', 'http://www.ust.hk/provost/calendar_dates/dates12-13confirmed.pdf', 'Calendar Dates', 'www.ust.hk', 'www.ust.hk^provost^calendar_dates^dates12-13confir.jpg', '');
INSERT INTO `ustbar` VALUES ('78', 'http://publish.ust.hk/prog_crs_ar/ugcourse/index.html', 'Course Catalog', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^ugcourse^index.html.jpg', '');
INSERT INTO `ustbar` VALUES ('79', 'http://publish.ust.hk/prog_crs_ar/index.html', 'Program Catalog', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^index.html.jpg', '');
INSERT INTO `ustbar` VALUES ('80', 'http://www.ust.hk/provost/ug/curriculum_hb.html', 'Undergraduate Curriculum Handbook', 'www.ust.hk', 'www.ust.hk^provost^ug^curriculum_hb.html.jpg', '');
INSERT INTO `ustbar` VALUES ('81', 'http://www.ust.hk/eng/teaching/schools.htm', 'Schools & Departments', 'www.ust.hk', 'www.ust.hk^eng^teaching^schools.htm.jpg', '');
INSERT INTO `ustbar` VALUES ('82', 'http://uce.ust.hk/', 'UCEO', 'uce.ust.hk', 'uce.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('83', 'http://lc.ust.hk/', 'Language Center', 'lc.ust.hk', 'lc.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('84', 'http://arr.ust.hk/reg/forms/r-6.pdf', 'Application for Program Transfer', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-6.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('85', 'http://arr.ust.hk/reg/forms/r-8.pdf', 'Application for Leave from Study', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-8.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('86', 'http://arr.ust.hk/reg/forms/r-11.pdf', 'Application for Personal Data Amendment', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-11.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('87', 'http://arr.ust.hk/reg/forms/r-12.pdf', 'Application for Withdrawal of Study', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-12.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('88', 'http://arr.ust.hk/reg/forms/RR-22.pdf', 'Application for Class Enrollment/Withdrawal after Add/Drop Period', 'arr.ust.hk', 'arr.ust.hk^reg^forms^RR-22.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('89', 'http://arr.ust.hk/reg/forms/r-25.pdf', 'Application for Testimonial', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-25.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('90', 'http://arr.ust.hk/reg/forms/r-26a.pdf', 'Application for Replacement of HKUST Card', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-26a.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('91', 'http://arr.ust.hk/reg/forms/r-29.pdf', 'Application for Double Registration', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-29.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('92', 'http://arr.ust.hk/reg/forms/r-31.pdf', 'Application for Extension of Length of Study', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-31.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('93', 'http://arr.ust.hk/reg/forms/r-37.pdf', 'Declaration of Undergraduate Minor Program', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-37.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('94', 'http://arr.ust.hk/reg/forms/EX10_pdf.pdf', 'Application for Transcript of Studies', 'arr.ust.hk', 'arr.ust.hk^reg^forms^EX10_pdf.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('95', 'http://arr.ust.hk/reg/forms/EX-16.pdf', 'Report on Extenuating Circumstances Affecting Assessment', 'arr.ust.hk', 'arr.ust.hk^reg^forms^EX-16.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('96', 'http://arr.ust.hk/reg/forms/fof100.pdf', 'Application for Refund of Caution Money', 'arr.ust.hk', 'arr.ust.hk^reg^forms^fof100.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('97', 'http://arr.ust.hk/reg/forms/gr-13.pdf', 'Application for Award Certification Letter', 'arr.ust.hk', 'arr.ust.hk^reg^forms^gr-13.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('98', 'http://arr.ust.hk/reg/forms/gr-12.pdf', 'Collection of Degree Diploma', 'arr.ust.hk', 'arr.ust.hk^reg^forms^gr-12.pdf.jpg', '');
INSERT INTO `ustbar` VALUES ('99', 'http://www.ust.hk/provost/ug-guide/programs/requirements.html', 'Curriculum Requirements', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^requirements..jpg', '');
INSERT INTO `ustbar` VALUES ('100', 'http://www.ust.hk/provost/ug-guide/programs/credit.html', 'Credit Transfer & Exemptions', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^credit.html.jpg', '');
INSERT INTO `ustbar` VALUES ('101', 'http://www.ust.hk/provost/ug-guide/programs/registration.html', 'Registration in Programs', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^registration..jpg', '');
INSERT INTO `ustbar` VALUES ('102', 'http://www.ust.hk/provost/ug-guide/programs/changes.html', 'Changes of Registration', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^changes.html.jpg', '');
INSERT INTO `ustbar` VALUES ('103', 'http://www.ust.hk/provost/ug-guide/programs/leave.html', 'Leave from Study', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^leave.html.jpg', '');
INSERT INTO `ustbar` VALUES ('104', 'http://www.ust.hk/provost/ug-guide/programs/withdrawal.html', 'University Withdrawal & Re-admission', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^withdrawal.ht.jpg', '');
INSERT INTO `ustbar` VALUES ('105', 'http://www.ust.hk/provost/ug-guide/courses/pathway.html', 'Study Pathway', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^courses^pathway.html.jpg', '');
INSERT INTO `ustbar` VALUES ('106', 'http://www.ust.hk/provost/ug-guide/courses/class.html', 'Class Enrollment Process', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^courses^class.html.jpg', '');
INSERT INTO `ustbar` VALUES ('107', 'http://www.ust.hk/provost/ug-guide/integrity/index.html', 'Academic Integrity & Conduct', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^integrity^index.html.jpg', '');
INSERT INTO `ustbar` VALUES ('108', 'http://www.ust.hk/provost/ug-guide/classes/weather.html', 'Bad Weather Arrangements', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^classes^weather.html.jpg', '');
INSERT INTO `ustbar` VALUES ('109', 'http://www.ust.hk/provost/ug-guide/classes/study.html', 'Study Load & Student Employment', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^classes^study.html.jpg', '');
INSERT INTO `ustbar` VALUES ('110', 'http://library.ust.hk/info/colls.html', 'Library Collections', 'library.ust.hk', 'library.ust.hk^info^colls.html.jpg', '');
INSERT INTO `ustbar` VALUES ('111', 'http://libguides.ust.hk/', 'Research Guides', 'libguides.ust.hk', 'libguides.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('112', 'http://library.ust.hk/guides/findbook.html', 'Finding Books', 'library.ust.hk', 'library.ust.hk^guides^findbook.html.jpg', '');
INSERT INTO `ustbar` VALUES ('113', 'http://library.ust.hk/guides/findarticle.html', 'Finding Articles & Journals', 'library.ust.hk', 'library.ust.hk^guides^findarticle.html.jpg', '');
INSERT INTO `ustbar` VALUES ('114', 'http://library.ust.hk/guides/finddissertation.html', 'Finding Theses', 'library.ust.hk', 'library.ust.hk^guides^finddissertation.html.jpg', '');
INSERT INTO `ustbar` VALUES ('115', 'http://library.ust.hk/guides/findav.html', 'Finding Audio & Videos', 'library.ust.hk', 'library.ust.hk^guides^findav.html.jpg', '');
INSERT INTO `ustbar` VALUES ('116', 'http://lbsearch.ust.hk/', 'PowerSearch', 'lbsearch.ust.hk', 'lbsearch.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('117', 'http://ustlib.ust.hk/search/r', 'Course Reserve', 'ustlib.ust.hk', 'ustlib.ust.hk^search^r.jpg', '');
INSERT INTO `ustbar` VALUES ('118', 'http://library.ust.hk/info/databases/', 'Databases', 'library.ust.hk', 'library.ust.hk^info^databases^.jpg', '');
INSERT INTO `ustbar` VALUES ('119', 'http://library.ust.hk/info/ebooks.html', 'E-Books', 'library.ust.hk', 'library.ust.hk^info^ebooks.html.jpg', '');
INSERT INTO `ustbar` VALUES ('120', 'http://library.ust.hk/res/ejournals/', 'E-Journals', 'library.ust.hk', 'library.ust.hk^res^ejournals^.jpg', '');
INSERT INTO `ustbar` VALUES ('121', 'http://library.ust.hk/res/maps/', 'Antique Maps Database', 'library.ust.hk', 'library.ust.hk^res^maps^.jpg', '');
INSERT INTO `ustbar` VALUES ('122', 'http://library.ust.hk/hkir/', 'HK Institutional Repositories', 'library.ust.hk', 'library.ust.hk^hkir^.jpg', '');
INSERT INTO `ustbar` VALUES ('123', 'http://digitalimages.ust.hk/', 'HKUST Digital Images', 'digitalimages.ust.hk', 'digitalimages.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('124', 'http://library.ust.hk/cgi/db/thesis.pl', 'HKUST E-Theses', 'library.ust.hk', 'library.ust.hk^cgi^db^thesis.pl.jpg', '');
INSERT INTO `ustbar` VALUES ('125', 'http://library.ust.hk/cgi/db/newsclip.pl', 'HKUST News Clippings', 'library.ust.hk', 'library.ust.hk^cgi^db^newsclip.pl.jpg', '');
INSERT INTO `ustbar` VALUES ('126', 'http://library.ust.hk/repository/', 'Institutional Repository', 'library.ust.hk', 'library.ust.hk^repository^.jpg', '');
INSERT INTO `ustbar` VALUES ('127', 'http://library.ust.hk/res/beyond/', 'Internet Resources', 'library.ust.hk', 'library.ust.hk^res^beyond^.jpg', '');
INSERT INTO `ustbar` VALUES ('128', 'http://library.ust.hk/special/', 'Special Collections', 'library.ust.hk', 'library.ust.hk^special^.jpg', '');
INSERT INTO `ustbar` VALUES ('129', 'http://catalog.ust.hk/stream/', 'Streaming Videos', 'catalog.ust.hk', 'catalog.ust.hk^stream^.jpg', '');
INSERT INTO `ustbar` VALUES ('130', 'http://library.ust.hk/archives/', 'University Archives', 'library.ust.hk', 'library.ust.hk^archives^.jpg', '');
INSERT INTO `ustbar` VALUES ('131', 'http://library.ust.hk/serv/faculty.html', 'For Faculty & Staff', 'library.ust.hk', 'library.ust.hk^serv^faculty.html.jpg', '');
INSERT INTO `ustbar` VALUES ('132', 'http://library.ust.hk/serv/pg.html', 'For Postgraduates', 'library.ust.hk', 'library.ust.hk^serv^pg.html.jpg', '');
INSERT INTO `ustbar` VALUES ('133', 'http://library.ust.hk/serv/ug.html', 'For Undergraduates', 'library.ust.hk', 'library.ust.hk^serv^ug.html.jpg', '');
INSERT INTO `ustbar` VALUES ('134', 'http://library.ust.hk/serv/alumni.html', 'For Alumni', 'library.ust.hk', 'library.ust.hk^serv^alumni.html.jpg', '');
INSERT INTO `ustbar` VALUES ('135', 'http://library.ust.hk/serv/visitors.html', 'For Visitors and Others', 'library.ust.hk', 'library.ust.hk^serv^visitors.html.jpg', '');
INSERT INTO `ustbar` VALUES ('136', 'http://library.ust.hk/serv/service-a-z.html', 'Services A-Z', 'library.ust.hk', 'library.ust.hk^serv^service-a-z.html.jpg', '');
INSERT INTO `ustbar` VALUES ('137', 'http://library.ust.hk/info/about.html', 'About Us', 'library.ust.hk', 'library.ust.hk^info^about.html.jpg', '');
INSERT INTO `ustbar` VALUES ('138', 'http://library.ust.hk/info/events.html', 'News Blog', 'library.ust.hk', 'library.ust.hk^info^events.html.jpg', '');
INSERT INTO `ustbar` VALUES ('139', 'http://www.ust.hk/eng/about/publications.htm', 'HKUST Publications', 'www.ust.hk', 'www.ust.hk^eng^about^publications.htm.jpg', '');
INSERT INTO `ustbar` VALUES ('140', 'http://library.ust.hk/faq/', 'How Do I..', 'library.ust.hk', 'library.ust.hk^faq^.jpg', '');
INSERT INTO `ustbar` VALUES ('141', 'http://library.ust.hk/faq/borrow.html', 'Ã‚Â» Borrow and Return', 'library.ust.hk', 'library.ust.hk^faq^borrow.html.jpg', '');
INSERT INTO `ustbar` VALUES ('142', 'http://library.ust.hk/faq/eresource.html', 'Ã‚Â» Computer Access', 'library.ust.hk', 'library.ust.hk^faq^eresource.html.jpg', '');
INSERT INTO `ustbar` VALUES ('143', 'http://library.ust.hk/faq/reserve.html', 'Ã‚Â» Course Reserve', 'library.ust.hk', 'library.ust.hk^faq^reserve.html.jpg', '');
INSERT INTO `ustbar` VALUES ('144', 'http://library.ust.hk/faq/facilities.html', 'Ã‚Â» Facilities', 'library.ust.hk', 'library.ust.hk^faq^facilities.html.jpg', '');
INSERT INTO `ustbar` VALUES ('145', 'http://library.ust.hk/faq/ic.html', 'Ã‚Â» Information Commons', 'library.ust.hk', 'library.ust.hk^faq^ic.html.jpg', '');
INSERT INTO `ustbar` VALUES ('146', 'http://library.ust.hk/faq/find.html', 'Ã‚Â» Library Collections', 'library.ust.hk', 'library.ust.hk^faq^find.html.jpg', '');
INSERT INTO `ustbar` VALUES ('147', 'http://library.ust.hk/faq/theses.html', 'Ã‚Â» Theses', 'library.ust.hk', 'library.ust.hk^faq^theses.html.jpg', '');
INSERT INTO `ustbar` VALUES ('148', 'http://library.ust.hk/faq/access.html', 'Ã‚Â» Visit the Library', 'library.ust.hk', 'library.ust.hk^faq^access.html.jpg', '');
INSERT INTO `ustbar` VALUES ('149', 'https://ustlnx37.ust.hk/itsc/ResNet/cas-frontpage.html', 'ResNet Registration Program', 'ustlnx37.ust.hk', 'https^^^ustlnx37.ust.hk^itsc^ResNet^cas-frontpage..jpg', '');
INSERT INTO `ustbar` VALUES ('150', 'http://www.ust.hk/itsc/ResNet/announcements.html', 'Announcements', 'www.ust.hk', 'www.ust.hk^itsc^ResNet^announcements.html.jpg', '');
INSERT INTO `ustbar` VALUES ('151', 'http://www.ust.hk/itsc/ResNet/resnet_incident.html', 'Recent ResNet Incidents', 'www.ust.hk', 'www.ust.hk^itsc^ResNet^resnet_incident.html.jpg', '');
INSERT INTO `ustbar` VALUES ('152', 'http://www.jijis.org.hk/jijis/', 'Joint Institution Job Information System (JIJIS)', 'www.jijis.org.hk', 'www.jijis.org.hk^jijis^.jpg', '');
INSERT INTO `ustbar` VALUES ('153', 'https://career.ust.hk/cgi-bin/web/cctr.php', 'Career Center', 'career.ust.hk', 'https^^^career.ust.hk^cgi-bin^web^cctr.php.jpg', '');
INSERT INTO `ustbar` VALUES ('154', 'https://w5.ab.ust.hk/cgi-bin/std_cgi.sh/WService=broker_lk_p/prg/lk_stdt_main.r', 'Apply for Storage Locker', 'w5.ab.ust.hk', 'https^^^w5.ab.ust.hk^cgi-bin^std_cgi.sh^WService=b.jpg', '');
INSERT INTO `ustbar` VALUES ('155', 'https://w6.ab.ust.hk/fbs', 'Sports Facilities Booking', 'w6.ab.ust.hk', 'https^^^w6.ab.ust.hk^fbs.jpg', '');
INSERT INTO `ustbar` VALUES ('156', 'https://www.ab.ust.hk/fmo/Commual_Areas/Communal_Areas.htm', 'Booking Communal Area', 'www.ab.ust.hk', 'https^^^www.ab.ust.hk^fmo^Commual_Areas^Communal_A.jpg', '');
INSERT INTO `ustbar` VALUES ('157', 'https://sao.ust.hk/counseling/cgi-bin/web/index.php', 'Access Counseling Service', 'sao.ust.hk', 'https^^^sao.ust.hk^counseling^cgi-bin^web^index.ph.jpg', '');
INSERT INTO `ustbar` VALUES ('158', 'http://www.ust.hk/eng/cgi-bin/department_search.pl', 'Department List', 'www.ust.hk', 'www.ust.hk^eng^cgi-bin^department_search.pl.jpg', '');
INSERT INTO `ustbar` VALUES ('159', 'http://www.ust.hk/intranet/phone.html', 'Campus Services Contacts', 'www.ust.hk', 'www.ust.hk^intranet^phone.html.jpg', '');
INSERT INTO `ustbar` VALUES ('160', 'http://pathadvisor.ust.hk/', 'Path Advisor', 'pathadvisor.ust.hk', 'pathadvisor.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('161', 'http://www.math.ust.hk/~maklchan', ' CHAN, Kwing-Lam', 'www.math.ust.hk', 'www.math.ust.hk^~maklchan.jpg', '');
INSERT INTO `ustbar` VALUES ('162', 'http://www.math.ust.hk/~mahlchang', ' CHANG, Huai-Liang', 'www.math.ust.hk', 'www.math.ust.hk^~mahlchang.jpg', '');
INSERT INTO `ustbar` VALUES ('163', 'http://www.math.ust.hk/~machas', ' CHASNOV, Jeffrey R.', 'www.math.ust.hk', 'www.math.ust.hk^~machas.jpg', '');
INSERT INTO `ustbar` VALUES ('164', 'http://www.math.ust.hk/~mabfchen', ' CHEN, Bei-Fang', 'www.math.ust.hk', 'www.math.ust.hk^~mabfchen.jpg', '');
INSERT INTO `ustbar` VALUES ('165', 'http://www.math.ust.hk/~makchen', ' CHEN, Kani', 'www.math.ust.hk', 'www.math.ust.hk^~makchen.jpg', '');
INSERT INTO `ustbar` VALUES ('166', 'http://www.math.ust.hk/~macheng', ' CHENG, Shiu-Yuen', 'www.math.ust.hk', 'www.math.ust.hk^~macheng.jpg', '');
INSERT INTO `ustbar` VALUES ('167', 'http://www.math.ust.hk/~machiang', ' CHIANG, Yik-Man', 'www.math.ust.hk', 'www.math.ust.hk^~machiang.jpg', '');
INSERT INTO `ustbar` VALUES ('168', 'http://www.math.ust.hk/~majfung', ' FUNG, Jimmy Chi-Hung', 'www.math.ust.hk', 'www.math.ust.hk^~majfung.jpg', '');
INSERT INTO `ustbar` VALUES ('169', 'http://www.math.ust.hk/~magan', ' GAN, Jian-Ping', 'www.math.ust.hk', 'www.math.ust.hk^~magan.jpg', '');
INSERT INTO `ustbar` VALUES ('170', 'http://www.math.ust.hk/~maxhhe', ' HE, Xu-Hua', 'www.math.ust.hk', 'www.math.ust.hk^~maxhhe.jpg', '');
INSERT INTO `ustbar` VALUES ('171', 'http://www.math.ust.hk/~majhu', ' HU, Ji-Shan', 'www.math.ust.hk', 'www.math.ust.hk^~majhu.jpg', '');
INSERT INTO `ustbar` VALUES ('172', 'http://www.math.ust.hk/~mahuang', ' HUANG, Jing-Song', 'www.math.ust.hk', 'www.math.ust.hk^~mahuang.jpg', '');
INSERT INTO `ustbar` VALUES ('173', 'http://www.math.ust.hk/~majing', ' JING, Bing-Yi', 'www.math.ust.hk', 'www.math.ust.hk^~majing.jpg', '');
INSERT INTO `ustbar` VALUES ('174', 'http://www.math.ust.hk/~maykwok', ' KWOK, Yue-Kuen', 'www.math.ust.hk', 'www.math.ust.hk^~maykwok.jpg', '');
INSERT INTO `ustbar` VALUES ('175', 'http://www.math.ust.hk/~masyleung', ' LEUNG, Shing-Yu', 'www.math.ust.hk', 'www.math.ust.hk^~masyleung.jpg', '');
INSERT INTO `ustbar` VALUES ('176', 'http://www.math.ust.hk/~matom', ' LI, Jian-Shu', 'www.math.ust.hk', 'www.math.ust.hk^~matom.jpg', '');
INSERT INTO `ustbar` VALUES ('177', 'http://www.math.ust.hk/~makyli', ' LI, Kin-Yin', 'www.math.ust.hk', 'www.math.ust.hk^~makyli.jpg', '');
INSERT INTO `ustbar` VALUES ('178', 'http://www.math.ust.hk/~mawpli', ' LI, Wei-Ping', 'www.math.ust.hk', 'www.math.ust.hk^~mawpli.jpg', '');
INSERT INTO `ustbar` VALUES ('179', 'http://www.math.ust.hk/~maling', ' LING, Shi-Qing', 'www.math.ust.hk', 'www.math.ust.hk^~maling.jpg', '');
INSERT INTO `ustbar` VALUES ('180', 'http://www.math.ust.hk/~mameng', ' MENG, Guo-Wu', 'www.math.ust.hk', 'www.math.ust.hk^~mameng.jpg', '');
INSERT INTO `ustbar` VALUES ('181', 'http://www.math.ust.hk/~amoy', ' MOY, Allen', 'www.math.ust.hk', 'www.math.ust.hk^~amoy.jpg', '');
INSERT INTO `ustbar` VALUES ('182', 'http://www.math.ust.hk/~mamu', ' MU, Mo', 'www.math.ust.hk', 'www.math.ust.hk^~mamu.jpg', '');
INSERT INTO `ustbar` VALUES ('183', 'http://www.math.ust.hk/~maxhpeng', ' PENG, Xian-Hua', 'www.math.ust.hk', 'www.math.ust.hk^~maxhpeng.jpg', '');
INSERT INTO `ustbar` VALUES ('184', 'http://www.math.ust.hk/~maqian', ' QIAN, Tie-Zheng', 'www.math.ust.hk', 'www.math.ust.hk^~maqian.jpg', '');
INSERT INTO `ustbar` VALUES ('185', 'http://www.math.ust.hk/~mawang', ' WANG, Xiao-Ping', 'www.math.ust.hk', 'www.math.ust.hk^~mawang.jpg', '');
INSERT INTO `ustbar` VALUES ('186', 'http://www.math.ust.hk/~mamywong', ' WONG, Man-Yu', 'www.math.ust.hk', 'www.math.ust.hk^~mamywong.jpg', '');
INSERT INTO `ustbar` VALUES ('187', 'http://www.math.ust.hk/~malwu', ' WU, Li-Xin', 'www.math.ust.hk', 'www.math.ust.hk^~malwu.jpg', '');
INSERT INTO `ustbar` VALUES ('188', 'http://www.math.ust.hk/~maxiang', ' XIANG, Yang', 'www.math.ust.hk', 'www.math.ust.hk^~maxiang.jpg', '');
INSERT INTO `ustbar` VALUES ('189', 'http://www.math.ust.hk/~mamsxiong', ' XIONG, Mao-Sheng', 'www.math.ust.hk', 'www.math.ust.hk^~mamsxiong.jpg', '');
INSERT INTO `ustbar` VALUES ('190', 'http://www.math.ust.hk/~makxu', ' XU, Kun', 'www.math.ust.hk', 'www.math.ust.hk^~makxu.jpg', '');
INSERT INTO `ustbar` VALUES ('191', 'http://www.math.ust.hk/~mamyan', ' YAN, Min', 'www.math.ust.hk', 'www.math.ust.hk^~mamyan.jpg', '');
INSERT INTO `ustbar` VALUES ('192', 'http://www.math.ust.hk/~mazhu', ' ZHU, Yong-Chang', 'www.math.ust.hk', 'www.math.ust.hk^~mazhu.jpg', '');
INSERT INTO `ustbar` VALUES ('193', 'http://www.math.ust.hk/~madu', ' DU, Qiang', 'www.math.ust.hk', 'www.math.ust.hk^~madu.jpg', '');
INSERT INTO `ustbar` VALUES ('194', 'http://www.math.ust.hk/~alau', ' LAU, Alexis Kai-Hon', 'www.math.ust.hk', 'www.math.ust.hk^~alau.jpg', '');
INSERT INTO `ustbar` VALUES ('195', 'http://www.math.ust.hk/~mahsieh', 'Professor Emeritus Din-Yu HSIEH', '', '~mahsieh.jpg', '');
INSERT INTO `ustbar` VALUES ('196', 'http://www.math.ust.hk/~mahsiang', 'Professor Emeritus Wu-Yi HSIANG', '', '~mahsiang.jpg', '');
INSERT INTO `ustbar` VALUES ('197', 'http://www.math.ust.hk/~whhui', 'Professor Emeritus Grafton Wai-How HUI', '', '~whhui.jpg', '');
INSERT INTO `ustbar` VALUES ('198', 'http://www.math.ust.hk/~makryu', 'Professor Emeritus Kunrui YU', '', '~makryu.jpg', '');
INSERT INTO `ustbar` VALUES ('199', 'http://www.math.ust.hk/people/faculty/mayang', 'Professor Chung-Chun YANG', '', '^people^faculty^mayang.jpg', '');
INSERT INTO `ustbar` VALUES ('200', 'Link', 'Text', 'Domain', 'SnapShot', 'Tags');
INSERT INTO `ustbar` VALUES ('201', 'http://bme.ust.hk/', 'Division of Biomedical Engineering', 'bme.ust.hk', 'bme.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('202', 'http://www.envr.ust.hk/', 'Division of Environment', 'www.envr.ust.hk', 'www.envr.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('203', 'http://life-sci.ust.hk/', 'Division of Life Science', 'life-sci.ust.hk', 'life-sci.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('204', 'http://www-chem.ust.hk/', 'Department of Chemistry', 'www-chem.ust.hk', 'www-chem.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('205', 'http://www.math.ust.hk/', 'Department of Mathematics', 'www.math.ust.hk', 'www.math.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('206', 'http://physics.ust.hk/', 'Department of Physics', 'physics.ust.hk', 'physics.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('207', 'http://www.ceng.ust.hk/', 'Department of Chemical and Biomolecular Engineering', 'www.ceng.ust.hk', 'www.ceng.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('208', 'http://www.ce.ust.hk/', 'Department of Civil and Environmental Engineering', 'www.ce.ust.hk', 'www.ce.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('209', 'http://www.cse.ust.hk/', 'Department of Computer Science and Engineering', 'www.cse.ust.hk', 'www.cse.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('210', 'http://www.ece.ust.hk/', 'Department of Electronic and Computer Engineering', 'www.ece.ust.hk', 'www.ece.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('211', 'http://www.ielm.ust.hk/', 'Department of Industrial Engineering and Logistics Management', 'www.ielm.ust.hk', 'www.ielm.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('212', 'http://www.me.ust.hk/', 'Department of Mechanical Engineering', 'www.me.ust.hk', 'www.me.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('213', 'http://www.bm.ust.hk/~acct/', 'Department of Accounting', 'www.bm.ust.hk', 'www.bm.ust.hk^~acct^.jpg', '');
INSERT INTO `ustbar` VALUES ('214', 'http://www.bm.ust.hk/~econ/', 'Department of Economics', 'www.bm.ust.hk', 'www.bm.ust.hk^~econ^.jpg', '');
INSERT INTO `ustbar` VALUES ('215', 'http://www.bm.ust.hk/~fina/', 'Department of Finance', 'www.bm.ust.hk', 'www.bm.ust.hk^~fina^.jpg', '');
INSERT INTO `ustbar` VALUES ('216', 'http://www.bm.ust.hk/~isom/', 'Department of Information Systems, Business Statistics and Operations Management', 'www.bm.ust.hk', 'www.bm.ust.hk^~isom^.jpg', '');
INSERT INTO `ustbar` VALUES ('217', 'http://www.bm.ust.hk/~mark/', 'Department of Marketing', 'www.bm.ust.hk', 'www.bm.ust.hk^~mark^.jpg', '');
INSERT INTO `ustbar` VALUES ('218', 'http://www.bm.ust.hk/~mgmt/', 'Department of Management', 'www.bm.ust.hk', 'www.bm.ust.hk^~mgmt^.jpg', '');
INSERT INTO `ustbar` VALUES ('219', 'http://huma.ust.hk/', 'Division of Humanities', 'huma.ust.hk', 'huma.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('220', 'http://www.ust.hk/%7Ewebsosc/', 'Division of Social Science', 'www.ust.hk', 'www.ust.hk^%7Ewebsosc^.jpg', '');
INSERT INTO `ustbar` VALUES ('221', 'http://lc.ust.hk/', 'Center for Language Education', 'lc.ust.hk', 'lc.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('222', 'http://urao.ust.hk/', 'Office of Undergraduate Recruitment and Admission', 'urao.ust.hk', 'urao.ust.hk^.jpg', '');
INSERT INTO `ustbar` VALUES ('223', 'https://sao.ust.hk/', 'Student Affairs Office', 'sao.ust.hk', 'https^^^sao.ust.hk^.jpg', '');

-- ----------------------------
-- Table structure for `ustbarbak`
-- ----------------------------
DROP TABLE IF EXISTS `ustbarbak`;
CREATE TABLE `ustbarbak` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Link` text NOT NULL,
  `Text` text,
  `Domain` text,
  `SnapShot` text,
  `Tags` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of ustbarbak
-- ----------------------------
INSERT INTO `ustbarbak` VALUES ('1', 'http://lmes2.ust.hk/', 'Learning Management & Evaluation System (LMES)', 'lmes2.ust.hk', 'lmes2.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('2', 'http://ustlib.ust.hk/', 'Library Catalog', 'ustlib.ust.hk', 'ustlib.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('6', 'http://www.ust.hk/itsc/computerbarn/snapshots/allbarn.html', 'Snapshot of Computer Barn', 'www.ust.hk', 'www.ust.hk^itsc^computerbarn^snapshots^allbarn.htm.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('7', 'http://pathadvisor.ust.hk/', 'Path Advisor', 'pathadvisor.ust.hk', 'pathadvisor.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('9', 'http://www.ust.hk/eng/news/index.php', 'University News', 'www.ust.hk', 'www.ust.hk^eng^news^index.php.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('10', 'http://www.ust.hk/eng/events/week.php', 'Upcoming Events', 'www.ust.hk', 'www.ust.hk^eng^events^week.php.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('11', 'http://www.ust.hk/eng/administration/op_pm.htm', 'President\'s Messages', 'www.ust.hk', 'www.ust.hk^eng^administration^op_pm.htm.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('12', 'http://www.ust.hk/semcal', 'Seminar & Thesis Defenses', 'www.ust.hk', 'www.ust.hk^semcal.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('13', 'http://www.ust.hk/eng/events/week.php', 'Calendar of Events', 'www.ust.hk', 'www.ust.hk^eng^events^week.php.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('14', 'http://www3.ust.hk/~webust/eng/events/ST_Calendar/admin/login.php', 'Post a Seminar (including Lecture) & Thesis Defenses', 'www3.ust.hk', 'www3.ust.hk^~webust^eng^events^ST_Calendar^admin^l.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('15', 'http://www.ust.hk/eng/cgi-bin/events_create_form.php', 'Post other events', 'www.ust.hk', 'www.ust.hk^eng^cgi-bin^events_create_form.php.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('16', 'http://www.ust.hk/cgi-bin/cgiwrap/~alumni/magazine.pl', 'Alumni Newsletter', 'www.ust.hk', 'www.ust.hk^cgi-bin^cgiwrap^~alumni^magazine.pl.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('17', 'http://www.bm.ust.hk/newsletter/', 'Business School Newsletter', 'www.bm.ust.hk', 'www.bm.ust.hk^newsletter^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('18', 'http://www.ust.hk/itsc/channel/', 'ITSC Channel', 'www.ust.hk', 'www.ust.hk^itsc^channel^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('19', 'http://www.seng.ust.hk/web/eng/publication.php', 'Engineering School Newsletter', 'www.seng.ust.hk', 'www.seng.ust.hk^web^eng^publication.php.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('20', 'http://newsletter.ust.hk/', 'Genesis HKUST Newsletter', 'newsletter.ust.hk', 'newsletter.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('21', 'http://www.ust.hk/healthmatters/', 'Health and Hygiene Matters', 'www.ust.hk', 'www.ust.hk^healthmatters^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('22', 'http://library.ust.hk/info/notes/notes.html', 'Library Newsletter', 'library.ust.hk', 'library.ust.hk^info^notes^notes.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('23', 'http://www.ust.hk/provost/pg/newsletter/newsletter.html', 'PG Update', 'www.ust.hk', 'www.ust.hk^provost^pg^newsletter^newsletter.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('24', 'http://www.ab.ust.hk/hseo/sftywise.htm', 'HSEO Safety Wise', 'www.ab.ust.hk', 'www.ab.ust.hk^hseo^sftywise.htm.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('25', 'http://arr.ust.hk/', 'ARRO Homepage', 'arr.ust.hk', 'arr.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('26', 'http://lc.ust.hk/', 'LC Home', 'lc.ust.hk', 'lc.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('27', 'http://lc.ust.hk/~material/pinyin/', 'Hanyu PinYin', 'lc.ust.hk', 'lc.ust.hk^~material^pinyin^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('28', 'http://mws.ust.hk/mw/account/login.php', 'My Word', 'mws.ust.hk', 'mws.ust.hk^mw^account^login.php.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('29', 'http://lc.ust.hk/~sac/', 'Self Access Center', 'lc.ust.hk', 'lc.ust.hk^~sac^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('30', 'http://vela.ust.hk/', 'Virtural English Learning Advisor (VELA)', 'vela.ust.hk', 'vela.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('31', 'http://www.ust.hk/provost/', 'Provost Homepage', 'www.ust.hk', 'www.ust.hk^provost^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('32', 'http://publish.ust.hk/prog_crs_ar/index.html', 'Academic Programs', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^index.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('33', 'http://publish.ust.hk/prog_crs_ar/ugreg/index.html', 'Academic Regulations', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^ugreg^index.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('34', 'http://www.ust.hk/provost/ug-guide/', 'UG Student Guide', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('35', 'http://ptc.ust.hk/', 'PTC Homepage', 'ptc.ust.hk', 'ptc.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('36', 'http://photogallery.ust.hk/AlbumPage.aspx?album=all', 'UST Photo Catalog', 'photogallery.ust.hk', 'photogallery.ust.hk^AlbumPage.aspx^album=all.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('37', 'http://ptc.ust.hk/ecard2002/index.html', 'Send E-card', 'ptc.ust.hk', 'ptc.ust.hk^ecard2002^index.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('38', 'http://www.ab.ust.hk/hseo/Clinic/clinic.htm', 'Clinical Service', 'www.ab.ust.hk', 'www.ab.ust.hk^hseo^Clinic^clinic.htm.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('39', 'http://www.ust.hk/itsc/ResNet/', 'ResNet', 'www.ust.hk', 'www.ust.hk^itsc^ResNet^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('40', 'http://www.ust.hk/itsc/wireless/hkust/smobilenet.html', 'sMobileNet (Wireless Network in Hall)', 'www.ust.hk', 'www.ust.hk^itsc^wireless^hkust^smobilenet.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('41', 'http://www.ust.hk/orientation/', 'UG Orientation', 'www.ust.hk', 'www.ust.hk^orientation^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('42', 'http://www.ust.hk/cfa/', 'Center for the Arts', 'www.ust.hk', 'www.ust.hk^cfa^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('43', 'http://www.ust.hk/~webccshs/', 'Center for Cultural Studies', 'www.ust.hk', 'www.ust.hk^~webccshs^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('44', 'http://www.eoc.org.hk:8080/shoncampus', 'Sexual Harassment Training Module', 'www.eoc.org.hk', 'www.eoc.org.hk^8080^shoncampus.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('45', 'http://ihome.ust.hk/~su_ucoun/link.html', 'Student Society Web', 'ihome.ust.hk', 'ihome.ust.hk^~su_ucoun^link.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('47', 'http://www.ust.hk/provost/ug-guide/programs/requirements.html', 'Curriculum Requirements', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^requirements..jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('48', 'http://www.ust.hk/provost/ug-guide/programs/credit.html', 'Credit Transfer & Exemptions', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^credit.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('49', 'http://www.ust.hk/provost/ug-guide/programs/registration.html', 'Registration in Programs', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^registration..jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('50', 'http://www.ust.hk/provost/ug-guide/programs/changes.html', 'Changes of Registration', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^changes.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('51', 'http://www.ust.hk/provost/ug-guide/programs/leave.html', 'Leave from Study', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^leave.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('52', 'http://www.ust.hk/provost/ug-guide/programs/withdrawal.html', 'University Withdrawal & Re-admission', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^programs^withdrawal.ht.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('53', 'http://www.ust.hk/provost/ug-guide/courses/pathway.html', 'Study Pathway', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^courses^pathway.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('54', 'http://www.ust.hk/provost/ug-guide/courses/class.html', 'Class Enrollment Process', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^courses^class.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('55', 'http://www.ust.hk/provost/ug-guide/integrity/index.html', 'Academic Integrity & Conduct', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^integrity^index.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('56', 'http://www.ust.hk/provost/ug-guide/classes/weather.html', 'Bad Weather Arrangements', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^classes^weather.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('57', 'http://www.ust.hk/provost/ug-guide/classes/study.html', 'Study Load & Student Employment', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^classes^study.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('58', 'http://www.ust.hk/provost/ug-guide/assessment/exam.html', 'Final Examinations', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^assessment^exam.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('59', 'http://www.ust.hk/provost/ug-guide/assessment/grades.html', 'Grades & Grade Points', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^assessment^grades.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('60', 'http://www.ust.hk/provost/ug-guide/assessment/standards.html', 'Grading Standards', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^assessment^standards.h.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('61', 'http://www.ust.hk/provost/ug-guide/assessment/averages.html', 'Grade Averages', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^assessment^averages.ht.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('62', 'http://www.ust.hk/provost/ug-guide/assessment/dean.html', 'Dean\'s List', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^assessment^dean.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('63', 'http://www.ust.hk/provost/ug-guide/assessment/probation.html', 'Academic Probation & Dismissal', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^assessment^probation.h.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('64', 'http://www.ust.hk/provost/ug-guide/assessment/record.html', 'Reviews & Record Amendment', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^assessment^record.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('65', 'http://www.ust.hk/provost/ug-guide/assessment/testimonials.html', 'Testimonial and Transcript', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^assessment^testimonial.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('66', 'http://www.ust.hk/provost/ug-guide/graduation/duration.html', 'Duration of Study', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^graduation^duration.ht.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('67', 'http://www.ust.hk/provost/ug-guide/graduation/requirements.html', 'Graduation Requirements', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^graduation^requirement.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('68', 'http://www.ust.hk/provost/ug-guide/graduation/approval.html', 'Degree Classification & Approval', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^graduation^approval.ht.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('69', 'http://www.ust.hk/provost/ug-guide/graduation/awards.html', 'Congregation & Awards for Achievement', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^graduation^awards.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('70', 'http://www.ust.hk/provost/ug-guide/graduation/cert.html', 'Degree Certification', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^graduation^cert.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('71', 'http://www.ust.hk/provost/ug-guide/contacts/index.html', 'Useful Contacts', 'www.ust.hk', 'www.ust.hk^provost^ug-guide^contacts^index.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('72', 'http://www.ust.hk/provost/announcements/news_announcements_ug4.html', ' Calendar Dates 2013-14 (Provisional)', 'www.ust.hk', 'www.ust.hk^provost^announcements^news_announcement.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('73', 'http://www.ust.hk/provost/announcements/news_announcements_ug3.html', ' Academic Integrity and Good Learning Environment', 'www.ust.hk', 'www.ust.hk^provost^announcements^news_announcement.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('74', 'http://www.ust.hk/provost/announcements/news_announcements_ug1.html', ' Important Dates in 2012-13, Program & Course Catalogs, Academic Regulations', 'www.ust.hk', 'www.ust.hk^provost^announcements^news_announcement.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('75', 'http://arr.ust.hk/reg/an/an_std_announce/cepas.html', 'Common English Proficiency Assessment Scheme ( CEPAS ) for 2012-13', 'arr.ust.hk', 'arr.ust.hk^reg^an^an_std_announce^cepas.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('76', 'http://arr.ust.hk/reg/an/an_std_announce/ielts.html', 'IELTS Test Fee Reimbursement under CEPAS 2012-13', 'arr.ust.hk', 'arr.ust.hk^reg^an^an_std_announce^ielts.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('77', 'http://arr.ust.hk/reg/an/an_std_announce/hippo.html', 'Help with IELTS Preparation and Practice On-line (HIPPO)', 'arr.ust.hk', 'arr.ust.hk^reg^an^an_std_announce^hippo.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('78', 'http://arr.ust.hk/reg/an/an_std_announce/personal-data.html', 'Personal Information Collection Statement', 'arr.ust.hk', 'arr.ust.hk^reg^an^an_std_announce^personal-data.ht.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('80', 'http://www.ust.hk/provost/calendar_dates/dates12-13confirmed.pdf', 'Calendar Dates', 'www.ust.hk', 'www.ust.hk^provost^calendar_dates^dates12-13confir.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('81', 'http://publish.ust.hk/prog_crs_ar/ugcourse/index.html', 'Course Catalog', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^ugcourse^index.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('82', 'http://publish.ust.hk/prog_crs_ar/index.html', 'Program Catalog', 'publish.ust.hk', 'publish.ust.hk^prog_crs_ar^index.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('83', 'http://www.ust.hk/provost/ug/curriculum_hb.html', 'Undergraduate Curriculum Handbook', 'www.ust.hk', 'www.ust.hk^provost^ug^curriculum_hb.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('84', 'http://www.ust.hk/eng/teaching/schools.htm', 'Schools & Departments', 'www.ust.hk', 'www.ust.hk^eng^teaching^schools.htm.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('85', 'http://uce.ust.hk/', 'UCEO', 'uce.ust.hk', 'uce.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('86', 'http://lc.ust.hk/', 'Language Center', 'lc.ust.hk', 'lc.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('87', 'http://arr.ust.hk/reg/forms/r-6.pdf', 'Application for Program Transfer', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-6.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('88', 'http://arr.ust.hk/reg/forms/r-8.pdf', 'Application for Leave from Study', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-8.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('89', 'http://arr.ust.hk/reg/forms/r-11.pdf', 'Application for Personal Data Amendment', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-11.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('90', 'http://arr.ust.hk/reg/forms/r-12.pdf', 'Application for Withdrawal of Study', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-12.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('91', 'http://arr.ust.hk/reg/forms/RR-22.pdf', 'Application for Class Enrollment/Withdrawal after Add/Drop Period', 'arr.ust.hk', 'arr.ust.hk^reg^forms^RR-22.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('92', 'http://arr.ust.hk/reg/forms/r-25.pdf', 'Application for Testimonial', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-25.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('93', 'http://arr.ust.hk/reg/forms/r-26a.pdf', 'Application for Replacement of HKUST Card', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-26a.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('94', 'http://arr.ust.hk/reg/forms/r-29.pdf', 'Application for Double Registration', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-29.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('95', 'http://arr.ust.hk/reg/forms/r-31.pdf', 'Application for Extension of Length of Study', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-31.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('96', 'http://arr.ust.hk/reg/forms/r-37.pdf', 'Declaration of Undergraduate Minor Program', 'arr.ust.hk', 'arr.ust.hk^reg^forms^r-37.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('97', 'http://arr.ust.hk/reg/forms/EX10_pdf.pdf', 'Application for Transcript of Studies', 'arr.ust.hk', 'arr.ust.hk^reg^forms^EX10_pdf.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('98', 'http://arr.ust.hk/reg/forms/EX-16.pdf', 'Report on Extenuating Circumstances Affecting Assessment', 'arr.ust.hk', 'arr.ust.hk^reg^forms^EX-16.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('99', 'http://arr.ust.hk/reg/forms/fof100.pdf', 'Application for Refund of Caution Money', 'arr.ust.hk', 'arr.ust.hk^reg^forms^fof100.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('100', 'http://arr.ust.hk/reg/forms/gr-13.pdf', 'Application for Award Certification Letter', 'arr.ust.hk', 'arr.ust.hk^reg^forms^gr-13.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('101', 'http://arr.ust.hk/reg/forms/gr-12.pdf', 'Collection of Degree Diploma', 'arr.ust.hk', 'arr.ust.hk^reg^forms^gr-12.pdf.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('102', 'http://library.ust.hk/info/colls.html', 'Library Collections', 'library.ust.hk', 'library.ust.hk^info^colls.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('103', 'http://libguides.ust.hk/', 'Research Guides', 'libguides.ust.hk', 'libguides.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('104', 'http://library.ust.hk/guides/findbook.html', 'Finding Books', 'library.ust.hk', 'library.ust.hk^guides^findbook.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('105', 'http://library.ust.hk/guides/findarticle.html', 'Finding Articles & Journals', 'library.ust.hk', 'library.ust.hk^guides^findarticle.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('106', 'http://library.ust.hk/guides/finddissertation.html', 'Finding Theses', 'library.ust.hk', 'library.ust.hk^guides^finddissertation.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('107', 'http://library.ust.hk/guides/findav.html', 'Finding Audio & Videos', 'library.ust.hk', 'library.ust.hk^guides^findav.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('108', 'http://lbsearch.ust.hk/', 'PowerSearch', 'lbsearch.ust.hk', 'lbsearch.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('109', 'http://ustlib.ust.hk/search/r', 'Course Reserve', 'ustlib.ust.hk', 'ustlib.ust.hk^search^r.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('110', 'http://library.ust.hk/info/databases/', 'Databases', 'library.ust.hk', 'library.ust.hk^info^databases^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('111', 'http://library.ust.hk/info/ebooks.html', 'E-Books', 'library.ust.hk', 'library.ust.hk^info^ebooks.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('112', 'http://library.ust.hk/res/ejournals/', 'E-Journals', 'library.ust.hk', 'library.ust.hk^res^ejournals^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('113', 'http://library.ust.hk/res/maps/', 'Antique Maps Database', 'library.ust.hk', 'library.ust.hk^res^maps^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('114', 'http://library.ust.hk/hkir/', 'HK Institutional Repositories', 'library.ust.hk', 'library.ust.hk^hkir^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('115', 'http://digitalimages.ust.hk/', 'HKUST Digital Images', 'digitalimages.ust.hk', 'digitalimages.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('116', 'http://library.ust.hk/cgi/db/thesis.pl', 'HKUST E-Theses', 'library.ust.hk', 'library.ust.hk^cgi^db^thesis.pl.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('117', 'http://library.ust.hk/cgi/db/newsclip.pl', 'HKUST News Clippings', 'library.ust.hk', 'library.ust.hk^cgi^db^newsclip.pl.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('118', 'http://library.ust.hk/repository/', 'Institutional Repository', 'library.ust.hk', 'library.ust.hk^repository^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('119', 'http://library.ust.hk/res/beyond/', 'Internet Resources', 'library.ust.hk', 'library.ust.hk^res^beyond^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('120', 'http://library.ust.hk/special/', 'Special Collections', 'library.ust.hk', 'library.ust.hk^special^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('121', 'http://catalog.ust.hk/stream/', 'Streaming Videos', 'catalog.ust.hk', 'catalog.ust.hk^stream^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('122', 'http://library.ust.hk/archives/', 'University Archives', 'library.ust.hk', 'library.ust.hk^archives^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('123', 'http://library.ust.hk/serv/faculty.html', 'For Faculty & Staff', 'library.ust.hk', 'library.ust.hk^serv^faculty.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('124', 'http://library.ust.hk/serv/pg.html', 'For Postgraduates', 'library.ust.hk', 'library.ust.hk^serv^pg.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('125', 'http://library.ust.hk/serv/ug.html', 'For Undergraduates', 'library.ust.hk', 'library.ust.hk^serv^ug.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('126', 'http://library.ust.hk/serv/alumni.html', 'For Alumni', 'library.ust.hk', 'library.ust.hk^serv^alumni.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('127', 'http://library.ust.hk/serv/visitors.html', 'For Visitors and Others', 'library.ust.hk', 'library.ust.hk^serv^visitors.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('128', 'http://library.ust.hk/serv/service-a-z.html', 'Services A-Z', 'library.ust.hk', 'library.ust.hk^serv^service-a-z.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('129', 'http://library.ust.hk/info/about.html', 'About Us', 'library.ust.hk', 'library.ust.hk^info^about.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('130', 'http://library.ust.hk/info/events.html', 'News Blog', 'library.ust.hk', 'library.ust.hk^info^events.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('131', 'http://www.ust.hk/eng/about/publications.htm', 'HKUST Publications', 'www.ust.hk', 'www.ust.hk^eng^about^publications.htm.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('132', 'http://library.ust.hk/faq/', 'How Do I..', 'library.ust.hk', 'library.ust.hk^faq^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('133', 'http://library.ust.hk/faq/borrow.html', 'Ã‚Â» Borrow and Return', 'library.ust.hk', 'library.ust.hk^faq^borrow.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('134', 'http://library.ust.hk/faq/eresource.html', 'Ã‚Â» Computer Access', 'library.ust.hk', 'library.ust.hk^faq^eresource.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('135', 'http://library.ust.hk/faq/reserve.html', 'Ã‚Â» Course Reserve', 'library.ust.hk', 'library.ust.hk^faq^reserve.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('136', 'http://library.ust.hk/faq/facilities.html', 'Ã‚Â» Facilities', 'library.ust.hk', 'library.ust.hk^faq^facilities.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('137', 'http://library.ust.hk/faq/ic.html', 'Ã‚Â» Information Commons', 'library.ust.hk', 'library.ust.hk^faq^ic.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('138', 'http://library.ust.hk/faq/find.html', 'Ã‚Â» Library Collections', 'library.ust.hk', 'library.ust.hk^faq^find.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('139', 'http://library.ust.hk/faq/theses.html', 'Ã‚Â» Theses', 'library.ust.hk', 'library.ust.hk^faq^theses.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('140', 'http://library.ust.hk/faq/access.html', 'Ã‚Â» Visit the Library', 'library.ust.hk', 'library.ust.hk^faq^access.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('141', 'http://library.ust.hk/', 'Library Homepage', 'library.ust.hk', 'library.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('142', 'http://library.ust.hk/info/hours/', 'Hours', 'library.ust.hk', 'library.ust.hk^info^hours^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('143', 'http://library.ust.hk/forms.html', 'Forms', 'library.ust.hk', 'library.ust.hk^forms.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('144', 'http://library.ust.hk/cgi-forms/req-librarian.pl', 'Ask A Librarian', 'library.ust.hk', 'library.ust.hk^cgi-forms^req-librarian.pl.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('145', 'http://ustlib.ust.hk/', 'Library Catalog', 'ustlib.ust.hk', 'ustlib.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('146', 'http://ustlib.ust.hk/patroninfo', 'My Account', 'ustlib.ust.hk', 'ustlib.ust.hk^patroninfo.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('147', 'http://hkall.hku.hk/', 'HKALL', 'hkall.hku.hk', 'hkall.hku.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('148', 'http://library.ust.hk/illiad', 'Interlibrary Loan', 'library.ust.hk', 'library.ust.hk^illiad.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('149', 'http://library.ust.hk/calendar/', 'Reserving Rooms/PCs', 'library.ust.hk', 'library.ust.hk^calendar^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('150', 'http://library.ust.hk/lc/', 'Learning Commons', 'library.ust.hk', 'library.ust.hk^lc^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('151', 'http://library.ust.hk/info/directories.html', 'Contact Us - 2358-6760', 'library.ust.hk', 'library.ust.hk^info^directories.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('152', 'http://library.ust.hk/', 'http://library.ust.hk/', 'library.ust.hk', 'library.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('153', 'http://netprint.ust.hk/', 'Check Print Budget Balance', 'netprint.ust.hk', 'netprint.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('154', 'http://www.ust.hk/itsc/webguide/home/cas-admin/', 'iHome Personal Settings', 'www.ust.hk', 'www.ust.hk^itsc^webguide^home^cas-admin^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('155', 'http://www.ust.hk/itsc/email/cas-imail/logon.pl', 'iMail Personal Settings', 'www.ust.hk', 'www.ust.hk^itsc^email^cas-imail^logon.pl.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('157', 'http://www.ust.hk/itsc/a-z/', 'A-Z Service Guide', 'www.ust.hk', 'www.ust.hk^itsc^a-z^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('158', 'http://www.ust.hk/itsc/account/', 'Account Service', 'www.ust.hk', 'www.ust.hk^itsc^account^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('159', 'http://www.ust.hk/itsc/antivirus/', 'Anti-Virus', 'www.ust.hk', 'www.ust.hk^itsc^antivirus^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('160', 'http://www.ust.hk/itsc/computerbarn/', 'Computer Barn', 'www.ust.hk', 'www.ust.hk^itsc^computerbarn^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('161', 'http://download.ust.hk/', 'Download Area', 'download.ust.hk', 'download.ust.hk^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('162', 'http://www.ust.hk/itsc/email/', 'Email Service', 'www.ust.hk', 'www.ust.hk^itsc^email^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('164', 'http://www.ust.hk/itsc/', 'www.ust.hk/itsc/', 'www.ust.hk', 'www.ust.hk^itsc^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('165', 'http://www.ust.hk/itsc/ResNet/announcements.html', 'Announcements', 'www.ust.hk', 'www.ust.hk^itsc^ResNet^announcements.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('166', 'http://www.ust.hk/itsc/ResNet/resnet_incident.html', 'Recent ResNet Incidents', 'www.ust.hk', 'www.ust.hk^itsc^ResNet^resnet_incident.html.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('167', 'http://www.jijis.org.hk/jijis/', 'Joint Institution Job Information System (JIJIS)', 'www.jijis.org.hk', 'www.jijis.org.hk^jijis^.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('168', 'http://www.ust.hk/eng/cgi-bin/department_search.pl', 'Department List', 'www.ust.hk', 'www.ust.hk^eng^cgi-bin^department_search.pl.jpg', 'myUSThk,myPortal');
INSERT INTO `ustbarbak` VALUES ('169', 'http://www.ust.hk/intranet/phone.html', 'Campus Services Contacts', 'www.ust.hk', 'www.ust.hk^intranet^phone.html.jpg', 'myUSThk,myPortal');

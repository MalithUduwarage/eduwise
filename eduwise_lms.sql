/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : eduwise_lms

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 13/08/2023 03:59:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_details
-- ----------------------------
DROP TABLE IF EXISTS `admin_details`;
CREATE TABLE `admin_details`  (
  `aNo` int NOT NULL AUTO_INCREMENT,
  `adminType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminFullName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminContact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminBdate` datetime NULL DEFAULT NULL,
  `adminLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminJoinDate` datetime NULL DEFAULT NULL,
  `adminBranch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `createdDateTime` datetime NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_details
-- ----------------------------
INSERT INTO `admin_details` VALUES (1, 'A', 'A0001', 'Admin 01', 'Dasun Shanaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `admin_details` VALUES (2, 'L', 'L0001', 'Assistance Lecturer', 'Kusal Perera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `admin_details` VALUES (3, 'L', 'L0002', 'Lecturer', 'Niroshan Dickwella', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `admin_details` VALUES (4, 'L', 'L0003', 'Senior Lecturer', 'Thisara Perera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `admin_details` VALUES (5, 'L', 'L0004', 'Lecturer', 'Babar Azam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for announcement_details
-- ----------------------------
DROP TABLE IF EXISTS `announcement_details`;
CREATE TABLE `announcement_details`  (
  `annId` int NOT NULL AUTO_INCREMENT,
  `anntTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `annDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `annPoster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `annPosterName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `openDateTime` datetime NULL DEFAULT NULL,
  `endDateTime` datetime NULL DEFAULT NULL,
  `annStatus` int NULL DEFAULT NULL,
  `addedBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `addedDateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`annId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of announcement_details
-- ----------------------------
INSERT INTO `announcement_details` VALUES (1, 'Codefest Competition', 'ODEFEST is the effort of EduWise to elevate the entire nation’s ICT knowledge to achieve the nation’s aspiration of being the knowledge hub in Asia.', '1691878393_Screenshot 2023-07-31 121333.png', 'Screenshot 2023-07-31 121333.png', '2023-08-31 03:42:00', '2023-09-01 03:43:00', 1, 'Admin', '2023-08-13 03:43:13');

-- ----------------------------
-- Table structure for answer_management
-- ----------------------------
DROP TABLE IF EXISTS `answer_management`;
CREATE TABLE `answer_management`  (
  `ansNo` int NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assiId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `questionNo` int NULL DEFAULT NULL,
  `answer` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `earnMarks` float NULL DEFAULT NULL,
  `submitBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `submitDateTime` datetime NULL DEFAULT NULL,
  `reviewBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reviewDateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ansNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer_management
-- ----------------------------

-- ----------------------------
-- Table structure for assignment_details
-- ----------------------------
DROP TABLE IF EXISTS `assignment_details`;
CREATE TABLE `assignment_details`  (
  `assiId` int NOT NULL AUTO_INCREMENT,
  `assiName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `baseCourse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assiYear` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assiSemester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assiDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assiStartDate` datetime NULL DEFAULT NULL,
  `assiEndDate` datetime NULL DEFAULT NULL,
  `assiType` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assiTotalMarks` float NULL DEFAULT NULL,
  `assiDuration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assiContent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assiStatus` int NULL DEFAULT NULL,
  `createdDateTime` datetime NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`assiId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of assignment_details
-- ----------------------------
INSERT INTO `assignment_details` VALUES (1, 'Progress Report', 'IT0001', '1 st Year', '1 st Semester', 'Manage projects, keep a knowledge base, and collaborate as a team – all in one tool. Powerful project management for all your teams. Server or cloud – YouTrack your way.', '2023-08-15 03:46:00', '2023-08-30 03:46:00', 'Paper', 100, '45', 'Software project management comprises of a number of activities, which contains planning of project, deciding scope of software product, estimation of cost in various terms, scheduling of tasks and events, and resource management.', 1, '2023-08-13 03:47:13', 'Admin');
INSERT INTO `assignment_details` VALUES (2, 'Daily Log', 'IT0001', '1 st Year', '2 nd Semester', 'Quickly and easily record project activities with mobile construction daily reports.', '2023-08-10 03:48:00', '2023-08-15 03:48:00', 'Paper', 100, '30', 'Daily report software helps companies get a clear picture of what needs to be fixed or prioritized.', 1, '2023-08-13 03:49:13', 'Admin');

-- ----------------------------
-- Table structure for attendance_management
-- ----------------------------
DROP TABLE IF EXISTS `attendance_management`;
CREATE TABLE `attendance_management`  (
  `attId` int NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `inTime` datetime NULL DEFAULT NULL,
  `outTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`attId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attendance_management
-- ----------------------------

-- ----------------------------
-- Table structure for audit_trail
-- ----------------------------
DROP TABLE IF EXISTS `audit_trail`;
CREATE TABLE `audit_trail`  (
  `auditId` int NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `useFunction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `useDateTime` datetime NULL DEFAULT NULL,
  `userLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`auditId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of audit_trail
-- ----------------------------

-- ----------------------------
-- Table structure for course_details
-- ----------------------------
DROP TABLE IF EXISTS `course_details`;
CREATE TABLE `course_details`  (
  `cNo` int NOT NULL AUTO_INCREMENT,
  `courseId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `courseName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `baseSemester` int NULL DEFAULT NULL,
  `baseYear` int NULL DEFAULT NULL,
  `courseDuration` float NULL DEFAULT NULL,
  `courseTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `courseDescription` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `coursePoints` float NULL DEFAULT NULL,
  `courseStatus` int NULL DEFAULT NULL,
  `createdDateTime` datetime NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_details
-- ----------------------------
INSERT INTO `course_details` VALUES (1, 'IT0001', 'Operating System', 1, 1, 5, 'OS', 'Operating systems are an essential part of any computer system. Similarly, a course on operating systems is an essential part of any computer science education.', 10, 1, '2023-08-13 03:28:44', 'Admin');
INSERT INTO `course_details` VALUES (2, 'IT0002', 'Project Management', 1, 1, 20, 'PM', 'Managing a project includes identifying requirements, establishing clear and achievable objectives, balancing competing demands of quality, scope, cost, and time, adapting specifications, plans.', 8, 1, '2023-08-13 03:33:12', 'Admin');

-- ----------------------------
-- Table structure for course_lecturers
-- ----------------------------
DROP TABLE IF EXISTS `course_lecturers`;
CREATE TABLE `course_lecturers`  (
  `lNo` int NOT NULL AUTO_INCREMENT,
  `cNo` int NULL DEFAULT NULL,
  `courseId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lecturerId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`lNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_lecturers
-- ----------------------------
INSERT INTO `course_lecturers` VALUES (1, 1, 'IT0001', 'L0001', '1');
INSERT INTO `course_lecturers` VALUES (2, 1, 'IT0001', 'L0002', '1');
INSERT INTO `course_lecturers` VALUES (3, 1, 'IT0001', NULL, '1');
INSERT INTO `course_lecturers` VALUES (4, 1, 'IT0001', NULL, '1');
INSERT INTO `course_lecturers` VALUES (5, 2, 'IT0002', 'L0003', '1');
INSERT INTO `course_lecturers` VALUES (6, 2, 'IT0002', 'L0004', '1');

-- ----------------------------
-- Table structure for digitallibrary_details
-- ----------------------------
DROP TABLE IF EXISTS `digitallibrary_details`;
CREATE TABLE `digitallibrary_details`  (
  `libId` int NOT NULL AUTO_INCREMENT,
  `docName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `docDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `docPath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `docStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `addedBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `addedDateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`libId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of digitallibrary_details
-- ----------------------------

-- ----------------------------
-- Table structure for materials_details
-- ----------------------------
DROP TABLE IF EXISTS `materials_details`;
CREATE TABLE `materials_details`  (
  `mId` int NOT NULL AUTO_INCREMENT,
  `cNo` int NULL DEFAULT NULL,
  `courseId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `documents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `materialName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `materialType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of materials_details
-- ----------------------------
INSERT INTO `materials_details` VALUES (1, 1, 'IT0001', 'Daily Log.docx', '1691877575_Daily Log.docx', 'docx');
INSERT INTO `materials_details` VALUES (2, 1, 'IT0001', 'UnitTestPlan.xlsx', '1691877585_UnitTestPlan.xlsx', 'xlsx');
INSERT INTO `materials_details` VALUES (3, 2, 'IT0002', 'Quality Log.docx', '1691877905_Quality Log.docx', 'docx');
INSERT INTO `materials_details` VALUES (4, 2, 'IT0002', 'Screenshot 2023-07-31 121333.png', '1691877924_Screenshot 2023-07-31 121333.png', 'png');

-- ----------------------------
-- Table structure for quiz_management
-- ----------------------------
DROP TABLE IF EXISTS `quiz_management`;
CREATE TABLE `quiz_management`  (
  `exNo` int NOT NULL AUTO_INCREMENT,
  `assiId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `questionNo` int NULL DEFAULT NULL,
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `allocatedMarks` float NULL DEFAULT NULL,
  `answer` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `questionStatus` int NULL DEFAULT NULL,
  PRIMARY KEY (`exNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quiz_management
-- ----------------------------

-- ----------------------------
-- Table structure for student_details
-- ----------------------------
DROP TABLE IF EXISTS `student_details`;
CREATE TABLE `student_details`  (
  `sNo` int NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `studentFullName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `studentInitials` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `profilePic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `studentGender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `studentEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `studentContact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `studentAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `studentBdate` date NULL DEFAULT NULL,
  `studentLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `studentJoinDate` date NULL DEFAULT NULL,
  `studentBranch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StudentStatus` int NULL DEFAULT NULL,
  `createdDateTime` datetime NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_details
-- ----------------------------
INSERT INTO `student_details` VALUES (1, 'EDU1000001', 'Uduwarage Don Malith Eranga', 'U.D.M.Eranga', '1691877345_userimg.jpg', 'Male', 'malith@gmail.com', '0789874561', '99/9, Kotte Road, Rajagiriya', '1999-09-15', 'Kotte, Colombo', '2023-08-01', 'Colombo', 1, '2023-08-13 03:23:21', 'IT1001');
INSERT INTO `student_details` VALUES (2, 'EDU1000002', 'Janith Nadeera Thennakoon', 'T.M.J.N.Thennakoon', NULL, 'Male', 'janith@gmail.com', '0789874561', '88/8, Main Street, Kekirawa', '1998-06-08', 'Anuradhapura', '2023-08-02', 'Kandy', 1, '2023-08-13 03:36:55', 'EDU0001');
INSERT INTO `student_details` VALUES (3, 'EDU1000003', 'Nisal Rangeeth', 'G.D.N Rangeeth', NULL, 'Male', 'nisal@gmail.com', '0712323232', '77/7, Kottawa Road, Homagama', '1997-02-20', 'Homagama', '2023-08-03', 'Galle', 1, '2023-08-13 03:38:40', 'EDU0001');
INSERT INTO `student_details` VALUES (4, 'EDU1000004', 'P.A. Dilshanie', 'P.A. Dilshanie', NULL, 'Female', 'dilshanie@gmail.com', '0712345678', '100, Main Road, Battaramulla', '2000-07-13', 'Colombo', '2023-08-04', 'Colombo', 1, '2023-08-13 03:41:11', 'EDU1000001');

-- ----------------------------
-- Table structure for student_results
-- ----------------------------
DROP TABLE IF EXISTS `student_results`;
CREATE TABLE `student_results`  (
  `rNo` int NOT NULL AUTO_INCREMENT,
  `sNo` int NULL DEFAULT NULL,
  `studentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `assignmentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `totalMarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `earnGrade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `submitDate` datetime NULL DEFAULT NULL,
  `markingBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `markingDate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`rNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_results
-- ----------------------------
INSERT INTO `student_results` VALUES (1, 8, 'IT1001', '1', '67', 'A+', '2023-08-01 23:13:20', 'Admin', '2023-08-12 23:13:34');
INSERT INTO `student_results` VALUES (2, 8, 'Q1234', '1', '43`', 'C-', '2023-08-01 23:13:20', 'Admin', '2023-08-12 23:13:34');

-- ----------------------------
-- Table structure for supportdesk_details
-- ----------------------------
DROP TABLE IF EXISTS `supportdesk_details`;
CREATE TABLE `supportdesk_details`  (
  `ticketId` int NOT NULL AUTO_INCREMENT,
  `ticket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `addedBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `addedDateTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ticketId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supportdesk_details
-- ----------------------------

-- ----------------------------
-- Table structure for user_authentication
-- ----------------------------
DROP TABLE IF EXISTS `user_authentication`;
CREATE TABLE `user_authentication`  (
  `loginId` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `userStatus` int NULL DEFAULT NULL,
  `createdDate` datetime NULL DEFAULT NULL,
  `createdBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updatedDate` datetime NULL DEFAULT NULL,
  `updatedBy` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`loginId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_authentication
-- ----------------------------
INSERT INTO `user_authentication` VALUES (1, 'EDU1000001', '$2y$10$OdBTW0Nh.Dm7DhNEELQ0mezlaKpBsp3jbGZLToOOKqeQIHL37xQwS', 1, '2023-08-13 03:23:21', 'IT1001', NULL, NULL);
INSERT INTO `user_authentication` VALUES (2, 'EDU1000002', '$2y$10$N64veQY.m3FVGDx4MuBlYe/m/YLvn.K85JXtoViyKGRu1eW9T26kq', 1, '2023-08-13 03:36:55', 'EDU0001', NULL, NULL);
INSERT INTO `user_authentication` VALUES (3, 'EDU1000003', '$2y$10$W10.9wSlkJ8SA88.zMjZjOWNDOGh8CSK9lDzLj2TuA73WDZcjbe4m', 1, '2023-08-13 03:38:40', 'EDU0001', NULL, NULL);
INSERT INTO `user_authentication` VALUES (4, 'EDU1000004', '$2y$10$yxFkzvcY8oMLkoFVLXqhN.0hNTSCJQalzZr22VDljnBPVBV.60twy', 1, '2023-08-13 03:41:11', 'EDU1000001', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;

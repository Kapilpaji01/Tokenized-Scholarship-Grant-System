// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Tokenized Scholarship Grant System
 * @dev A decentralized platform for creating, managing, and awarding scholarships
 */
contract Project {
    
    // Struct to represent a Scholarship
    struct Scholarship {
        uint256 id;
        string name;
        uint256 amount;
        address sponsor;
        bool isActive;
        bool isAwarded;
        address awardedTo;
    }
    
    // Struct to represent a Student Application
    struct Application {
        uint256 scholarshipId;
        address student;
        string studentName;
        string justification;
        uint256 timestamp;
    }
    
    // State variables
    uint256 public scholarshipCounter;
    uint256 public applicationCounter;
    
    // Mappings
    mapping(uint256 => Scholarship) public scholarships;
    mapping(uint256 => Application) public applications;
    mapping(uint256 => uint256[]) public scholarshipApplications; // scholarship ID => application IDs
    mapping(address => uint256[]) public studentApplications; // student address => application IDs
    
    // Events
    event ScholarshipCreated(
        uint256 indexed scholarshipId,
        string name,
        uint256 amount,
        address indexed sponsor
    );
    
    event ApplicationSubmitted(
        uint256 indexed applicationId,
        uint256 indexed scholarshipId,
        address indexed student,
        string studentName
    );
    
    event ScholarshipAwarded(
        uint256 indexed scholarshipId,
        uint256 indexed applicationId,
        address indexed student,
        uint256 amount
    );
}

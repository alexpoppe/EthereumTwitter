pragma solidity ^0.5.0;

contract Twitter {
    uint public tweetCount = 0;

    struct Tweet {
        uint id;
        string content;
        string account;
    }

    mapping(uint => Tweet) public tweets;

    constructor() public {
//        createTweet("my first Tweet", "my first account");
    }

    function createTweet(string memory _content, string memory _account) public {
        tweetCount ++;
        tweets[tweetCount] = Tweet(tweetCount, _content, _account);
    }




}
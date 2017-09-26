#!/usr/bin/python3

import praw

reddit = praw.Reddit(
    client_id='x-MUHMAccrVBCA',
    client_secret='GQFPRRWA2cRBRIheB7fFNpZjl7g',
    user_agent='CricketScraper 0.1 by /u/ThatUglyBrownGuy',
    username='ThatUglyBrownGuy',
    password='environment'
)

print(reddit.user.me())

for submission in reddit.subreddit('cricket').hot(limit=10):
    print(submission.title)


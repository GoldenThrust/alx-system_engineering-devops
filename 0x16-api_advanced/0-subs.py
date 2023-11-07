#!/usr/bin/python3
""" queries the Reddit API """
import requests


def number_of_subscribers(subreddit):
    """ returns the number of subscribers """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)

    header = {
        "User-Agent": "0x16.api.advanced/v1.0.0 by Goldenthrust"
    }

    response = requests.get(url, headers=header, allow_redirects=False)

    if response.status_code != 200:
        return 0

    try:
        results = response.json().get("data")
        return results.get("subscribers")
    except Exception:
        return 0

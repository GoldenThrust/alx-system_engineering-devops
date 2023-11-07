#!/usr/bin/python3
""" queries the Reddit API """
import requests


def top_ten(subreddit):
    """ prints the titles of the first 10 hot
    posts listed for a given subreddit """
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)

    header = {
        "User-Agent": "0x16.api.advanced/v1.0.0 by Goldenthrust"
    }

    param = {
        "limit": 10
    }

    response = requests.get(url, headers=header, params=param,
                            allow_redirects=False)

    if response.status_code != 200:
        print(None)
        return

    try:
        results = response.json().get("data")

        [print(res.get("data").get("title"))
         for res in results.get("children")]
    except Exception:
        print(None)
        return
